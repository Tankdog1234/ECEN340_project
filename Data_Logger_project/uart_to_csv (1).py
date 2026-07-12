#!/usr/bin/env python3
"""
Convert a UART byte stream (pairs of 8-bit bytes -> 16-bit q15 values) into a CSV.

Frame format expected (matches the STM32 firmware):
    0xAA 0xBB  <2048 bytes of magnitude_buffer, i.e. 1024 x int16>  0xCC 0xDD

Two ways to get your data in:

  1) LIVE from the MCU over serial (needs `pip install pyserial`):
       python uart_to_csv.py output.csv --port COM5 --baud 9600 --num-frames 5
       (Linux/Mac port looks like /dev/ttyACM0 or /dev/ttyUSB0 instead of COM5)

  2) From a file you already captured:
       python uart_to_csv.py output.csv --input capture.bin

Other options:
    --byteorder big      (default: little, matches STM32/Cortex-M memory layout)
    --unsigned            (magnitude values are unsigned -- you probably want this)
    --row-size 1024       (values per CSV line, default 1024 = one window per line)
    --no-strip-frame       (treat input as raw payload, skip header/footer scan)
"""

import argparse
import csv
import struct
import sys
import time

SYNC_HEADER = bytes([0xAA, 0xBB])
SYNC_FOOTER = bytes([0xCC, 0xDD])


def capture_from_serial(port: str, baud: int, num_frames: int, timeout_s: float) -> bytes:
    try:
        import serial
    except ImportError:
        print("pyserial isn't installed. Run: pip install pyserial", file=sys.stderr)
        sys.exit(1)

    print(f"Opening {port} @ {baud} baud...", file=sys.stderr)
    ser = serial.Serial(port, baudrate=baud, timeout=1)

    buf = bytearray()
    frames_found = 0
    start_time = time.time()

    try:
        while frames_found < num_frames:
            if time.time() - start_time > timeout_s:
                print(f"Timed out after {timeout_s}s with {frames_found}/{num_frames} "
                      f"frame(s) captured.", file=sys.stderr)
                break
            chunk = ser.read(4096)
            if chunk:
                buf.extend(chunk)
                frames_found = buf.count(SYNC_FOOTER)
    finally:
        ser.close()

    print(f"Captured {len(buf)} raw bytes ({frames_found} frame(s)) from {port}.",
          file=sys.stderr)
    return bytes(buf)


def strip_frames(data: bytes) -> bytes:
    """Find header/footer markers and return only the payload bytes,
    concatenated across every frame found in the capture."""
    payload = bytearray()
    pos = 0
    frames_found = 0
    while True:
        start = data.find(SYNC_HEADER, pos)
        if start == -1:
            break
        payload_start = start + len(SYNC_HEADER)
        end = data.find(SYNC_FOOTER, payload_start)
        if end == -1:
            print(f"Warning: found header at byte {start} but no matching "
                  f"footer after it -- stopping frame scan here.", file=sys.stderr)
            break
        payload.extend(data[payload_start:end])
        frames_found += 1
        pos = end + len(SYNC_FOOTER)

    print(f"Found and stripped {frames_found} frame(s).", file=sys.stderr)
    return bytes(payload)


def bytes_to_values(data: bytes, byteorder: str, signed: bool):
    if len(data) % 2 != 0:
        print(f"Warning: payload has odd length ({len(data)} bytes), "
              f"dropping the last dangling byte.", file=sys.stderr)
        data = data[:-1]

    fmt_prefix = "<" if byteorder == "little" else ">"
    fmt_char = "h" if signed else "H"
    count = len(data) // 2
    return struct.unpack(f"{fmt_prefix}{count}{fmt_char}", data)


def main():
    parser = argparse.ArgumentParser(description=__doc__,
                                      formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("output", help="Path to write CSV output")

    source = parser.add_mutually_exclusive_group(required=True)
    source.add_argument("--input", help="Path to a previously captured raw byte file")
    source.add_argument("--port", help="Serial COM port to read live, e.g. COM5 or /dev/ttyACM0")

    parser.add_argument("--baud", type=int, default=115200,
                         help="Baud rate for --port (default: 9600, matches USART2.BaudRate)")
    parser.add_argument("--num-frames", type=int, default=1,
                         help="Number of frames to capture when using --port (default: 1)")
    parser.add_argument("--timeout", type=float, default=30.0,
                         help="Seconds to wait for --num-frames before giving up (default: 30)")
    parser.add_argument("--byteorder", choices=["little", "big"], default="little",
                         help="Byte order per 16-bit value (default: little, matches "
                              "STM32/Cortex-M native memory layout)")
    parser.add_argument("--unsigned", action="store_true",
                         help="Interpret values as unsigned 16-bit instead of signed "
                              "(q15_t magnitudes from arm_cmplx_mag_q15 are unsigned)")
    parser.add_argument("--no-strip-frame", action="store_true",
                         help="Skip header/footer stripping; treat entire input as raw payload")
    parser.add_argument("--row-size", type=int, default=1024,
                         help="Number of values per CSV row/line (default: 1024, "
                              "one full magnitude_buffer window per line)")
    args = parser.parse_args()

    if args.port:
        raw = capture_from_serial(args.port, args.baud, args.num_frames, args.timeout)
    else:
        with open(args.input, "rb") as f:
            raw = f.read()

    payload = raw if args.no_strip_frame else strip_frames(raw)

    if len(payload) == 0:
        print("No payload bytes to convert (check --no-strip-frame, your capture "
              "file, or that the MCU is actually sending data).", file=sys.stderr)
        sys.exit(1)

    values = bytes_to_values(payload, args.byteorder, signed=not args.unsigned)

    row_size = args.row_size
    with open(args.output, "w", newline="") as f:
        writer = csv.writer(f)
        for i in range(0, len(values), row_size):
            chunk = values[i:i + row_size]
            writer.writerow(chunk)
            if len(chunk) < row_size:
                print(f"Warning: last row only has {len(chunk)} values "
                      f"(expected {row_size}) -- leftover values from an "
                      f"incomplete window.", file=sys.stderr)

    num_rows = (len(values) + row_size - 1) // row_size
    print(f"Wrote {len(values)} values across {num_rows} row(s) to {args.output}",
          file=sys.stderr)


if __name__ == "__main__":
    main()

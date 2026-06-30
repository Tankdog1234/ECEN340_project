import serial
import csv
import time

with open('data.csv', mode='a', newline='') as file:
    writer = csv.writer(file)
    ser=serial.Serial(port='COM8', baudrate=115200, timeout=1)
    start_time=time.perf_counter()
    while True:
        text = ser.readline().decode("ascii", errors="ignore").strip()
        writer.writerow([time.perf_counter()-start_time,text])
        file.flush()



`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/07/2026 09:06:05 AM
// Design Name: 
// Module Name: System_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module System_top(
    input clk,
    input btnC,
    inout JA[7:0],
    inout JB[7:0],
    inout JC[7:0]
    );

    wire spi_clk, INT1, MISO, MOSI, outClk, DATA_READY_FIFO, CS, win_ready, FIFO1_DA_out, win_DA_out;
    wire [15:0] parallel_data_out, FIFO1_out;
    wire [31:0] window_out;

    assign JA[7] = CS;
    assign JA[6] = INT1;
    assign JA[5] = 1'bZ;
    assign JA[4] = MISO;
    assign JA[3] = 1'bZ;
    assign JA[2] = DATA_READY_FIFO;
    assign JA[1] = MOSI;
    assign JA[0] = outClk;
    
    // 1 MHz clock module
    acc_spi_clk_gen  C1 (
        .clk(clk), 
        .spi_clk(spi_clk)
        );

    accel_FSM  FSM1 (
        .ser_clk(spi_clk),
        .INT1(INT1),
        .MISO(MISO),
        .reset(btnC),
        .data_out(parallel_data_out),
        .MOSI(MOSI),
        .outClk(outClk),
        .DATA_READY_FIFO(DATA_READY_FIFO),
        .CS(CS)
        );


    accel_FIFO FIFO1 (
        .FIFO_in(parallel_data_out),
        .wr_clk(spi_clk),
        .rd_clk(clk),
        .rst(btnC),
        .WE(DATA_READY_FIFO),
        .RE(win_ready),
        .FIFO_out(FIFO1_out),
        .data_ready()
    );

    windowing HANN0 (
    .clk(clk),
    .rst(btnC),
    .DA_in(FIFO1_DA_out),
    .data_in(FIFO1_out),
    .ready_out(win_ready),
    .DA_out(win_DA_out),
    .data_out(window_out)
    );

    wire DV_WE, DDV_WE;
    wire [31:0] FFT_data_out;

    FFT_Interface FFT (
        .clk(clk),
        .data_in(window_out),
        .acc_last(),
        .acc_data_valid(win_ready),
        .FFT_ready_for_acc_data(),
        .spi_out_read_ready(),
        .FFT_data_out(FFT_data_out),
        .FFT_data_last(),
        .FFT_data_valid(DV_WE),
        .FFT_status(JC[5:0])
    );

    drop512 U1 (
        .we_FFT(DV_WE),
        .we_FIFO(DDV_WE),
        .write_clk(clk),
        .int3(JB[0])
    );

    FFT_OUT_FIFO FIFO2 (
        .FIFO_FULL(),
        .data_in(FFT_data_out),
        .write_enable(DDV_WE),
        .FIFO_EMPTY(),
        .data_out(par_data_fifo_out),
        .read_enable(JB[4]), //CS line
        .rst_ext(btnC),
        .wr_clk(clk),
        .rd_clk(rd_clk),
        .wr_ack(),
        .wr_rst_busy(wr_rst_busy),
        .rd_rst_busy(rd_rst_busy)
    ); 

    wire rd_clk;
    wire [31:0] par_data_fifo_out;
    FFT_OUT_SPI SPI2 (
        .par_data_in(par_data_fifo_out),
        .spi_clk(JB[2]),
        .spi_clk_cont(JB[1]),
        .CS(JB[4]),
        .MISO(JB[3]),
        .rd_clk(rd_clk)
    );
    
endmodule

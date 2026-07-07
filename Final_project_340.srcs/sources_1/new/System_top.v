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
    );

    wire spi_clk, INT1, MISO, MOSI, outClk, DATA_READY_FIFO, CS;
    wire [15:0] parallel_data_out;

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
        .RE(),
        .FIFO_out(),
        .data_ready()
    );

            





endmodule

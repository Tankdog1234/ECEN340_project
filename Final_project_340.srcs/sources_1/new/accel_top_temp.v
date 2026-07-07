`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/30/2026 09:23:56 AM
// Design Name: 
// Module Name: accel_top_temp
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


module accel_top_temp(
    input clk,
    input btnC,
    inout [7:0] JA,
    output [7:0] JB,
    output [7:0] JC
    );
    
    wire spi_clk, INT1, MISO, MOSI, outClk, DATA_READY_FIFO, CS;
    wire [15:0] parallel_data_out;
    
    // 1 MHz clock module
    acc_spi_clk_gen(.clk(clk), 
                    .spi_clk(spi_clk)
                    );
    
    accel_FSM(.ser_clk(spi_clk),
              .INT1(INT1),
              .MISO(MISO),
              .reset(btnC),
              .data_out(parallel_data_out),
              .MOSI(MOSI),
              .outClk(outClk),
              .DATA_READY_FIFO(DATA_READY_FIFO),
              .CS(CS)
              );
              
    assign JA[7] = CS;
    assign JA[6] = INT1;
    assign JA[5] = 1'bZ;
    assign JA[4] = MISO;
    assign JA[3] = 1'bZ;
    assign JA[2] = DATA_READY_FIFO;
    assign JA[1] = MOSI;
    assign JA[0] = outClk;
    
    
    assign JB = parallel_data_out[7:0];
    assign JC = parallel_data_out[15:8];
    
endmodule

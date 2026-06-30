`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/25/2026 12:13:45 PM
// Design Name: 
// Module Name: Accel_FIFO
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


module accel_FIFO(
    input [15:0] FIFO_in,   // Data from accelerometer to FIFO
    input wr_clk,           // Clock to write data to FIFO
    input rd_clk,           // Clock to read data from FIFO
    input rst,
    output reg [15:0] FIFO_out, // Data from FIFO to next function
    output reg data_ready       // Data ready flag set when 1024 bits (64 samples) are available
    // Add write enable and read enable signals rather than holding clocks stable
    );
    
    fifo_generator_0 FIFO (.FIFO_WRITE(FIFO_in),
                           .FIFO_READ(FIFO_out),
                           .rst(rst),
                           .wr_clk(wr_clk),
                           .rd_clk(rd_clk),
                           .valid(),
                           .wr_rst_busy(),
                           .rd_rst_busy()
                           );
                           
    reg samp_cnt = 0;
    reg read_cnt = 0;
    always @ (posedge wr_clk) begin
        samp_cnt <= samp_cnt + 1;
        if (samp_cnt > 1023) begin // When 1024 samples are prepared
            samp_cnt <= 0;
            read_cnt <= read_cnt + 1024; // Transfer the count of samp_cnt to read_cnt
        end
    end
    
    // Define logic for setting data_ready flag
    // data_ready is set to 0 when we have less than 1024 samples available to be read
    always @ (posedge wr_clk, posedge rd_clk) begin
        if (samp_cnt > 1023) begin
            data_ready <= 1;
        end else begin
            data_ready <= 0;
        end
    end
    
    // Count the number of entries in the FIFO for debugging purposes
    wire FIFO_cnt;
    assign FIFO_cnt = samp_cnt + read_cnt;
    
    // Decrement the read count when the read clock pulses
    // Hold rd_clk low when you're not reading data
    always @ (posedge rd_clk) begin
        if (read_cnt > 0) begin // Make sure read_cnt never drops below 0
            read_cnt <= read_cnt - 1;
        end
    end
                           
    
endmodule

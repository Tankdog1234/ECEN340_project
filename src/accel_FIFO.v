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
    input [15:0] FIFO_in,       // Data from accelerometer to FIFO
    input wr_clk,               // Clock to write data to FIFO
    input rd_clk,               // Clock to read data from FIFO
    input rst,
    input WE,                   // Write enable
    input RE,                   // Read enable
    output [15:0] FIFO_out,     // Data from FIFO to next function
    output reg data_ready       // Data ready flag set when 1024 samples are available
    );
    
    wire full, empty, wr_rst_busy, rd_rst_busy;
    wire wr_en, rd_en;
    wire [11:0] rd_data_count;
    
    fifo_generator_0 FIFO (.din(FIFO_in),   // Data written from accel to FIFO
                           .wr_en(wr_en),
                           .full(full),
                           .dout(FIFO_out), // Data read from FIFO by external module
                           .rd_en(rd_en),
                           .empty(empty),
                           .rst(rst),
                           .wr_clk(wr_clk),
                           .rd_clk(rd_clk),
                           .wr_rst_busy(wr_rst_busy),
                           .rd_rst_busy(rd_rst_busy)
                           );
                           
//    reg [15:0] samp_cnt = 0;
//    reg [15:0] read_cnt = 0;
    
    // Only set FIFO wr_en when there's FIFO space, is not busy resetting, and WE is enabled
    assign wr_en = !full  && !wr_rst_busy && WE;
    // Only set FIFO rd_en when there's FIFO data, is not busy resetting, and RE is enabled
    assign rd_en = !empty && !rd_rst_busy && RE;

//    // Define logic for writing from the accelerometer to the FIFO
//    // Before writing to FIFO, ensure WE is asserted
//    always @ (posedge wr_clk) begin
//        if (wr_en) begin
//            samp_cnt <= samp_cnt + 1;
//        end
        
//        if (samp_cnt >= 1023) begin // When 1024 samples are prepared
//            samp_cnt <= 0;
//            read_cnt <= read_cnt + 1024; // Transfer the count of samp_cnt to read_cnt
//        end
//    end
    
    reg [9:0] data_cnt;
    
    // Define logic for setting data_ready flag
    // data_ready is set to 0 when we have less than 1024 samples available to be read
    always @ (posedge wr_clk) begin
        if (wr_en) begin
            data_cnt <= data_cnt + 1;
            if (data_cnt >= 1023) begin
                data_ready <= 1;
            end else begin
                data_ready <= 0;
            end
        end
    end
    
//    // Count the total number of entries in the FIFO for debugging purposes
//    wire [15:0] FIFO_cnt;
//    assign FIFO_cnt = samp_cnt + read_cnt;
    
//    // Decrement the read count when the read clock pulses
//    // Assert RE to read data
//    always @ (posedge rd_clk) begin
//        if (rd_en) begin
//            read_cnt <= read_cnt - 1;
//        end
//    end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/10/2026 11:20:42 PM
// Design Name: 
// Module Name: count1024
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


// This module counts the number of samples written to the FIFO.
// It resets on triggerStart (data_last) and counts up on wr_en_in.
// When the count reaches 1015, it sets data_ready high for the MCU to read the data from the FIFO.
// Modeled after the legendary drop512 module
module count1024(
    input clk,
    input triggerStart,     // Trigger to reset the count to 0, on data_last
    input wr_en_in,         // Input write enable from windowing module
    output wire wr_en_out,  // Output write enable to FIFO
    output wire data_ready  // Data_ready flag for MCU
    );
    reg [9:0] cnt = 0; // Count to 1024
    
    always @ (posedge clk) begin
        if (triggerStart) begin
            cnt <= 0;
        end else if (wr_en_in) begin
            cnt <= cnt + 1;
        end else begin
            cnt <= cnt;
        end
    end
    
    assign wr_en_out = wr_en_in;
    // Start throwing the data_ready flag 8 samples before the end
    assign data_ready = (cnt >= 1015);
    
endmodule

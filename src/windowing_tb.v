`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/25/2026 02:59:27 PM
// Design Name: 
// Module Name: windowing_tb
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


module windowing_tb();

    // Parameters
    parameter FFT_SIZE = 1024;
    
    // Testbench Signals
    reg clk;
    reg rst;
    reg DA_in;
    reg [15:0] data_in;
    
    wire DA_out;
    wire [31:0] data_out;
    
    // Instantiate the Unit Under Test (DUT)
    windowing #(
        .FFT_SIZE(FFT_SIZE)
    ) DUT (
        .clk(clk),
        .rst(rst),
        .DA_in(DA_in),
        .data_in(data_in),
        .DA_out(DA_out),
        .data_out(data_out)
    );

    // Clock Generation (100 MHz)
    always #5 clk = ~clk;

    // Test Procedure
    initial begin
        // Initialize Signals
        clk = 0;
        rst = 1;
        DA_in = 0;
        data_in = 16'd0;
        
        // Hold Reset for a few clock cycles
        #20;
        rst = 0;
        
        // Wait a moment before starting
        #20;
        
        // Simulate a full frame of 1024 samples
        // We feed a constant value of 32767 (max positive 16-bit signed)
        // to easily see the window shape in the output.
        repeat (FFT_SIZE) begin
            @(posedge clk);
            DA_in = 1;
            data_in = 16'd32767; 
        end
        
        // Stop data after the frame
        @(posedge clk);
        DA_in = 0;
        data_in = 16'd0;
        
        // Let the pipeline flush out the last few samples
        #50 $finish;
    end

endmodule

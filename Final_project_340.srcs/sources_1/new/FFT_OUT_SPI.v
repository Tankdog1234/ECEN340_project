`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/04/2026 12:22:45 PM
// Design Name: 
// Module Name: FFT_OUT_SPI
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


module FFT_OUT_SPI(
    
    input [31:0] par_data_in,
    input spi_clk,
    input spi_clk_cont,
    input CS, 
    output wire MISO, // FPGA (slave) to MCU (master)
    output wire rd_clk
    
    );
    reg [4:0] clk_divide;
    reg [4:0] bit_out;
    reg [31:0] par_data_hold;


    initial begin
        bit_out = 0; 
        clk_divide = 0;
    end
    assign rd_clk = clk_divide[4];
    assign MISO = (bit_out == 0) ? par_data_in[bit_out] : par_data_hold[bit_out];

    always @ (posedge spi_clk)
    begin
        if(CS)bit_out <= bit_out +1;
        else bit_out <= bit_out;
        if(bit_out==0) par_data_hold <= par_data_in;
        else par_data_hold <= par_data_hold;
    end


    always @ (posedge spi_clk_cont)
    begin
        clk_divide <= clk_divide + 1;
    end


    
endmodule

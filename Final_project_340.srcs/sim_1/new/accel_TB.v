`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/23/2026 09:52:56 AM
// Design Name: 
// Module Name: accel_top_TB
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


module accel_top_TB(    );
//inputs and outputs
reg ser_clk;
reg INT1;
reg MISO;
wire [15:0] data_out;
wire MOSI;
wire outClk;
wire DATA_READY_FIFO;
wire CS;
//TB Params
integer i;

    accel_top DUT (.ser_clk(ser_clk), .INT1(INT1), .MISO(MISO), .data_out(data_out), 
                    .MOSI(MOSI), .outClk(outClk), .DATA_READY_FIFO(DATA_READY_FIFO), .CS(CS));
    //generate a 1MHZ clk
    initial ser_clk = 0;
    always #500 ser_clk = ~ser_clk;

    initial 
    begin
        INT1 = 0;
        MISO = 0;
        #100000;
        INT1 = 1;
        #8000 
        for(i = 0; i<16; i=i+1)
        begin
            MISO = 1;
            #1000;
        end
        MISO = 0;
        #5000 $finish;
    end

endmodule
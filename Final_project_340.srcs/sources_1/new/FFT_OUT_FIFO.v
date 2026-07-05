`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/04/2026 03:57:11 PM
// Design Name: 
// Module Name: FFT_OUT_FIFO
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


module FFT_OUT_FIFO(
    //FIFO_WRITE
    output FIFO_FULL
    input [31:0] data_in,
    input write_enable, // BRING THIS FROM DATA_TVALID
    //FIFO_READ
    output FIFO_EMPTY,
    output [31:0] data_out,
    input read_enable,
    //other signals
    //input rst,
    input wr_clk, //100MHz sysclk
    input rd_clk, //1ish MHz spi clk
    output wr_ack,
    output wr_rst_busy,
    output rd_rst_busy
    
    );
    wire gated_we, gated_re;
    assign gated_we = write_enable & ~wr_rst_busy;
    assign gated_re = read_enable_enable & ~rd_rst_busy;

    fifo_generator_1 FIFO_OUT (
        .full(FIFO_FULL), // goes high if the fifo is completely full
        .din(data_in), // data from FFT
        .wr_en(gated_we), // write enaable and not wr_rst_busy

        .empty(FIFO_EMPTY), // when the FIFO reg is empty
        .dout(data_out), // data from the FIFO to the SPI module
        .rd_en(gated_re), // read_enable(external) and ~rd_rst_busy

        .rst(rst), // reset signal, high for 1 clk pulse
        .wr_clk(wr_clk), // 100MHz clk
        .rd_clk(rd_clk), // spi clk/32 (because we have to shift it out serially)

        .wr_ack(wr_ack), // not sure what to do with this yet but here it is
        .wr_rst_busy(wr_rst_busy), // rst_busy signals
        .rd_rst_busy(rd_rst_busy) // rst_busy signals
    );

    //RST CNT
    reg rst;
    reg [9:0] cnt;
    reg rst_done;
    initial begin
        cnt = 0;
        rst_done = 0;
    end
    always @ (posedge wr_clk)
    begin
        if(gated_we) cnt <= cnt + 1; //every time we actually write, increment by 1
        if(cnt == 511 && gated_we && ~rst_done) begin //rst on cnt 511
            rst <= 1'b1;
            rst_done <= 1'b1; //drop the rst next cycle to continune the cnt
        end 
        else rst <= 1'b0; // drop rst
        if(cnt == 0) rst_done <= 1'b0; //reset the rst_done signal
    end



endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/07/2026 09:42:27 AM
// Design Name: 
// Module Name: FFT_OUT_FIFO_tb
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


module FFT_OUT_FIFO_tb(   );
    integer i;


    wire FIFO_FULL;
    reg [31:0] data_in;
    reg write_enable;
    wire FIFO_EMPTY;
    wire [31:0] data_out;
    reg read_enable;
    reg wr_clk;
    reg rd_clk;
    wire wr_ack;
    wire wr_rst_busy;
    wire rd_rst_busy;
    reg rst;

    FFT_OUT_FIFO DUT (
    .FIFO_FULL(FIFO_FULL),
    .data_in(data_in),
    .write_enable(write_enable),
    .FIFO_EMPTY(FIFO_EMPTY),
    .data_out(data_out),
    .read_enable(read_enable),
    .wr_clk(wr_clk),
    .rd_clk(rd_clk),
    .wr_ack(wr_ack),
    .wr_rst_busy(wr_rst_busy),
    .rd_rst_busy(rd_rst_busy),
    .rst_ext(rst)
    );

    initial
    begin
        rd_clk = 0;
        wr_clk = 0;
        data_in = 0;
        write_enable = 0;
        read_enable = 0;
        rst = 0;
    end

    always #500 rd_clk = ~rd_clk;
    always #5 wr_clk = ~wr_clk;

    initial 
    begin
        #1000 rst = 1;
        #1000 rst = 0;
        #1000
        for(i=0; i<1024; i=i+1)
        begin
            if(~wr_rst_busy)
            begin
                #10
                write_enable = 1;
                data_in=data_in+1;
            end
            else 
            begin
                #10
                write_enable = 0;
                i=i-1; 
            end
        end
        #10 write_enable = 0;
        #1000 read_enable = 1;
    end


endmodule

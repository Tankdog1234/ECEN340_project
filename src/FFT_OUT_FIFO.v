`timescale 1ns / 1ps


module FFT_OUT_FIFO(
    //FIFO_WRITE
    output FIFO_FULL,
    input [31:0] data_in,
    input write_enable, // BRING THIS FROM DATA_TVALID
    //FIFO_READ
    output FIFO_EMPTY,
    output [31:0] data_out,
    input read_enable,
    //other signals
    input rst_ext,
    input wr_clk, //100MHz sysclk
    input rd_clk, //1ish MHz spi clk
    output wr_ack,
    output wr_rst_busy,
    output rd_rst_busy
    
    );
    wire gated_we, gated_re;
    assign gated_we = write_enable & ~wr_rst_busy;
    assign gated_re = ~read_enable & ~rd_rst_busy & ~FIFO_EMPTY;

    fifo_generator_1 FIFO_OUT (
        .full(FIFO_FULL), // goes high if the fifo is completely full
        .din(data_in), // data from FFT
        .wr_en(gated_we), // write enaable and not wr_rst_busy

        .empty(FIFO_EMPTY), // when the FIFO reg is empty
        .dout(data_out), // data from the FIFO to the SPI module
        .rd_en(gated_re), // read_enable(external) and ~rd_rst_busy

        .rst(rst_ext), // reset signal, high for 1 clk pulse
        .wr_clk(wr_clk), // 100MHz clk
        .rd_clk(rd_clk), // spi clk/32 (because we have to shift it out serially)

        .wr_ack(wr_ack), // not sure what to do with this yet but here it is
        .wr_rst_busy(wr_rst_busy), // rst_busy signals
        .rd_rst_busy(rd_rst_busy) // rst_busy signals
    );
    /*
    //RST CNT
    reg rst;
    reg [9:0] cnt;
    reg [9:0] rst_done;
    initial begin
        cnt = 0;
        rst_done = 0;
    end


    always @ (posedge wr_clk)
    begin
        if(rst_ext)
        begin
            rst <= 1'b1;
            rst_done <= 0;
            cnt <= 0;
        end
        else if(cnt == 511)
        begin
            if (rst_done < 600) begin
                rst      <= 1'b1;
                rst_done <= rst_done + 1;
            end
            else begin
                rst      <= 1'b0;
                rst_done <= 0;
                cnt      <= cnt + 1;
            end
        end
        else begin
            rst <= 1'b0; 
            if (gated_we) begin
                cnt <= cnt + 1;
            end
        end
    end
    */

endmodule

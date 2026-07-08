`timescale 1ns / 1ps


module acc_spi_clk_gen(
    input wire clk,
    output wire spi_clk
    );
    reg [2:0] divider = 0;
    wire clk8MHz; // 8MHz output of PLL
    clk_wiz_0 C1 (.clk_in1(clk), .clk_out1(clk8MHz));

    always @(posedge clk8MHz) begin
        divider <= divider + 1;
    end

    assign spi_clk = divider[2];
endmodule

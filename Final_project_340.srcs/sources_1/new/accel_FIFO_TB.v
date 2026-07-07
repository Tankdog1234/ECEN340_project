`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2026 10:02:41 AM
// Design Name: 
// Module Name: accel_FIFO_TB
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


module accel_FIFO_TB();
    // Generate a 1 MHz write clock
    reg wr_clk = 0;
    always #500 wr_clk <= ~wr_clk;

    // Generate a 100 MHz read clock
    reg rd_clk = 0;
    always #5 rd_clk <= ~rd_clk;

    reg [15:0] din = 16'h0;
    wire [15:0] dout;
    reg btnC, WE, RE;
    wire data_ready;
    reg data_ready_tm1;
    reg [9:0] rd_cnt = 0;

    accel_FIFO DUT (.FIFO_in(din),
                    .wr_clk(wr_clk),
                    .rd_clk(rd_clk),
                    .rst(btnC),
                    .WE(WE),
                    .RE(RE),
                    .FIFO_out(dout),
                    .data_ready(data_ready)
    );
    
    wire empty, full;
    wire wr_rst_busy, rd_rst_busy;
    assign empty = DUT.empty;
    assign full = DUT.full;
    assign wr_rst_busy = DUT.wr_rst_busy;
    assign rd_rst_busy = DUT.rd_rst_busy;

    integer i = 0;
    initial begin
        btnC <= 1;
        WE <= 0;
        RE <= 0;
        #500;
        btnC <= 0;
    end

    always @ (posedge wr_clk) begin
        if (i <= 1023 && !DUT.wr_rst_busy && !full) begin
            WE <= 1;
            i <= i + 1;

            din <= din + 16'h1;
        end else begin
            WE <= 0;
        end
    end

    always @ (posedge rd_clk) begin
        data_ready_tm1 <= data_ready;
    
        // Since data_ready goes low upon starting to read from the FIFO...
        if (data_ready && !data_ready_tm1) begin
            RE <= 1;
            rd_cnt <= 0;
        end
        
        // Ensure all 1024 samples are read out
        if (RE) begin
            if (rd_cnt <= 1023) begin
                rd_cnt <= rd_cnt + 1;
                $display(dout);
            end else begin
                RE <= 0;
            end
        end
        
        if (rd_cnt >= 1023) $finish;

    end

endmodule

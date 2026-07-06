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
    wire btnC, WE, RE, data_ready;
    reg rd_cnt = 0;

    accel_FIFO(.FIFO_in(din),
               .wr_clk(wr_clk),
               .rd_clk(rd_clk),
               .rst(btnC),
               .WE(WE),
               .RE(RE),
               .FIFO_out(dout),
               .data_ready(data_ready)
    );

    integer i = 0;
    initial btnC = 0;

    always @ (posedge wr_clk) begin
        if (i < 1023) begin
            WE <= 1;
            i <= i + 1;

            din <= din + 16'h1;
        end else begin
            WE <= 0;
        end
    end

    always @ (posedge rd_clk) begin
        // Since data_ready goes low upon starting to read from the FIFO, lock in the data reading process
        if (data_ready) begin
            RE <= 1;
            rd_cnt <= 0;
        end
        
        // Ensure all 1024 samples are read out
        if (rd_lock_in) begin
            if (rd_cnt < 1023) begin
                rd_cnt <= rd_cnt + 1;
                $display(dout);
            end else begin
                RE <= 0;
            end
        end

    end

endmodule

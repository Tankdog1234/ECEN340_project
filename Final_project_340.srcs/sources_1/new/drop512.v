`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/07/2026 11:08:48 AM
// Design Name: 
// Module Name: drop512
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


module drop512(
    input wire we_FFT,
    output wire we_FIFO,
    input write_clk
    );

    reg [9:0] cnt;
    reg [1:0] cnt2;
    initial begin
         cnt = 0;
         cnt2 = 0;
    end
    always @ (posedge write_clk)
    begin
        if(we_FFT) 
        begin
        cnt <= cnt + 1;
        cnt2 <= 0;
        end
        else if(~we_FFT && (cnt2 == 3))
        begin
            cnt <= 0;
            cnt2 <= 0;
        end
        else 
        begin
            cnt <= cnt;
            cnt2 <= cnt2 + 1;
        end
    end
    assign we_FIFO = (cnt >= 512) & (we_FFT);

endmodule

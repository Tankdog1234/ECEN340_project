`timescale 1ns / 1ps

module drop512(
    input wire we_FFT,
    output wire we_FIFO,
    input write_clk,
    input FFT_last,
    output wire int3
    );
    //reg CS_tm1;
    reg [9:0] cnt;
    //reg [1:0] cnt2;
    initial begin
         cnt = 0;
         //cnt2 = 0;
         //int3 = 0;
    end
    always @ (posedge write_clk)
    begin
        if(FFT_last) 
        begin
        cnt <= 0;
        //cnt2 <= 0;
        //int3 <= 0;
        end
        else if(we_FFT)
        begin
            cnt <= cnt + 1;
            //cnt2 <= 0;
            //int3 <= 1;
        end
        else 
        begin
            cnt <= cnt;
            //cnt2 <= cnt2 + 1;
            //int3 <= 0;
        end

    end
    assign we_FIFO = (cnt >= 512) & (we_FFT);
    assign int3 = (cnt >= 1015);

    

endmodule

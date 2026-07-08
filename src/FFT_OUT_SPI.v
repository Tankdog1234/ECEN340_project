`timescale 1ns / 1ps


module FFT_OUT_SPI(
    
    input [31:0] par_data_in, // 32 bit data from FIFO
    input spi_clk, //1MHz ish clk
    input spi_clk_cont, //1MHz ish clk but not gated by CS
    input CS, //CS line from STM32
    output wire MISO, // FPGA (slave) to MCU (master)
    output wire rd_clk // spi_clk_cont divided by 32
    
    );
    reg [4:0] clk_divide; // divides spi_clk to 31.25kHz
    reg [4:0] bit_out; //rotates through 32 bits to pass them serialy one at a time
    reg [31:0] par_data_hold; // holds the data for the duration


    initial begin //initialize these to 0
        bit_out = 0; 
        clk_divide = 0;
    end
    assign rd_clk = clk_divide[4]; //rd_clk = spi_clk / 32
    //while we are shifting the data from par_data_in to par_data_hold, use par_hold_data. Else use saved data
    assign MISO = (bit_out == 0) ? par_data_in[bit_out] : par_data_hold[bit_out]; 
    //on posedge of spi_clk (if CS) Increment bit_out. If we are on the first bit (bit_out == 0) shift in new par_data 
    always @ (posedge spi_clk)
    begin
        if(!CS)bit_out <= bit_out +1;
        else bit_out <= bit_out;
        if(bit_out==0) par_data_hold <= par_data_in;
        else par_data_hold <= par_data_hold;
    end

    //increment our clock divide
    always @ (posedge spi_clk_cont)
    begin
        clk_divide <= clk_divide + 1;
    end


    
endmodule

`timescale 1ns / 1ps

module FFT_Interface(
    input wire clk, // 100MHz clk (system clk)

    input wire [15:0] data_in, //16 bit data from acc/FIFO
    input wire acc_last, // from FIFO, signifies last bit
    input wire acc_data_valid, //the current input is ready to be passed in
    output wire FFT_ready_for_acc_data, //if this goes low, that means we are not ready to ready to read the data in yet

    input wire spi_out_read_ready, // is the OUT_FIFO ready to recieve our data?
    output wire [31:0] FFT_data_out, //32 bit data going to the fifo
    output wire FFT_data_last, // the last output in the frame
    output wire FFT_data_valid, //the data is ready to be read by the out fifo

    output wire [5:0] FFT_status // status flags for internal FFT opperations
    );
    wire [31:0] input_data;
    
    wire null0;
    wire [15:0] config_data;
    //imagianary part is all 0's, real part from acc
    assign input_data = {16'b0, data_in};
    //bit 15: padding
    //bits 14-1: divide each stage by 4
    //bit 0: FFT (not inverse FFT)
    assign config_data = 16'b0101010101010101;

    xfft_0 FFT_Processor (
    //Data In signals
    .s_axis_sata_tdata(input_data), // acc data padded with 0's
    .s_axis_data_tlast(acc_last), //from the FIFO, tells when all 1024 samples are in
    .s_axis_data_tready(FFT_ready_for_acc_data), //if we are ever not ready to recieve, this goes low
    .s_axis_data_tvalid(acc_data_valid), //FIFO is ready to give to us
    //config data signals
    .s_axis_config_tdata(config_data), //see config data comment
    .s_axis_config_tready(null0), //we don't care when it looks at the config data
    .s_axis_config_tvalid(1'b1), // we're always ready because the config is hardcoded
    //clk
    .aclk(clk),
    //Data Out signals
    .m_axis_data_tdata(FFT_data_out),       //The actual 32 bit output data
    .m_axis_data_tlast(FFT_data_last),      //output signal saying this is the last datapoint
    .m_axis_data_tready(spi_out_read_ready),//input signal for when the spi is ready to read
    .m_axis_data_tvalid(FFT_data_valid),    //output signal for when the data is valid
    //status signals (for debugging or errors and such, check datasheet for details)
    .event_frame_started(           FFT_status[0]), 
    .event_tlast_unexpected(        FFT_status[1]),
    .event_tlast_missing(           FFT_status[2]),
    .event_status_chanel_halt(      FFT_status[3]),
    .event_data_in_channel_halt(    FFT_status[4]),
    .event_data_out_channel_halt(   FFT_status[5])
    );


endmodule

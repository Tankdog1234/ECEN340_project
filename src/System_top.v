`timescale 1ns / 1ps


module System_top(
    input clk,
    input btnC,
    inout [7:0] JA,
    inout [7:0] JB,
    inout [7:0] JC
    );

    wire spi_clk;
    //BtnC sync
    reg BtnC_tm1_clk;
    reg BtnC_tm2_clk;
    reg BtnC_tm1_SPI_clk;
    reg BtnC_tm2_SPI_clk;
    reg BtnC_tm1_ext_clk;
    reg BtnC_tm2_ext_clk;
    reg spi_cont, spi_mask;

    initial begin
        BtnC_tm1_clk=0;
        BtnC_tm2_clk=0;
        BtnC_tm1_SPI_clk=0;
        BtnC_tm2_SPI_clk=0;
        BtnC_tm1_ext_clk=0; 
        BtnC_tm2_ext_clk=0;
    end

    always @ (posedge clk)begin
        BtnC_tm1_clk <= btnC;
        BtnC_tm2_clk <= BtnC_tm1_clk;
        spi_cont <=JC[6];
        spi_mask <=JC[5];
    end

    always @ (posedge spi_clk)begin
        BtnC_tm1_SPI_clk <= btnC;
        BtnC_tm2_SPI_clk <= BtnC_tm1_SPI_clk;
    end

        always @ (posedge rd_clk)begin
        BtnC_tm1_ext_clk <= btnC;
        BtnC_tm2_ext_clk <= BtnC_tm1_ext_clk;
    end

    wire  INT1, MISO, MOSI, outClk, DATA_READY_FIFO, CS, win_ready, win_DA_out;
    wire [15:0] parallel_data_out, FIFO1_out;
    wire [31:0] window_out;
    
    wire DV_WE, DDV_WE;
    wire [31:0] FFT_data_out;
    wire FFT_ready;

    wire data_last, data_ready, data_last_pipeline;

    wire rd_clk;
    wire [31:0] par_data_fifo_out;

    assign JA[7] = CS;
    assign INT1  = JA[6]; 
    assign JA[5] = 1'bZ;
    assign MISO  = JA[4]; 
    assign JA[3] = spi_clk;
    assign JA[2] = DATA_READY_FIFO;
    assign JA[1] = MOSI;
    assign JA[0] = outClk;
    
    // 1 MHz clock module
    acc_spi_clk_gen  C1 (
        .clk(clk), 
        .spi_clk(spi_clk)
        );

    accel_FSM  FSM1 (
        .ser_clk(spi_clk),
        .INT1(INT1),
        .MISO(MISO),
        .reset(BtnC_tm2_SPI_clk),
        .data_out(parallel_data_out),
        .MOSI(MOSI),
        .outClk(outClk),
        .DATA_READY_FIFO(DATA_READY_FIFO),
        .CS(CS)
        );


    accel_FIFO FIFO1 (
        .FIFO_in(parallel_data_out),
        .wr_clk(spi_clk),
        .rd_clk(clk),
        .rst(BtnC_tm2_SPI_clk),
        .WE(DATA_READY_FIFO),
        .RE(win_ready),
        .FIFO_out(FIFO1_out),
        .data_ready(data_ready),
        .data_last(data_last)
    );

    windowing HANN0 (
    .clk(clk),
    .rst(BtnC_tm2_clk),
    .DA_in(data_ready),
    .data_in(FIFO1_out),
    .ready_out(win_ready),
    .DA_out(win_DA_out),
    .data_out(window_out),
    .FFT_ready(FFT_ready),
    .data_last(data_last),
    .data_last_pipeline(data_last_pipeline)
    );

    wire FFT_last;

    FFT_Interface FFT (
        .clk(clk),
        .data_in(window_out),
        .acc_last(data_last_pipeline),
        .acc_data_valid(win_DA_out),
        .FFT_ready_for_acc_data(FFT_ready),
        .spi_out_read_ready(1'b1),
        .FFT_data_out(FFT_data_out),
        .FFT_data_last(FFT_last),
        .FFT_data_valid(DV_WE),
        .FFT_status()
    );

    drop512 U1 (
        .we_FFT(DV_WE),
        .we_FIFO(DDV_WE),
        .write_clk(clk),
        .int3(JB[0]), 
        .FFT_last(FFT_last)
    );
    wire wr_rst_busy;
    wire rd_rst_busy;
    
    FFT_OUT_FIFO FIFO2 (
        .FIFO_FULL(),
        .data_in(FFT_data_out),
        .write_enable(DDV_WE),
        .FIFO_EMPTY(JC[0]),
        .data_out(par_data_fifo_out),
        .read_enable(!JB[4]), //CS line
        .rst_ext(BtnC_tm2_ext_clk),
        .wr_clk(clk),
        .rd_clk(rd_clk),
        .wr_ack(),
        .wr_rst_busy(wr_rst_busy),
        .rd_rst_busy(rd_rst_busy)
    ); 


    FFT_OUT_SPI SPI2 (
        .par_data_in(par_data_fifo_out),
        .spi_clk(spi_mask),
        .spi_clk_cont(spi_cont),
        .CS(JB[4]),
        .MISO(JB[3]),
        .rd_clk(rd_clk)
    );
    
endmodule

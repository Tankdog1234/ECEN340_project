`timescale 1ns / 1ps

module system_top_TB();
    // Generate a 100 MHz clock
    reg clk100 = 0;
    reg clk1 = 0;
    always #5 clk100 = ~clk100; //100MHz
    always #500 clk1 = ~clk1;
    reg btnC;
    
    wire [7:0] JA;
    wire [7:0] JB;
    wire [7:0] JC;

    // ----------------------------------------------------
    // TESTBENCH DRIVERS (Inputs to the FPGA)
    // ----------------------------------------------------
    reg INT1_driver;
    reg MISO_driver;

    // Only drive the specific JA pins that act as inputs to System_top
    assign JA[6] = INT1_driver; 
    assign JA[4] = MISO_driver; 

    // Leave the FPGA's outputs as High-Z so System_top can drive them safely
    assign JA[7] = 1'bZ; // CS
    assign JA[5] = 1'bZ; // Unused
    assign JA[3] = 1'bZ; // Unused
    assign JA[2] = 1'bZ; // DATA_READY_FIFO
    assign JA[1] = 1'bZ; // MOSI
    assign JA[0] = 1'bZ; // outClk

    // ----------------------------------------------------
    // TESTBENCH MONITORS (Outputs from the FPGA)
    // ----------------------------------------------------
    wire CS_out     = JA[7];
    wire MOSI_out   = JA[1];
    wire outClk_out = JA[0];


    reg [13:0] cnt_stim;
    reg [4:0] cnt_rd_wait;

    reg [15:0] stimulus [0:10724];

    // DUT Instantiation
    System_top DUT (.clk(clk100),
                    .btnC(btnC),
                    .JA(JA),
                    .JB(JB),
                    .JC(JC)
    );

    assign JB[1] = clk100; // Fake continuous SPI clock
    assign JB[2] = clk100; // Fake SPI transmission clock
    assign JB[4] = 1'b1;   // Hold CS high for now

    initial begin
        $readmemh("C:/Users/User/Documents/GitHub/ECEN340_project/Data_Logger_project/clean_stimulus.hex", stimulus);

        cnt_stim = 0;
        cnt_rd_wait = 0;
        btnC = 1;
        INT1_driver = 0;
        MISO_driver = 0;
        
        #1000 btnC = 0;
        #100000;
        
        for(integer i = 0; i<10724; i=i+1)
        begin
            #500 INT1_driver = 1;
            #5000 INT1_driver = 0;
            #500000;
            cnt_stim = cnt_stim + 1;
        end
    end

    // Use the alias wires to read the DUT clock and CS line
    always @ (posedge outClk_out)
    begin
        if(~CS_out) begin 
            cnt_rd_wait <= 0;
            MISO_driver <= 0; // Fixed undeclared variable error
        end
        else if(cnt_rd_wait < 8 )begin
            cnt_rd_wait <= cnt_rd_wait + 1;
            MISO_driver <= 0;
        end
        else begin
            cnt_rd_wait <= cnt_rd_wait + 1;
            // Protect against out-of-bounds indexing if cnt_rd_wait goes above 23
            if (cnt_rd_wait <= 23)
                MISO_driver <= stimulus[cnt_stim][23-cnt_rd_wait];
            else
                MISO_driver <= 0;
        end
    end

endmodule
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/18/2026 01:56:57 PM
// Design Name: 
// Module Name: accel_top
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


module accel_FSM (
    input ser_clk,
    input INT1,
    input MISO,
    input reset,
    output reg [15:0] data_out,
    output reg MOSI,
    output wire outClk,
    output reg DATA_READY_FIFO,
    output reg CS
    );

    // State names
    parameter CONFIG = 2'b00,
              IDLE = 2'b01,
              READ = 2'b10;
    
    // Register addresses
    parameter FIFO_ADDR = 6'h38,
              INTERR_ADDR = 6'h2E,
              READ_ADDR = 6'h32,
              SAMPLE_ADDR = 6'h2C,
              MEASURE_BIT_ADDR = 6'h2D,
              DATA_FORMAT_ADDR = 6'h31;
              
    parameter R = 1'b1,
              W = 1'b0,
              MB_T = 1'b1,  // Multi-bit true/false
              MB_F = 1'b0,
              NS = 1'b0;    // No signal
              
              // Bits 7 & 6 = FIFO mode
              // Bit 0 sets watermark level to 1
    parameter FIFO_CONFIG = {W, MB_F, FIFO_ADDR, 8'b01000001}, // 16 clock cycles
              // Bit 15 = DATA_READY
              // Bit 8 = Overrun
              // Bit 7 = DATA_READY on interrupt line 1
              // Bit 0 = Overrun on interrupt line 2
              INTERR_CONFIG = {W, MB_T, INTERR_ADDR, 16'b1000_0001_0000_0001}, // 24 clock cycles
              SET_800Hz_SAMPLE = {W, MB_F, SAMPLE_ADDR, 8'b1101}, // 16 clock cycles
              SET_MEASURE_BIT = {W, MB_F, MEASURE_BIT_ADDR, 8'h08}, // 16 clock cycles
              // Bit 3 = FULL_RES bit
              // Bits 1 & 0 = Range bits
              SET_DATA_FORMAT = {W, MB_F, DATA_FORMAT_ADDR, 8'b0000_0101}, // 16 clock cycles
              READ_CMD = {R, MB_T, READ_ADDR}, // 8 bits starting a read
              WRITE_CONFIG_DATA = {NS, NS, FIFO_CONFIG, NS, INTERR_CONFIG, NS, SET_800Hz_SAMPLE, NS, SET_DATA_FORMAT, NS, SET_MEASURE_BIT};
              
    reg [1:0] curr_state, next_state;
    reg [6:0] config_cnt; // 94 clock cycles for config (decrementing)
    reg [4:0] read_cnt; // 25 clock cycles to perform read operation (decrementing)
    reg int1_tm1; // Past state of the INT1 interrupt

    initial begin
        config_cnt = 93;
        read_cnt = 29;
    end

    
    
    initial data_out = 16'b0;
    initial curr_state = IDLE;
    
    assign outClk = ser_clk | CS; // TODO fix inferred latch of CS
    
    always @ (negedge ser_clk or posedge reset) begin: STATE_MEMORY
        if (reset) begin
            curr_state <= CONFIG;
            config_cnt <= 93;
            read_cnt <= 29;
            
        end else begin
            curr_state <= next_state;
            int1_tm1 <= INT1;
            
            if (curr_state == CONFIG) begin
                config_cnt <= config_cnt - 1;
            end
            
            if ((curr_state == READ)&&(read_cnt>0)) begin
                read_cnt <= read_cnt - 1;
            end else begin
                read_cnt <= 29;
            end
//        if((read_cnt < 17) && (read_cnt >0)) data_out <= {data_out[14:0], MISO};
//        else data_out <= data_out;
        end
    end
    
    always @ (posedge ser_clk) begin: MISO_SAMPLING
        if ((curr_state == READ) && (read_cnt <= 16) && (read_cnt > 0)) begin 
            data_out <= {data_out[14:0], MISO};
        end
        
    end
    
    always @ (*) begin: NEXT_STATE_LOGIC
        case (curr_state) // TODO add a default case
            CONFIG: begin
                //DATA_READY_FIFO = 1'b0;
                if (config_cnt == 0) begin
                    next_state = IDLE; // TODO fix inferred latch of next_state
                end else begin
                    next_state = CONFIG;
                end
            end
                    
            IDLE: begin
                //DATA_READY_FIFO = 1'b0;
                if (INT1 && !int1_tm1) begin
                    next_state = READ;
                    //read_cnt = 24;
                end else begin
                    next_state = IDLE;
                end
            end
                
            READ:
                if (read_cnt == 0) begin
                    next_state = IDLE;
                end else begin
                    next_state = READ;
                end
            default: next_state = IDLE;
        endcase
    end
    
    always @ (*) begin: OUTPUT_LOGIC
        case (curr_state) // TODO add a default case
            CONFIG: begin
                DATA_READY_FIFO = 1'b0; // TODO fix inferred latch of DATA_READY_FIFO
                MOSI = WRITE_CONFIG_DATA[config_cnt]; // TODO fix inferred latch of MOSI
                // Pulse CS high after each config command
                if ((config_cnt > 91) || (config_cnt == 75) || (config_cnt == 50) || (config_cnt == 33) || (config_cnt == 16)) begin
                    CS = 1'b1;
                end else begin
                    CS = 1'b0;
                end
            end
            
            IDLE: begin
                CS = 1;
                DATA_READY_FIFO = 1'b0;
            end
            
            READ: begin
                DATA_READY_FIFO = 1'b0;
                MOSI = 1'b0;
                CS = 1'b1;
                
                // Bits 24-17 are command and address data
                if (read_cnt <= 24 && read_cnt > 16) begin
                    MOSI = READ_CMD[read_cnt - 17]; // TODO Input operands(of sizes 5 1) of add/sub cluster ending with expression '(read_cnt - 17)' could yield maximum size of 5, but only width of 3 is being used
                    CS = 1'b0;

                end else if (read_cnt <= 16 && read_cnt > 0) begin
                    MOSI = 1'b0;
                    CS = 1'b0;
                // Bits 16-1 are accelerometer data
                // Bit 0 set data ready flag for FIFO
                end else if(read_cnt == 0) begin
                    DATA_READY_FIFO = 1;
                    CS = 1;
                end
            end
            default:
            begin
                CS = 1;
                DATA_READY_FIFO = 1'b0;
            end
        endcase
    end
    
    // this is a test comment
endmodule
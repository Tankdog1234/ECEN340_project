module windowing #(
    parameter FFT_SIZE = 1024,
    parameter ADDR_WIDTH = 10 // log2(1024)
)(
    input wire clk,
    input wire rst,

    // Inputs from FIFO
    input wire DA_in,
    input wire [15:0] data_in,
    output wire ready_out, // Signal to FIFO indicating readiness

    // Outputs to FFT
    output reg DA_out,
    output reg [31:0] data_out,
    //input from FFT (FFT ready for data)
    input wire FFT_ready,
    input wire data_last,
    output reg data_last_pipeline
);
    reg data_last_delay;
    // Internal Registers for the Pipeline
    reg [ADDR_WIDTH-1:0] addr_counter;
    reg [15:0] data_in_delayed;
    reg DA_in_delayed;

    // Wire for BRAM output
    wire [15:0] window_coeff;

    // 32-bit result from multiplication (16-bit * 16-bit)
    wire [31:0] mult_result;

    // Drive the ready signal (Ready as long as not in reset)
    assign ready_out = FFT_ready;

   
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            addr_counter <= 0;
        end else if (DA_in && FFT_ready) begin
            if (addr_counter == FFT_SIZE - 1) begin
                addr_counter <= 0;
            end else begin
                addr_counter <= addr_counter + 1;
            end
        end
    end


    always @(posedge clk) begin
        if (FFT_ready) begin // Stall protection
            if (DA_in) begin
                data_in_delayed <= data_in;
                data_last_delay <= data_last; 
            end
            DA_in_delayed <= DA_in;
        end
    end


    blk_mem_gen_0 window_rom (
        .clka(clk),
        .ena(FFT_ready),
        .addra(addr_counter),
        .douta(window_coeff)
    );

    wire [32:0] mult_result32;
    assign mult_result32 = $signed(data_in_delayed) * $signed({1'b0, window_coeff});
    assign mult_result = mult_result32[31:0];

    always @(posedge clk) begin
        if (FFT_ready) begin
            DA_out <= DA_in_delayed;
            
            if (DA_in_delayed) begin
                data_out <= {16'b0, mult_result[31:16]};
                data_last_pipeline <= data_last_delay; 
            end else begin
                data_last_pipeline <= 1'b0; 
            end
        end
    end

endmodule
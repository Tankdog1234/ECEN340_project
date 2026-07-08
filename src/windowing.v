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
    assign ready_out = DA_in & FFT_ready;

    // 1. Address Counter
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            addr_counter <= 0;
        end else if (DA_in) begin
            if (addr_counter == FFT_SIZE - 1) begin
                addr_counter <= 0;
            end else begin
                addr_counter <= addr_counter + 1;
            end
        end
    end

    // 2. Pipeline Delay (Aligning Data with BRAM)
    always @(posedge clk) begin
        if (DA_in) begin
            data_in_delayed <= data_in;
        end
        DA_in_delayed <= DA_in;
        if(DA_out)
        begin
            
            data_last_delay <= data_last;
            data_last_pipeline <= data_last_delay;
        end
        else
        begin
            data_last_delay <= data_last_delay;
            data_last_pipeline <= data_last_pipeline;
        end

    end

    // 3. BRAM Instantiation (Holds the Hann Window)
    // Replaced the old hann_rom placeholder with your actual Vivado IP
    blk_mem_gen_0 window_rom (
        .clka(clk),
        .addra(addr_counter),
        .douta(window_coeff)
    );

    // 4. Multiplication
    assign mult_result = data_in_delayed * window_coeff;

    // 5. Output Formatting (Real + Imaginary Padding)
    always @(posedge clk) begin
        DA_out <= DA_in_delayed;
        if (DA_in_delayed) begin
            // Upper 16 bits: Imaginary (0), Lower 16 bits: Real (Upper 16 of mult)
            data_out <= {16'b0, mult_result[31:16]}; 
        end
    end

endmodule
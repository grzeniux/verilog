module top (
    input wire clk,                // 100 MHz clock
    input wire lvds_trigger,       // Trigger z CH2 (np. JD2_P)
    output wire uart_tx,           // UART TX (JA1)
    output wire led                // LED œwieci jeœli delay_cycles > 3
);

    // UART
    reg [7:0] uart_data = 0;
    reg uart_start = 0;
    wire uart_busy;

    uart_tx_module #(.BAUD_DIV(868)) uart0 (
        .clk(clk),
        .tx_data(uart_data),
        .tx_start(uart_start),
        .tx(uart_tx),
        .tx_busy(uart_busy)
    );

    // Wykrywanie zbocza triggera
    reg prev_trigger = 0;
    wire rising_edge = (lvds_trigger == 1) && (prev_trigger == 0);

    // Carry Chain
    wire [7:0] delay_cycles;
    carry_chain_sampler sampler_inst (
        .clk(clk),
        .trigger(rising_edge),
        .delay_cycles(delay_cycles)
    );

    // LED œwieci, jeœli delay > 3
    assign led = (delay_cycles > 3);

    // Wysy³anie delay przez UART
    reg [3:0] state = 0;
    reg [7:0] delay_reg = 0;

    always @(posedge clk) begin
        prev_trigger <= lvds_trigger;
        uart_start <= 0;

        case (state)
            0: if (rising_edge) begin
                delay_reg <= delay_cycles;
                state <= 1;
            end

            1: if (!uart_busy) begin
                uart_data <= nibble_to_ascii(delay_reg[7:4]);
                uart_start <= 1;
                state <= 2;
            end

            2: if (!uart_busy) begin
                uart_data <= nibble_to_ascii(delay_reg[3:0]);
                uart_start <= 1;
                state <= 3;
            end

            3: if (!uart_busy) begin
                uart_data <= 8'd10;  // \n
                uart_start <= 1;
                state <= 4;
            end

            4: if (!uart_busy) begin
                state <= 0;
            end
        endcase
    end

    // Nibble to ASCII
    function [7:0] nibble_to_ascii;
        input [3:0] nibble;
        begin
            if (nibble < 10)
                nibble_to_ascii = 8'd48 + nibble;
            else
                nibble_to_ascii = 8'd65 + (nibble - 10);
        end
    endfunction

endmodule

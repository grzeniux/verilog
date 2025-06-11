module top (
    input wire clk,
    input wire lvds_in_p,  // JD2_P ? CH2
    input wire lvds_in_n,  // JD2_N ? CH1
    output wire uart_tx,
    output reg led         // LD3 sygnalizacja triggera
);

    // UART TX
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

    // Trigger z pseudo-LVDS
    wire lvds = lvds_in_p & ~lvds_in_n;
    reg prev_lvds = 0;
    wire trigger = (~prev_lvds & lvds);

    always @(posedge clk) begin
        prev_lvds <= lvds;
    end

    // LED jako wskaŸnik triggera
    reg [23:0] led_timer = 0;
    always @(posedge clk) begin
        if (trigger) begin
            led <= 1;
            led_timer <= 24'd5_000_000; // ok. 50 ms
        end else if (led_timer > 0) begin
            led_timer <= led_timer - 1;
            if (led_timer == 1) led <= 0;
        end
    end

    // Carry chain pomiar
    wire [7:0] delay;
    carry_chain_sampler carry_inst (
        .clk(clk),
        .trigger(trigger),
        .delay_cycles(delay)
    );

    // HEX konwersja
    function [7:0] nibble_to_ascii;
        input [3:0] nibble;
        begin
            if (nibble < 10)
                nibble_to_ascii = 8'd48 + nibble;
            else
                nibble_to_ascii = 8'd65 + (nibble - 10);
        end
    endfunction

    reg [3:0] state = 0;
    reg [7:0] temp;

    always @(posedge clk) begin
        uart_start <= 0;

        case (state)
            0: if (trigger) begin
                temp <= delay;
                state <= 1;
            end

            1: if (!uart_busy) begin
                uart_data <= nibble_to_ascii(temp[7:4]);
                uart_start <= 1;
                state <= 2;
            end

            2: if (!uart_busy) begin
                uart_data <= nibble_to_ascii(temp[3:0]);
                uart_start <= 1;
                state <= 3;
            end

            3: if (!uart_busy) begin
                uart_data <= 8'd13; // CR
                uart_start <= 1;
                state <= 4;
            end

            4: if (!uart_busy) begin
                uart_data <= 8'd10; // LF
                uart_start <= 1;
                state <= 0;
            end
        endcase
    end

endmodule

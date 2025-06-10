module top (
    input wire clk,              // 100 MHz
    input wire btn_trigger,      // BTND (R16)
    input wire btn_test,         // BTNR (R18)
    output reg led,              // LD3 (U21) - trigger indicator
    output wire led_test,        // LD4 (V22) - test LED
    output wire uart_tx          // UART TX
);

    // UART
    reg [7:0] uart_data = 8'd0;
    reg uart_start = 0;
    wire uart_busy;

    uart_tx_module #(.BAUD_DIV(868)) uart0 (
        .clk(clk),
        .tx_data(uart_data),
        .tx_start(uart_start),
        .tx(uart_tx),
        .tx_busy(uart_busy)
    );

    // Rejestracja przycisku i wykrycie zbocza
    reg btn_prev = 0;
    reg trigger_reg = 0;
    reg [23:0] led_counter = 0;

    always @(posedge clk) begin
        btn_prev <= btn_trigger;

        if (~btn_prev & btn_trigger) begin
            trigger_reg <= 1;
            led_counter <= 24'd50_000_000; // ~0.5 sekundy migania LED
        end else begin
            trigger_reg <= 0;
        end

        if (led_counter > 0) begin
            led_counter <= led_counter - 1;
            led <= 1;
        end else begin
            led <= 0;
        end
    end

    wire trigger = trigger_reg;

    // Pomiar delay przez carry chain
    wire [7:0] delay_cycles;
    carry_chain_sampler carry_inst (
        .clk(clk),
        .trigger(trigger),
        .delay_cycles(delay_cycles)
    );

    // HEX konwersja
    function [7:0] nibble_to_ascii;
        input [3:0] nibble;
        begin
            if (nibble < 10)
                nibble_to_ascii = 8'd48 + nibble; // '0'..'9'
            else
                nibble_to_ascii = 8'd65 + (nibble - 10); // 'A'..'F'
        end
    endfunction

    // Transmisja UART
    reg [3:0] state = 0;
    reg [7:0] delay_buf = 0;

    always @(posedge clk) begin
        uart_start <= 0;

        case (state)
            0: if (trigger) begin
                delay_buf <= delay_cycles;
                state <= 1;
            end
            1: if (!uart_busy) begin
                uart_data <= nibble_to_ascii(delay_buf[7:4]);
                uart_start <= 1;
                state <= 2;
            end
            2: if (!uart_busy) begin
                uart_data <= nibble_to_ascii(delay_buf[3:0]);
                uart_start <= 1;
                state <= 3;
            end
            3: if (!uart_busy) begin
                uart_data <= 8'd13; // \r
                uart_start <= 1;
                state <= 4;
            end
            4: if (!uart_busy) begin
                uart_data <= 8'd10; // \n
                uart_start <= 1;
                state <= 5;
            end
            5: if (!uart_busy)
                state <= 0;
        endcase
    end

    // LED test (BTNR → LD4)
    assign led_test = btn_test;

endmodule

module top (
    input wire clk,             // 100 MHz clock
    input wire lvds_in_p,       // JD2_P
    input wire lvds_in_n,       // JD2_N
    output wire uart_tx         // UART TX (JA1 ? FT232)
);

    // UART instancja
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

    // Pseudo-LVDS zbocze narastające
    wire lvds = lvds_in_p & ~lvds_in_n;
    reg prev_lvds = 0;
    wire rising_edge = (~prev_lvds) & lvds;

    // Carry Chain - instancja i pomiar
    wire [31:0] carry_sample;
    carry_chain_sampler carry_inst (
        .clk(clk),
        .trigger(rising_edge),
        .sampled_carry(carry_sample)
    );

    // Liczba ustawionych bitów (czas propagacji)
    function [5:0] count_carry_bits;
        input [31:0] sample;
        integer i;
        begin
            count_carry_bits = 0;
            for (i = 0; i < 32; i = i + 1) begin
                if (sample[i])
                    count_carry_bits = count_carry_bits + 1;
            end
        end
    endfunction

    // Pomiar
    reg [31:0] delay = 0;
    reg [31:0] temp = 0;
    reg [3:0] hex_index = 0;
    reg [3:0] sample_index = 0;
    reg [4:0] state = 0;

    reg [19:0] wait_cycles = 0;
    reg uart_was_busy = 0;

    always @(posedge clk) begin
        prev_lvds <= lvds;
        uart_start <= 0;

        // Zbocze LVDS ? rozpocznij pomiar
        if (rising_edge && state == 0 && sample_index < 10) begin
            delay <= count_carry_bits(carry_sample);  // tu użycie carry chain
            state <= 1;
        end

        case (state)

            // 1: inicjalizacja transmisji HEX
            1: if (!uart_busy) begin
                temp <= delay;
                hex_index <= 0;
                state <= 2;
            end

            // 2: przygotowanie jednego znaku HEX i wyzwolenie UART
            2: if (!uart_busy) begin
                uart_data <= nibble_to_ascii(temp[31 - hex_index*4 -: 4]);
                uart_start <= 1;
                uart_was_busy <= 0;
                state <= 3;
            end

            // 3: czekaj na zakończenie transmisji znaku
            3: begin
                if (uart_busy)
                    uart_was_busy <= 1;
                if (uart_was_busy && !uart_busy) begin
                    if (hex_index == 7)
                        state <= 4;
                    else begin
                        hex_index <= hex_index + 1;
                        state <= 2;
                    end
                end
            end

            // \r
            4: if (!uart_busy) begin
                uart_data <= 8'd13;
                uart_start <= 1;
                uart_was_busy <= 0;
                state <= 5;
            end
            5: begin
                if (uart_busy)
                    uart_was_busy <= 1;
                if (uart_was_busy && !uart_busy)
                    state <= 6;
            end

            // \n
            6: if (!uart_busy) begin
                uart_data <= 8'd10;
                uart_start <= 1;
                uart_was_busy <= 0;
                state <= 7;
            end
            7: begin
                if (uart_busy)
                    uart_was_busy <= 1;
                if (uart_was_busy && !uart_busy) begin
                    wait_cycles <= 0;
                    state <= 8;
                end
            end

            // opóźnienie 5 ms
            8: begin
                wait_cycles <= wait_cycles + 1;
                if (wait_cycles == 500_000) begin
                    sample_index <= sample_index + 1;
                    state <= (sample_index == 9) ? 10 : 0;
                end
            end

            // DONE
            10: if (!uart_busy) begin uart_data <= "D"; uart_start <= 1; uart_was_busy <= 0; state <= 11; end
            11: if (uart_busy) uart_was_busy <= 1;
                 else if (uart_was_busy) begin uart_data <= "O"; uart_start <= 1; uart_was_busy <= 0; state <= 12; end
            12: if (uart_busy) uart_was_busy <= 1;
                 else if (uart_was_busy) begin uart_data <= "N"; uart_start <= 1; uart_was_busy <= 0; state <= 13; end
            13: if (uart_busy) uart_was_busy <= 1;
                 else if (uart_was_busy) begin uart_data <= "E"; uart_start <= 1; uart_was_busy <= 0; state <= 14; end
            14: if (uart_busy) uart_was_busy <= 1;
                 else if (uart_was_busy) begin uart_data <= 8'd13; uart_start <= 1; uart_was_busy <= 0; state <= 15; end
            15: if (uart_busy) uart_was_busy <= 1;
                 else if (uart_was_busy) begin uart_data <= 8'd10; uart_start <= 1; uart_was_busy <= 0; state <= 16; end
            16: state <= 16;

        endcase
    end

    // HEX konwersja 4-bit nibble -> ASCII
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

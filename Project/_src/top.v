module top (
    input wire clk,                   // 100 MHz clock
    input wire lvds_in_p,            // Sta³a '1' (symulowane LVDS)
    input wire lvds_in_n,            // test_pulse jako linia ró¿nicowa
    output wire uart_tx,             // UART TX
    output reg led,                  // LED - sygnalizacja triggera
    output reg test_pulse = 0,       // sygna³ testowy (na pin FPGA)
    output wire [7:0] delay_cycles_out, // liczba aktywowanych bitów w carry chain
    output wire [7:0] sim_length,       // losowa d³ugoœæ propagacji - do debug
    output wire [31:0] fake_carry       // zasymulowany stan carry_out - do debug
);

    // UART dummy (mo¿na zamieniæ na w³asny lub zostawiæ pusty)
    wire uart_busy;
    reg [7:0] uart_data = 0;
    reg uart_start = 0;

    uart_tx_module #(.BAUD_DIV(868)) uart0 (
        .clk(clk),
        .tx_data(uart_data),
        .tx_start(uart_start),
        .tx(uart_tx),
        .tx_busy(uart_busy)
    );

    // Generator test_pulse - impuls co 1us
    reg [31:0] counter = 0;
    always @(posedge clk) begin
        counter <= counter + 1;
        if (counter == 100) begin
            test_pulse <= 1;
        end else if (counter == 110) begin
            test_pulse <= 0;
            counter <= 0;
        end
    end

    // Trigger na podstawie ró¿nicy LVDS
    wire lvds = lvds_in_p & ~lvds_in_n;
    reg [1:0] sync_lvds = 0;

    always @(posedge clk) begin
        sync_lvds[0] <= lvds;
        sync_lvds[1] <= sync_lvds[0];
    end

    wire trigger = ~sync_lvds[1] & sync_lvds[0];

    // LED - sygnalizacja triggera (~50 ms)
    reg [23:0] led_timer = 0;
    always @(posedge clk) begin
        if (trigger) begin
            led <= 1;
            led_timer <= 24'd5_000_000;
        end else if (led_timer > 0) begin
            led_timer <= led_timer - 1;
            if (led_timer == 1)
                led <= 0;
        end
    end

    // --- Carry Chain Pomiar (wersja symulacyjna) ---
    wire [7:0] delay_cycles;
    wire [7:0] sim_length_internal;
    wire [31:0] fake_carry_internal;

    assign delay_cycles_out = delay_cycles;
    assign sim_length = sim_length_internal;
    assign fake_carry = fake_carry_internal;

    carry_chain_sampler sampler (
        .clk(clk),
        .trigger(trigger),
        .delay_cycles(delay_cycles),
        .sim_length(sim_length_internal),
        .fake_carry(fake_carry_internal)
    );

    // HEX konwersja do UART
    function [7:0] nibble_to_ascii;
        input [3:0] nibble;
        begin
            if (nibble < 10)
                nibble_to_ascii = 8'd48 + nibble;
            else
                nibble_to_ascii = 8'd65 + (nibble - 10);
        end
    endfunction

    // FSM do wysy³ania wyniku UART
    reg [3:0] state = 0;
    reg [7:0] temp;

    always @(posedge clk) begin
        uart_start <= 0;
        case (state)
            0: if (trigger) begin
                temp <= delay_cycles;
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

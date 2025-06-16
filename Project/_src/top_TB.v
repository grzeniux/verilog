`timescale 1ns / 1ps

module tb_lvds_manual_trigger();

    reg clk = 0;
    reg lvds_in_p = 1;
    reg lvds_in_n = 1;

    wire [7:0] delay_cycles_out;
    wire [7:0] sim_length;
    wire [31:0] fake_carry_internal;

    // 100 MHz clock
    always #5 clk = ~clk;

    top uut (
        .clk(clk),
        .lvds_in_p(lvds_in_p),
        .lvds_in_n(lvds_in_n),
        .led(),
        .delay_cycles_out(delay_cycles_out),
        .sim_length(sim_length),
        .fake_carry(fake_carry_internal)
    );

    initial begin
        $display("=== SYMULACJA LVDS: RÊCZNY TRIGGER ===");

        #20;
        $display("[INFO] lvds_in_p = %b, lvds_in_n = %b", lvds_in_p, lvds_in_n);

        // WYGENERUJ RÊCZNE ZBOCZE ? trigger
        #20 lvds_in_n = 0;  // zbocze ? trigger
        $display("[TRIGGER] lvds_in_n = 0 ? ró¿nica!");
        #20 lvds_in_n = 1;  // powrót

        #40;
        $display("Pomiar zarejestrowany:");
        $display("? delay_cycles = %0d", delay_cycles_out);
        $display("? fake_carry   = %h", fake_carry_internal);

        $stop;
    end

endmodule

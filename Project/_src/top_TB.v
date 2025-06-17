`timescale 1ns/1ps

module top_TB;

    reg clk = 0;
    wire test_pulse;
    wire lvds_in_p;
    wire lvds_in_n;

    wire [7:0] delay_cycles_out;
    wire [7:0] sim_length;
    wire [31:0] fake_carry;

    // 100 MHz clock
    always #5 clk = ~clk;

    // ? lvds_in_p = test sygna³, lvds_in_n = 0
    assign lvds_in_p = test_pulse;
    assign lvds_in_n = 1'b0;

    // DUT (z uproszczonym top.v)
    top uut (
        .clk(clk),
        .lvds_in_p(lvds_in_p),
        .lvds_in_n(lvds_in_n),
        .test_pulse(test_pulse),
        .delay_cycles_out(delay_cycles_out),
        .sim_length(sim_length),
        .fake_carry(fake_carry)
    );

    integer i;

    initial begin
        $display("=== START SYMULACJI ===");
        $dumpfile("top_TB.vcd");
        $dumpvars(0, top_TB);

        for (i = 0; i < 5; i = i + 1) begin
            // Poczekaj miêdzy pomiarami
            #1000;

            // Impuls testowy
            force uut.test_pulse = 1;
            #20;
            force uut.test_pulse = 0;
            #10;
            release uut.test_pulse;

            // Poczekaj na przetworzenie
            #500;

            // Wyœwietl dane pomiarowe
            $display("Pomiar %0d:", i);
            $display("  sim_length    = %0d", sim_length);
            $display("  fake_carry    = 0x%08x", fake_carry);
            $display("  carry[bin]    = %032b", fake_carry);
            $display("  delay_cycles  = %0d", delay_cycles_out);
            $display("");
        end

        #500;
        $display("=== KONIEC SYMULACJI ===");
        $finish;
    end

endmodule

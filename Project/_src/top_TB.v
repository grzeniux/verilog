`timescale 1ns/1ps

module top_TB;

    reg clk = 0;
    wire uart_tx;
    wire led;
    wire test_pulse;
    wire lvds_in_p;
    wire lvds_in_n;
    wire [7:0] delay_cycles_out;
    wire [7:0] sim_length;
    wire [31:0] fake_carry;

    // 100 MHz clock
    always #5 clk = ~clk;

    // LVDS wejście różnicowe: 1 & ~test_pulse
    assign lvds_in_n = test_pulse;
    assign lvds_in_p = 1'b1;

    // DUT
    top uut (
        .clk(clk),
        .lvds_in_p(lvds_in_p),
        .lvds_in_n(lvds_in_n),
        .uart_tx(uart_tx),
        .led(led),
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

        for (i = 0; i < 10; i = i + 1) begin
            // Poczekaj między pomiarami
            #1000;

            // Wymuś impuls testowy (trigger)
            force uut.test_pulse = 1;
            #20;
            force uut.test_pulse = 0;
            #10;
            release uut.test_pulse;

            // Poczekaj na propagację
            #500;

            // Wyświetl wszystko co ważne
            $display("Pomiar %0d:", i);
            $display("  Length        = %0d", sim_length);
            $display("  Fake Carry    = 0x%08x", fake_carry);
            $display("  Carry [bin]   = %032b", fake_carry);
            $display("  Delay Cycles  = %0d", delay_cycles_out);
            $display("");
        end

        #1000;
        $display("=== KONIEC SYMULACJI ===");
        $finish;
    end

endmodule

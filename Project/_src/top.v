`timescale 1ns / 1ps

module top (
    input wire clk,
    input wire lvds_in_p,
    input wire lvds_in_n,
    output reg led,
    output wire [7:0] delay_cycles_out,
    output wire [7:0] sim_length,
    output wire [31:0] fake_carry
);

    // LVDS ró¿nicowe wejœcie
    wire lvds = lvds_in_p & ~lvds_in_n;
    reg [1:0] sync_lvds = 0;

    always @(posedge clk) begin
        sync_lvds[0] <= lvds;
        sync_lvds[1] <= sync_lvds[0];
    end

    wire trigger = ~sync_lvds[1] & sync_lvds[0];  // wykrycie zbocza

    // LED migaj¹ca po triggerze
    reg [23:0] led_timer = 0;
    always @(posedge clk) begin
        if (trigger) begin
            led <= 1;
            led_timer <= 24'd500000;
        end else if (led_timer > 0) begin
            led_timer <= led_timer - 1;
            if (led_timer == 1)
                led <= 0;
        end
    end

    wire [7:0] delay_cycles;

    carry_chain_sampler sampler (
        .clk(clk),
        .trigger(trigger),
        .delay_cycles(delay_cycles),
        .sim_length(sim_length),
        .fake_carry(fake_carry)
    );

    assign delay_cycles_out = delay_cycles;

endmodule

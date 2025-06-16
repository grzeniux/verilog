`timescale 1ns / 1ps

module carry_chain_sampler (
    input wire clk,
    input wire trigger,
    output reg [7:0] delay_cycles,
    output wire [7:0] sim_length,
    output wire [31:0] fake_carry
);

    reg [31:0] fake = 0;

    function [7:0] count_ones;
        input [31:0] vec;
        integer i;
        begin
            count_ones = 0;
            for (i = 0; i < 32; i = i + 1)
                if (vec[i]) count_ones = count_ones + 1;
        end
    endfunction

    always @(posedge clk) begin
        if (trigger) begin
            fake <= 32'hFFFF_FFFF >> $urandom_range(0, 31);
            delay_cycles <= count_ones(fake);
        end
    end

    assign sim_length = count_ones(fake);
    assign fake_carry = fake;

endmodule

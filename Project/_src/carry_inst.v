module carry_chain_sampler (
    input wire clk,
    input wire trigger,
    output reg [7:0] delay_cycles,
    output reg [7:0] sim_length,
    output reg [31:0] fake_carry
);

    integer length;

    function [7:0] count_ones;
        input [31:0] vector;
        integer j;
        reg [7:0] count;
        begin
            count = 0;
            for (j = 0; j < 32; j = j + 1)
                count = count + vector[j];
            count_ones = count;
        end
    endfunction

    always @(posedge clk) begin
        if (trigger) begin
            length = $urandom_range(3, 24);               // losowa d³ugoœæ propagacji
            fake_carry = (1 << length) - 1;               // ustaw 1-bity
            delay_cycles <= count_ones(fake_carry);       // zlicz
            sim_length <= length;                         // zapisz d³ugoœæ do debugowania
        end
    end

endmodule

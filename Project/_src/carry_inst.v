module carry_chain_sampler (
    input wire clk,
    input wire trigger,
    output reg [7:0] delay_cycles
);

    wire [31:0] carry_out;
    wire carry_init = 1'b1;

    // 32-bit carry chain: 8 x CARRY4
    genvar i;
    generate
        for (i = 0; i < 8; i = i + 1) begin : gen_carry
            CARRY4 carry_inst (
                .CO(carry_out[i*4 +: 4]),
                .O(),
                .CI((i == 0) ? carry_init : carry_out[(i-1)*4 + 3]),
                .CYINIT(1'b0),
                .DI(4'b0000),
                .S(4'b1111)
            );
        end
    endgenerate

    function [7:0] count_ones;
        input [31:0] vector;
        integer j;
        begin
            count_ones = 0;
            for (j = 0; j < 32; j = j + 1)
                if (vector[j]) count_ones = count_ones + 1;
        end
    endfunction

    always @(posedge clk) begin
        if (trigger)
            delay_cycles <= count_ones(carry_out);
    end

endmodule

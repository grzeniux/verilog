module carry_chain_sampler(
    input wire clk,
    input wire trigger,
    output reg [31:0] sampled_carry
);

    wire [31:0] carry_out;

    // Początek carry chain
    wire carry_init = 1'b1;

    // 8x CARRY4 = 32-bitowy łańcuch
    genvar i;
    generate
        for (i = 0; i < 8; i = i + 1) begin : gen_carry
            CARRY4 carry_inst (
                .CO(carry_out[i*4 +: 4]),                         // Wyjścia carry
                .O(),                                      
                .CI((i == 0) ? carry_init : carry_out[(i-1)*4 + 3]),
                .CYINIT(1'b0),
                .DI(4'b0000),
                .S(4'b1111)
            );
        end
    endgenerate

    // Próbkowanie carry chain przy zboczu triggera
    always @(posedge clk) begin
        if (trigger)
            sampled_carry <= carry_out;
    end

endmodule

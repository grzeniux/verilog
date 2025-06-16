module top (
    input wire clk,
    input wire lvds_in_p,
    input wire lvds_in_n,
    output reg led,
    output wire clk_test,
    output wire [7:0] delay_data
);

// 1 MHz test clock
reg [22:0] clk_div = 0;
reg clk_10hz = 0;

always @(posedge clk) begin
    if (clk_div == 23'd4_999_999) begin
        clk_div <= 0;
        clk_10hz <= ~clk_10hz;
    end else begin
        clk_div <= clk_div + 1;
    end
end

assign clk_test = clk_10hz;

// LVDS trigger logic
wire lvds = lvds_in_p & ~lvds_in_n;
reg prev_lvds = 0;
wire trigger = (~prev_lvds & lvds);

always @(posedge clk) begin
    prev_lvds <= lvds;
end

// LED blink logic
reg [23:0] led_timer = 0;
always @(posedge clk) begin
    if (trigger) begin
        led <= 1;
        led_timer <= 24'd5_000_000;
    end else if (led_timer > 0) begin
        led_timer <= led_timer - 1;
        if (led_timer == 1) led <= 0;
    end
end

// Internal wire for delay
assign delay_data = delay;

carry_chain_sampler carry_inst (
    .clk(clk),
    .trigger(trigger),
    .delay_cycles(delay)
);

endmodule

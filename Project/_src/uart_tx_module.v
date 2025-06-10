module uart_tx_module #(
    parameter BAUD_DIV = 868  // 115200 bps @ 100 MHz
)(
    input wire clk,
    input wire [7:0] tx_data,
    input wire tx_start,
    output reg tx,
    output reg tx_busy
);

    reg [13:0] clk_cnt = 0;
    reg [3:0] bit_index = 0;
    reg [9:0] tx_shift = 10'b1111111111;

    initial tx = 1;  // linia idle = HIGH

    always @(posedge clk) begin
        if (!tx_busy) begin
            if (tx_start) begin
                tx_shift <= {1'b1, tx_data, 1'b0};  // {STOP, DATA[7:0], START}
                tx_busy <= 1;
                clk_cnt <= 0;
                bit_index <= 0;
            end
        end else begin
            clk_cnt <= clk_cnt + 1;
            if (clk_cnt >= BAUD_DIV) begin
                clk_cnt <= 0;
                tx <= tx_shift[0];
                tx_shift <= {1'b1, tx_shift[9:1]};
                bit_index <= bit_index + 1;
                if (bit_index == 9) begin
                    tx_busy <= 0;
                end
            end
        end
    end

endmodule
module lvds_tdc_auto10 (
    input wire  sys_clk,     // 100 MHz
    input wire  lvds_p,      // wejœcie sygna³u TTL 3.3V (np. z generatora)
    output wire tx           // UART TX
);

    localparam TDC_WIDTH = 128;
    localparam MAX_MEASUREMENTS = 10;

    reg [7:0] time_measurement;
    reg [TDC_WIDTH-1:0] thermometer_code_reg;
    reg [1:0] start_sync;
    wire start_edge;

    reg [3:0] measurement_count = 0;
    reg uart_tx_start = 0;
    wire uart_tx_busy;
    reg [7:0] temp_measurement;

    // 1. Detekcja zbocza na lvds_p
    always @(posedge sys_clk) begin
        start_sync <= {start_sync[0], lvds_p};
    end
    assign start_edge = start_sync[1] & ~start_sync[0];

    // 2. £añcuch przeniesieñ (carry chain)
    wire [TDC_WIDTH-1:0] carry_chain_taps;
    genvar i;
    generate
        for (i = 0; i < TDC_WIDTH; i = i + 1) begin : chain
            assign carry_chain_taps[i] = (i == 0) ? lvds_p : carry_chain_taps[i-1];
        end
    endgenerate

    // 3. Przechwycenie kodu termometrowego
    always @(posedge sys_clk) begin
        if (start_edge && measurement_count < MAX_MEASUREMENTS)
            thermometer_code_reg <= carry_chain_taps;
    end

    // 4. Przetwarzanie + UART
    integer k;
    always @(posedge sys_clk) begin
        if (start_edge && !uart_tx_busy && (measurement_count < MAX_MEASUREMENTS)) begin
            temp_measurement <= 8'd0;
            for (k = 0; k < TDC_WIDTH; k = k + 1) begin
                if (thermometer_code_reg[k] == 1'b1)
                    temp_measurement <= (k < 255) ? (k + 1) : 8'd255;
            end

            time_measurement  <= temp_measurement;
            uart_tx_start     <= 1'b1;
            measurement_count <= measurement_count + 1;
        end else begin
            uart_tx_start <= 1'b0;
        end
    end

    // 5. UART TX instancja
    uart_tx_module #(
        .BAUD_DIV(868)  // 115200 bps przy 100 MHz
    ) uart_inst (
        .clk      (sys_clk),
        .tx_data  (time_measurement),
        .tx_start (uart_tx_start),
        .tx       (tx),
        .tx_busy  (uart_tx_busy)
    );

endmodule

`timescale 1us / 1ps
// Jednokana�owy generator PWM
module pwm_channel (
    input clk,
    input rst,
    input [3:0] duty_cycle, // Zakres 0-9 odpowiada 0-90%
    input edge_aligned,
    input high_true,
    input [7:0] counter,
    input en,
    output reg pwm_out
);
    always @(posedge clk or posedge rst) begin
        if (rst) 
            pwm_out <= 0;
        else begin
            if (en) begin
                if (edge_aligned) begin
                    pwm_out <= (counter < (duty_cycle * 10)) ? high_true : ~high_true;
                end else begin // Center-aligned
                    pwm_out <= (counter < (duty_cycle * 10)/2 || counter > (100 - (duty_cycle * 10)/2)) ? high_true : ~high_true;
                end
            end else begin
                pwm_out <= ~high_true;
            end
        end
    end
endmodule

// Modu� licznika
module pwm_counter (
    input clk,
    input rst,
    output reg [7:0] counter
);
    always @(posedge clk or posedge rst) begin
        if (rst) 
            counter <= 0;
        else if (counter >= 99) 
            counter <= 0;
        else 
            counter <= counter + 1;
    end
endmodule

module channel_selector(
    input wire clk,
    input wire rst,
    input wire [3:0] button_stable, // Bistabilne sygna�y wej�ciowe
    output reg [3:0] active_channel // Wyj�cie z jednym aktywnym kana�em
);

    always @(posedge clk or posedge rst) begin
        if (rst)
            active_channel <= 4'b0001; // Domy�lnie pierwszy kana�
        else begin
            case (button_stable)
                4'b0001: active_channel <= 4'b0001;
                4'b0010: active_channel <= 4'b0010;
                4'b0100: active_channel <= 4'b0100;
                4'b1000: active_channel <= 4'b1000;
                default: active_channel <= active_channel; // Zachowanie bie��cego stanu
            endcase
        end
    end

endmodule

// Modu� obs�ugi przycisk�w z debouncerem
module button_debouncer (
    input clk,
    input rst,
    input button_in,
    output reg button_out
);
    reg [15:0] debounce_cnt;
    reg button_stable;
    
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            debounce_cnt <= 0;
            button_stable <= 0;
            button_out <= 0;
        end else begin
            if (button_in == button_stable) 
                debounce_cnt <= 0;
            else if (debounce_cnt == 16'hFF) begin
                button_stable <= button_in;
                button_out <= button_in;
            end else
                debounce_cnt <= debounce_cnt + 1;
        end
    end
endmodule
// Testbench dla jednokanałowego PWM wraz z licznikiem
`timescale 1ns / 1ps

module pwm_tb;
    reg clk;
    reg rst;
    reg [3:0] duty_cycle;
    reg edge_aligned;
    reg high_true;
    reg [3:0] button;
    wire [3:0] pwm_out;
    wire [7:0] counter;
    wire [3:0] button_debounced;
    wire [3:0] active_channel;
    
    // Instancja modułu licznika
    pwm_counter uut_counter (
        .clk(clk),
        .rst(rst),
        .counter(counter)
    );
    
    button_debouncer uut_debouncer0 (
        .clk(clk),
        .rst(rst),
        .button_in(button[0]),
        .button_out(button_debounced[0])
    );
     button_debouncer uut_debouncer1 (
        .clk(clk),
        .rst(rst),
        .button_in(button[1]),
        .button_out(button_debounced[1])
    );
     button_debouncer uut_debouncer2 (
        .clk(clk),
        .rst(rst),
        .button_in(button[2]),
        .button_out(button_debounced[2])
    );
     button_debouncer uut_debouncer3 (
        .clk(clk),
        .rst(rst),
        .button_in(button[3]),
        .button_out(button_debounced[3])
    );
    
    pwm_channel uut_pwm0 (
        .clk(clk),
        .rst(rst),
        .duty_cycle(duty_cycle),
        .edge_aligned(edge_aligned),
        .high_true(high_true),
        .counter(counter),
        .en(active_channel[0]),
        .pwm_out(pwm_out[0])
    );
    pwm_channel uut_pwm1 (
        .clk(clk),
        .rst(rst),
        .duty_cycle(duty_cycle),
        .edge_aligned(edge_aligned),
        .high_true(high_true),
        .counter(counter),
        .en(active_channel[1]),
        .pwm_out(pwm_out[1])
    );
    pwm_channel uut_pwm2 (
        .clk(clk),
        .rst(rst),
        .duty_cycle(duty_cycle),
        .edge_aligned(edge_aligned),
        .high_true(high_true),
        .counter(counter),
        .en(active_channel[2]),
        .pwm_out(pwm_out[2])
    );
    pwm_channel uut_pwm3 (
        .clk(clk),
        .rst(rst),
        .duty_cycle(duty_cycle),
        .edge_aligned(edge_aligned),
        .high_true(high_true),
        .counter(counter),
        .en(active_channel[3]),
        .pwm_out(pwm_out[3])
    );

    channel_selector chan_sel(
        .clk(clk),
        .rst(rst),
        .button_stable(button_debounced), // Bistabilne sygnały wejściowe
        .active_channel(active_channel) // Wyjście z jednym aktywnym kanałem
    );
    
    // Generowanie zegara
    always #5 clk = ~clk; // 100MHz symulowany zegar
    
    initial begin        
        clk = 0;
        rst = 1;
        duty_cycle = 4'd5; // 50% wypełnienia
        edge_aligned = 1;
        high_true = 1;
        button = 4'b0000;
        
        #20 rst = 0; // Zwolnienie resetu
        
        #50 button = 4'b0001; #4000 button = 4'b0000; // Aktywacja kanału 1
        
        #2000 duty_cycle = 4'd1; // 10% wypełnienia
        #2000 duty_cycle = 4'd2; // 20% wypełnienia
        #2000 duty_cycle = 4'd3; // 30% wypełnienia
        #2000 duty_cycle = 4'd4; // 40% wypełnienia
        #2000 duty_cycle = 4'd5; // 50% wypełnienia
        #2000 duty_cycle = 4'd6; // 60% wypełnienia
        #2000 duty_cycle = 4'd9; // 90% wypełnienia
        
        #2000 high_true = 0; // Zmiana polaryzacji sygnału PWM
        
        #2000 edge_aligned = 0; // Przełączenie na tryb center-aligned
        
        #2000 high_true = 0; // Zmiana polaryzacji sygnału PWM
        
        #2000 high_true = 1; // Zmiana polaryzacji sygnału PWM
        
        
        #50 button = 4'b0100; #4000 button = 4'b0000; // Aktywacja kanału 3
        
        #2000 duty_cycle = 4'd7; // 70% wypełnienia
        
        #20000 $finish;
    end
    
endmodule
//-----------------------------------------------------------------------------
// 4 Channel PWM driver 
//-----------------------------------------------------------------------------
module pwm_driver_top
	(
		// inputs
		input wire CLK,
		input wire [5 : 0] SW,
    	input wire [3 : 0] BTN,
		// outputs
		output wire [3 : 0] PWM_OUT
	);

    reg rst;
    reg [3:0] duty_cycle;
    reg edge_aligned;
    reg high_true;
    wire [7:0] counter;
    wire [3:0] button_debounced;
    wire [3:0] active_channel;
    
    
    
    
    // Instancja modu�u licznika
    pwm_counter uut_counter (
        .clk(CLK),
        .rst(rst),
        .counter(counter)
    );
    
    button_debouncer uut_debouncer0 (
        .clk(CLK),
        .rst(rst),
        .button_in(BTN[0]),
        .button_out(button_debounced[0])
    );
     button_debouncer uut_debouncer1 (
        .clk(CLK),
        .rst(rst),
        .button_in(BTN[1]),
        .button_out(button_debounced[1])
    );
     button_debouncer uut_debouncer2 (
        .clk(CLK),
        .rst(rst),
        .button_in(BTN[2]),
        .button_out(button_debounced[2])
    );
     button_debouncer uut_debouncer3 (
        .clk(CLK),
        .rst(rst),
        .button_in(BTN[3]),
        .button_out(button_debounced[3])
    );
    
    pwm_channel uut_pwm0 (
        .clk(CLK),
        .rst(rst),
        .duty_cycle(SW[3:0]),
        .edge_aligned(SW[4]),
        .high_true(SW[5]),
        .counter(counter),
        .en(active_channel[0]),
        .pwm_out(PWM_OUT[0])
    );
    pwm_channel uut_pwm1 (
        .clk(CLK),
        .rst(rst),
        .duty_cycle(SW[3:0]),
        .edge_aligned(SW[4]),
        .high_true(SW[5]),
        .counter(counter),
        .en(active_channel[1]),
        .pwm_out(PWM_OUT[1])
    );
    pwm_channel uut_pwm2 (
        .clk(CLK),
        .rst(rst),
        .duty_cycle(SW[3:0]),
        .edge_aligned(SW[4]),
        .high_true(SW[5]),
        .counter(counter),
        .en(active_channel[2]),
        .pwm_out(PWM_OUT[2])
    );
    pwm_channel uut_pwm3 (
        .clk(CLK),
        .rst(rst),
        .duty_cycle(SW[3:0]),
        .edge_aligned(SW[4]),
        .high_true(SW[5]),
        .counter(counter),
        .en(active_channel[3]),
        .pwm_out(PWM_OUT[3])
    );

    channel_selector chan_sel(
        .clk(CLK),
        .rst(rst),
        .button_stable(button_debounced), // Bistabilne sygna�y wej�ciowe
        .active_channel(active_channel) // Wyj�cie z jednym aktywnym kana�em
    );

endmodule
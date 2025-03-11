`timescale 1us / 1ps

module pwm_driver (
    input wire CLK,         
    input wire [3:0] BTN,  // Przyciski (z debouncerem)
    input wire [5:0] SW,   // Przełączniki
    output reg [3:0] PWM_OUT  
);

    reg [9:0] counter = 0;        
    reg [7:0] duty_cycle [3:0];  
    reg [1:0] selected_channel = 0;
    reg high_true_mode = 1;
    reg edge_center_mode = 0;
    
    // **Rejestry do debouncera przycisków**
    reg [3:0] btn_last;
    reg [3:0] btn_stable;

    initial begin
        duty_cycle[0] = 10; 
        duty_cycle[1] = 20;
        duty_cycle[2] = 30;
        duty_cycle[3] = 40;
        PWM_OUT = 4'b0000;
    end

    // **Licznik PWM (50 Hz)**
    always @(posedge CLK) begin
        if (counter < 999) 
            counter <= counter + 1;
        else
            counter <= 0;
    end

    // **Debouncer dla przycisków**
    always @(posedge CLK) begin
        btn_last <= BTN;
        btn_stable <= btn_last & BTN; // Filtrujemy krótkie szpilki
    end

    // **Wybór kanału (po debouncerze)**
    always @(posedge CLK) begin
        if (btn_stable[0]) selected_channel <= 2'b00;
        if (btn_stable[1]) selected_channel <= 2'b01;
        if (btn_stable[2]) selected_channel <= 2'b10;
        if (btn_stable[3]) selected_channel <= 2'b11;
    end

    // **Zmiana wypełnienia i trybu**
    always @(posedge CLK) begin
        if (SW[0] && duty_cycle[selected_channel] < 90) // +10%
            duty_cycle[selected_channel] <= duty_cycle[selected_channel] + 10;
        if (SW[1] && duty_cycle[selected_channel] > 0)  // -10%
            duty_cycle[selected_channel] <= duty_cycle[selected_channel] - 10;
        if (SW[2]) high_true_mode <= 1;
        if (SW[3]) high_true_mode <= 0;
        if (SW[4]) edge_center_mode <= 0;
        if (SW[5]) edge_center_mode <= 1;
    end

    // **Generacja PWM**
    always @(posedge CLK) begin
        PWM_OUT = 4'b0000;
        if (counter < (duty_cycle[selected_channel] * 10)) 
            PWM_OUT[selected_channel] <= high_true_mode;
        else
            PWM_OUT[selected_channel] <= ~high_true_mode;
    end

endmodule

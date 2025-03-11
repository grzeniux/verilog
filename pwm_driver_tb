`timescale 1us / 1ps

module pwm_driver_tb;

    reg CLK;
    reg [3:0] BTN;
    reg [5:0] SW;
    wire [3:0] PWM_OUT;

    pwm_driver uut (
        .CLK(CLK),
        .BTN(BTN),
        .SW(SW),
        .PWM_OUT(PWM_OUT)
    );

    always begin
        #100 CLK = ~CLK;  // Zegar 5 kHz
    end

    initial begin
        CLK = 0;
        BTN = 4'b0000;
        SW = 6'b000000;

        #1000;

        // **1 Wybór kanałów**
        BTN = 4'b0001; #10000; BTN = 4'b0000;  // Kanał 0
        BTN = 4'b0010; #10000; BTN = 4'b0000;  // Kanał 1
        BTN = 4'b0100; #10000; BTN = 4'b0000;  // Kanał 2
        BTN = 4'b1000; #10000; BTN = 4'b0000;  // Kanał 3

        // **2️ Zmiana wypełnienia**
        BTN = 4'b0001;  // Kanał 0
        SW[0] = 1; #10000; SW[0] = 0;  // +10% PWM_OUT[0]
        SW[1] = 1; #10000; SW[1] = 0;  // -10%
        #10000;

        BTN = 4'b0010;  // Kanał 1
        SW[0] = 1; #10000; SW[0] = 0;  // +10% PWM_OUT[1]
        SW[1] = 1; #10000; SW[1] = 0;  // -10%
        #10000;

        // **3️ Edge-aligned vs Center-aligned**
        BTN = 4'b0100;  // Kanał 2
        SW[5] = 1; #30000; SW[5] = 0;  // Center-aligned (PWM_OUT[2])
        #30000;
        SW[4] = 1; #30000; SW[4] = 0;  // Edge-aligned (PWM_OUT[2])
        #30000;

        // **4️ High-true vs Low-true**
        BTN = 4'b1000;  // Kanał 3
        SW[0] = 1; #10000; SW[0] = 0;  // 25% wypełnienia (PWM_OUT[3])
        SW[2] = 1; #50000; SW[2] = 0; // High-true - Dłuższy czas na obserwację
        #50000;

        BTN = 4'b0100;  // Kanał 2
        SW[0] = 1; #10000; SW[0] = 0;  // 25% wypełnienia (PWM_OUT[2])
        SW[3] = 1; #50000; SW[3] = 0; // Low-true - Dłuższy czas na obserwację
        #50000;

        $stop;
    end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2025 23:13:57
// Design Name: 
// Module Name: pwm_full
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module pwm_full(
input wire CLK,
  input wire[3:0] BTN,
  input wire [5:0] SW,
  output wire [3:0] PWM_OUT,
  output wire count,
  output wire ud_count
    );
    
     reg [7:0] counter = 0;
     reg [7:0] duty_cycle_1=0;
     reg [7:0] duty_cycle_2=0;
     reg [7:0] duty_cycle_3=0;
     reg [7:0] duty_cycle_4=0;
     reg mode_1 =1;
     reg mode_2=0;
     reg direction = 1;
     reg [7:0] up_down_counter =0;
     reg edge_center_mode =0;
     reg pwm_1=0;
     reg pwm_2=0;
     reg pwm_3=0;
     reg pwm_4=0;
     integer i=0; 

    reg [15:0] btn_counter [3:0];  // Licznik dla ka dego przycisku
    reg [3:0] btn_stable = 4'b0000;  // Stabilny stan przycisk w
    parameter DEBOUNCE_DELAY = 10; 
    always @(posedge CLK) begin
    for (i = 0; i < 4; i = i + 1) begin
        if (BTN[i] == 1) begin
            if (btn_counter[i] < DEBOUNCE_DELAY)
               btn_counter[i] <= btn_counter[i] + 1;
             else
                btn_stable[i] <= 1; // Przytrzymany wystarczaj co d ugo -> stabilny
            end else begin
                btn_counter[i] <= 0;
                btn_stable[i] <= 0; // Przywr cenie stanu niskiego
            end
           end
     end


    always @(posedge CLK) begin
    if (!edge_center_mode) begin

      if (counter < 100)
        counter <= counter + 1;
      else
        counter <= 0;
    end else begin

      if (direction)begin
        if(up_down_counter<50)
            up_down_counter <= up_down_counter + 1;
        else 
            direction<=0;
      end else begin
        if(up_down_counter>0)
            up_down_counter <= up_down_counter - 1;
        else
            direction<=1;
      end
  end
end

always @(posedge SW[0]) begin
    if(btn_stable[0]&&duty_cycle_1<90) duty_cycle_1<= duty_cycle_1+10;
    if(btn_stable[1]&&duty_cycle_2<90) duty_cycle_2<= duty_cycle_2+10;
    if(btn_stable[2]&&duty_cycle_3<90) duty_cycle_3<= duty_cycle_3+10;
    if(btn_stable[3]&&duty_cycle_4<90) duty_cycle_4<= duty_cycle_4+10; 
end

always @(posedge SW[1]) begin
    if(btn_stable[0]&&duty_cycle_1>0) duty_cycle_1<= duty_cycle_1-10;
    if(btn_stable[1]&&duty_cycle_2>0) duty_cycle_2<= duty_cycle_2-10;
    if(btn_stable[2]&&duty_cycle_3>0) duty_cycle_3<= duty_cycle_3-10;
    if(btn_stable[3]&&duty_cycle_4>0) duty_cycle_4<= duty_cycle_4-10;
end

always @(posedge SW[2]) begin
    mode_1 <= 1;
    mode_2 <= 0;
end

always @(posedge SW[3]) begin
    mode_1 <= 0;
    mode_2 <= 1;
end

 always @(posedge SW[4]) begin
    edge_center_mode <= 0;
    counter <= 0;
  end


  always @(posedge SW[5]) begin
    edge_center_mode <= 1;
    up_down_counter <= 0; 
    direction <= 1;  
  end
  
  always@(posedge CLK) begin
    if(btn_stable[0])begin
        case(edge_center_mode)
            0: pwm_1 <= (counter<duty_cycle_1) ? mode_1:mode_2;
            1: pwm_1 <=  (up_down_counter<duty_cycle_1/2)?mode_1:mode_2;
        endcase
    end
  end
  
  always@(posedge CLK) begin
    if(btn_stable[1])begin
        case(edge_center_mode)
            0: pwm_2 <= (counter<duty_cycle_2) ? mode_1:mode_2;
            1: pwm_2 <=  (up_down_counter<duty_cycle_2/2)?mode_1:mode_2;
        endcase
    end
  end
  
  always@(posedge CLK) begin
    if(btn_stable[2])begin
        case(edge_center_mode)
            0: pwm_3 <= (counter<duty_cycle_3) ? mode_1:mode_2;
            1: pwm_3 <=  (up_down_counter<duty_cycle_3/2)?mode_1:mode_2;
        endcase
    end
  end
  always@(posedge CLK) begin
    if(btn_stable[3])begin
        case(edge_center_mode)
            0: pwm_4 <= (counter<duty_cycle_4) ? mode_1:mode_2;
            1: pwm_4 <=  (up_down_counter<duty_cycle_4/2)?mode_1:mode_2;
        endcase
    end
  end
  


assign PWM_OUT[0] = pwm_1;
assign PWM_OUT[1] = pwm_2;
assign PWM_OUT[2] = pwm_3;
assign PWM_OUT[3] = pwm_4;
assign count = counter;
assign ud_count = up_down_counter;
endmodule

`timescale 1us / 1ps

module pwm2(
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
     reg [3:0] btn_last;
     reg [3:0] btn_stable;

     always @(posedge CLK) begin
        btn_last <= BTN;
        btn_stable <= btn_last & BTN; // Filtrujemy krótkie szpilki
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
    if(BTN[0])
        if(duty_cycle_1<90) duty_cycle_1<= duty_cycle_1+10;
    if(BTN[1])
        if(duty_cycle_2<90) duty_cycle_2<= duty_cycle_2+10;
    if(BTN[2])
        if(duty_cycle_3<90) duty_cycle_3<= duty_cycle_3+10;
    if(BTN[3])
        if(duty_cycle_4<90) duty_cycle_4<= duty_cycle_4+10; 
end

always @(posedge SW[1]) begin
    if(BTN[0])
        if(duty_cycle_1>0) duty_cycle_1<= duty_cycle_1-10;
    if(BTN[1])
        if(duty_cycle_2>0) duty_cycle_2<= duty_cycle_2-10;
    if(BTN[2])
        if(duty_cycle_3>0) duty_cycle_3<= duty_cycle_3-10;
    if(BTN[3])
        if(duty_cycle_4>0) duty_cycle_4<= duty_cycle_4-10;
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
    if(BTN[0])begin
        case(edge_center_mode)
            0: pwm_1 <= (counter<duty_cycle_1) ? mode_1:mode_2;
            1: pwm_1 <=  (up_down_counter<duty_cycle_1/2)?mode_1:mode_2;
        endcase
    end
  end
  
  always@(posedge CLK) begin
    if(BTN[1])begin
        case(edge_center_mode)
            0: pwm_2 <= (counter<duty_cycle_2) ? mode_1:mode_2;
            1: pwm_2 <=  (up_down_counter<duty_cycle_2/2)?mode_1:mode_2;
        endcase
    end
  end
  
  always@(posedge CLK) begin
    if(BTN[2])begin
        case(edge_center_mode)
            0: pwm_3 <= (counter<duty_cycle_3) ? mode_1:mode_2;
            1: pwm_3 <=  (up_down_counter<duty_cycle_3/2)?mode_1:mode_2;
        endcase
    end
  end
  always@(posedge CLK) begin
    if(BTN[3])begin
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

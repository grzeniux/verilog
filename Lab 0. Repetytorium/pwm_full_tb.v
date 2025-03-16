`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2025 23:14:21
// Design Name: 
// Module Name: pwm_full_tb
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


module pwm_full_tb;
  reg CLK;
  reg [3:0] BTN;
  reg [5:0] SW;
  wire [3:0] PWM_OUT;
  wire count;
  wire ud_count;

  pwm_full uut (
    .CLK(CLK),
    .BTN(BTN),
    .SW(SW),
    .PWM_OUT(PWM_OUT),
    .count(count),
    .ud_count(ud_count)
  );


  always begin
    #200 CLK = ~CLK; 
  end


  initial begin
  
    CLK = 0;
    BTN = 4'b0000;  
    SW = 6'b000000;   

    BTN = 4'b0001;
     SW = 6'b000001; 
    #10000;          
    SW = 6'b000000;
    #10000;
        SW = 6'b000001; 
    #10000;          
    SW = 6'b000000;
    #10000;   
         SW = 6'b000001; 
    #10000;            
    SW = 6'b000000; 
  #10000;   
        SW = 6'b000001; 
    #10000;             
    SW = 6'b000000; 
      #10000;   
          SW = 6'b000001; 
      #10000;            
    SW = 6'b000000; 
     #250000;   
    SW = 6'b100000;
    
    #500000
        BTN = 4'b0011;
     SW = 6'b000001; 
    #10000;          
    SW = 6'b000000;
    #10000;
        SW = 6'b000001; 
    #10000;          
    SW = 6'b000000;
    #10000;   
         SW = 6'b000001; 
    #10000;            
    SW = 6'b000000; 
  #10000;   
        SW = 6'b000001; 
    #10000;             
    SW = 6'b000000; 
      #10000;   
          SW = 6'b000001; 
      #10000;            
    SW = 6'b000000; 
     #50000;  
     
     
           BTN = 4'b0011;
     SW = 6'b001010; 
    #10000;          
    SW = 6'b001000;
    #10000;
        SW = 6'b001010; 
    #10000;          
    SW = 6'b001000;
    #10000;   
         SW = 6'b001010; 
    #10000;            
    SW = 6'b001000; 

  end
endmodule

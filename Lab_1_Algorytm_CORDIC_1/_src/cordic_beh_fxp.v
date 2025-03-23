`timescale 1ns / 1ps
module cordic_beh_fxp();

parameter integer FXP_SCALE = 1024;

reg signed [11:0] t_angle = 0.8 * FXP_SCALE; //Input angle
reg signed [11:0] cos = 1.0 * FXP_SCALE; //Initial condition
reg signed [11:0] sin = 0.0;
reg signed [11:0] angle = 0.0; //Running angle

reg signed [11:0] Kn = 0.607253 * FXP_SCALE;
reg signed [11:0] arctan[0:13];
reg signed [11:0] scaled_arctan[0:13];

reg signed [23:0] result_cos = 0.0;
reg signed [23:0] result_sin = 0.0;

integer i;
reg signed [11:0] tmp;


initial //Execute only once
begin
  arctan[0] = 0.785398163;// * FXP_SCALE;
  arctan[1] = 0.463647609;// * FXP_SCALE;
  arctan[2] = 0.244978663;// * FXP_SCALE;
  arctan[3] = 0.124354995;// * FXP_SCALE;
  arctan[4] = 0.06241881;// * FXP_SCALE;
  arctan[5] = 0.031239833;// * FXP_SCALE;
  arctan[6] = 0.015623729;// * FXP_SCALE;
  arctan[7] = 0.007812341;// * FXP_SCALE;
  arctan[8] = 0.00390623;// * FXP_SCALE;
  arctan[9] = 0.001953123;// * FXP_SCALE;
  arctan[10] = 0.000976562;// * FXP_SCALE;
  arctan[11] = 0.000488281211194898;// * FXP_SCALE;
  arctan[12] = 0.000244140620149362;// * FXP_SCALE;
  arctan[13] = 0.00012207031189367;// * FXP_SCALE;
  
  scaled_arctan[0] = 0.785398163 * FXP_SCALE;
  scaled_arctan[1] = 0.463647609 * FXP_SCALE;
  scaled_arctan[2] = 0.244978663 * FXP_SCALE;
  scaled_arctan[3] = 0.124354995 * FXP_SCALE;
  scaled_arctan[4] = 0.06241881 * FXP_SCALE;
  scaled_arctan[5] = 0.031239833 * FXP_SCALE;
  scaled_arctan[6] = 0.015623729 * FXP_SCALE;
  scaled_arctan[7] = 0.007812341 * FXP_SCALE;
  scaled_arctan[8] = 0.00390623 * FXP_SCALE;
  scaled_arctan[9] = 0.001953123 * FXP_SCALE;
  scaled_arctan[10] = 0.000976562 * FXP_SCALE;
  scaled_arctan[11] = 0.000488281211194898 * FXP_SCALE;
  scaled_arctan[12] = 0.000244140620149362 * FXP_SCALE;
  scaled_arctan[13] = 0.00012207031189367 * FXP_SCALE;


for ( i = 0; i < 11; i = i + 1) //Ten algorithm iterations
   begin
     if( t_angle > angle )
     begin
       angle = angle + scaled_arctan[i];
       tmp = cos - ( sin >>> i );
       sin = ( cos >>> i ) + sin;
       cos = tmp;
     end
     else
     begin
       angle = angle - scaled_arctan[i];
       tmp = cos + ( sin >>> i );
       sin = - ( cos >>> i) + sin;
       cos = tmp;
     end //if
   end //for
    //Scale sin/cos values
 result_sin = (Kn * sin);
 result_sin = result_sin >>> 10;
 result_cos = (Kn * cos);
 result_cos = result_cos >>> 10;
    #10
     $display("expected result: sin=%f, cos=%f", 0.717, 0.69);
 $display("sin=%f, cos=%f", $itor(result_sin)/$itor(FXP_SCALE), $itor(result_cos)/$itor(FXP_SCALE));
end
endmodule


// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Jun 16 16:03:36 2025
// Host        : grzeniux running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/grzen/Documents/_Studia/mgr-sem1/SDUP/verilog/Project/lvds/lvds.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_top_1_0/microblaze_design_top_1_0_sim_netlist.v
// Design      : microblaze_design_top_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "microblaze_design_top_1_0,top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "top,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module microblaze_design_top_1_0
   (clk,
    lvds_in_p,
    lvds_in_n,
    led,
    clk_test,
    gpio_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN microblaze_design_clk_wiz_1_0_clk_out1, INSERT_VIP 0" *) input clk;
  input lvds_in_p;
  input lvds_in_n;
  output led;
  output clk_test;
  input [7:0]gpio_out;

  wire clk;
  wire clk_test;
  wire led;
  wire lvds_in_n;
  wire lvds_in_p;

  microblaze_design_top_1_0_top inst
       (.clk(clk),
        .clk_test(clk_test),
        .led(led),
        .lvds_in_n(lvds_in_n),
        .lvds_in_p(lvds_in_p));
endmodule

(* ORIG_REF_NAME = "top" *) 
module microblaze_design_top_1_0_top
   (clk_test,
    led,
    clk,
    lvds_in_n,
    lvds_in_p);
  output clk_test;
  output led;
  input clk;
  input lvds_in_n;
  input lvds_in_p;

  wire clk;
  wire clk_10hz;
  wire clk_10hz_i_1_n_0;
  wire clk_10hz_i_2_n_0;
  wire clk_10hz_i_3_n_0;
  wire clk_10hz_i_4_n_0;
  wire clk_10hz_i_5_n_0;
  wire clk_10hz_i_6_n_0;
  wire clk_10hz_i_7_n_0;
  wire clk_10hz_i_8_n_0;
  wire [22:0]clk_div;
  wire clk_div0_carry__0_n_0;
  wire clk_div0_carry__0_n_1;
  wire clk_div0_carry__0_n_2;
  wire clk_div0_carry__0_n_3;
  wire clk_div0_carry__1_n_0;
  wire clk_div0_carry__1_n_1;
  wire clk_div0_carry__1_n_2;
  wire clk_div0_carry__1_n_3;
  wire clk_div0_carry__2_n_0;
  wire clk_div0_carry__2_n_1;
  wire clk_div0_carry__2_n_2;
  wire clk_div0_carry__2_n_3;
  wire clk_div0_carry__3_n_0;
  wire clk_div0_carry__3_n_1;
  wire clk_div0_carry__3_n_2;
  wire clk_div0_carry__3_n_3;
  wire clk_div0_carry__4_n_3;
  wire clk_div0_carry_n_0;
  wire clk_div0_carry_n_1;
  wire clk_div0_carry_n_2;
  wire clk_div0_carry_n_3;
  wire [0:0]clk_div_0;
  wire clk_test;
  wire [22:1]data0;
  wire led;
  wire led1;
  wire led_i_1_n_0;
  wire led_i_2_n_0;
  wire led_i_3_n_0;
  wire led_i_4_n_0;
  wire led_i_5_n_0;
  wire led_i_6_n_0;
  wire \led_timer[0]_i_4_n_0 ;
  wire \led_timer[0]_i_5_n_0 ;
  wire \led_timer[0]_i_6_n_0 ;
  wire \led_timer[0]_i_7_n_0 ;
  wire \led_timer[0]_i_8_n_0 ;
  wire \led_timer[0]_i_9_n_0 ;
  wire \led_timer[12]_i_2_n_0 ;
  wire \led_timer[12]_i_3_n_0 ;
  wire \led_timer[12]_i_4_n_0 ;
  wire \led_timer[12]_i_5_n_0 ;
  wire \led_timer[16]_i_2_n_0 ;
  wire \led_timer[16]_i_3_n_0 ;
  wire \led_timer[16]_i_4_n_0 ;
  wire \led_timer[16]_i_5_n_0 ;
  wire \led_timer[20]_i_2_n_0 ;
  wire \led_timer[20]_i_3_n_0 ;
  wire \led_timer[20]_i_4_n_0 ;
  wire \led_timer[20]_i_5_n_0 ;
  wire \led_timer[4]_i_2_n_0 ;
  wire \led_timer[4]_i_3_n_0 ;
  wire \led_timer[4]_i_4_n_0 ;
  wire \led_timer[4]_i_5_n_0 ;
  wire \led_timer[8]_i_2_n_0 ;
  wire \led_timer[8]_i_3_n_0 ;
  wire \led_timer[8]_i_4_n_0 ;
  wire \led_timer[8]_i_5_n_0 ;
  wire [23:0]led_timer_reg;
  wire \led_timer_reg[0]_i_3_n_0 ;
  wire \led_timer_reg[0]_i_3_n_1 ;
  wire \led_timer_reg[0]_i_3_n_2 ;
  wire \led_timer_reg[0]_i_3_n_3 ;
  wire \led_timer_reg[0]_i_3_n_4 ;
  wire \led_timer_reg[0]_i_3_n_5 ;
  wire \led_timer_reg[0]_i_3_n_6 ;
  wire \led_timer_reg[0]_i_3_n_7 ;
  wire \led_timer_reg[12]_i_1_n_0 ;
  wire \led_timer_reg[12]_i_1_n_1 ;
  wire \led_timer_reg[12]_i_1_n_2 ;
  wire \led_timer_reg[12]_i_1_n_3 ;
  wire \led_timer_reg[12]_i_1_n_4 ;
  wire \led_timer_reg[12]_i_1_n_5 ;
  wire \led_timer_reg[12]_i_1_n_6 ;
  wire \led_timer_reg[12]_i_1_n_7 ;
  wire \led_timer_reg[16]_i_1_n_0 ;
  wire \led_timer_reg[16]_i_1_n_1 ;
  wire \led_timer_reg[16]_i_1_n_2 ;
  wire \led_timer_reg[16]_i_1_n_3 ;
  wire \led_timer_reg[16]_i_1_n_4 ;
  wire \led_timer_reg[16]_i_1_n_5 ;
  wire \led_timer_reg[16]_i_1_n_6 ;
  wire \led_timer_reg[16]_i_1_n_7 ;
  wire \led_timer_reg[20]_i_1_n_1 ;
  wire \led_timer_reg[20]_i_1_n_2 ;
  wire \led_timer_reg[20]_i_1_n_3 ;
  wire \led_timer_reg[20]_i_1_n_4 ;
  wire \led_timer_reg[20]_i_1_n_5 ;
  wire \led_timer_reg[20]_i_1_n_6 ;
  wire \led_timer_reg[20]_i_1_n_7 ;
  wire \led_timer_reg[4]_i_1_n_0 ;
  wire \led_timer_reg[4]_i_1_n_1 ;
  wire \led_timer_reg[4]_i_1_n_2 ;
  wire \led_timer_reg[4]_i_1_n_3 ;
  wire \led_timer_reg[4]_i_1_n_4 ;
  wire \led_timer_reg[4]_i_1_n_5 ;
  wire \led_timer_reg[4]_i_1_n_6 ;
  wire \led_timer_reg[4]_i_1_n_7 ;
  wire \led_timer_reg[8]_i_1_n_0 ;
  wire \led_timer_reg[8]_i_1_n_1 ;
  wire \led_timer_reg[8]_i_1_n_2 ;
  wire \led_timer_reg[8]_i_1_n_3 ;
  wire \led_timer_reg[8]_i_1_n_4 ;
  wire \led_timer_reg[8]_i_1_n_5 ;
  wire \led_timer_reg[8]_i_1_n_6 ;
  wire \led_timer_reg[8]_i_1_n_7 ;
  wire lvds;
  wire lvds_in_n;
  wire lvds_in_p;
  wire prev_lvds;
  wire trigger;
  wire [3:1]NLW_clk_div0_carry__4_CO_UNCONNECTED;
  wire [3:2]NLW_clk_div0_carry__4_O_UNCONNECTED;
  wire [3:3]\NLW_led_timer_reg[20]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h9)) 
    clk_10hz_i_1
       (.I0(clk_10hz_i_2_n_0),
        .I1(clk_test),
        .O(clk_10hz_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    clk_10hz_i_2
       (.I0(clk_10hz_i_3_n_0),
        .I1(clk_10hz_i_4_n_0),
        .I2(clk_10hz_i_5_n_0),
        .I3(clk_10hz_i_6_n_0),
        .I4(clk_10hz_i_7_n_0),
        .I5(clk_10hz_i_8_n_0),
        .O(clk_10hz_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    clk_10hz_i_3
       (.I0(clk_div[18]),
        .I1(clk_div[17]),
        .I2(clk_div[19]),
        .I3(clk_div[20]),
        .O(clk_10hz_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    clk_10hz_i_4
       (.I0(clk_div[22]),
        .I1(clk_div[21]),
        .I2(clk_div[0]),
        .O(clk_10hz_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    clk_10hz_i_5
       (.I0(clk_div[9]),
        .I1(clk_div[10]),
        .I2(clk_div[11]),
        .I3(clk_div[12]),
        .O(clk_10hz_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    clk_10hz_i_6
       (.I0(clk_div[14]),
        .I1(clk_div[13]),
        .I2(clk_div[16]),
        .I3(clk_div[15]),
        .O(clk_10hz_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    clk_10hz_i_7
       (.I0(clk_div[5]),
        .I1(clk_div[6]),
        .I2(clk_div[8]),
        .I3(clk_div[7]),
        .O(clk_10hz_i_7_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    clk_10hz_i_8
       (.I0(clk_div[2]),
        .I1(clk_div[1]),
        .I2(clk_div[4]),
        .I3(clk_div[3]),
        .O(clk_10hz_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_10hz_reg
       (.C(clk),
        .CE(1'b1),
        .D(clk_10hz_i_1_n_0),
        .Q(clk_test),
        .R(1'b0));
  CARRY4 clk_div0_carry
       (.CI(1'b0),
        .CO({clk_div0_carry_n_0,clk_div0_carry_n_1,clk_div0_carry_n_2,clk_div0_carry_n_3}),
        .CYINIT(clk_div[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(clk_div[4:1]));
  CARRY4 clk_div0_carry__0
       (.CI(clk_div0_carry_n_0),
        .CO({clk_div0_carry__0_n_0,clk_div0_carry__0_n_1,clk_div0_carry__0_n_2,clk_div0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(clk_div[8:5]));
  CARRY4 clk_div0_carry__1
       (.CI(clk_div0_carry__0_n_0),
        .CO({clk_div0_carry__1_n_0,clk_div0_carry__1_n_1,clk_div0_carry__1_n_2,clk_div0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(clk_div[12:9]));
  CARRY4 clk_div0_carry__2
       (.CI(clk_div0_carry__1_n_0),
        .CO({clk_div0_carry__2_n_0,clk_div0_carry__2_n_1,clk_div0_carry__2_n_2,clk_div0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(clk_div[16:13]));
  CARRY4 clk_div0_carry__3
       (.CI(clk_div0_carry__2_n_0),
        .CO({clk_div0_carry__3_n_0,clk_div0_carry__3_n_1,clk_div0_carry__3_n_2,clk_div0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(clk_div[20:17]));
  CARRY4 clk_div0_carry__4
       (.CI(clk_div0_carry__3_n_0),
        .CO({NLW_clk_div0_carry__4_CO_UNCONNECTED[3:1],clk_div0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_clk_div0_carry__4_O_UNCONNECTED[3:2],data0[22:21]}),
        .S({1'b0,1'b0,clk_div[22:21]}));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \clk_div[0]_i_1 
       (.I0(clk_div[0]),
        .O(clk_div_0));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_div[22]_i_1 
       (.I0(clk_10hz_i_2_n_0),
        .O(clk_10hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(clk_div_0),
        .Q(clk_div[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[10]),
        .Q(clk_div[10]),
        .R(clk_10hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[11]),
        .Q(clk_div[11]),
        .R(clk_10hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[12]),
        .Q(clk_div[12]),
        .R(clk_10hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[13]),
        .Q(clk_div[13]),
        .R(clk_10hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[14]),
        .Q(clk_div[14]),
        .R(clk_10hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[15]),
        .Q(clk_div[15]),
        .R(clk_10hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[16]),
        .Q(clk_div[16]),
        .R(clk_10hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[17]),
        .Q(clk_div[17]),
        .R(clk_10hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[18]),
        .Q(clk_div[18]),
        .R(clk_10hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[19]),
        .Q(clk_div[19]),
        .R(clk_10hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[1]),
        .Q(clk_div[1]),
        .R(clk_10hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[20]),
        .Q(clk_div[20]),
        .R(clk_10hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[21]),
        .Q(clk_div[21]),
        .R(clk_10hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[22]),
        .Q(clk_div[22]),
        .R(clk_10hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[2]),
        .Q(clk_div[2]),
        .R(clk_10hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[3]),
        .Q(clk_div[3]),
        .R(clk_10hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[4]),
        .Q(clk_div[4]),
        .R(clk_10hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[5]),
        .Q(clk_div[5]),
        .R(clk_10hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[6]),
        .Q(clk_div[6]),
        .R(clk_10hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[7]),
        .Q(clk_div[7]),
        .R(clk_10hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[8]),
        .Q(clk_div[8]),
        .R(clk_10hz));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[9]),
        .Q(clk_div[9]),
        .R(clk_10hz));
  LUT5 #(
    .INIT(32'hFFFFFE00)) 
    led_i_1
       (.I0(led_i_2_n_0),
        .I1(led_i_3_n_0),
        .I2(led_i_4_n_0),
        .I3(led),
        .I4(trigger),
        .O(led_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    led_i_2
       (.I0(led_timer_reg[4]),
        .I1(led_timer_reg[8]),
        .I2(led_timer_reg[3]),
        .I3(led_timer_reg[11]),
        .I4(led_i_5_n_0),
        .O(led_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    led_i_3
       (.I0(led_timer_reg[10]),
        .I1(led_timer_reg[21]),
        .I2(led_timer_reg[9]),
        .I3(led_timer_reg[22]),
        .I4(led_i_6_n_0),
        .O(led_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    led_i_4
       (.I0(\led_timer[0]_i_4_n_0 ),
        .I1(led_timer_reg[23]),
        .I2(led_timer_reg[0]),
        .I3(led_timer_reg[12]),
        .I4(led_timer_reg[15]),
        .O(led_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    led_i_5
       (.I0(led_timer_reg[6]),
        .I1(led_timer_reg[1]),
        .I2(led_timer_reg[5]),
        .I3(led_timer_reg[2]),
        .O(led_i_5_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    led_i_6
       (.I0(led_timer_reg[18]),
        .I1(led_timer_reg[13]),
        .I2(led_timer_reg[17]),
        .I3(led_timer_reg[14]),
        .O(led_i_6_n_0));
  FDRE led_reg
       (.C(clk),
        .CE(1'b1),
        .D(led_i_1_n_0),
        .Q(led),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \led_timer[0]_i_1 
       (.I0(lvds_in_n),
        .I1(lvds_in_p),
        .I2(prev_lvds),
        .O(trigger));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \led_timer[0]_i_2 
       (.I0(led_i_2_n_0),
        .I1(\led_timer[0]_i_4_n_0 ),
        .I2(led_timer_reg[23]),
        .I3(led_timer_reg[0]),
        .I4(\led_timer[0]_i_5_n_0 ),
        .I5(led_i_3_n_0),
        .O(led1));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \led_timer[0]_i_4 
       (.I0(led_timer_reg[20]),
        .I1(led_timer_reg[7]),
        .I2(led_timer_reg[19]),
        .I3(led_timer_reg[16]),
        .O(\led_timer[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \led_timer[0]_i_5 
       (.I0(led_timer_reg[12]),
        .I1(led_timer_reg[15]),
        .O(\led_timer[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_timer[0]_i_6 
       (.I0(led_timer_reg[3]),
        .O(\led_timer[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_timer[0]_i_7 
       (.I0(led_timer_reg[2]),
        .O(\led_timer[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_timer[0]_i_8 
       (.I0(led_timer_reg[1]),
        .O(\led_timer[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_timer[0]_i_9 
       (.I0(led_timer_reg[0]),
        .O(\led_timer[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_timer[12]_i_2 
       (.I0(led_timer_reg[15]),
        .O(\led_timer[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_timer[12]_i_3 
       (.I0(led_timer_reg[14]),
        .O(\led_timer[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_timer[12]_i_4 
       (.I0(led_timer_reg[13]),
        .O(\led_timer[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_timer[12]_i_5 
       (.I0(led_timer_reg[12]),
        .O(\led_timer[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_timer[16]_i_2 
       (.I0(led_timer_reg[19]),
        .O(\led_timer[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_timer[16]_i_3 
       (.I0(led_timer_reg[18]),
        .O(\led_timer[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_timer[16]_i_4 
       (.I0(led_timer_reg[17]),
        .O(\led_timer[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_timer[16]_i_5 
       (.I0(led_timer_reg[16]),
        .O(\led_timer[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_timer[20]_i_2 
       (.I0(led_timer_reg[23]),
        .O(\led_timer[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_timer[20]_i_3 
       (.I0(led_timer_reg[22]),
        .O(\led_timer[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_timer[20]_i_4 
       (.I0(led_timer_reg[21]),
        .O(\led_timer[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_timer[20]_i_5 
       (.I0(led_timer_reg[20]),
        .O(\led_timer[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_timer[4]_i_2 
       (.I0(led_timer_reg[7]),
        .O(\led_timer[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_timer[4]_i_3 
       (.I0(led_timer_reg[6]),
        .O(\led_timer[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_timer[4]_i_4 
       (.I0(led_timer_reg[5]),
        .O(\led_timer[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_timer[4]_i_5 
       (.I0(led_timer_reg[4]),
        .O(\led_timer[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_timer[8]_i_2 
       (.I0(led_timer_reg[11]),
        .O(\led_timer[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_timer[8]_i_3 
       (.I0(led_timer_reg[10]),
        .O(\led_timer[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_timer[8]_i_4 
       (.I0(led_timer_reg[9]),
        .O(\led_timer[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_timer[8]_i_5 
       (.I0(led_timer_reg[8]),
        .O(\led_timer[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \led_timer_reg[0] 
       (.C(clk),
        .CE(led1),
        .D(\led_timer_reg[0]_i_3_n_7 ),
        .Q(led_timer_reg[0]),
        .R(trigger));
  CARRY4 \led_timer_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\led_timer_reg[0]_i_3_n_0 ,\led_timer_reg[0]_i_3_n_1 ,\led_timer_reg[0]_i_3_n_2 ,\led_timer_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\led_timer_reg[0]_i_3_n_4 ,\led_timer_reg[0]_i_3_n_5 ,\led_timer_reg[0]_i_3_n_6 ,\led_timer_reg[0]_i_3_n_7 }),
        .S({\led_timer[0]_i_6_n_0 ,\led_timer[0]_i_7_n_0 ,\led_timer[0]_i_8_n_0 ,\led_timer[0]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \led_timer_reg[10] 
       (.C(clk),
        .CE(led1),
        .D(\led_timer_reg[8]_i_1_n_5 ),
        .Q(led_timer_reg[10]),
        .R(trigger));
  FDSE #(
    .INIT(1'b0)) 
    \led_timer_reg[11] 
       (.C(clk),
        .CE(led1),
        .D(\led_timer_reg[8]_i_1_n_4 ),
        .Q(led_timer_reg[11]),
        .S(trigger));
  FDRE #(
    .INIT(1'b0)) 
    \led_timer_reg[12] 
       (.C(clk),
        .CE(led1),
        .D(\led_timer_reg[12]_i_1_n_7 ),
        .Q(led_timer_reg[12]),
        .R(trigger));
  CARRY4 \led_timer_reg[12]_i_1 
       (.CI(\led_timer_reg[8]_i_1_n_0 ),
        .CO({\led_timer_reg[12]_i_1_n_0 ,\led_timer_reg[12]_i_1_n_1 ,\led_timer_reg[12]_i_1_n_2 ,\led_timer_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\led_timer_reg[12]_i_1_n_4 ,\led_timer_reg[12]_i_1_n_5 ,\led_timer_reg[12]_i_1_n_6 ,\led_timer_reg[12]_i_1_n_7 }),
        .S({\led_timer[12]_i_2_n_0 ,\led_timer[12]_i_3_n_0 ,\led_timer[12]_i_4_n_0 ,\led_timer[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \led_timer_reg[13] 
       (.C(clk),
        .CE(led1),
        .D(\led_timer_reg[12]_i_1_n_6 ),
        .Q(led_timer_reg[13]),
        .R(trigger));
  FDSE #(
    .INIT(1'b0)) 
    \led_timer_reg[14] 
       (.C(clk),
        .CE(led1),
        .D(\led_timer_reg[12]_i_1_n_5 ),
        .Q(led_timer_reg[14]),
        .S(trigger));
  FDRE #(
    .INIT(1'b0)) 
    \led_timer_reg[15] 
       (.C(clk),
        .CE(led1),
        .D(\led_timer_reg[12]_i_1_n_4 ),
        .Q(led_timer_reg[15]),
        .R(trigger));
  FDRE #(
    .INIT(1'b0)) 
    \led_timer_reg[16] 
       (.C(clk),
        .CE(led1),
        .D(\led_timer_reg[16]_i_1_n_7 ),
        .Q(led_timer_reg[16]),
        .R(trigger));
  CARRY4 \led_timer_reg[16]_i_1 
       (.CI(\led_timer_reg[12]_i_1_n_0 ),
        .CO({\led_timer_reg[16]_i_1_n_0 ,\led_timer_reg[16]_i_1_n_1 ,\led_timer_reg[16]_i_1_n_2 ,\led_timer_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\led_timer_reg[16]_i_1_n_4 ,\led_timer_reg[16]_i_1_n_5 ,\led_timer_reg[16]_i_1_n_6 ,\led_timer_reg[16]_i_1_n_7 }),
        .S({\led_timer[16]_i_2_n_0 ,\led_timer[16]_i_3_n_0 ,\led_timer[16]_i_4_n_0 ,\led_timer[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \led_timer_reg[17] 
       (.C(clk),
        .CE(led1),
        .D(\led_timer_reg[16]_i_1_n_6 ),
        .Q(led_timer_reg[17]),
        .R(trigger));
  FDSE #(
    .INIT(1'b0)) 
    \led_timer_reg[18] 
       (.C(clk),
        .CE(led1),
        .D(\led_timer_reg[16]_i_1_n_5 ),
        .Q(led_timer_reg[18]),
        .S(trigger));
  FDSE #(
    .INIT(1'b0)) 
    \led_timer_reg[19] 
       (.C(clk),
        .CE(led1),
        .D(\led_timer_reg[16]_i_1_n_4 ),
        .Q(led_timer_reg[19]),
        .S(trigger));
  FDRE #(
    .INIT(1'b0)) 
    \led_timer_reg[1] 
       (.C(clk),
        .CE(led1),
        .D(\led_timer_reg[0]_i_3_n_6 ),
        .Q(led_timer_reg[1]),
        .R(trigger));
  FDRE #(
    .INIT(1'b0)) 
    \led_timer_reg[20] 
       (.C(clk),
        .CE(led1),
        .D(\led_timer_reg[20]_i_1_n_7 ),
        .Q(led_timer_reg[20]),
        .R(trigger));
  CARRY4 \led_timer_reg[20]_i_1 
       (.CI(\led_timer_reg[16]_i_1_n_0 ),
        .CO({\NLW_led_timer_reg[20]_i_1_CO_UNCONNECTED [3],\led_timer_reg[20]_i_1_n_1 ,\led_timer_reg[20]_i_1_n_2 ,\led_timer_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\led_timer_reg[20]_i_1_n_4 ,\led_timer_reg[20]_i_1_n_5 ,\led_timer_reg[20]_i_1_n_6 ,\led_timer_reg[20]_i_1_n_7 }),
        .S({\led_timer[20]_i_2_n_0 ,\led_timer[20]_i_3_n_0 ,\led_timer[20]_i_4_n_0 ,\led_timer[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \led_timer_reg[21] 
       (.C(clk),
        .CE(led1),
        .D(\led_timer_reg[20]_i_1_n_6 ),
        .Q(led_timer_reg[21]),
        .R(trigger));
  FDSE #(
    .INIT(1'b0)) 
    \led_timer_reg[22] 
       (.C(clk),
        .CE(led1),
        .D(\led_timer_reg[20]_i_1_n_5 ),
        .Q(led_timer_reg[22]),
        .S(trigger));
  FDRE #(
    .INIT(1'b0)) 
    \led_timer_reg[23] 
       (.C(clk),
        .CE(led1),
        .D(\led_timer_reg[20]_i_1_n_4 ),
        .Q(led_timer_reg[23]),
        .R(trigger));
  FDRE #(
    .INIT(1'b0)) 
    \led_timer_reg[2] 
       (.C(clk),
        .CE(led1),
        .D(\led_timer_reg[0]_i_3_n_5 ),
        .Q(led_timer_reg[2]),
        .R(trigger));
  FDRE #(
    .INIT(1'b0)) 
    \led_timer_reg[3] 
       (.C(clk),
        .CE(led1),
        .D(\led_timer_reg[0]_i_3_n_4 ),
        .Q(led_timer_reg[3]),
        .R(trigger));
  FDRE #(
    .INIT(1'b0)) 
    \led_timer_reg[4] 
       (.C(clk),
        .CE(led1),
        .D(\led_timer_reg[4]_i_1_n_7 ),
        .Q(led_timer_reg[4]),
        .R(trigger));
  CARRY4 \led_timer_reg[4]_i_1 
       (.CI(\led_timer_reg[0]_i_3_n_0 ),
        .CO({\led_timer_reg[4]_i_1_n_0 ,\led_timer_reg[4]_i_1_n_1 ,\led_timer_reg[4]_i_1_n_2 ,\led_timer_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\led_timer_reg[4]_i_1_n_4 ,\led_timer_reg[4]_i_1_n_5 ,\led_timer_reg[4]_i_1_n_6 ,\led_timer_reg[4]_i_1_n_7 }),
        .S({\led_timer[4]_i_2_n_0 ,\led_timer[4]_i_3_n_0 ,\led_timer[4]_i_4_n_0 ,\led_timer[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \led_timer_reg[5] 
       (.C(clk),
        .CE(led1),
        .D(\led_timer_reg[4]_i_1_n_6 ),
        .Q(led_timer_reg[5]),
        .R(trigger));
  FDSE #(
    .INIT(1'b0)) 
    \led_timer_reg[6] 
       (.C(clk),
        .CE(led1),
        .D(\led_timer_reg[4]_i_1_n_5 ),
        .Q(led_timer_reg[6]),
        .S(trigger));
  FDRE #(
    .INIT(1'b0)) 
    \led_timer_reg[7] 
       (.C(clk),
        .CE(led1),
        .D(\led_timer_reg[4]_i_1_n_4 ),
        .Q(led_timer_reg[7]),
        .R(trigger));
  FDSE #(
    .INIT(1'b0)) 
    \led_timer_reg[8] 
       (.C(clk),
        .CE(led1),
        .D(\led_timer_reg[8]_i_1_n_7 ),
        .Q(led_timer_reg[8]),
        .S(trigger));
  CARRY4 \led_timer_reg[8]_i_1 
       (.CI(\led_timer_reg[4]_i_1_n_0 ),
        .CO({\led_timer_reg[8]_i_1_n_0 ,\led_timer_reg[8]_i_1_n_1 ,\led_timer_reg[8]_i_1_n_2 ,\led_timer_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\led_timer_reg[8]_i_1_n_4 ,\led_timer_reg[8]_i_1_n_5 ,\led_timer_reg[8]_i_1_n_6 ,\led_timer_reg[8]_i_1_n_7 }),
        .S({\led_timer[8]_i_2_n_0 ,\led_timer[8]_i_3_n_0 ,\led_timer[8]_i_4_n_0 ,\led_timer[8]_i_5_n_0 }));
  FDSE #(
    .INIT(1'b0)) 
    \led_timer_reg[9] 
       (.C(clk),
        .CE(led1),
        .D(\led_timer_reg[8]_i_1_n_6 ),
        .Q(led_timer_reg[9]),
        .S(trigger));
  LUT2 #(
    .INIT(4'h2)) 
    prev_lvds_i_1
       (.I0(lvds_in_p),
        .I1(lvds_in_n),
        .O(lvds));
  FDRE #(
    .INIT(1'b0)) 
    prev_lvds_reg
       (.C(clk),
        .CE(1'b1),
        .D(lvds),
        .Q(prev_lvds),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif

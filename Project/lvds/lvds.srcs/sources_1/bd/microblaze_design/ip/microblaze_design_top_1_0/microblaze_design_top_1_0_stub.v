// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Jun 16 16:03:36 2025
// Host        : grzeniux running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/grzen/Documents/_Studia/mgr-sem1/SDUP/verilog/Project/lvds/lvds.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_top_1_0/microblaze_design_top_1_0_stub.v
// Design      : microblaze_design_top_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "top,Vivado 2018.3" *)
module microblaze_design_top_1_0(clk, lvds_in_p, lvds_in_n, led, clk_test, gpio_out)
/* synthesis syn_black_box black_box_pad_pin="clk,lvds_in_p,lvds_in_n,led,clk_test,gpio_out[7:0]" */;
  input clk;
  input lvds_in_p;
  input lvds_in_n;
  output led;
  output clk_test;
  input [7:0]gpio_out;
endmodule

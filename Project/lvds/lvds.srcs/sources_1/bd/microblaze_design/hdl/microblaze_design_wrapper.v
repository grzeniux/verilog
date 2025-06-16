//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Mon Jun 16 17:17:56 2025
//Host        : grzeniux running 64-bit major release  (build 9200)
//Command     : generate_target microblaze_design_wrapper.bd
//Design      : microblaze_design_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module microblaze_design_wrapper
   (lvds_in_n_1,
    lvds_in_p_1,
    uart_rtl_txd);
  input lvds_in_n_1;
  input lvds_in_p_1;
  output uart_rtl_txd;

  wire lvds_in_n_1;
  wire lvds_in_p_1;
  wire uart_rtl_txd;

  microblaze_design microblaze_design_i
       (.lvds_in_n_1(lvds_in_n_1),
        .lvds_in_p_1(lvds_in_p_1),
        .uart_rtl_txd(uart_rtl_txd));
endmodule

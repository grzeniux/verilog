-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Jun 16 16:03:36 2025
-- Host        : grzeniux running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/grzen/Documents/_Studia/mgr-sem1/SDUP/verilog/Project/lvds/lvds.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_top_1_0/microblaze_design_top_1_0_stub.vhdl
-- Design      : microblaze_design_top_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity microblaze_design_top_1_0 is
  Port ( 
    clk : in STD_LOGIC;
    lvds_in_p : in STD_LOGIC;
    lvds_in_n : in STD_LOGIC;
    led : out STD_LOGIC;
    clk_test : out STD_LOGIC;
    gpio_out : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end microblaze_design_top_1_0;

architecture stub of microblaze_design_top_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,lvds_in_p,lvds_in_n,led,clk_test,gpio_out[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "top,Vivado 2018.3";
begin
end;

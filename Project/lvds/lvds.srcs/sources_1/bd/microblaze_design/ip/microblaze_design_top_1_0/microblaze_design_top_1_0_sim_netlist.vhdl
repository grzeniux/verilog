-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Jun 16 16:03:36 2025
-- Host        : grzeniux running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/grzen/Documents/_Studia/mgr-sem1/SDUP/verilog/Project/lvds/lvds.srcs/sources_1/bd/microblaze_design/ip/microblaze_design_top_1_0/microblaze_design_top_1_0_sim_netlist.vhdl
-- Design      : microblaze_design_top_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_design_top_1_0_top is
  port (
    clk_test : out STD_LOGIC;
    led : out STD_LOGIC;
    clk : in STD_LOGIC;
    lvds_in_n : in STD_LOGIC;
    lvds_in_p : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of microblaze_design_top_1_0_top : entity is "top";
end microblaze_design_top_1_0_top;

architecture STRUCTURE of microblaze_design_top_1_0_top is
  signal clk_10hz : STD_LOGIC;
  signal clk_10hz_i_1_n_0 : STD_LOGIC;
  signal clk_10hz_i_2_n_0 : STD_LOGIC;
  signal clk_10hz_i_3_n_0 : STD_LOGIC;
  signal clk_10hz_i_4_n_0 : STD_LOGIC;
  signal clk_10hz_i_5_n_0 : STD_LOGIC;
  signal clk_10hz_i_6_n_0 : STD_LOGIC;
  signal clk_10hz_i_7_n_0 : STD_LOGIC;
  signal clk_10hz_i_8_n_0 : STD_LOGIC;
  signal clk_div : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \clk_div0_carry__0_n_0\ : STD_LOGIC;
  signal \clk_div0_carry__0_n_1\ : STD_LOGIC;
  signal \clk_div0_carry__0_n_2\ : STD_LOGIC;
  signal \clk_div0_carry__0_n_3\ : STD_LOGIC;
  signal \clk_div0_carry__1_n_0\ : STD_LOGIC;
  signal \clk_div0_carry__1_n_1\ : STD_LOGIC;
  signal \clk_div0_carry__1_n_2\ : STD_LOGIC;
  signal \clk_div0_carry__1_n_3\ : STD_LOGIC;
  signal \clk_div0_carry__2_n_0\ : STD_LOGIC;
  signal \clk_div0_carry__2_n_1\ : STD_LOGIC;
  signal \clk_div0_carry__2_n_2\ : STD_LOGIC;
  signal \clk_div0_carry__2_n_3\ : STD_LOGIC;
  signal \clk_div0_carry__3_n_0\ : STD_LOGIC;
  signal \clk_div0_carry__3_n_1\ : STD_LOGIC;
  signal \clk_div0_carry__3_n_2\ : STD_LOGIC;
  signal \clk_div0_carry__3_n_3\ : STD_LOGIC;
  signal \clk_div0_carry__4_n_3\ : STD_LOGIC;
  signal clk_div0_carry_n_0 : STD_LOGIC;
  signal clk_div0_carry_n_1 : STD_LOGIC;
  signal clk_div0_carry_n_2 : STD_LOGIC;
  signal clk_div0_carry_n_3 : STD_LOGIC;
  signal clk_div_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^clk_test\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 22 downto 1 );
  signal \^led\ : STD_LOGIC;
  signal led1 : STD_LOGIC;
  signal led_i_1_n_0 : STD_LOGIC;
  signal led_i_2_n_0 : STD_LOGIC;
  signal led_i_3_n_0 : STD_LOGIC;
  signal led_i_4_n_0 : STD_LOGIC;
  signal led_i_5_n_0 : STD_LOGIC;
  signal led_i_6_n_0 : STD_LOGIC;
  signal \led_timer[0]_i_4_n_0\ : STD_LOGIC;
  signal \led_timer[0]_i_5_n_0\ : STD_LOGIC;
  signal \led_timer[0]_i_6_n_0\ : STD_LOGIC;
  signal \led_timer[0]_i_7_n_0\ : STD_LOGIC;
  signal \led_timer[0]_i_8_n_0\ : STD_LOGIC;
  signal \led_timer[0]_i_9_n_0\ : STD_LOGIC;
  signal \led_timer[12]_i_2_n_0\ : STD_LOGIC;
  signal \led_timer[12]_i_3_n_0\ : STD_LOGIC;
  signal \led_timer[12]_i_4_n_0\ : STD_LOGIC;
  signal \led_timer[12]_i_5_n_0\ : STD_LOGIC;
  signal \led_timer[16]_i_2_n_0\ : STD_LOGIC;
  signal \led_timer[16]_i_3_n_0\ : STD_LOGIC;
  signal \led_timer[16]_i_4_n_0\ : STD_LOGIC;
  signal \led_timer[16]_i_5_n_0\ : STD_LOGIC;
  signal \led_timer[20]_i_2_n_0\ : STD_LOGIC;
  signal \led_timer[20]_i_3_n_0\ : STD_LOGIC;
  signal \led_timer[20]_i_4_n_0\ : STD_LOGIC;
  signal \led_timer[20]_i_5_n_0\ : STD_LOGIC;
  signal \led_timer[4]_i_2_n_0\ : STD_LOGIC;
  signal \led_timer[4]_i_3_n_0\ : STD_LOGIC;
  signal \led_timer[4]_i_4_n_0\ : STD_LOGIC;
  signal \led_timer[4]_i_5_n_0\ : STD_LOGIC;
  signal \led_timer[8]_i_2_n_0\ : STD_LOGIC;
  signal \led_timer[8]_i_3_n_0\ : STD_LOGIC;
  signal \led_timer[8]_i_4_n_0\ : STD_LOGIC;
  signal \led_timer[8]_i_5_n_0\ : STD_LOGIC;
  signal led_timer_reg : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \led_timer_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \led_timer_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \led_timer_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \led_timer_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \led_timer_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \led_timer_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \led_timer_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \led_timer_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \led_timer_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \led_timer_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \led_timer_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \led_timer_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \led_timer_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \led_timer_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \led_timer_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \led_timer_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \led_timer_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \led_timer_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \led_timer_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \led_timer_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \led_timer_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \led_timer_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \led_timer_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \led_timer_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \led_timer_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \led_timer_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \led_timer_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \led_timer_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \led_timer_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \led_timer_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \led_timer_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \led_timer_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \led_timer_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \led_timer_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \led_timer_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \led_timer_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \led_timer_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \led_timer_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \led_timer_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \led_timer_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \led_timer_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \led_timer_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \led_timer_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \led_timer_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \led_timer_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \led_timer_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \led_timer_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal lvds : STD_LOGIC;
  signal prev_lvds : STD_LOGIC;
  signal trigger : STD_LOGIC;
  signal \NLW_clk_div0_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_clk_div0_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_led_timer_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of clk_10hz_i_4 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \clk_div[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of led_i_4 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \led_timer[0]_i_5\ : label is "soft_lutpair0";
begin
  clk_test <= \^clk_test\;
  led <= \^led\;
clk_10hz_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => clk_10hz_i_2_n_0,
      I1 => \^clk_test\,
      O => clk_10hz_i_1_n_0
    );
clk_10hz_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => clk_10hz_i_3_n_0,
      I1 => clk_10hz_i_4_n_0,
      I2 => clk_10hz_i_5_n_0,
      I3 => clk_10hz_i_6_n_0,
      I4 => clk_10hz_i_7_n_0,
      I5 => clk_10hz_i_8_n_0,
      O => clk_10hz_i_2_n_0
    );
clk_10hz_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => clk_div(18),
      I1 => clk_div(17),
      I2 => clk_div(19),
      I3 => clk_div(20),
      O => clk_10hz_i_3_n_0
    );
clk_10hz_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => clk_div(22),
      I1 => clk_div(21),
      I2 => clk_div(0),
      O => clk_10hz_i_4_n_0
    );
clk_10hz_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => clk_div(9),
      I1 => clk_div(10),
      I2 => clk_div(11),
      I3 => clk_div(12),
      O => clk_10hz_i_5_n_0
    );
clk_10hz_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => clk_div(14),
      I1 => clk_div(13),
      I2 => clk_div(16),
      I3 => clk_div(15),
      O => clk_10hz_i_6_n_0
    );
clk_10hz_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => clk_div(5),
      I1 => clk_div(6),
      I2 => clk_div(8),
      I3 => clk_div(7),
      O => clk_10hz_i_7_n_0
    );
clk_10hz_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => clk_div(2),
      I1 => clk_div(1),
      I2 => clk_div(4),
      I3 => clk_div(3),
      O => clk_10hz_i_8_n_0
    );
clk_10hz_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clk_10hz_i_1_n_0,
      Q => \^clk_test\,
      R => '0'
    );
clk_div0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => clk_div0_carry_n_0,
      CO(2) => clk_div0_carry_n_1,
      CO(1) => clk_div0_carry_n_2,
      CO(0) => clk_div0_carry_n_3,
      CYINIT => clk_div(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => clk_div(4 downto 1)
    );
\clk_div0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => clk_div0_carry_n_0,
      CO(3) => \clk_div0_carry__0_n_0\,
      CO(2) => \clk_div0_carry__0_n_1\,
      CO(1) => \clk_div0_carry__0_n_2\,
      CO(0) => \clk_div0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => clk_div(8 downto 5)
    );
\clk_div0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_div0_carry__0_n_0\,
      CO(3) => \clk_div0_carry__1_n_0\,
      CO(2) => \clk_div0_carry__1_n_1\,
      CO(1) => \clk_div0_carry__1_n_2\,
      CO(0) => \clk_div0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => clk_div(12 downto 9)
    );
\clk_div0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_div0_carry__1_n_0\,
      CO(3) => \clk_div0_carry__2_n_0\,
      CO(2) => \clk_div0_carry__2_n_1\,
      CO(1) => \clk_div0_carry__2_n_2\,
      CO(0) => \clk_div0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => clk_div(16 downto 13)
    );
\clk_div0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_div0_carry__2_n_0\,
      CO(3) => \clk_div0_carry__3_n_0\,
      CO(2) => \clk_div0_carry__3_n_1\,
      CO(1) => \clk_div0_carry__3_n_2\,
      CO(0) => \clk_div0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => clk_div(20 downto 17)
    );
\clk_div0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_div0_carry__3_n_0\,
      CO(3 downto 1) => \NLW_clk_div0_carry__4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \clk_div0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_clk_div0_carry__4_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => data0(22 downto 21),
      S(3 downto 2) => B"00",
      S(1 downto 0) => clk_div(22 downto 21)
    );
\clk_div[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_div(0),
      O => clk_div_0(0)
    );
\clk_div[22]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_10hz_i_2_n_0,
      O => clk_10hz
    );
\clk_div_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clk_div_0(0),
      Q => clk_div(0),
      R => '0'
    );
\clk_div_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(10),
      Q => clk_div(10),
      R => clk_10hz
    );
\clk_div_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(11),
      Q => clk_div(11),
      R => clk_10hz
    );
\clk_div_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(12),
      Q => clk_div(12),
      R => clk_10hz
    );
\clk_div_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(13),
      Q => clk_div(13),
      R => clk_10hz
    );
\clk_div_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(14),
      Q => clk_div(14),
      R => clk_10hz
    );
\clk_div_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(15),
      Q => clk_div(15),
      R => clk_10hz
    );
\clk_div_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(16),
      Q => clk_div(16),
      R => clk_10hz
    );
\clk_div_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(17),
      Q => clk_div(17),
      R => clk_10hz
    );
\clk_div_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(18),
      Q => clk_div(18),
      R => clk_10hz
    );
\clk_div_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(19),
      Q => clk_div(19),
      R => clk_10hz
    );
\clk_div_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(1),
      Q => clk_div(1),
      R => clk_10hz
    );
\clk_div_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(20),
      Q => clk_div(20),
      R => clk_10hz
    );
\clk_div_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(21),
      Q => clk_div(21),
      R => clk_10hz
    );
\clk_div_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(22),
      Q => clk_div(22),
      R => clk_10hz
    );
\clk_div_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(2),
      Q => clk_div(2),
      R => clk_10hz
    );
\clk_div_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(3),
      Q => clk_div(3),
      R => clk_10hz
    );
\clk_div_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(4),
      Q => clk_div(4),
      R => clk_10hz
    );
\clk_div_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(5),
      Q => clk_div(5),
      R => clk_10hz
    );
\clk_div_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(6),
      Q => clk_div(6),
      R => clk_10hz
    );
\clk_div_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(7),
      Q => clk_div(7),
      R => clk_10hz
    );
\clk_div_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(8),
      Q => clk_div(8),
      R => clk_10hz
    );
\clk_div_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(9),
      Q => clk_div(9),
      R => clk_10hz
    );
led_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFE00"
    )
        port map (
      I0 => led_i_2_n_0,
      I1 => led_i_3_n_0,
      I2 => led_i_4_n_0,
      I3 => \^led\,
      I4 => trigger,
      O => led_i_1_n_0
    );
led_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => led_timer_reg(4),
      I1 => led_timer_reg(8),
      I2 => led_timer_reg(3),
      I3 => led_timer_reg(11),
      I4 => led_i_5_n_0,
      O => led_i_2_n_0
    );
led_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => led_timer_reg(10),
      I1 => led_timer_reg(21),
      I2 => led_timer_reg(9),
      I3 => led_timer_reg(22),
      I4 => led_i_6_n_0,
      O => led_i_3_n_0
    );
led_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \led_timer[0]_i_4_n_0\,
      I1 => led_timer_reg(23),
      I2 => led_timer_reg(0),
      I3 => led_timer_reg(12),
      I4 => led_timer_reg(15),
      O => led_i_4_n_0
    );
led_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => led_timer_reg(6),
      I1 => led_timer_reg(1),
      I2 => led_timer_reg(5),
      I3 => led_timer_reg(2),
      O => led_i_5_n_0
    );
led_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => led_timer_reg(18),
      I1 => led_timer_reg(13),
      I2 => led_timer_reg(17),
      I3 => led_timer_reg(14),
      O => led_i_6_n_0
    );
led_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => led_i_1_n_0,
      Q => \^led\,
      R => '0'
    );
\led_timer[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => lvds_in_n,
      I1 => lvds_in_p,
      I2 => prev_lvds,
      O => trigger
    );
\led_timer[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => led_i_2_n_0,
      I1 => \led_timer[0]_i_4_n_0\,
      I2 => led_timer_reg(23),
      I3 => led_timer_reg(0),
      I4 => \led_timer[0]_i_5_n_0\,
      I5 => led_i_3_n_0,
      O => led1
    );
\led_timer[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => led_timer_reg(20),
      I1 => led_timer_reg(7),
      I2 => led_timer_reg(19),
      I3 => led_timer_reg(16),
      O => \led_timer[0]_i_4_n_0\
    );
\led_timer[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => led_timer_reg(12),
      I1 => led_timer_reg(15),
      O => \led_timer[0]_i_5_n_0\
    );
\led_timer[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_timer_reg(3),
      O => \led_timer[0]_i_6_n_0\
    );
\led_timer[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_timer_reg(2),
      O => \led_timer[0]_i_7_n_0\
    );
\led_timer[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_timer_reg(1),
      O => \led_timer[0]_i_8_n_0\
    );
\led_timer[0]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_timer_reg(0),
      O => \led_timer[0]_i_9_n_0\
    );
\led_timer[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_timer_reg(15),
      O => \led_timer[12]_i_2_n_0\
    );
\led_timer[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_timer_reg(14),
      O => \led_timer[12]_i_3_n_0\
    );
\led_timer[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_timer_reg(13),
      O => \led_timer[12]_i_4_n_0\
    );
\led_timer[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_timer_reg(12),
      O => \led_timer[12]_i_5_n_0\
    );
\led_timer[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_timer_reg(19),
      O => \led_timer[16]_i_2_n_0\
    );
\led_timer[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_timer_reg(18),
      O => \led_timer[16]_i_3_n_0\
    );
\led_timer[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_timer_reg(17),
      O => \led_timer[16]_i_4_n_0\
    );
\led_timer[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_timer_reg(16),
      O => \led_timer[16]_i_5_n_0\
    );
\led_timer[20]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_timer_reg(23),
      O => \led_timer[20]_i_2_n_0\
    );
\led_timer[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_timer_reg(22),
      O => \led_timer[20]_i_3_n_0\
    );
\led_timer[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_timer_reg(21),
      O => \led_timer[20]_i_4_n_0\
    );
\led_timer[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_timer_reg(20),
      O => \led_timer[20]_i_5_n_0\
    );
\led_timer[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_timer_reg(7),
      O => \led_timer[4]_i_2_n_0\
    );
\led_timer[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_timer_reg(6),
      O => \led_timer[4]_i_3_n_0\
    );
\led_timer[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_timer_reg(5),
      O => \led_timer[4]_i_4_n_0\
    );
\led_timer[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_timer_reg(4),
      O => \led_timer[4]_i_5_n_0\
    );
\led_timer[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_timer_reg(11),
      O => \led_timer[8]_i_2_n_0\
    );
\led_timer[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_timer_reg(10),
      O => \led_timer[8]_i_3_n_0\
    );
\led_timer[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_timer_reg(9),
      O => \led_timer[8]_i_4_n_0\
    );
\led_timer[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_timer_reg(8),
      O => \led_timer[8]_i_5_n_0\
    );
\led_timer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => led1,
      D => \led_timer_reg[0]_i_3_n_7\,
      Q => led_timer_reg(0),
      R => trigger
    );
\led_timer_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \led_timer_reg[0]_i_3_n_0\,
      CO(2) => \led_timer_reg[0]_i_3_n_1\,
      CO(1) => \led_timer_reg[0]_i_3_n_2\,
      CO(0) => \led_timer_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \led_timer_reg[0]_i_3_n_4\,
      O(2) => \led_timer_reg[0]_i_3_n_5\,
      O(1) => \led_timer_reg[0]_i_3_n_6\,
      O(0) => \led_timer_reg[0]_i_3_n_7\,
      S(3) => \led_timer[0]_i_6_n_0\,
      S(2) => \led_timer[0]_i_7_n_0\,
      S(1) => \led_timer[0]_i_8_n_0\,
      S(0) => \led_timer[0]_i_9_n_0\
    );
\led_timer_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => led1,
      D => \led_timer_reg[8]_i_1_n_5\,
      Q => led_timer_reg(10),
      R => trigger
    );
\led_timer_reg[11]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => led1,
      D => \led_timer_reg[8]_i_1_n_4\,
      Q => led_timer_reg(11),
      S => trigger
    );
\led_timer_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => led1,
      D => \led_timer_reg[12]_i_1_n_7\,
      Q => led_timer_reg(12),
      R => trigger
    );
\led_timer_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \led_timer_reg[8]_i_1_n_0\,
      CO(3) => \led_timer_reg[12]_i_1_n_0\,
      CO(2) => \led_timer_reg[12]_i_1_n_1\,
      CO(1) => \led_timer_reg[12]_i_1_n_2\,
      CO(0) => \led_timer_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \led_timer_reg[12]_i_1_n_4\,
      O(2) => \led_timer_reg[12]_i_1_n_5\,
      O(1) => \led_timer_reg[12]_i_1_n_6\,
      O(0) => \led_timer_reg[12]_i_1_n_7\,
      S(3) => \led_timer[12]_i_2_n_0\,
      S(2) => \led_timer[12]_i_3_n_0\,
      S(1) => \led_timer[12]_i_4_n_0\,
      S(0) => \led_timer[12]_i_5_n_0\
    );
\led_timer_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => led1,
      D => \led_timer_reg[12]_i_1_n_6\,
      Q => led_timer_reg(13),
      R => trigger
    );
\led_timer_reg[14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => led1,
      D => \led_timer_reg[12]_i_1_n_5\,
      Q => led_timer_reg(14),
      S => trigger
    );
\led_timer_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => led1,
      D => \led_timer_reg[12]_i_1_n_4\,
      Q => led_timer_reg(15),
      R => trigger
    );
\led_timer_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => led1,
      D => \led_timer_reg[16]_i_1_n_7\,
      Q => led_timer_reg(16),
      R => trigger
    );
\led_timer_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \led_timer_reg[12]_i_1_n_0\,
      CO(3) => \led_timer_reg[16]_i_1_n_0\,
      CO(2) => \led_timer_reg[16]_i_1_n_1\,
      CO(1) => \led_timer_reg[16]_i_1_n_2\,
      CO(0) => \led_timer_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \led_timer_reg[16]_i_1_n_4\,
      O(2) => \led_timer_reg[16]_i_1_n_5\,
      O(1) => \led_timer_reg[16]_i_1_n_6\,
      O(0) => \led_timer_reg[16]_i_1_n_7\,
      S(3) => \led_timer[16]_i_2_n_0\,
      S(2) => \led_timer[16]_i_3_n_0\,
      S(1) => \led_timer[16]_i_4_n_0\,
      S(0) => \led_timer[16]_i_5_n_0\
    );
\led_timer_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => led1,
      D => \led_timer_reg[16]_i_1_n_6\,
      Q => led_timer_reg(17),
      R => trigger
    );
\led_timer_reg[18]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => led1,
      D => \led_timer_reg[16]_i_1_n_5\,
      Q => led_timer_reg(18),
      S => trigger
    );
\led_timer_reg[19]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => led1,
      D => \led_timer_reg[16]_i_1_n_4\,
      Q => led_timer_reg(19),
      S => trigger
    );
\led_timer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => led1,
      D => \led_timer_reg[0]_i_3_n_6\,
      Q => led_timer_reg(1),
      R => trigger
    );
\led_timer_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => led1,
      D => \led_timer_reg[20]_i_1_n_7\,
      Q => led_timer_reg(20),
      R => trigger
    );
\led_timer_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \led_timer_reg[16]_i_1_n_0\,
      CO(3) => \NLW_led_timer_reg[20]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \led_timer_reg[20]_i_1_n_1\,
      CO(1) => \led_timer_reg[20]_i_1_n_2\,
      CO(0) => \led_timer_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3) => \led_timer_reg[20]_i_1_n_4\,
      O(2) => \led_timer_reg[20]_i_1_n_5\,
      O(1) => \led_timer_reg[20]_i_1_n_6\,
      O(0) => \led_timer_reg[20]_i_1_n_7\,
      S(3) => \led_timer[20]_i_2_n_0\,
      S(2) => \led_timer[20]_i_3_n_0\,
      S(1) => \led_timer[20]_i_4_n_0\,
      S(0) => \led_timer[20]_i_5_n_0\
    );
\led_timer_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => led1,
      D => \led_timer_reg[20]_i_1_n_6\,
      Q => led_timer_reg(21),
      R => trigger
    );
\led_timer_reg[22]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => led1,
      D => \led_timer_reg[20]_i_1_n_5\,
      Q => led_timer_reg(22),
      S => trigger
    );
\led_timer_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => led1,
      D => \led_timer_reg[20]_i_1_n_4\,
      Q => led_timer_reg(23),
      R => trigger
    );
\led_timer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => led1,
      D => \led_timer_reg[0]_i_3_n_5\,
      Q => led_timer_reg(2),
      R => trigger
    );
\led_timer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => led1,
      D => \led_timer_reg[0]_i_3_n_4\,
      Q => led_timer_reg(3),
      R => trigger
    );
\led_timer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => led1,
      D => \led_timer_reg[4]_i_1_n_7\,
      Q => led_timer_reg(4),
      R => trigger
    );
\led_timer_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \led_timer_reg[0]_i_3_n_0\,
      CO(3) => \led_timer_reg[4]_i_1_n_0\,
      CO(2) => \led_timer_reg[4]_i_1_n_1\,
      CO(1) => \led_timer_reg[4]_i_1_n_2\,
      CO(0) => \led_timer_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \led_timer_reg[4]_i_1_n_4\,
      O(2) => \led_timer_reg[4]_i_1_n_5\,
      O(1) => \led_timer_reg[4]_i_1_n_6\,
      O(0) => \led_timer_reg[4]_i_1_n_7\,
      S(3) => \led_timer[4]_i_2_n_0\,
      S(2) => \led_timer[4]_i_3_n_0\,
      S(1) => \led_timer[4]_i_4_n_0\,
      S(0) => \led_timer[4]_i_5_n_0\
    );
\led_timer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => led1,
      D => \led_timer_reg[4]_i_1_n_6\,
      Q => led_timer_reg(5),
      R => trigger
    );
\led_timer_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => led1,
      D => \led_timer_reg[4]_i_1_n_5\,
      Q => led_timer_reg(6),
      S => trigger
    );
\led_timer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => led1,
      D => \led_timer_reg[4]_i_1_n_4\,
      Q => led_timer_reg(7),
      R => trigger
    );
\led_timer_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => led1,
      D => \led_timer_reg[8]_i_1_n_7\,
      Q => led_timer_reg(8),
      S => trigger
    );
\led_timer_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \led_timer_reg[4]_i_1_n_0\,
      CO(3) => \led_timer_reg[8]_i_1_n_0\,
      CO(2) => \led_timer_reg[8]_i_1_n_1\,
      CO(1) => \led_timer_reg[8]_i_1_n_2\,
      CO(0) => \led_timer_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \led_timer_reg[8]_i_1_n_4\,
      O(2) => \led_timer_reg[8]_i_1_n_5\,
      O(1) => \led_timer_reg[8]_i_1_n_6\,
      O(0) => \led_timer_reg[8]_i_1_n_7\,
      S(3) => \led_timer[8]_i_2_n_0\,
      S(2) => \led_timer[8]_i_3_n_0\,
      S(1) => \led_timer[8]_i_4_n_0\,
      S(0) => \led_timer[8]_i_5_n_0\
    );
\led_timer_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => led1,
      D => \led_timer_reg[8]_i_1_n_6\,
      Q => led_timer_reg(9),
      S => trigger
    );
prev_lvds_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => lvds_in_p,
      I1 => lvds_in_n,
      O => lvds
    );
prev_lvds_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => lvds,
      Q => prev_lvds,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_design_top_1_0 is
  port (
    clk : in STD_LOGIC;
    lvds_in_p : in STD_LOGIC;
    lvds_in_n : in STD_LOGIC;
    led : out STD_LOGIC;
    clk_test : out STD_LOGIC;
    gpio_out : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of microblaze_design_top_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of microblaze_design_top_1_0 : entity is "microblaze_design_top_1_0,top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of microblaze_design_top_1_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of microblaze_design_top_1_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of microblaze_design_top_1_0 : entity is "top,Vivado 2018.3";
end microblaze_design_top_1_0;

architecture STRUCTURE of microblaze_design_top_1_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN microblaze_design_clk_wiz_1_0_clk_out1, INSERT_VIP 0";
begin
inst: entity work.microblaze_design_top_1_0_top
     port map (
      clk => clk,
      clk_test => clk_test,
      led => led,
      lvds_in_n => lvds_in_n,
      lvds_in_p => lvds_in_p
    );
end STRUCTURE;

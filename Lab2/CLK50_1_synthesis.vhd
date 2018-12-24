--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: CLK50_1_synthesis.vhd
-- /___/   /\     Timestamp: Mon Mar 12 15:23:37 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm CLK50_1 -w -dir netgen/synthesis -ofmt vhdl -sim CLK50_1.ngc CLK50_1_synthesis.vhd 
-- Device	: xc3s50-5-pq208
-- Input file	: CLK50_1.ngc
-- Output file	: /home/ahmednasser/Desktop/Lab_2/netgen/synthesis/CLK50_1_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: CLK50_1
-- Xilinx	: /home/ahmednasser/Xillinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity CLK50_1 is
  port (
    clk : in STD_LOGIC := 'X'; 
    clock : out STD_LOGIC 
  );
end CLK50_1;

architecture Structure of CLK50_1 is
  signal Mcompar_clock_cmp_lt0000_cy_0_rt_1 : STD_LOGIC; 
  signal Mcount_counter_cy_10_rt_24 : STD_LOGIC; 
  signal Mcount_counter_cy_11_rt_26 : STD_LOGIC; 
  signal Mcount_counter_cy_12_rt_28 : STD_LOGIC; 
  signal Mcount_counter_cy_13_rt_30 : STD_LOGIC; 
  signal Mcount_counter_cy_14_rt_32 : STD_LOGIC; 
  signal Mcount_counter_cy_15_rt_34 : STD_LOGIC; 
  signal Mcount_counter_cy_16_rt_36 : STD_LOGIC; 
  signal Mcount_counter_cy_17_rt_38 : STD_LOGIC; 
  signal Mcount_counter_cy_18_rt_40 : STD_LOGIC; 
  signal Mcount_counter_cy_19_rt_42 : STD_LOGIC; 
  signal Mcount_counter_cy_1_rt_44 : STD_LOGIC; 
  signal Mcount_counter_cy_20_rt_46 : STD_LOGIC; 
  signal Mcount_counter_cy_21_rt_48 : STD_LOGIC; 
  signal Mcount_counter_cy_22_rt_50 : STD_LOGIC; 
  signal Mcount_counter_cy_23_rt_52 : STD_LOGIC; 
  signal Mcount_counter_cy_24_rt_54 : STD_LOGIC; 
  signal Mcount_counter_cy_25_rt_56 : STD_LOGIC; 
  signal Mcount_counter_cy_26_rt_58 : STD_LOGIC; 
  signal Mcount_counter_cy_27_rt_60 : STD_LOGIC; 
  signal Mcount_counter_cy_28_rt_62 : STD_LOGIC; 
  signal Mcount_counter_cy_29_rt_64 : STD_LOGIC; 
  signal Mcount_counter_cy_2_rt_66 : STD_LOGIC; 
  signal Mcount_counter_cy_30_rt_68 : STD_LOGIC; 
  signal Mcount_counter_cy_3_rt_70 : STD_LOGIC; 
  signal Mcount_counter_cy_4_rt_72 : STD_LOGIC; 
  signal Mcount_counter_cy_5_rt_74 : STD_LOGIC; 
  signal Mcount_counter_cy_6_rt_76 : STD_LOGIC; 
  signal Mcount_counter_cy_7_rt_78 : STD_LOGIC; 
  signal Mcount_counter_cy_8_rt_80 : STD_LOGIC; 
  signal Mcount_counter_cy_9_rt_82 : STD_LOGIC; 
  signal Mcount_counter_xor_31_rt_84 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal clk_BUFGP_120 : STD_LOGIC; 
  signal clock_OBUF_122 : STD_LOGIC; 
  signal clock_cmp_lt0000 : STD_LOGIC; 
  signal Mcompar_clock_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal Mcompar_clock_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 10 downto 1 ); 
  signal Mcount_counter_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal Mcount_counter_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal counter : STD_LOGIC_VECTOR ( 31 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  clock_3 : FDR
    port map (
      C => clk_BUFGP_120,
      D => N1,
      R => clock_cmp_lt0000,
      Q => clock_OBUF_122
    );
  counter_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_120,
      D => Result(0),
      R => Mcompar_clock_cmp_lt0000_cy(10),
      Q => counter(0)
    );
  counter_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_120,
      D => Result(1),
      R => Mcompar_clock_cmp_lt0000_cy(10),
      Q => counter(1)
    );
  counter_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_120,
      D => Result(2),
      R => Mcompar_clock_cmp_lt0000_cy(10),
      Q => counter(2)
    );
  counter_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_120,
      D => Result(3),
      R => Mcompar_clock_cmp_lt0000_cy(10),
      Q => counter(3)
    );
  counter_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_120,
      D => Result(4),
      R => Mcompar_clock_cmp_lt0000_cy(10),
      Q => counter(4)
    );
  counter_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_120,
      D => Result(5),
      R => Mcompar_clock_cmp_lt0000_cy(10),
      Q => counter(5)
    );
  counter_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_120,
      D => Result(6),
      R => Mcompar_clock_cmp_lt0000_cy(10),
      Q => counter(6)
    );
  counter_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_120,
      D => Result(7),
      R => Mcompar_clock_cmp_lt0000_cy(10),
      Q => counter(7)
    );
  counter_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_120,
      D => Result(8),
      R => Mcompar_clock_cmp_lt0000_cy(10),
      Q => counter(8)
    );
  counter_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_120,
      D => Result(9),
      R => Mcompar_clock_cmp_lt0000_cy(10),
      Q => counter(9)
    );
  counter_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_120,
      D => Result(10),
      R => Mcompar_clock_cmp_lt0000_cy(10),
      Q => counter(10)
    );
  counter_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_120,
      D => Result(11),
      R => Mcompar_clock_cmp_lt0000_cy(10),
      Q => counter(11)
    );
  counter_12 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_120,
      D => Result(12),
      R => Mcompar_clock_cmp_lt0000_cy(10),
      Q => counter(12)
    );
  counter_13 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_120,
      D => Result(13),
      R => Mcompar_clock_cmp_lt0000_cy(10),
      Q => counter(13)
    );
  counter_14 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_120,
      D => Result(14),
      R => Mcompar_clock_cmp_lt0000_cy(10),
      Q => counter(14)
    );
  counter_15 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_120,
      D => Result(15),
      R => Mcompar_clock_cmp_lt0000_cy(10),
      Q => counter(15)
    );
  counter_16 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_120,
      D => Result(16),
      R => Mcompar_clock_cmp_lt0000_cy(10),
      Q => counter(16)
    );
  counter_17 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_120,
      D => Result(17),
      R => Mcompar_clock_cmp_lt0000_cy(10),
      Q => counter(17)
    );
  counter_18 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_120,
      D => Result(18),
      R => Mcompar_clock_cmp_lt0000_cy(10),
      Q => counter(18)
    );
  counter_19 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_120,
      D => Result(19),
      R => Mcompar_clock_cmp_lt0000_cy(10),
      Q => counter(19)
    );
  counter_20 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_120,
      D => Result(20),
      R => Mcompar_clock_cmp_lt0000_cy(10),
      Q => counter(20)
    );
  counter_21 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_120,
      D => Result(21),
      R => Mcompar_clock_cmp_lt0000_cy(10),
      Q => counter(21)
    );
  counter_22 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_120,
      D => Result(22),
      R => Mcompar_clock_cmp_lt0000_cy(10),
      Q => counter(22)
    );
  counter_23 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_120,
      D => Result(23),
      R => Mcompar_clock_cmp_lt0000_cy(10),
      Q => counter(23)
    );
  counter_24 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_120,
      D => Result(24),
      R => Mcompar_clock_cmp_lt0000_cy(10),
      Q => counter(24)
    );
  counter_25 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_120,
      D => Result(25),
      R => Mcompar_clock_cmp_lt0000_cy(10),
      Q => counter(25)
    );
  counter_26 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_120,
      D => Result(26),
      R => Mcompar_clock_cmp_lt0000_cy(10),
      Q => counter(26)
    );
  counter_27 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_120,
      D => Result(27),
      R => Mcompar_clock_cmp_lt0000_cy(10),
      Q => counter(27)
    );
  counter_28 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_120,
      D => Result(28),
      R => Mcompar_clock_cmp_lt0000_cy(10),
      Q => counter(28)
    );
  counter_29 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_120,
      D => Result(29),
      R => Mcompar_clock_cmp_lt0000_cy(10),
      Q => counter(29)
    );
  counter_30 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_120,
      D => Result(30),
      R => Mcompar_clock_cmp_lt0000_cy(10),
      Q => counter(30)
    );
  counter_31 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_120,
      D => Result(31),
      R => Mcompar_clock_cmp_lt0000_cy(10),
      Q => counter(31)
    );
  Mcompar_clock_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_clock_cmp_lt0000_cy_0_rt_1,
      O => Mcompar_clock_cmp_lt0000_cy(0)
    );
  Mcompar_clock_cmp_lt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => counter(2),
      I1 => counter(3),
      O => Mcompar_clock_cmp_lt0000_lut(1)
    );
  Mcompar_clock_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_clock_cmp_lt0000_cy(0),
      DI => N1,
      S => Mcompar_clock_cmp_lt0000_lut(1),
      O => Mcompar_clock_cmp_lt0000_cy(1)
    );
  Mcompar_clock_cmp_lt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => counter(4),
      I1 => counter(5),
      O => Mcompar_clock_cmp_lt0000_lut(2)
    );
  Mcompar_clock_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_clock_cmp_lt0000_cy(1),
      DI => N0,
      S => Mcompar_clock_cmp_lt0000_lut(2),
      O => Mcompar_clock_cmp_lt0000_cy(2)
    );
  Mcompar_clock_cmp_lt0000_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => counter(6),
      I1 => counter(7),
      I2 => counter(8),
      I3 => counter(9),
      O => Mcompar_clock_cmp_lt0000_lut(3)
    );
  Mcompar_clock_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_clock_cmp_lt0000_cy(2),
      DI => N1,
      S => Mcompar_clock_cmp_lt0000_lut(3),
      O => Mcompar_clock_cmp_lt0000_cy(3)
    );
  Mcompar_clock_cmp_lt0000_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => counter(10),
      I1 => counter(11),
      I2 => counter(12),
      I3 => counter(13),
      O => Mcompar_clock_cmp_lt0000_lut(4)
    );
  Mcompar_clock_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_clock_cmp_lt0000_cy(3),
      DI => N1,
      S => Mcompar_clock_cmp_lt0000_lut(4),
      O => Mcompar_clock_cmp_lt0000_cy(4)
    );
  Mcompar_clock_cmp_lt0000_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => counter(14),
      I1 => counter(15),
      I2 => counter(16),
      I3 => counter(17),
      O => Mcompar_clock_cmp_lt0000_lut(5)
    );
  Mcompar_clock_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_clock_cmp_lt0000_cy(4),
      DI => N1,
      S => Mcompar_clock_cmp_lt0000_lut(5),
      O => Mcompar_clock_cmp_lt0000_cy(5)
    );
  Mcompar_clock_cmp_lt0000_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => counter(18),
      I1 => counter(19),
      I2 => counter(20),
      I3 => counter(21),
      O => Mcompar_clock_cmp_lt0000_lut(6)
    );
  Mcompar_clock_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_clock_cmp_lt0000_cy(5),
      DI => N1,
      S => Mcompar_clock_cmp_lt0000_lut(6),
      O => Mcompar_clock_cmp_lt0000_cy(6)
    );
  Mcompar_clock_cmp_lt0000_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => counter(22),
      I1 => counter(23),
      I2 => counter(24),
      I3 => counter(25),
      O => Mcompar_clock_cmp_lt0000_lut(7)
    );
  Mcompar_clock_cmp_lt0000_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_clock_cmp_lt0000_cy(6),
      DI => N1,
      S => Mcompar_clock_cmp_lt0000_lut(7),
      O => Mcompar_clock_cmp_lt0000_cy(7)
    );
  Mcompar_clock_cmp_lt0000_lut_8_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => counter(26),
      I1 => counter(27),
      I2 => counter(28),
      I3 => counter(29),
      O => Mcompar_clock_cmp_lt0000_lut(8)
    );
  Mcompar_clock_cmp_lt0000_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_clock_cmp_lt0000_cy(7),
      DI => N1,
      S => Mcompar_clock_cmp_lt0000_lut(8),
      O => Mcompar_clock_cmp_lt0000_cy(8)
    );
  Mcompar_clock_cmp_lt0000_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_clock_cmp_lt0000_cy(8),
      DI => N1,
      S => Mcompar_clock_cmp_lt0000_lut(9),
      O => Mcompar_clock_cmp_lt0000_cy(9)
    );
  Mcompar_clock_cmp_lt0000_cy_10_Q : MUXCY
    port map (
      CI => Mcompar_clock_cmp_lt0000_cy(9),
      DI => N0,
      S => Mcompar_clock_cmp_lt0000_lut(10),
      O => Mcompar_clock_cmp_lt0000_cy(10)
    );
  Mcount_counter_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => Mcount_counter_lut(0),
      O => Mcount_counter_cy(0)
    );
  Mcount_counter_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => Mcount_counter_lut(0),
      O => Result(0)
    );
  Mcount_counter_cy_1_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(0),
      DI => N0,
      S => Mcount_counter_cy_1_rt_44,
      O => Mcount_counter_cy(1)
    );
  Mcount_counter_xor_1_Q : XORCY
    port map (
      CI => Mcount_counter_cy(0),
      LI => Mcount_counter_cy_1_rt_44,
      O => Result(1)
    );
  Mcount_counter_cy_2_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(1),
      DI => N0,
      S => Mcount_counter_cy_2_rt_66,
      O => Mcount_counter_cy(2)
    );
  Mcount_counter_xor_2_Q : XORCY
    port map (
      CI => Mcount_counter_cy(1),
      LI => Mcount_counter_cy_2_rt_66,
      O => Result(2)
    );
  Mcount_counter_cy_3_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(2),
      DI => N0,
      S => Mcount_counter_cy_3_rt_70,
      O => Mcount_counter_cy(3)
    );
  Mcount_counter_xor_3_Q : XORCY
    port map (
      CI => Mcount_counter_cy(2),
      LI => Mcount_counter_cy_3_rt_70,
      O => Result(3)
    );
  Mcount_counter_cy_4_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(3),
      DI => N0,
      S => Mcount_counter_cy_4_rt_72,
      O => Mcount_counter_cy(4)
    );
  Mcount_counter_xor_4_Q : XORCY
    port map (
      CI => Mcount_counter_cy(3),
      LI => Mcount_counter_cy_4_rt_72,
      O => Result(4)
    );
  Mcount_counter_cy_5_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(4),
      DI => N0,
      S => Mcount_counter_cy_5_rt_74,
      O => Mcount_counter_cy(5)
    );
  Mcount_counter_xor_5_Q : XORCY
    port map (
      CI => Mcount_counter_cy(4),
      LI => Mcount_counter_cy_5_rt_74,
      O => Result(5)
    );
  Mcount_counter_cy_6_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(5),
      DI => N0,
      S => Mcount_counter_cy_6_rt_76,
      O => Mcount_counter_cy(6)
    );
  Mcount_counter_xor_6_Q : XORCY
    port map (
      CI => Mcount_counter_cy(5),
      LI => Mcount_counter_cy_6_rt_76,
      O => Result(6)
    );
  Mcount_counter_cy_7_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(6),
      DI => N0,
      S => Mcount_counter_cy_7_rt_78,
      O => Mcount_counter_cy(7)
    );
  Mcount_counter_xor_7_Q : XORCY
    port map (
      CI => Mcount_counter_cy(6),
      LI => Mcount_counter_cy_7_rt_78,
      O => Result(7)
    );
  Mcount_counter_cy_8_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(7),
      DI => N0,
      S => Mcount_counter_cy_8_rt_80,
      O => Mcount_counter_cy(8)
    );
  Mcount_counter_xor_8_Q : XORCY
    port map (
      CI => Mcount_counter_cy(7),
      LI => Mcount_counter_cy_8_rt_80,
      O => Result(8)
    );
  Mcount_counter_cy_9_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(8),
      DI => N0,
      S => Mcount_counter_cy_9_rt_82,
      O => Mcount_counter_cy(9)
    );
  Mcount_counter_xor_9_Q : XORCY
    port map (
      CI => Mcount_counter_cy(8),
      LI => Mcount_counter_cy_9_rt_82,
      O => Result(9)
    );
  Mcount_counter_cy_10_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(9),
      DI => N0,
      S => Mcount_counter_cy_10_rt_24,
      O => Mcount_counter_cy(10)
    );
  Mcount_counter_xor_10_Q : XORCY
    port map (
      CI => Mcount_counter_cy(9),
      LI => Mcount_counter_cy_10_rt_24,
      O => Result(10)
    );
  Mcount_counter_cy_11_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(10),
      DI => N0,
      S => Mcount_counter_cy_11_rt_26,
      O => Mcount_counter_cy(11)
    );
  Mcount_counter_xor_11_Q : XORCY
    port map (
      CI => Mcount_counter_cy(10),
      LI => Mcount_counter_cy_11_rt_26,
      O => Result(11)
    );
  Mcount_counter_cy_12_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(11),
      DI => N0,
      S => Mcount_counter_cy_12_rt_28,
      O => Mcount_counter_cy(12)
    );
  Mcount_counter_xor_12_Q : XORCY
    port map (
      CI => Mcount_counter_cy(11),
      LI => Mcount_counter_cy_12_rt_28,
      O => Result(12)
    );
  Mcount_counter_cy_13_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(12),
      DI => N0,
      S => Mcount_counter_cy_13_rt_30,
      O => Mcount_counter_cy(13)
    );
  Mcount_counter_xor_13_Q : XORCY
    port map (
      CI => Mcount_counter_cy(12),
      LI => Mcount_counter_cy_13_rt_30,
      O => Result(13)
    );
  Mcount_counter_cy_14_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(13),
      DI => N0,
      S => Mcount_counter_cy_14_rt_32,
      O => Mcount_counter_cy(14)
    );
  Mcount_counter_xor_14_Q : XORCY
    port map (
      CI => Mcount_counter_cy(13),
      LI => Mcount_counter_cy_14_rt_32,
      O => Result(14)
    );
  Mcount_counter_cy_15_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(14),
      DI => N0,
      S => Mcount_counter_cy_15_rt_34,
      O => Mcount_counter_cy(15)
    );
  Mcount_counter_xor_15_Q : XORCY
    port map (
      CI => Mcount_counter_cy(14),
      LI => Mcount_counter_cy_15_rt_34,
      O => Result(15)
    );
  Mcount_counter_cy_16_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(15),
      DI => N0,
      S => Mcount_counter_cy_16_rt_36,
      O => Mcount_counter_cy(16)
    );
  Mcount_counter_xor_16_Q : XORCY
    port map (
      CI => Mcount_counter_cy(15),
      LI => Mcount_counter_cy_16_rt_36,
      O => Result(16)
    );
  Mcount_counter_cy_17_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(16),
      DI => N0,
      S => Mcount_counter_cy_17_rt_38,
      O => Mcount_counter_cy(17)
    );
  Mcount_counter_xor_17_Q : XORCY
    port map (
      CI => Mcount_counter_cy(16),
      LI => Mcount_counter_cy_17_rt_38,
      O => Result(17)
    );
  Mcount_counter_cy_18_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(17),
      DI => N0,
      S => Mcount_counter_cy_18_rt_40,
      O => Mcount_counter_cy(18)
    );
  Mcount_counter_xor_18_Q : XORCY
    port map (
      CI => Mcount_counter_cy(17),
      LI => Mcount_counter_cy_18_rt_40,
      O => Result(18)
    );
  Mcount_counter_cy_19_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(18),
      DI => N0,
      S => Mcount_counter_cy_19_rt_42,
      O => Mcount_counter_cy(19)
    );
  Mcount_counter_xor_19_Q : XORCY
    port map (
      CI => Mcount_counter_cy(18),
      LI => Mcount_counter_cy_19_rt_42,
      O => Result(19)
    );
  Mcount_counter_cy_20_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(19),
      DI => N0,
      S => Mcount_counter_cy_20_rt_46,
      O => Mcount_counter_cy(20)
    );
  Mcount_counter_xor_20_Q : XORCY
    port map (
      CI => Mcount_counter_cy(19),
      LI => Mcount_counter_cy_20_rt_46,
      O => Result(20)
    );
  Mcount_counter_cy_21_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(20),
      DI => N0,
      S => Mcount_counter_cy_21_rt_48,
      O => Mcount_counter_cy(21)
    );
  Mcount_counter_xor_21_Q : XORCY
    port map (
      CI => Mcount_counter_cy(20),
      LI => Mcount_counter_cy_21_rt_48,
      O => Result(21)
    );
  Mcount_counter_cy_22_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(21),
      DI => N0,
      S => Mcount_counter_cy_22_rt_50,
      O => Mcount_counter_cy(22)
    );
  Mcount_counter_xor_22_Q : XORCY
    port map (
      CI => Mcount_counter_cy(21),
      LI => Mcount_counter_cy_22_rt_50,
      O => Result(22)
    );
  Mcount_counter_cy_23_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(22),
      DI => N0,
      S => Mcount_counter_cy_23_rt_52,
      O => Mcount_counter_cy(23)
    );
  Mcount_counter_xor_23_Q : XORCY
    port map (
      CI => Mcount_counter_cy(22),
      LI => Mcount_counter_cy_23_rt_52,
      O => Result(23)
    );
  Mcount_counter_cy_24_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(23),
      DI => N0,
      S => Mcount_counter_cy_24_rt_54,
      O => Mcount_counter_cy(24)
    );
  Mcount_counter_xor_24_Q : XORCY
    port map (
      CI => Mcount_counter_cy(23),
      LI => Mcount_counter_cy_24_rt_54,
      O => Result(24)
    );
  Mcount_counter_cy_25_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(24),
      DI => N0,
      S => Mcount_counter_cy_25_rt_56,
      O => Mcount_counter_cy(25)
    );
  Mcount_counter_xor_25_Q : XORCY
    port map (
      CI => Mcount_counter_cy(24),
      LI => Mcount_counter_cy_25_rt_56,
      O => Result(25)
    );
  Mcount_counter_cy_26_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(25),
      DI => N0,
      S => Mcount_counter_cy_26_rt_58,
      O => Mcount_counter_cy(26)
    );
  Mcount_counter_xor_26_Q : XORCY
    port map (
      CI => Mcount_counter_cy(25),
      LI => Mcount_counter_cy_26_rt_58,
      O => Result(26)
    );
  Mcount_counter_cy_27_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(26),
      DI => N0,
      S => Mcount_counter_cy_27_rt_60,
      O => Mcount_counter_cy(27)
    );
  Mcount_counter_xor_27_Q : XORCY
    port map (
      CI => Mcount_counter_cy(26),
      LI => Mcount_counter_cy_27_rt_60,
      O => Result(27)
    );
  Mcount_counter_cy_28_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(27),
      DI => N0,
      S => Mcount_counter_cy_28_rt_62,
      O => Mcount_counter_cy(28)
    );
  Mcount_counter_xor_28_Q : XORCY
    port map (
      CI => Mcount_counter_cy(27),
      LI => Mcount_counter_cy_28_rt_62,
      O => Result(28)
    );
  Mcount_counter_cy_29_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(28),
      DI => N0,
      S => Mcount_counter_cy_29_rt_64,
      O => Mcount_counter_cy(29)
    );
  Mcount_counter_xor_29_Q : XORCY
    port map (
      CI => Mcount_counter_cy(28),
      LI => Mcount_counter_cy_29_rt_64,
      O => Result(29)
    );
  Mcount_counter_cy_30_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(29),
      DI => N0,
      S => Mcount_counter_cy_30_rt_68,
      O => Mcount_counter_cy(30)
    );
  Mcount_counter_xor_30_Q : XORCY
    port map (
      CI => Mcount_counter_cy(29),
      LI => Mcount_counter_cy_30_rt_68,
      O => Result(30)
    );
  Mcount_counter_xor_31_Q : XORCY
    port map (
      CI => Mcount_counter_cy(30),
      LI => Mcount_counter_xor_31_rt_84,
      O => Result(31)
    );
  clock_OBUF : OBUF
    port map (
      I => clock_OBUF_122,
      O => clock
    );
  Mcompar_clock_cmp_lt0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(1),
      O => Mcompar_clock_cmp_lt0000_cy_0_rt_1
    );
  Mcount_counter_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(1),
      O => Mcount_counter_cy_1_rt_44
    );
  Mcount_counter_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(2),
      O => Mcount_counter_cy_2_rt_66
    );
  Mcount_counter_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(3),
      O => Mcount_counter_cy_3_rt_70
    );
  Mcount_counter_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(4),
      O => Mcount_counter_cy_4_rt_72
    );
  Mcount_counter_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(5),
      O => Mcount_counter_cy_5_rt_74
    );
  Mcount_counter_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(6),
      O => Mcount_counter_cy_6_rt_76
    );
  Mcount_counter_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(7),
      O => Mcount_counter_cy_7_rt_78
    );
  Mcount_counter_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(8),
      O => Mcount_counter_cy_8_rt_80
    );
  Mcount_counter_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(9),
      O => Mcount_counter_cy_9_rt_82
    );
  Mcount_counter_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(10),
      O => Mcount_counter_cy_10_rt_24
    );
  Mcount_counter_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(11),
      O => Mcount_counter_cy_11_rt_26
    );
  Mcount_counter_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(12),
      O => Mcount_counter_cy_12_rt_28
    );
  Mcount_counter_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(13),
      O => Mcount_counter_cy_13_rt_30
    );
  Mcount_counter_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(14),
      O => Mcount_counter_cy_14_rt_32
    );
  Mcount_counter_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(15),
      O => Mcount_counter_cy_15_rt_34
    );
  Mcount_counter_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(16),
      O => Mcount_counter_cy_16_rt_36
    );
  Mcount_counter_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(17),
      O => Mcount_counter_cy_17_rt_38
    );
  Mcount_counter_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(18),
      O => Mcount_counter_cy_18_rt_40
    );
  Mcount_counter_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(19),
      O => Mcount_counter_cy_19_rt_42
    );
  Mcount_counter_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(20),
      O => Mcount_counter_cy_20_rt_46
    );
  Mcount_counter_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(21),
      O => Mcount_counter_cy_21_rt_48
    );
  Mcount_counter_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(22),
      O => Mcount_counter_cy_22_rt_50
    );
  Mcount_counter_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(23),
      O => Mcount_counter_cy_23_rt_52
    );
  Mcount_counter_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(24),
      O => Mcount_counter_cy_24_rt_54
    );
  Mcount_counter_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(25),
      O => Mcount_counter_cy_25_rt_56
    );
  Mcount_counter_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(26),
      O => Mcount_counter_cy_26_rt_58
    );
  Mcount_counter_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(27),
      O => Mcount_counter_cy_27_rt_60
    );
  Mcount_counter_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(28),
      O => Mcount_counter_cy_28_rt_62
    );
  Mcount_counter_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(29),
      O => Mcount_counter_cy_29_rt_64
    );
  Mcount_counter_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(30),
      O => Mcount_counter_cy_30_rt_68
    );
  Mcount_counter_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(31),
      O => Mcount_counter_xor_31_rt_84
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_120
    );
  Mcompar_clock_cmp_lt0000_lut_9_INV_0 : INV
    port map (
      I => counter(30),
      O => Mcompar_clock_cmp_lt0000_lut(9)
    );
  Mcompar_clock_cmp_lt0000_cy_10_inv_INV_0 : INV
    port map (
      I => Mcompar_clock_cmp_lt0000_cy(10),
      O => clock_cmp_lt0000
    );
  Mcount_counter_lut_0_INV_0 : INV
    port map (
      I => counter(0),
      O => Mcount_counter_lut(0)
    );
  Mcompar_clock_cmp_lt0000_lut_10_1_INV_0 : INV
    port map (
      I => counter(31),
      O => Mcompar_clock_cmp_lt0000_lut(10)
    );

end Structure;


--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Driver_synthesis.vhd
-- /___/   /\     Timestamp: Tue Feb 27 12:10:26 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm Driver -w -dir netgen/synthesis -ofmt vhdl -sim Driver.ngc Driver_synthesis.vhd 
-- Device	: xc3s700a-4-fg484
-- Input file	: Driver.ngc
-- Output file	: /home/ahmednasser/Xillinx/WorkSpace/Lab1/netgen/synthesis/Driver_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: Driver
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

entity Driver is
  port (
    clk : in STD_LOGIC := 'X'; 
    a : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    b : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    operation_Code : out STD_LOGIC_VECTOR ( 2 downto 0 ) 
  );
end Driver;

architecture Structure of Driver is
  signal b_0_OBUF_32 : STD_LOGIC; 
  signal b_1_OBUF_33 : STD_LOGIC; 
  signal b_2_OBUF_34 : STD_LOGIC; 
  signal b_3_OBUF_35 : STD_LOGIC; 
  signal b_4_OBUF_36 : STD_LOGIC; 
  signal b_5_OBUF_37 : STD_LOGIC; 
  signal b_8_OBUF_38 : STD_LOGIC; 
  signal clk_IBUF_40 : STD_LOGIC; 
  signal clk_IBUF1 : STD_LOGIC; 
  signal operation_Code_0_OBUF_51 : STD_LOGIC; 
  signal operation_Code_1_OBUF_52 : STD_LOGIC; 
  signal operation_Code_2_OBUF_53 : STD_LOGIC; 
  signal counter : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal counter_add0000 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => b_5_OBUF_37
    );
  counter_0 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => counter_add0000(0),
      G => clk_IBUF_40,
      Q => counter(0)
    );
  counter_1 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => counter_add0000(1),
      G => clk_IBUF_40,
      Q => counter(1)
    );
  counter_2 : LD
    generic map(
      INIT => '0'
    )
    port map (
      D => counter_add0000(2),
      G => clk_IBUF_40,
      Q => counter(2)
    );
  operation_Code_2_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_IBUF1,
      I1 => counter(2),
      O => operation_Code_2_OBUF_53
    );
  operation_Code_1_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_IBUF1,
      I1 => counter(1),
      O => operation_Code_1_OBUF_52
    );
  operation_Code_0_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => clk_IBUF1,
      I1 => counter(0),
      O => operation_Code_0_OBUF_51
    );
  a_4_1 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => clk_IBUF1,
      I1 => counter(2),
      I2 => counter(0),
      O => b_4_OBUF_36
    );
  a_8_1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => counter(1),
      I1 => clk_IBUF1,
      I2 => counter(0),
      I3 => counter(2),
      O => b_8_OBUF_38
    );
  a_0_1 : LUT4
    generic map(
      INIT => X"028A"
    )
    port map (
      I0 => clk_IBUF1,
      I1 => counter(2),
      I2 => counter(1),
      I3 => counter(0),
      O => b_0_OBUF_32
    );
  Madd_counter_add0000_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => counter(1),
      I1 => counter(0),
      O => counter_add0000(1)
    );
  Madd_counter_add0000_xor_2_11 : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => counter(0),
      I1 => counter(2),
      I2 => counter(1),
      O => counter_add0000(2)
    );
  a_1_11 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => clk_IBUF1,
      I1 => counter(2),
      O => b_3_OBUF_35
    );
  clk_IBUF : IBUF
    port map (
      I => clk,
      O => clk_IBUF1
    );
  a_15_OBUF : OBUF
    port map (
      I => b_5_OBUF_37,
      O => a(15)
    );
  a_14_OBUF : OBUF
    port map (
      I => b_5_OBUF_37,
      O => a(14)
    );
  a_13_OBUF : OBUF
    port map (
      I => b_5_OBUF_37,
      O => a(13)
    );
  a_12_OBUF : OBUF
    port map (
      I => b_5_OBUF_37,
      O => a(12)
    );
  a_11_OBUF : OBUF
    port map (
      I => b_5_OBUF_37,
      O => a(11)
    );
  a_10_OBUF : OBUF
    port map (
      I => b_5_OBUF_37,
      O => a(10)
    );
  a_9_OBUF : OBUF
    port map (
      I => b_5_OBUF_37,
      O => a(9)
    );
  a_8_OBUF : OBUF
    port map (
      I => b_8_OBUF_38,
      O => a(8)
    );
  a_7_OBUF : OBUF
    port map (
      I => b_5_OBUF_37,
      O => a(7)
    );
  a_6_OBUF : OBUF
    port map (
      I => b_5_OBUF_37,
      O => a(6)
    );
  a_5_OBUF : OBUF
    port map (
      I => b_5_OBUF_37,
      O => a(5)
    );
  a_4_OBUF : OBUF
    port map (
      I => b_4_OBUF_36,
      O => a(4)
    );
  a_3_OBUF : OBUF
    port map (
      I => b_3_OBUF_35,
      O => a(3)
    );
  a_2_OBUF : OBUF
    port map (
      I => b_2_OBUF_34,
      O => a(2)
    );
  a_1_OBUF : OBUF
    port map (
      I => b_1_OBUF_33,
      O => a(1)
    );
  a_0_OBUF : OBUF
    port map (
      I => b_0_OBUF_32,
      O => a(0)
    );
  b_15_OBUF : OBUF
    port map (
      I => b_5_OBUF_37,
      O => b(15)
    );
  b_14_OBUF : OBUF
    port map (
      I => b_5_OBUF_37,
      O => b(14)
    );
  b_13_OBUF : OBUF
    port map (
      I => b_5_OBUF_37,
      O => b(13)
    );
  b_12_OBUF : OBUF
    port map (
      I => b_5_OBUF_37,
      O => b(12)
    );
  b_11_OBUF : OBUF
    port map (
      I => b_5_OBUF_37,
      O => b(11)
    );
  b_10_OBUF : OBUF
    port map (
      I => b_5_OBUF_37,
      O => b(10)
    );
  b_9_OBUF : OBUF
    port map (
      I => b_5_OBUF_37,
      O => b(9)
    );
  b_8_OBUF : OBUF
    port map (
      I => b_8_OBUF_38,
      O => b(8)
    );
  b_7_OBUF : OBUF
    port map (
      I => b_5_OBUF_37,
      O => b(7)
    );
  b_6_OBUF : OBUF
    port map (
      I => b_5_OBUF_37,
      O => b(6)
    );
  b_5_OBUF : OBUF
    port map (
      I => b_5_OBUF_37,
      O => b(5)
    );
  b_4_OBUF : OBUF
    port map (
      I => b_4_OBUF_36,
      O => b(4)
    );
  b_3_OBUF : OBUF
    port map (
      I => b_3_OBUF_35,
      O => b(3)
    );
  b_2_OBUF : OBUF
    port map (
      I => b_2_OBUF_34,
      O => b(2)
    );
  b_1_OBUF : OBUF
    port map (
      I => b_1_OBUF_33,
      O => b(1)
    );
  b_0_OBUF : OBUF
    port map (
      I => b_0_OBUF_32,
      O => b(0)
    );
  operation_Code_2_OBUF : OBUF
    port map (
      I => operation_Code_2_OBUF_53,
      O => operation_Code(2)
    );
  operation_Code_1_OBUF : OBUF
    port map (
      I => operation_Code_1_OBUF_52,
      O => operation_Code(1)
    );
  operation_Code_0_OBUF : OBUF
    port map (
      I => operation_Code_0_OBUF_51,
      O => operation_Code(0)
    );
  a_2_1 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => clk_IBUF1,
      I1 => counter(2),
      I2 => counter(1),
      O => b_2_OBUF_34
    );
  a_1_1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => counter(1),
      I1 => clk_IBUF1,
      I2 => counter(2),
      O => b_1_OBUF_33
    );
  clk_IBUF_BUFG : BUFG
    port map (
      I => clk_IBUF1,
      O => clk_IBUF_40
    );
  Madd_counter_add0000_xor_0_11_INV_0 : INV
    port map (
      I => counter(0),
      O => counter_add0000(0)
    );

end Structure;


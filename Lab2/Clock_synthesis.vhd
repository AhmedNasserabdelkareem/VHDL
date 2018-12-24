--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Clock_synthesis.vhd
-- /___/   /\     Timestamp: Mon Mar 12 15:22:42 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm Clock -w -dir netgen/synthesis -ofmt vhdl -sim Clock.ngc Clock_synthesis.vhd 
-- Device	: xc3s50-5-pq208
-- Input file	: Clock.ngc
-- Output file	: /home/ahmednasser/Desktop/Lab_2/netgen/synthesis/Clock_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: Clock
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

entity Clock is
  port (
    clk : in STD_LOGIC := 'X'; 
    loadSec : in STD_LOGIC := 'X'; 
    count : in STD_LOGIC := 'X'; 
    loadMin : in STD_LOGIC := 'X'; 
    Min : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    Sec : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    DI : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end Clock;

architecture Structure of Clock is
  signal DI_0_IBUF_8 : STD_LOGIC; 
  signal DI_1_IBUF_9 : STD_LOGIC; 
  signal DI_2_IBUF_10 : STD_LOGIC; 
  signal DI_3_IBUF_11 : STD_LOGIC; 
  signal Madd_sec_second_addsub0000_xor_2_110_21 : STD_LOGIC; 
  signal Madd_sec_second_addsub0000_xor_2_119_22 : STD_LOGIC; 
  signal Madd_sec_second_addsub0000_xor_2_131_23 : STD_LOGIC; 
  signal Madd_sec_second_addsub0000_xor_2_153 : STD_LOGIC; 
  signal Madd_sec_second_addsub0000_xor_2_1531_25 : STD_LOGIC; 
  signal Madd_sec_second_addsub0000_xor_2_1532_26 : STD_LOGIC; 
  signal Madd_sec_second_addsub0000_xor_2_17_27 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal loadMin_IBUF_62 : STD_LOGIC; 
  signal loadSec_IBUF_64 : STD_LOGIC; 
  signal loadSec_IBUF1 : STD_LOGIC; 
  signal min_first_0_and0000 : STD_LOGIC; 
  signal min_first_0_and0001 : STD_LOGIC; 
  signal min_first_1_and0000 : STD_LOGIC; 
  signal min_first_1_and0001 : STD_LOGIC; 
  signal min_first_2_and0000 : STD_LOGIC; 
  signal min_first_2_and0001 : STD_LOGIC; 
  signal min_first_3_and0000 : STD_LOGIC; 
  signal min_first_3_and0001 : STD_LOGIC; 
  signal min_first_cmp_eq0000 : STD_LOGIC; 
  signal min_first_mux0005_5_11_81 : STD_LOGIC; 
  signal min_first_mux0005_5_36_82 : STD_LOGIC; 
  signal min_first_mux0005_6_28_84 : STD_LOGIC; 
  signal min_first_mux0005_6_31_85 : STD_LOGIC; 
  signal min_first_mux0005_6_9_86 : STD_LOGIC; 
  signal min_first_mux0005_7_16_88 : STD_LOGIC; 
  signal min_first_mux0005_7_38_89 : STD_LOGIC; 
  signal min_second_0_and0000 : STD_LOGIC; 
  signal min_second_0_and0001 : STD_LOGIC; 
  signal min_second_1_and0000 : STD_LOGIC; 
  signal min_second_1_and0001 : STD_LOGIC; 
  signal min_second_2_and0000 : STD_LOGIC; 
  signal min_second_2_and0001 : STD_LOGIC; 
  signal min_second_3_and0000 : STD_LOGIC; 
  signal min_second_3_and0001 : STD_LOGIC; 
  signal min_second_mux0004_1_381 : STD_LOGIC; 
  signal min_second_mux0004_2_1_106 : STD_LOGIC; 
  signal min_second_mux0004_3_681 : STD_LOGIC; 
  signal sec_first_cmp_eq0000 : STD_LOGIC; 
  signal sec_second_3_0_110 : STD_LOGIC; 
  signal sec_second_3_21 : STD_LOGIC; 
  signal sec_second_3_211_112 : STD_LOGIC; 
  signal sec_second_3_33_113 : STD_LOGIC; 
  signal sec_second_3_49_114 : STD_LOGIC; 
  signal Madd_min_first_addsub0000_cy : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal Madd_sec_first_addsub0000_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Madd_sec_first_addsub0000_lut : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal Madd_sec_second_addsub0000_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Madd_sec_second_addsub0000_lut : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal min_first : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal min_first_mux0005 : STD_LOGIC_VECTOR ( 7 downto 4 ); 
  signal min_second : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal min_second_mux0004 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal sec_second_addsub0000 : STD_LOGIC_VECTOR ( 2 downto 2 ); 
begin
  min_second_0 : LDCPE_1
    port map (
      CLR => min_second_0_and0000,
      D => min_second_mux0004(0),
      G => loadSec_IBUF_64,
      GE => min_first_cmp_eq0000,
      PRE => min_second_0_and0001,
      Q => min_second(0)
    );
  min_second_1 : LDCPE_1
    port map (
      CLR => min_second_1_and0000,
      D => min_second_mux0004(1),
      G => loadSec_IBUF_64,
      GE => min_first_cmp_eq0000,
      PRE => min_second_1_and0001,
      Q => min_second(1)
    );
  min_second_2 : LDCPE_1
    port map (
      CLR => min_second_2_and0000,
      D => min_second_mux0004(2),
      G => loadSec_IBUF_64,
      GE => min_first_cmp_eq0000,
      PRE => min_second_2_and0001,
      Q => min_second(2)
    );
  min_second_3 : LDCPE_1
    port map (
      CLR => min_second_3_and0000,
      D => min_second_mux0004(3),
      G => loadSec_IBUF_64,
      GE => min_first_cmp_eq0000,
      PRE => min_second_3_and0001,
      Q => min_second(3)
    );
  min_first_0 : LDCPE_1
    port map (
      CLR => min_first_0_and0000,
      D => min_first_mux0005(4),
      G => loadSec_IBUF_64,
      GE => min_first_cmp_eq0000,
      PRE => min_first_0_and0001,
      Q => min_first(0)
    );
  min_first_1 : LDCPE_1
    port map (
      CLR => min_first_1_and0000,
      D => min_first_mux0005(5),
      G => loadSec_IBUF_64,
      GE => min_first_cmp_eq0000,
      PRE => min_first_1_and0001,
      Q => min_first(1)
    );
  min_first_2 : LDCPE_1
    port map (
      CLR => min_first_2_and0000,
      D => min_first_mux0005(6),
      G => loadSec_IBUF_64,
      GE => min_first_cmp_eq0000,
      PRE => min_first_2_and0001,
      Q => min_first(2)
    );
  min_first_3 : LDCPE_1
    port map (
      CLR => min_first_3_and0000,
      D => min_first_mux0005(7),
      G => loadSec_IBUF_64,
      GE => min_first_cmp_eq0000,
      PRE => min_first_3_and0001,
      Q => min_first(3)
    );
  min_second_3_and00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => loadMin_IBUF_62,
      I1 => DI_3_IBUF_11,
      O => min_second_3_and0001
    );
  min_second_3_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => loadMin_IBUF_62,
      I1 => DI_3_IBUF_11,
      O => min_second_3_and0000
    );
  min_second_2_and00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => loadMin_IBUF_62,
      I1 => DI_2_IBUF_10,
      O => min_second_2_and0001
    );
  min_second_2_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => loadMin_IBUF_62,
      I1 => DI_2_IBUF_10,
      O => min_second_2_and0000
    );
  min_second_1_and00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => loadMin_IBUF_62,
      I1 => DI_1_IBUF_9,
      O => min_second_1_and0001
    );
  min_second_1_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => loadMin_IBUF_62,
      I1 => DI_1_IBUF_9,
      O => min_second_1_and0000
    );
  min_second_0_and00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => loadMin_IBUF_62,
      I1 => DI_0_IBUF_8,
      O => min_second_0_and0001
    );
  min_second_0_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => loadMin_IBUF_62,
      I1 => DI_0_IBUF_8,
      O => min_second_0_and0000
    );
  min_first_3_and00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => loadMin_IBUF_62,
      I1 => Madd_sec_first_addsub0000_lut(3),
      O => min_first_3_and0001
    );
  min_first_3_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => loadMin_IBUF_62,
      I1 => Madd_sec_first_addsub0000_lut(3),
      O => min_first_3_and0000
    );
  min_first_2_and00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => loadMin_IBUF_62,
      I1 => Madd_sec_first_addsub0000_lut(2),
      O => min_first_2_and0001
    );
  min_first_2_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => loadMin_IBUF_62,
      I1 => Madd_sec_first_addsub0000_lut(2),
      O => min_first_2_and0000
    );
  min_first_1_and00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => loadMin_IBUF_62,
      I1 => Madd_sec_first_addsub0000_lut(1),
      O => min_first_1_and0001
    );
  min_first_1_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => loadMin_IBUF_62,
      I1 => Madd_sec_first_addsub0000_lut(1),
      O => min_first_1_and0000
    );
  min_first_0_and00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => loadMin_IBUF_62,
      I1 => Madd_sec_first_addsub0000_cy(0),
      O => min_first_0_and0001
    );
  min_first_0_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => loadMin_IBUF_62,
      I1 => Madd_sec_first_addsub0000_cy(0),
      O => min_first_0_and0000
    );
  min_second_mux0004_0_1 : LUT4
    generic map(
      INIT => X"BE14"
    )
    port map (
      I0 => loadMin_IBUF_62,
      I1 => min_second(0),
      I2 => sec_first_cmp_eq0000,
      I3 => DI_0_IBUF_8,
      O => min_second_mux0004(0)
    );
  min_first_mux0005_7_11 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => min_first(2),
      I1 => min_first(1),
      I2 => min_first(0),
      O => Madd_min_first_addsub0000_cy(2)
    );
  min_first_mux0005_4_1_SW0 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => min_second(3),
      I1 => min_second(0),
      O => N14
    );
  min_first_mux0005_4_Q : LUT4
    generic map(
      INIT => X"FE32"
    )
    port map (
      I0 => min_first_0_and0001,
      I1 => min_first(0),
      I2 => N57,
      I3 => N17,
      O => min_first_mux0005(4)
    );
  min_first_mux0005_5_11 : LUT4
    generic map(
      INIT => X"0C04"
    )
    port map (
      I0 => min_first(2),
      I1 => min_first(0),
      I2 => min_first(1),
      I3 => min_first(3),
      O => min_first_mux0005_5_11_81
    );
  min_first_mux0005_6_31 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => min_first(2),
      I1 => loadMin_IBUF_62,
      O => min_first_mux0005_6_31_85
    );
  min_first_mux0005_6_42 : LUT4
    generic map(
      INIT => X"FEFA"
    )
    port map (
      I0 => min_first_2_and0001,
      I1 => min_first_mux0005_6_31_85,
      I2 => min_first_mux0005_6_9_86,
      I3 => min_first_mux0005_6_28_84,
      O => min_first_mux0005(6)
    );
  min_first_mux0005_7_16 : LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => sec_first_cmp_eq0000,
      I1 => min_second(1),
      I2 => min_second(2),
      O => min_first_mux0005_7_16_88
    );
  min_second_mux0004_1_210 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => sec_first_cmp_eq0000,
      I1 => min_second(0),
      O => N3
    );
  sec_first_cmp_eq00001 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => Madd_sec_first_addsub0000_cy(0),
      I1 => Madd_sec_first_addsub0000_lut(1),
      I2 => Madd_sec_first_addsub0000_lut(2),
      I3 => Madd_sec_first_addsub0000_lut(3),
      O => sec_first_cmp_eq0000
    );
  Madd_sec_second_addsub0000_xor_2_111 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => loadMin_IBUF_62,
      I1 => loadSec_IBUF1,
      O => N01
    );
  min_first_cmp_eq00001 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => Madd_sec_second_addsub0000_lut(3),
      I1 => Madd_sec_second_addsub0000_lut(1),
      I2 => Madd_sec_second_addsub0000_cy(0),
      I3 => Madd_sec_second_addsub0000_lut(2),
      O => min_first_cmp_eq0000
    );
  sec_second_2_1 : LUT4
    generic map(
      INIT => X"88D8"
    )
    port map (
      I0 => N01,
      I1 => DI_2_IBUF_10,
      I2 => sec_second_addsub0000(2),
      I3 => min_first_cmp_eq0000,
      O => Madd_sec_second_addsub0000_lut(2)
    );
  sec_second_0_1 : LUT4
    generic map(
      INIT => X"888D"
    )
    port map (
      I0 => N01,
      I1 => DI_0_IBUF_8,
      I2 => Madd_sec_second_addsub0000_cy(0),
      I3 => min_first_cmp_eq0000,
      O => Madd_sec_second_addsub0000_cy(0)
    );
  sec_second_1_SW1 : LUT3
    generic map(
      INIT => X"8B"
    )
    port map (
      I0 => DI_1_IBUF_9,
      I1 => N01,
      I2 => min_first_cmp_eq0000,
      O => N24
    );
  sec_second_1_Q : LUT4
    generic map(
      INIT => X"F960"
    )
    port map (
      I0 => Madd_sec_second_addsub0000_lut(1),
      I1 => Madd_sec_second_addsub0000_cy(0),
      I2 => N24,
      I3 => N23,
      O => Madd_sec_second_addsub0000_lut(1)
    );
  Madd_sec_second_addsub0000_xor_2_119 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => Madd_sec_second_addsub0000_xor_2_17_27,
      I1 => Madd_sec_second_addsub0000_lut(2),
      I2 => Madd_sec_second_addsub0000_xor_2_110_21,
      O => Madd_sec_second_addsub0000_xor_2_119_22
    );
  Madd_sec_second_addsub0000_xor_2_131 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => N01,
      I1 => DI_1_IBUF_9,
      I2 => Madd_sec_second_addsub0000_lut(2),
      O => Madd_sec_second_addsub0000_xor_2_131_23
    );
  Madd_sec_second_addsub0000_xor_2_190 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => Madd_sec_second_addsub0000_cy(0),
      I1 => Madd_sec_second_addsub0000_xor_2_131_23,
      I2 => Madd_sec_second_addsub0000_xor_2_119_22,
      I3 => Madd_sec_second_addsub0000_xor_2_153,
      O => sec_second_addsub0000(2)
    );
  sec_second_3_33 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => sec_second_addsub0000(2),
      I1 => Madd_sec_second_addsub0000_lut(1),
      I2 => Madd_sec_second_addsub0000_cy(0),
      I3 => Madd_sec_second_addsub0000_lut(3),
      O => sec_second_3_33_113
    );
  sec_second_3_67 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => sec_second_3_49_114,
      I1 => sec_second_3_21,
      I2 => sec_second_3_0_110,
      I3 => sec_second_3_33_113,
      O => Madd_sec_second_addsub0000_lut(3)
    );
  loadSec_IBUF : IBUF
    port map (
      I => loadSec,
      O => loadSec_IBUF1
    );
  loadMin_IBUF : IBUF
    port map (
      I => loadMin,
      O => loadMin_IBUF_62
    );
  DI_7_IBUF : IBUF
    port map (
      I => DI(7),
      O => Madd_sec_first_addsub0000_lut(3)
    );
  DI_6_IBUF : IBUF
    port map (
      I => DI(6),
      O => Madd_sec_first_addsub0000_lut(2)
    );
  DI_5_IBUF : IBUF
    port map (
      I => DI(5),
      O => Madd_sec_first_addsub0000_lut(1)
    );
  DI_4_IBUF : IBUF
    port map (
      I => DI(4),
      O => Madd_sec_first_addsub0000_cy(0)
    );
  DI_3_IBUF : IBUF
    port map (
      I => DI(3),
      O => DI_3_IBUF_11
    );
  DI_2_IBUF : IBUF
    port map (
      I => DI(2),
      O => DI_2_IBUF_10
    );
  DI_1_IBUF : IBUF
    port map (
      I => DI(1),
      O => DI_1_IBUF_9
    );
  DI_0_IBUF : IBUF
    port map (
      I => DI(0),
      O => DI_0_IBUF_8
    );
  Min_7_OBUF : OBUF
    port map (
      I => min_first(3),
      O => Min(7)
    );
  Min_6_OBUF : OBUF
    port map (
      I => min_first(2),
      O => Min(6)
    );
  Min_5_OBUF : OBUF
    port map (
      I => min_first(1),
      O => Min(5)
    );
  Min_4_OBUF : OBUF
    port map (
      I => min_first(0),
      O => Min(4)
    );
  Min_3_OBUF : OBUF
    port map (
      I => min_second(3),
      O => Min(3)
    );
  Min_2_OBUF : OBUF
    port map (
      I => min_second(2),
      O => Min(2)
    );
  Min_1_OBUF : OBUF
    port map (
      I => min_second(1),
      O => Min(1)
    );
  Min_0_OBUF : OBUF
    port map (
      I => min_second(0),
      O => Min(0)
    );
  Sec_7_OBUF : OBUF
    port map (
      I => Madd_sec_first_addsub0000_lut(3),
      O => Sec(7)
    );
  Sec_6_OBUF : OBUF
    port map (
      I => Madd_sec_first_addsub0000_lut(2),
      O => Sec(6)
    );
  Sec_5_OBUF : OBUF
    port map (
      I => Madd_sec_first_addsub0000_lut(1),
      O => Sec(5)
    );
  Sec_4_OBUF : OBUF
    port map (
      I => Madd_sec_first_addsub0000_cy(0),
      O => Sec(4)
    );
  Sec_3_OBUF : OBUF
    port map (
      I => Madd_sec_second_addsub0000_lut(3),
      O => Sec(3)
    );
  Sec_2_OBUF : OBUF
    port map (
      I => Madd_sec_second_addsub0000_lut(2),
      O => Sec(2)
    );
  Sec_1_OBUF : OBUF
    port map (
      I => Madd_sec_second_addsub0000_lut(1),
      O => Sec(1)
    );
  Sec_0_OBUF : OBUF
    port map (
      I => Madd_sec_second_addsub0000_cy(0),
      O => Sec(0)
    );
  min_first_mux0005_5_37 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => min_first_1_and0001,
      I1 => min_first_mux0005_5_11_81,
      I2 => N10,
      I3 => min_first_mux0005_5_36_82,
      O => min_first_mux0005(5)
    );
  min_first_mux0005_4_1_SW2 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => sec_first_cmp_eq0000,
      I1 => min_first(0),
      I2 => min_second(1),
      I3 => min_second(2),
      O => N30
    );
  min_first_mux0005_4_1_SW3 : LUT4
    generic map(
      INIT => X"FFF7"
    )
    port map (
      I0 => sec_first_cmp_eq0000,
      I1 => min_first(0),
      I2 => min_second(2),
      I3 => min_second(1),
      O => N32
    );
  min_first_mux0005_7_48 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => min_first_3_and0001,
      I1 => N34,
      I2 => N10,
      I3 => min_first_mux0005_7_38_89,
      O => min_first_mux0005(7)
    );
  min_first_mux0005_7_25_SW0 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => loadMin_IBUF_62,
      I1 => min_first(3),
      O => N36
    );
  min_first_mux0005_7_25_SW1 : LUT4
    generic map(
      INIT => X"FBBB"
    )
    port map (
      I0 => loadMin_IBUF_62,
      I1 => min_first(3),
      I2 => min_second(3),
      I3 => min_second(0),
      O => N37
    );
  min_first_mux0005_7_10_SW0 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => min_first(2),
      I1 => min_first(1),
      I2 => min_first(0),
      I3 => min_first(3),
      O => N34
    );
  min_first_mux0005_4_SW1 : LUT4
    generic map(
      INIT => X"BB8B"
    )
    port map (
      I0 => Madd_sec_first_addsub0000_cy(0),
      I1 => loadMin_IBUF_62,
      I2 => min_second(3),
      I3 => N45,
      O => N17
    );
  min_first_mux0005_5_3_SW2 : LUT3
    generic map(
      INIT => X"BF"
    )
    port map (
      I0 => loadMin_IBUF_62,
      I1 => sec_first_cmp_eq0000,
      I2 => min_second(0),
      O => N47
    );
  min_first_mux0005_6_9_SW0 : LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => loadMin_IBUF_62,
      I1 => sec_first_cmp_eq0000,
      I2 => min_first(2),
      O => N49
    );
  min_first_mux0005_6_9 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => min_second(3),
      I1 => min_second(0),
      I2 => N49,
      I3 => N26,
      O => min_first_mux0005_6_9_86
    );
  sec_second_1_SW0 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => loadMin_IBUF_62,
      I1 => DI_1_IBUF_9,
      I2 => loadSec_IBUF1,
      O => N23
    );
  Madd_sec_second_addsub0000_xor_2_17 : LUT4
    generic map(
      INIT => X"32FF"
    )
    port map (
      I0 => loadMin_IBUF_62,
      I1 => DI_1_IBUF_9,
      I2 => loadSec_IBUF1,
      I3 => Madd_sec_second_addsub0000_cy(0),
      O => Madd_sec_second_addsub0000_xor_2_17_27
    );
  Madd_sec_second_addsub0000_xor_2_110 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => Madd_sec_second_addsub0000_lut(1),
      I1 => loadMin_IBUF_62,
      I2 => loadSec_IBUF1,
      O => Madd_sec_second_addsub0000_xor_2_110_21
    );
  sec_second_3_0 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => loadMin_IBUF_62,
      I1 => DI_3_IBUF_11,
      I2 => loadSec_IBUF1,
      O => sec_second_3_0_110
    );
  sec_second_3_49 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => min_first_cmp_eq0000,
      I1 => loadMin_IBUF_62,
      I2 => loadSec_IBUF1,
      O => sec_second_3_49_114
    );
  loadSec_IBUF_BUFG : BUFG
    port map (
      I => loadSec_IBUF1,
      O => loadSec_IBUF_64
    );
  min_second_mux0004_2_1 : LUT4
    generic map(
      INIT => X"6CCC"
    )
    port map (
      I0 => min_second(1),
      I1 => min_second(2),
      I2 => min_second(0),
      I3 => sec_first_cmp_eq0000,
      O => min_second_mux0004_2_1_106
    );
  min_second_mux0004_2_f5 : MUXF5
    port map (
      I0 => min_second_mux0004_2_1_106,
      I1 => DI_2_IBUF_10,
      S => loadMin_IBUF_62,
      O => min_second_mux0004(2)
    );
  sec_second_3_211 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => Madd_sec_second_addsub0000_lut(3),
      I1 => Madd_sec_second_addsub0000_lut(2),
      I2 => Madd_sec_second_addsub0000_lut(1),
      I3 => Madd_sec_second_addsub0000_cy(0),
      O => sec_second_3_211_112
    );
  sec_second_3_21_f5 : MUXF5
    port map (
      I0 => Madd_sec_second_addsub0000_lut(3),
      I1 => sec_second_3_211_112,
      S => sec_second_addsub0000(2),
      O => sec_second_3_21
    );
  Madd_sec_second_addsub0000_xor_2_1531 : LUT4
    generic map(
      INIT => X"0302"
    )
    port map (
      I0 => sec_second_addsub0000(2),
      I1 => loadMin_IBUF_62,
      I2 => loadSec_IBUF1,
      I3 => Madd_sec_second_addsub0000_lut(3),
      O => Madd_sec_second_addsub0000_xor_2_1531_25
    );
  Madd_sec_second_addsub0000_xor_2_1532 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Madd_sec_second_addsub0000_lut(3),
      I1 => Madd_sec_second_addsub0000_lut(2),
      I2 => loadMin_IBUF_62,
      I3 => loadSec_IBUF1,
      O => Madd_sec_second_addsub0000_xor_2_1532_26
    );
  Madd_sec_second_addsub0000_xor_2_153_f5 : MUXF5
    port map (
      I0 => Madd_sec_second_addsub0000_xor_2_1532_26,
      I1 => Madd_sec_second_addsub0000_xor_2_1531_25,
      S => Madd_sec_second_addsub0000_lut(1),
      O => Madd_sec_second_addsub0000_xor_2_153
    );
  min_second_mux0004_3_6811 : LUT4
    generic map(
      INIT => X"AA68"
    )
    port map (
      I0 => min_second(3),
      I1 => min_second(2),
      I2 => min_second(1),
      I3 => N3,
      O => min_second_mux0004_3_681
    );
  min_second_mux0004_3_681_f5 : MUXF5
    port map (
      I0 => min_second_mux0004_3_681,
      I1 => DI_3_IBUF_11,
      S => loadMin_IBUF_62,
      O => min_second_mux0004(3)
    );
  min_second_mux0004_1_3811 : LUT4
    generic map(
      INIT => X"9899"
    )
    port map (
      I0 => N3,
      I1 => min_second(1),
      I2 => min_second(2),
      I3 => min_second(3),
      O => min_second_mux0004_1_381
    );
  min_second_mux0004_1_381_f5 : MUXF5
    port map (
      I0 => min_second_mux0004_1_381,
      I1 => DI_1_IBUF_9,
      S => loadMin_IBUF_62,
      O => min_second_mux0004(1)
    );
  min_first_mux0005_5_3_SW1 : LUT4_L
    generic map(
      INIT => X"FFDF"
    )
    port map (
      I0 => min_first(1),
      I1 => min_second(2),
      I2 => min_first(0),
      I3 => min_second(1),
      LO => N26
    );
  min_first_mux0005_5_36 : LUT4_L
    generic map(
      INIT => X"4404"
    )
    port map (
      I0 => loadMin_IBUF_62,
      I1 => min_first(1),
      I2 => N30,
      I3 => N14,
      LO => min_first_mux0005_5_36_82
    );
  min_first_mux0005_6_28 : LUT4_L
    generic map(
      INIT => X"FFF2"
    )
    port map (
      I0 => min_first(3),
      I1 => min_first(1),
      I2 => N32,
      I3 => N14,
      LO => min_first_mux0005_6_28_84
    );
  min_first_mux0005_7_38 : LUT4_L
    generic map(
      INIT => X"551D"
    )
    port map (
      I0 => N36,
      I1 => Madd_min_first_addsub0000_cy(2),
      I2 => N37,
      I3 => min_first_mux0005_7_16_88,
      LO => min_first_mux0005_7_38_89
    );
  min_first_mux0005_4_SW1_SW0 : LUT4_L
    generic map(
      INIT => X"FFF7"
    )
    port map (
      I0 => sec_first_cmp_eq0000,
      I1 => min_second(0),
      I2 => min_second(1),
      I3 => min_second(2),
      LO => N45
    );
  min_first_mux0005_5_3 : LUT4_D
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => min_second(3),
      I1 => min_second(2),
      I2 => min_second(1),
      I3 => N47,
      LO => N57,
      O => N10
    );

end Structure;


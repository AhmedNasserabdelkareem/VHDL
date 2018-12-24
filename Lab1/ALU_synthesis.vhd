--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: ALU_synthesis.vhd
-- /___/   /\     Timestamp: Tue Feb 27 12:07:49 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm ALU -w -dir netgen/synthesis -ofmt vhdl -sim ALU.ngc ALU_synthesis.vhd 
-- Device	: xc3s700a-4-fg484
-- Input file	: ALU.ngc
-- Output file	: /home/ahmednasser/Xillinx/WorkSpace/Lab1/netgen/synthesis/ALU_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: ALU
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

entity ALU is
  port (
    result : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    a : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    b : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    operation_Code : in STD_LOGIC_VECTOR ( 2 downto 0 ) 
  );
end ALU;

architecture Structure of ALU is
  signal Mmux_result_3_f5_31 : STD_LOGIC; 
  signal Mmux_result_3_f51 : STD_LOGIC; 
  signal Mmux_result_3_f510 : STD_LOGIC; 
  signal Mmux_result_3_f511 : STD_LOGIC; 
  signal Mmux_result_3_f512 : STD_LOGIC; 
  signal Mmux_result_3_f513 : STD_LOGIC; 
  signal Mmux_result_3_f514 : STD_LOGIC; 
  signal Mmux_result_3_f515 : STD_LOGIC; 
  signal Mmux_result_3_f52 : STD_LOGIC; 
  signal Mmux_result_3_f53 : STD_LOGIC; 
  signal Mmux_result_3_f54 : STD_LOGIC; 
  signal Mmux_result_3_f55 : STD_LOGIC; 
  signal Mmux_result_3_f56 : STD_LOGIC; 
  signal Mmux_result_3_f57 : STD_LOGIC; 
  signal Mmux_result_3_f58 : STD_LOGIC; 
  signal Mmux_result_3_f59 : STD_LOGIC; 
  signal Mmux_result_4_47 : STD_LOGIC; 
  signal Mmux_result_41 : STD_LOGIC; 
  signal Mmux_result_410_49 : STD_LOGIC; 
  signal Mmux_result_411 : STD_LOGIC; 
  signal Mmux_result_412_51 : STD_LOGIC; 
  signal Mmux_result_413 : STD_LOGIC; 
  signal Mmux_result_414_53 : STD_LOGIC; 
  signal Mmux_result_415 : STD_LOGIC; 
  signal Mmux_result_42_55 : STD_LOGIC; 
  signal Mmux_result_43 : STD_LOGIC; 
  signal Mmux_result_44_57 : STD_LOGIC; 
  signal Mmux_result_45 : STD_LOGIC; 
  signal Mmux_result_46_59 : STD_LOGIC; 
  signal Mmux_result_47 : STD_LOGIC; 
  signal Mmux_result_48_61 : STD_LOGIC; 
  signal Mmux_result_49 : STD_LOGIC; 
  signal Mmux_result_4_f5_63 : STD_LOGIC; 
  signal Mmux_result_4_f51 : STD_LOGIC; 
  signal Mmux_result_4_f510 : STD_LOGIC; 
  signal Mmux_result_4_f511 : STD_LOGIC; 
  signal Mmux_result_4_f512 : STD_LOGIC; 
  signal Mmux_result_4_f513 : STD_LOGIC; 
  signal Mmux_result_4_f514 : STD_LOGIC; 
  signal Mmux_result_4_f515 : STD_LOGIC; 
  signal Mmux_result_4_f52 : STD_LOGIC; 
  signal Mmux_result_4_f53 : STD_LOGIC; 
  signal Mmux_result_4_f54 : STD_LOGIC; 
  signal Mmux_result_4_f55 : STD_LOGIC; 
  signal Mmux_result_4_f56 : STD_LOGIC; 
  signal Mmux_result_4_f57 : STD_LOGIC; 
  signal Mmux_result_4_f58 : STD_LOGIC; 
  signal Mmux_result_4_f59 : STD_LOGIC; 
  signal Mmux_result_4_f5_0_rt_79 : STD_LOGIC; 
  signal Mmux_result_4_f5_10_rt_80 : STD_LOGIC; 
  signal Mmux_result_4_f5_11_rt_81 : STD_LOGIC; 
  signal Mmux_result_4_f5_12_rt_82 : STD_LOGIC; 
  signal Mmux_result_4_f5_13_rt_83 : STD_LOGIC; 
  signal Mmux_result_4_f5_14_rt_84 : STD_LOGIC; 
  signal Mmux_result_4_f5_1_rt_85 : STD_LOGIC; 
  signal Mmux_result_4_f5_2_rt_86 : STD_LOGIC; 
  signal Mmux_result_4_f5_3_rt_87 : STD_LOGIC; 
  signal Mmux_result_4_f5_4_rt_88 : STD_LOGIC; 
  signal Mmux_result_4_f5_5_rt_89 : STD_LOGIC; 
  signal Mmux_result_4_f5_6_rt_90 : STD_LOGIC; 
  signal Mmux_result_4_f5_7_rt_91 : STD_LOGIC; 
  signal Mmux_result_4_f5_8_rt_92 : STD_LOGIC; 
  signal Mmux_result_4_f5_9_rt_93 : STD_LOGIC; 
  signal Mmux_result_4_f5_rt_94 : STD_LOGIC; 
  signal Mmux_result_5_95 : STD_LOGIC; 
  signal Mmux_result_51_96 : STD_LOGIC; 
  signal Mmux_result_510_97 : STD_LOGIC; 
  signal Mmux_result_511_98 : STD_LOGIC; 
  signal Mmux_result_512_99 : STD_LOGIC; 
  signal Mmux_result_513_100 : STD_LOGIC; 
  signal Mmux_result_514_101 : STD_LOGIC; 
  signal Mmux_result_515_102 : STD_LOGIC; 
  signal Mmux_result_516_103 : STD_LOGIC; 
  signal Mmux_result_516_SW0 : STD_LOGIC; 
  signal Mmux_result_516_SW01_105 : STD_LOGIC; 
  signal Mmux_result_517_106 : STD_LOGIC; 
  signal Mmux_result_518_107 : STD_LOGIC; 
  signal Mmux_result_518_SW0 : STD_LOGIC; 
  signal Mmux_result_518_SW01_109 : STD_LOGIC; 
  signal Mmux_result_519_110 : STD_LOGIC; 
  signal Mmux_result_52_111 : STD_LOGIC; 
  signal Mmux_result_520_112 : STD_LOGIC; 
  signal Mmux_result_521_113 : STD_LOGIC; 
  signal Mmux_result_522_114 : STD_LOGIC; 
  signal Mmux_result_523_115 : STD_LOGIC; 
  signal Mmux_result_524_116 : STD_LOGIC; 
  signal Mmux_result_525_117 : STD_LOGIC; 
  signal Mmux_result_526_118 : STD_LOGIC; 
  signal Mmux_result_527_119 : STD_LOGIC; 
  signal Mmux_result_528_120 : STD_LOGIC; 
  signal Mmux_result_528_SW0 : STD_LOGIC; 
  signal Mmux_result_528_SW01_122 : STD_LOGIC; 
  signal Mmux_result_529_123 : STD_LOGIC; 
  signal Mmux_result_52_SW0 : STD_LOGIC; 
  signal Mmux_result_52_SW01_125 : STD_LOGIC; 
  signal Mmux_result_53_126 : STD_LOGIC; 
  signal Mmux_result_530_127 : STD_LOGIC; 
  signal Mmux_result_531_128 : STD_LOGIC; 
  signal Mmux_result_54_129 : STD_LOGIC; 
  signal Mmux_result_55_130 : STD_LOGIC; 
  signal Mmux_result_56_131 : STD_LOGIC; 
  signal Mmux_result_57_132 : STD_LOGIC; 
  signal Mmux_result_58_133 : STD_LOGIC; 
  signal Mmux_result_59_134 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal N101 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal N103 : STD_LOGIC; 
  signal N104 : STD_LOGIC; 
  signal N105 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal N107 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal N109 : STD_LOGIC; 
  signal N110 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal N112 : STD_LOGIC; 
  signal N113 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal N83 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal N85 : STD_LOGIC; 
  signal N86 : STD_LOGIC; 
  signal N87 : STD_LOGIC; 
  signal N88 : STD_LOGIC; 
  signal N89 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal N91 : STD_LOGIC; 
  signal N92 : STD_LOGIC; 
  signal N93 : STD_LOGIC; 
  signal N94 : STD_LOGIC; 
  signal N95 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal N97 : STD_LOGIC; 
  signal N98 : STD_LOGIC; 
  signal N99 : STD_LOGIC; 
  signal a_0_IBUF_208 : STD_LOGIC; 
  signal a_10_IBUF_209 : STD_LOGIC; 
  signal a_11_IBUF_210 : STD_LOGIC; 
  signal a_12_IBUF_211 : STD_LOGIC; 
  signal a_13_IBUF_212 : STD_LOGIC; 
  signal a_14_IBUF_213 : STD_LOGIC; 
  signal a_15_IBUF_214 : STD_LOGIC; 
  signal a_1_IBUF_215 : STD_LOGIC; 
  signal a_2_IBUF_216 : STD_LOGIC; 
  signal a_3_IBUF_217 : STD_LOGIC; 
  signal a_4_IBUF_218 : STD_LOGIC; 
  signal a_5_IBUF_219 : STD_LOGIC; 
  signal a_6_IBUF_220 : STD_LOGIC; 
  signal a_7_IBUF_221 : STD_LOGIC; 
  signal a_8_IBUF_222 : STD_LOGIC; 
  signal a_9_IBUF_223 : STD_LOGIC; 
  signal b_0_IBUF_240 : STD_LOGIC; 
  signal b_10_IBUF_241 : STD_LOGIC; 
  signal b_11_IBUF_242 : STD_LOGIC; 
  signal b_12_IBUF_243 : STD_LOGIC; 
  signal b_13_IBUF_244 : STD_LOGIC; 
  signal b_14_IBUF_245 : STD_LOGIC; 
  signal b_15_IBUF_246 : STD_LOGIC; 
  signal b_1_IBUF_247 : STD_LOGIC; 
  signal b_2_IBUF_248 : STD_LOGIC; 
  signal b_3_IBUF_249 : STD_LOGIC; 
  signal b_4_IBUF_250 : STD_LOGIC; 
  signal b_5_IBUF_251 : STD_LOGIC; 
  signal b_6_IBUF_252 : STD_LOGIC; 
  signal b_7_IBUF_253 : STD_LOGIC; 
  signal b_8_IBUF_254 : STD_LOGIC; 
  signal b_9_IBUF_255 : STD_LOGIC; 
  signal operation_Code_0_IBUF_259 : STD_LOGIC; 
  signal operation_Code_1_IBUF_260 : STD_LOGIC; 
  signal operation_Code_2_IBUF_261 : STD_LOGIC; 
  signal result_0_OBUF_278 : STD_LOGIC; 
  signal result_10_OBUF_279 : STD_LOGIC; 
  signal result_11_OBUF_280 : STD_LOGIC; 
  signal result_12_OBUF_281 : STD_LOGIC; 
  signal result_13_OBUF_282 : STD_LOGIC; 
  signal result_14_OBUF_283 : STD_LOGIC; 
  signal result_15_OBUF_284 : STD_LOGIC; 
  signal result_1_OBUF_285 : STD_LOGIC; 
  signal result_2_OBUF_286 : STD_LOGIC; 
  signal result_3_OBUF_287 : STD_LOGIC; 
  signal result_4_OBUF_288 : STD_LOGIC; 
  signal result_5_OBUF_289 : STD_LOGIC; 
  signal result_6_OBUF_290 : STD_LOGIC; 
  signal result_7_OBUF_291 : STD_LOGIC; 
  signal result_8_OBUF_292 : STD_LOGIC; 
  signal result_9_OBUF_293 : STD_LOGIC; 
  signal result_mux0001 : STD_LOGIC; 
  signal result_mux0002_0_110 : STD_LOGIC; 
  signal result_mux0002_0_1112 : STD_LOGIC; 
  signal result_mux0002_0_1120_313 : STD_LOGIC; 
  signal result_mux0002_0_113 : STD_LOGIC; 
  signal result_mux0002_0_1620_315 : STD_LOGIC; 
  signal result_mux0002_0_2020_316 : STD_LOGIC; 
  signal result_mux0002_0_211 : STD_LOGIC; 
  signal result_mux0002_0_225 : STD_LOGIC; 
  signal result_mux0002_0_2520_319 : STD_LOGIC; 
  signal result_mux0002_0_2920_320 : STD_LOGIC; 
  signal result_mux0002_0_3420_321 : STD_LOGIC; 
  signal result_mux0002_0_3820_322 : STD_LOGIC; 
  signal result_mux0002_0_413_323 : STD_LOGIC; 
  signal result_mux0002_0_416_324 : STD_LOGIC; 
  signal result_mux0002_0_42 : STD_LOGIC; 
  signal result_mux0002_0_421_326 : STD_LOGIC; 
  signal result_mux0002_0_4420_327 : STD_LOGIC; 
  signal result_mux0002_0_4820_328 : STD_LOGIC; 
  signal result_mux0002_0_5320_329 : STD_LOGIC; 
  signal result_mux0002_0_5720_330 : STD_LOGIC; 
  signal result_mux0002_0_6220_331 : STD_LOGIC; 
  signal result_mux0002_0_6620_332 : STD_LOGIC; 
  signal result_mux0002_0_7120_333 : STD_LOGIC; 
  signal result_mux0002_0_720_334 : STD_LOGIC; 
  signal result_mux0002_0_7520_335 : STD_LOGIC; 
  signal result_mux0002_0_bdd0 : STD_LOGIC; 
  signal result_mux0002_0_bdd1 : STD_LOGIC; 
  signal result_mux0002_0_bdd10 : STD_LOGIC; 
  signal result_mux0002_0_bdd100 : STD_LOGIC; 
  signal result_mux0002_0_bdd101 : STD_LOGIC; 
  signal result_mux0002_0_bdd117 : STD_LOGIC; 
  signal result_mux0002_0_bdd118 : STD_LOGIC; 
  signal result_mux0002_0_bdd12 : STD_LOGIC; 
  signal result_mux0002_0_bdd13 : STD_LOGIC; 
  signal result_mux0002_0_bdd134 : STD_LOGIC; 
  signal result_mux0002_0_bdd135 : STD_LOGIC; 
  signal result_mux0002_0_bdd2 : STD_LOGIC; 
  signal result_mux0002_0_bdd29 : STD_LOGIC; 
  signal result_mux0002_0_bdd30 : STD_LOGIC; 
  signal result_mux0002_0_bdd46 : STD_LOGIC; 
  signal result_mux0002_0_bdd47 : STD_LOGIC; 
  signal result_mux0002_0_bdd5 : STD_LOGIC; 
  signal result_mux0002_0_bdd63 : STD_LOGIC; 
  signal result_mux0002_0_bdd64 : STD_LOGIC; 
  signal result_mux0002_0_bdd7 : STD_LOGIC; 
  signal result_mux0002_0_bdd80 : STD_LOGIC; 
  signal result_mux0002_0_bdd83 : STD_LOGIC; 
  signal result_mux0002_0_bdd84 : STD_LOGIC; 
  signal result_mux0002_0_bdd9 : STD_LOGIC; 
  signal result_mux0002_10_130 : STD_LOGIC; 
  signal result_mux0002_10_1312 : STD_LOGIC; 
  signal result_mux0002_10_1317_362 : STD_LOGIC; 
  signal result_mux0002_10_133 : STD_LOGIC; 
  signal result_mux0002_10_1717_364 : STD_LOGIC; 
  signal result_mux0002_10_2317_365 : STD_LOGIC; 
  signal result_mux0002_10_2717_366 : STD_LOGIC; 
  signal result_mux0002_10_2_SW1 : STD_LOGIC; 
  signal result_mux0002_10_2_SW11_368 : STD_LOGIC; 
  signal result_mux0002_10_3220_369 : STD_LOGIC; 
  signal result_mux0002_10_327_370 : STD_LOGIC; 
  signal result_mux0002_10_3417_371 : STD_LOGIC; 
  signal result_mux0002_10_3817_372 : STD_LOGIC; 
  signal result_mux0002_10_417_373 : STD_LOGIC; 
  signal result_mux0002_10_4317_374 : STD_LOGIC; 
  signal result_mux0002_10_4717_375 : STD_LOGIC; 
  signal result_mux0002_10_817_376 : STD_LOGIC; 
  signal result_mux0002_10_bdd0 : STD_LOGIC; 
  signal result_mux0002_10_bdd24 : STD_LOGIC; 
  signal result_mux0002_10_bdd25 : STD_LOGIC; 
  signal result_mux0002_10_bdd3 : STD_LOGIC; 
  signal result_mux0002_10_bdd41 : STD_LOGIC; 
  signal result_mux0002_10_bdd43 : STD_LOGIC; 
  signal result_mux0002_10_bdd44 : STD_LOGIC; 
  signal result_mux0002_10_bdd60 : STD_LOGIC; 
  signal result_mux0002_10_bdd61 : STD_LOGIC; 
  signal result_mux0002_10_bdd66 : STD_LOGIC; 
  signal result_mux0002_10_bdd67 : STD_LOGIC; 
  signal result_mux0002_10_bdd7 : STD_LOGIC; 
  signal result_mux0002_10_bdd8 : STD_LOGIC; 
  signal result_mux0002_10_bdd83 : STD_LOGIC; 
  signal result_mux0002_10_bdd84 : STD_LOGIC; 
  signal result_mux0002_11_121 : STD_LOGIC; 
  signal result_mux0002_11_1211_393 : STD_LOGIC; 
  signal result_mux0002_11_1320_394 : STD_LOGIC; 
  signal result_mux0002_11_137_395 : STD_LOGIC; 
  signal result_mux0002_11_2 : STD_LOGIC; 
  signal result_mux0002_11_21_397 : STD_LOGIC; 
  signal result_mux0002_11_417_398 : STD_LOGIC; 
  signal result_mux0002_11_bdd0 : STD_LOGIC; 
  signal result_mux0002_11_bdd1 : STD_LOGIC; 
  signal result_mux0002_11_bdd17 : STD_LOGIC; 
  signal result_mux0002_11_bdd18 : STD_LOGIC; 
  signal result_mux0002_11_bdd23 : STD_LOGIC; 
  signal result_mux0002_11_bdd3 : STD_LOGIC; 
  signal result_mux0002_11_bdd30 : STD_LOGIC; 
  signal result_mux0002_11_bdd31 : STD_LOGIC; 
  signal result_mux0002_11_bdd4 : STD_LOGIC; 
  signal result_mux0002_11_bdd7 : STD_LOGIC; 
  signal result_mux0002_12_17 : STD_LOGIC; 
  signal result_mux0002_12_171_410 : STD_LOGIC; 
  signal result_mux0002_12_172_411 : STD_LOGIC; 
  signal result_mux0002_12_317_412 : STD_LOGIC; 
  signal result_mux0002_12_80_413 : STD_LOGIC; 
  signal result_mux0002_12_815_414 : STD_LOGIC; 
  signal result_mux0002_12_bdd1 : STD_LOGIC; 
  signal result_mux0002_12_bdd4 : STD_LOGIC; 
  signal result_mux0002_13_138 : STD_LOGIC; 
  signal result_mux0002_13_1381_419 : STD_LOGIC; 
  signal result_mux0002_13_17 : STD_LOGIC; 
  signal result_mux0002_13_171_421 : STD_LOGIC; 
  signal result_mux0002_13_172_422 : STD_LOGIC; 
  signal result_mux0002_13_317_423 : STD_LOGIC; 
  signal result_mux0002_13_839 : STD_LOGIC; 
  signal result_mux0002_13_8391_425 : STD_LOGIC; 
  signal result_mux0002_13_bdd1 : STD_LOGIC; 
  signal result_mux0002_13_bdd14 : STD_LOGIC; 
  signal result_mux0002_13_bdd2 : STD_LOGIC; 
  signal result_mux0002_13_bdd4 : STD_LOGIC; 
  signal result_mux0002_14_127_430 : STD_LOGIC; 
  signal result_mux0002_14_135_431 : STD_LOGIC; 
  signal result_mux0002_14_317_432 : STD_LOGIC; 
  signal result_mux0002_14_bdd2 : STD_LOGIC; 
  signal result_mux0002_15_323_434 : STD_LOGIC; 
  signal result_mux0002_15_333_435 : STD_LOGIC; 
  signal result_mux0002_15_38_436 : STD_LOGIC; 
  signal result_mux0002_15_386_437 : STD_LOGIC; 
  signal result_mux0002_15_397_438 : STD_LOGIC; 
  signal result_mux0002_1_222_439 : STD_LOGIC; 
  signal result_mux0002_1_24_440 : STD_LOGIC; 
  signal result_mux0002_1_625_441 : STD_LOGIC; 
  signal result_mux0002_1_bdd0 : STD_LOGIC; 
  signal result_mux0002_1_bdd1 : STD_LOGIC; 
  signal result_mux0002_1_bdd10 : STD_LOGIC; 
  signal result_mux0002_1_bdd13 : STD_LOGIC; 
  signal result_mux0002_1_bdd5 : STD_LOGIC; 
  signal result_mux0002_2_18 : STD_LOGIC; 
  signal result_mux0002_2_bdd1 : STD_LOGIC; 
  signal result_mux0002_2_bdd3 : STD_LOGIC; 
  signal result_mux0002_3_17 : STD_LOGIC; 
  signal result_mux0002_3_426_451 : STD_LOGIC; 
  signal result_mux0002_3_bdd1 : STD_LOGIC; 
  signal result_mux0002_3_bdd3 : STD_LOGIC; 
  signal result_mux0002_4_bdd0 : STD_LOGIC; 
  signal result_mux0002_5_bdd0 : STD_LOGIC; 
  signal result_mux0002_6_114_456 : STD_LOGIC; 
  signal result_mux0002_7_113_457 : STD_LOGIC; 
  signal result_mux0002_7_116_458 : STD_LOGIC; 
  signal result_shift0002_0_bdd2 : STD_LOGIC; 
  signal result_shift0002_10_Q : STD_LOGIC; 
  signal result_shift0002_10_6 : STD_LOGIC; 
  signal result_shift0002_10_61 : STD_LOGIC; 
  signal result_shift0002_10_bdd1 : STD_LOGIC; 
  signal result_shift0002_10_bdd11 : STD_LOGIC; 
  signal result_shift0002_10_bdd12 : STD_LOGIC; 
  signal result_shift0002_10_bdd14 : STD_LOGIC; 
  signal result_shift0002_10_bdd3 : STD_LOGIC; 
  signal result_shift0002_10_bdd5 : STD_LOGIC; 
  signal result_shift0002_11_Q : STD_LOGIC; 
  signal result_shift0002_11_11 : STD_LOGIC; 
  signal result_shift0002_11_111_471 : STD_LOGIC; 
  signal result_shift0002_11_620_472 : STD_LOGIC; 
  signal result_shift0002_11_67_473 : STD_LOGIC; 
  signal result_shift0002_11_bdd11 : STD_LOGIC; 
  signal result_shift0002_11_bdd12 : STD_LOGIC; 
  signal result_shift0002_11_bdd14 : STD_LOGIC; 
  signal result_shift0002_11_bdd15 : STD_LOGIC; 
  signal result_shift0002_11_bdd3 : STD_LOGIC; 
  signal result_shift0002_11_bdd5 : STD_LOGIC; 
  signal result_shift0002_12_125_480 : STD_LOGIC; 
  signal result_shift0002_12_bdd0 : STD_LOGIC; 
  signal result_shift0002_12_bdd1 : STD_LOGIC; 
  signal result_shift0002_12_bdd2 : STD_LOGIC; 
  signal result_shift0002_13_Q : STD_LOGIC; 
  signal result_shift0002_13_135_485 : STD_LOGIC; 
  signal result_shift0002_13_2 : STD_LOGIC; 
  signal result_shift0002_13_21_487 : STD_LOGIC; 
  signal result_shift0002_13_bdd0 : STD_LOGIC; 
  signal result_shift0002_13_bdd1 : STD_LOGIC; 
  signal result_shift0002_13_bdd2 : STD_LOGIC; 
  signal result_shift0002_14_Q : STD_LOGIC; 
  signal result_shift0002_14_125_492 : STD_LOGIC; 
  signal result_shift0002_14_179 : STD_LOGIC; 
  signal result_shift0002_14_1791_494 : STD_LOGIC; 
  signal result_shift0002_15_Q : STD_LOGIC; 
  signal result_shift0002_15_125_496 : STD_LOGIC; 
  signal result_shift0002_1_Q : STD_LOGIC; 
  signal result_shift0002_3_bdd0 : STD_LOGIC; 
  signal result_shift0002_4_Q : STD_LOGIC; 
  signal result_shift0002_5_Q : STD_LOGIC; 
  signal result_shift0002_6_Q : STD_LOGIC; 
  signal result_shift0002_7_Q : STD_LOGIC; 
  signal result_shift0002_8_Q : STD_LOGIC; 
  signal result_shift0002_9_Q : STD_LOGIC; 
  signal result_shift0003_0_Q : STD_LOGIC; 
  signal result_shift0003_10_Q : STD_LOGIC; 
  signal result_shift0003_11_Q : STD_LOGIC; 
  signal result_shift0003_11_bdd5 : STD_LOGIC; 
  signal result_shift0003_13_Q : STD_LOGIC; 
  signal result_shift0003_13_bdd2 : STD_LOGIC; 
  signal result_shift0003_14_Q : STD_LOGIC; 
  signal result_shift0003_15_Q : STD_LOGIC; 
  signal result_shift0003_1_Q : STD_LOGIC; 
  signal result_shift0003_1_21_514 : STD_LOGIC; 
  signal result_shift0003_1_216_515 : STD_LOGIC; 
  signal result_shift0003_1_bdd0 : STD_LOGIC; 
  signal result_shift0003_2_bdd0 : STD_LOGIC; 
  signal result_shift0003_3_bdd0 : STD_LOGIC; 
  signal result_shift0003_4_Q : STD_LOGIC; 
  signal result_shift0003_5_Q : STD_LOGIC; 
  signal result_shift0003_6_Q : STD_LOGIC; 
  signal result_shift0003_7_Q : STD_LOGIC; 
  signal result_shift0003_8_Q : STD_LOGIC; 
  signal result_shift0003_9_Q : STD_LOGIC; 
  signal Maddsub_result_addsub0000_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal Maddsub_result_addsub0000_lut : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal result_addsub0000 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal result_mux0002 : STD_LOGIC_VECTOR ( 13 downto 13 ); 
begin
  Maddsub_result_addsub0000_lut_0_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_0_IBUF_208,
      I1 => b_0_IBUF_240,
      I2 => result_mux0001,
      O => Maddsub_result_addsub0000_lut(0)
    );
  Maddsub_result_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => result_mux0001,
      DI => a_0_IBUF_208,
      S => Maddsub_result_addsub0000_lut(0),
      O => Maddsub_result_addsub0000_cy(0)
    );
  Maddsub_result_addsub0000_xor_0_Q : XORCY
    port map (
      CI => result_mux0001,
      LI => Maddsub_result_addsub0000_lut(0),
      O => result_addsub0000(0)
    );
  Maddsub_result_addsub0000_lut_1_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_1_IBUF_215,
      I1 => b_1_IBUF_247,
      I2 => result_mux0001,
      O => Maddsub_result_addsub0000_lut(1)
    );
  Maddsub_result_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => Maddsub_result_addsub0000_cy(0),
      DI => a_1_IBUF_215,
      S => Maddsub_result_addsub0000_lut(1),
      O => Maddsub_result_addsub0000_cy(1)
    );
  Maddsub_result_addsub0000_xor_1_Q : XORCY
    port map (
      CI => Maddsub_result_addsub0000_cy(0),
      LI => Maddsub_result_addsub0000_lut(1),
      O => result_addsub0000(1)
    );
  Maddsub_result_addsub0000_lut_2_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_2_IBUF_216,
      I1 => b_2_IBUF_248,
      I2 => result_mux0001,
      O => Maddsub_result_addsub0000_lut(2)
    );
  Maddsub_result_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => Maddsub_result_addsub0000_cy(1),
      DI => a_2_IBUF_216,
      S => Maddsub_result_addsub0000_lut(2),
      O => Maddsub_result_addsub0000_cy(2)
    );
  Maddsub_result_addsub0000_xor_2_Q : XORCY
    port map (
      CI => Maddsub_result_addsub0000_cy(1),
      LI => Maddsub_result_addsub0000_lut(2),
      O => result_addsub0000(2)
    );
  Maddsub_result_addsub0000_lut_3_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_3_IBUF_217,
      I1 => b_3_IBUF_249,
      I2 => result_mux0001,
      O => Maddsub_result_addsub0000_lut(3)
    );
  Maddsub_result_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => Maddsub_result_addsub0000_cy(2),
      DI => a_3_IBUF_217,
      S => Maddsub_result_addsub0000_lut(3),
      O => Maddsub_result_addsub0000_cy(3)
    );
  Maddsub_result_addsub0000_xor_3_Q : XORCY
    port map (
      CI => Maddsub_result_addsub0000_cy(2),
      LI => Maddsub_result_addsub0000_lut(3),
      O => result_addsub0000(3)
    );
  Maddsub_result_addsub0000_lut_4_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_4_IBUF_218,
      I1 => b_4_IBUF_250,
      I2 => result_mux0001,
      O => Maddsub_result_addsub0000_lut(4)
    );
  Maddsub_result_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => Maddsub_result_addsub0000_cy(3),
      DI => a_4_IBUF_218,
      S => Maddsub_result_addsub0000_lut(4),
      O => Maddsub_result_addsub0000_cy(4)
    );
  Maddsub_result_addsub0000_xor_4_Q : XORCY
    port map (
      CI => Maddsub_result_addsub0000_cy(3),
      LI => Maddsub_result_addsub0000_lut(4),
      O => result_addsub0000(4)
    );
  Maddsub_result_addsub0000_lut_5_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_5_IBUF_219,
      I1 => b_5_IBUF_251,
      I2 => result_mux0001,
      O => Maddsub_result_addsub0000_lut(5)
    );
  Maddsub_result_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => Maddsub_result_addsub0000_cy(4),
      DI => a_5_IBUF_219,
      S => Maddsub_result_addsub0000_lut(5),
      O => Maddsub_result_addsub0000_cy(5)
    );
  Maddsub_result_addsub0000_xor_5_Q : XORCY
    port map (
      CI => Maddsub_result_addsub0000_cy(4),
      LI => Maddsub_result_addsub0000_lut(5),
      O => result_addsub0000(5)
    );
  Maddsub_result_addsub0000_lut_6_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_6_IBUF_220,
      I1 => b_6_IBUF_252,
      I2 => result_mux0001,
      O => Maddsub_result_addsub0000_lut(6)
    );
  Maddsub_result_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => Maddsub_result_addsub0000_cy(5),
      DI => a_6_IBUF_220,
      S => Maddsub_result_addsub0000_lut(6),
      O => Maddsub_result_addsub0000_cy(6)
    );
  Maddsub_result_addsub0000_xor_6_Q : XORCY
    port map (
      CI => Maddsub_result_addsub0000_cy(5),
      LI => Maddsub_result_addsub0000_lut(6),
      O => result_addsub0000(6)
    );
  Maddsub_result_addsub0000_lut_7_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_7_IBUF_221,
      I1 => b_7_IBUF_253,
      I2 => result_mux0001,
      O => Maddsub_result_addsub0000_lut(7)
    );
  Maddsub_result_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => Maddsub_result_addsub0000_cy(6),
      DI => a_7_IBUF_221,
      S => Maddsub_result_addsub0000_lut(7),
      O => Maddsub_result_addsub0000_cy(7)
    );
  Maddsub_result_addsub0000_xor_7_Q : XORCY
    port map (
      CI => Maddsub_result_addsub0000_cy(6),
      LI => Maddsub_result_addsub0000_lut(7),
      O => result_addsub0000(7)
    );
  Maddsub_result_addsub0000_lut_8_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_8_IBUF_222,
      I1 => b_8_IBUF_254,
      I2 => result_mux0001,
      O => Maddsub_result_addsub0000_lut(8)
    );
  Maddsub_result_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => Maddsub_result_addsub0000_cy(7),
      DI => a_8_IBUF_222,
      S => Maddsub_result_addsub0000_lut(8),
      O => Maddsub_result_addsub0000_cy(8)
    );
  Maddsub_result_addsub0000_xor_8_Q : XORCY
    port map (
      CI => Maddsub_result_addsub0000_cy(7),
      LI => Maddsub_result_addsub0000_lut(8),
      O => result_addsub0000(8)
    );
  Maddsub_result_addsub0000_lut_9_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_9_IBUF_223,
      I1 => b_9_IBUF_255,
      I2 => result_mux0001,
      O => Maddsub_result_addsub0000_lut(9)
    );
  Maddsub_result_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => Maddsub_result_addsub0000_cy(8),
      DI => a_9_IBUF_223,
      S => Maddsub_result_addsub0000_lut(9),
      O => Maddsub_result_addsub0000_cy(9)
    );
  Maddsub_result_addsub0000_xor_9_Q : XORCY
    port map (
      CI => Maddsub_result_addsub0000_cy(8),
      LI => Maddsub_result_addsub0000_lut(9),
      O => result_addsub0000(9)
    );
  Maddsub_result_addsub0000_lut_10_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_10_IBUF_209,
      I1 => b_10_IBUF_241,
      I2 => result_mux0001,
      O => Maddsub_result_addsub0000_lut(10)
    );
  Maddsub_result_addsub0000_cy_10_Q : MUXCY
    port map (
      CI => Maddsub_result_addsub0000_cy(9),
      DI => a_10_IBUF_209,
      S => Maddsub_result_addsub0000_lut(10),
      O => Maddsub_result_addsub0000_cy(10)
    );
  Maddsub_result_addsub0000_xor_10_Q : XORCY
    port map (
      CI => Maddsub_result_addsub0000_cy(9),
      LI => Maddsub_result_addsub0000_lut(10),
      O => result_addsub0000(10)
    );
  Maddsub_result_addsub0000_lut_11_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_11_IBUF_210,
      I1 => b_11_IBUF_242,
      I2 => result_mux0001,
      O => Maddsub_result_addsub0000_lut(11)
    );
  Maddsub_result_addsub0000_cy_11_Q : MUXCY
    port map (
      CI => Maddsub_result_addsub0000_cy(10),
      DI => a_11_IBUF_210,
      S => Maddsub_result_addsub0000_lut(11),
      O => Maddsub_result_addsub0000_cy(11)
    );
  Maddsub_result_addsub0000_xor_11_Q : XORCY
    port map (
      CI => Maddsub_result_addsub0000_cy(10),
      LI => Maddsub_result_addsub0000_lut(11),
      O => result_addsub0000(11)
    );
  Maddsub_result_addsub0000_lut_12_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_12_IBUF_211,
      I1 => b_12_IBUF_243,
      I2 => result_mux0001,
      O => Maddsub_result_addsub0000_lut(12)
    );
  Maddsub_result_addsub0000_cy_12_Q : MUXCY
    port map (
      CI => Maddsub_result_addsub0000_cy(11),
      DI => a_12_IBUF_211,
      S => Maddsub_result_addsub0000_lut(12),
      O => Maddsub_result_addsub0000_cy(12)
    );
  Maddsub_result_addsub0000_xor_12_Q : XORCY
    port map (
      CI => Maddsub_result_addsub0000_cy(11),
      LI => Maddsub_result_addsub0000_lut(12),
      O => result_addsub0000(12)
    );
  Maddsub_result_addsub0000_lut_13_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_13_IBUF_212,
      I1 => b_13_IBUF_244,
      I2 => result_mux0001,
      O => Maddsub_result_addsub0000_lut(13)
    );
  Maddsub_result_addsub0000_cy_13_Q : MUXCY
    port map (
      CI => Maddsub_result_addsub0000_cy(12),
      DI => a_13_IBUF_212,
      S => Maddsub_result_addsub0000_lut(13),
      O => Maddsub_result_addsub0000_cy(13)
    );
  Maddsub_result_addsub0000_xor_13_Q : XORCY
    port map (
      CI => Maddsub_result_addsub0000_cy(12),
      LI => Maddsub_result_addsub0000_lut(13),
      O => result_addsub0000(13)
    );
  Maddsub_result_addsub0000_lut_14_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_14_IBUF_213,
      I1 => b_14_IBUF_245,
      I2 => result_mux0001,
      O => Maddsub_result_addsub0000_lut(14)
    );
  Maddsub_result_addsub0000_cy_14_Q : MUXCY
    port map (
      CI => Maddsub_result_addsub0000_cy(13),
      DI => a_14_IBUF_213,
      S => Maddsub_result_addsub0000_lut(14),
      O => Maddsub_result_addsub0000_cy(14)
    );
  Maddsub_result_addsub0000_xor_14_Q : XORCY
    port map (
      CI => Maddsub_result_addsub0000_cy(13),
      LI => Maddsub_result_addsub0000_lut(14),
      O => result_addsub0000(14)
    );
  Maddsub_result_addsub0000_lut_15_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => a_15_IBUF_214,
      I1 => b_15_IBUF_246,
      I2 => result_mux0001,
      O => Maddsub_result_addsub0000_lut(15)
    );
  Maddsub_result_addsub0000_xor_15_Q : XORCY
    port map (
      CI => Maddsub_result_addsub0000_cy(14),
      LI => Maddsub_result_addsub0000_lut(15),
      O => result_addsub0000(15)
    );
  Mmux_result_2_f6_14 : MUXF6
    port map (
      I0 => Mmux_result_4_f515,
      I1 => Mmux_result_3_f515,
      S => operation_Code_2_IBUF_261,
      O => result_9_OBUF_293
    );
  Mmux_result_4_f5_14 : MUXF5
    port map (
      I0 => Mmux_result_4_f5_14_rt_84,
      I1 => Mmux_result_531_128,
      S => operation_Code_1_IBUF_260,
      O => Mmux_result_4_f515
    );
  Mmux_result_531 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => operation_Code_0_IBUF_259,
      I1 => result_shift0002_9_Q,
      I2 => result_shift0003_9_Q,
      O => Mmux_result_531_128
    );
  Mmux_result_3_f5_14 : MUXF5
    port map (
      I0 => Mmux_result_530_127,
      I1 => Mmux_result_415,
      S => operation_Code_1_IBUF_260,
      O => Mmux_result_3_f515
    );
  Mmux_result_2_f6_13 : MUXF6
    port map (
      I0 => Mmux_result_4_f514,
      I1 => Mmux_result_3_f514,
      S => operation_Code_2_IBUF_261,
      O => result_8_OBUF_292
    );
  Mmux_result_4_f5_13 : MUXF5
    port map (
      I0 => Mmux_result_4_f5_13_rt_83,
      I1 => Mmux_result_529_123,
      S => operation_Code_1_IBUF_260,
      O => Mmux_result_4_f514
    );
  Mmux_result_529 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => operation_Code_0_IBUF_259,
      I1 => result_shift0002_8_Q,
      I2 => result_shift0003_8_Q,
      O => Mmux_result_529_123
    );
  Mmux_result_3_f5_13 : MUXF5
    port map (
      I0 => Mmux_result_528_120,
      I1 => Mmux_result_414_53,
      S => operation_Code_1_IBUF_260,
      O => Mmux_result_3_f514
    );
  Mmux_result_2_f6_12 : MUXF6
    port map (
      I0 => Mmux_result_4_f513,
      I1 => Mmux_result_3_f513,
      S => operation_Code_2_IBUF_261,
      O => result_7_OBUF_291
    );
  Mmux_result_4_f5_12 : MUXF5
    port map (
      I0 => Mmux_result_4_f5_12_rt_82,
      I1 => Mmux_result_527_119,
      S => operation_Code_1_IBUF_260,
      O => Mmux_result_4_f513
    );
  Mmux_result_527 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => operation_Code_0_IBUF_259,
      I1 => result_shift0002_7_Q,
      I2 => result_shift0003_7_Q,
      O => Mmux_result_527_119
    );
  Mmux_result_3_f5_12 : MUXF5
    port map (
      I0 => Mmux_result_526_118,
      I1 => Mmux_result_413,
      S => operation_Code_1_IBUF_260,
      O => Mmux_result_3_f513
    );
  Mmux_result_2_f6_11 : MUXF6
    port map (
      I0 => Mmux_result_4_f512,
      I1 => Mmux_result_3_f512,
      S => operation_Code_2_IBUF_261,
      O => result_6_OBUF_290
    );
  Mmux_result_4_f5_11 : MUXF5
    port map (
      I0 => Mmux_result_4_f5_11_rt_81,
      I1 => Mmux_result_525_117,
      S => operation_Code_1_IBUF_260,
      O => Mmux_result_4_f512
    );
  Mmux_result_525 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => operation_Code_0_IBUF_259,
      I1 => result_shift0002_6_Q,
      I2 => result_shift0003_6_Q,
      O => Mmux_result_525_117
    );
  Mmux_result_3_f5_11 : MUXF5
    port map (
      I0 => Mmux_result_524_116,
      I1 => Mmux_result_412_51,
      S => operation_Code_1_IBUF_260,
      O => Mmux_result_3_f512
    );
  Mmux_result_2_f6_10 : MUXF6
    port map (
      I0 => Mmux_result_4_f511,
      I1 => Mmux_result_3_f511,
      S => operation_Code_2_IBUF_261,
      O => result_5_OBUF_289
    );
  Mmux_result_4_f5_10 : MUXF5
    port map (
      I0 => Mmux_result_4_f5_10_rt_80,
      I1 => Mmux_result_523_115,
      S => operation_Code_1_IBUF_260,
      O => Mmux_result_4_f511
    );
  Mmux_result_523 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => operation_Code_0_IBUF_259,
      I1 => result_shift0002_5_Q,
      I2 => result_shift0003_5_Q,
      O => Mmux_result_523_115
    );
  Mmux_result_3_f5_10 : MUXF5
    port map (
      I0 => Mmux_result_522_114,
      I1 => Mmux_result_411,
      S => operation_Code_1_IBUF_260,
      O => Mmux_result_3_f511
    );
  Mmux_result_2_f6_9 : MUXF6
    port map (
      I0 => Mmux_result_4_f510,
      I1 => Mmux_result_3_f510,
      S => operation_Code_2_IBUF_261,
      O => result_4_OBUF_288
    );
  Mmux_result_4_f5_9 : MUXF5
    port map (
      I0 => Mmux_result_4_f5_9_rt_93,
      I1 => Mmux_result_521_113,
      S => operation_Code_1_IBUF_260,
      O => Mmux_result_4_f510
    );
  Mmux_result_521 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => operation_Code_0_IBUF_259,
      I1 => result_shift0002_4_Q,
      I2 => result_shift0003_4_Q,
      O => Mmux_result_521_113
    );
  Mmux_result_3_f5_9 : MUXF5
    port map (
      I0 => Mmux_result_520_112,
      I1 => Mmux_result_410_49,
      S => operation_Code_1_IBUF_260,
      O => Mmux_result_3_f510
    );
  Mmux_result_2_f6_8 : MUXF6
    port map (
      I0 => Mmux_result_4_f59,
      I1 => Mmux_result_3_f59,
      S => operation_Code_2_IBUF_261,
      O => result_3_OBUF_287
    );
  Mmux_result_4_f5_8 : MUXF5
    port map (
      I0 => Mmux_result_4_f5_8_rt_92,
      I1 => Mmux_result_519_110,
      S => operation_Code_1_IBUF_260,
      O => Mmux_result_4_f59
    );
  Mmux_result_3_f5_8 : MUXF5
    port map (
      I0 => Mmux_result_518_107,
      I1 => Mmux_result_49,
      S => operation_Code_1_IBUF_260,
      O => Mmux_result_3_f59
    );
  Mmux_result_2_f6_7 : MUXF6
    port map (
      I0 => Mmux_result_4_f58,
      I1 => Mmux_result_3_f58,
      S => operation_Code_2_IBUF_261,
      O => result_2_OBUF_286
    );
  Mmux_result_4_f5_7 : MUXF5
    port map (
      I0 => Mmux_result_4_f5_7_rt_91,
      I1 => Mmux_result_517_106,
      S => operation_Code_1_IBUF_260,
      O => Mmux_result_4_f58
    );
  Mmux_result_3_f5_7 : MUXF5
    port map (
      I0 => Mmux_result_516_103,
      I1 => Mmux_result_48_61,
      S => operation_Code_1_IBUF_260,
      O => Mmux_result_3_f58
    );
  Mmux_result_2_f6_6 : MUXF6
    port map (
      I0 => Mmux_result_4_f57,
      I1 => Mmux_result_3_f57,
      S => operation_Code_2_IBUF_261,
      O => result_1_OBUF_285
    );
  Mmux_result_4_f5_6 : MUXF5
    port map (
      I0 => Mmux_result_4_f5_6_rt_90,
      I1 => Mmux_result_515_102,
      S => operation_Code_1_IBUF_260,
      O => Mmux_result_4_f57
    );
  Mmux_result_515 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => operation_Code_0_IBUF_259,
      I1 => result_shift0002_1_Q,
      I2 => result_shift0003_1_Q,
      O => Mmux_result_515_102
    );
  Mmux_result_3_f5_6 : MUXF5
    port map (
      I0 => Mmux_result_514_101,
      I1 => Mmux_result_47,
      S => operation_Code_1_IBUF_260,
      O => Mmux_result_3_f57
    );
  Mmux_result_2_f6_5 : MUXF6
    port map (
      I0 => Mmux_result_4_f56,
      I1 => Mmux_result_3_f56,
      S => operation_Code_2_IBUF_261,
      O => result_15_OBUF_284
    );
  Mmux_result_4_f5_5 : MUXF5
    port map (
      I0 => Mmux_result_4_f5_5_rt_89,
      I1 => Mmux_result_513_100,
      S => operation_Code_1_IBUF_260,
      O => Mmux_result_4_f56
    );
  Mmux_result_513 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => operation_Code_0_IBUF_259,
      I1 => result_shift0002_15_Q,
      I2 => result_shift0003_15_Q,
      O => Mmux_result_513_100
    );
  Mmux_result_3_f5_5 : MUXF5
    port map (
      I0 => Mmux_result_512_99,
      I1 => Mmux_result_46_59,
      S => operation_Code_1_IBUF_260,
      O => Mmux_result_3_f56
    );
  Mmux_result_2_f6_4 : MUXF6
    port map (
      I0 => Mmux_result_4_f55,
      I1 => Mmux_result_3_f55,
      S => operation_Code_2_IBUF_261,
      O => result_14_OBUF_283
    );
  Mmux_result_4_f5_4 : MUXF5
    port map (
      I0 => Mmux_result_4_f5_4_rt_88,
      I1 => Mmux_result_511_98,
      S => operation_Code_1_IBUF_260,
      O => Mmux_result_4_f55
    );
  Mmux_result_511 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => operation_Code_0_IBUF_259,
      I1 => result_shift0002_14_Q,
      I2 => result_shift0003_14_Q,
      O => Mmux_result_511_98
    );
  Mmux_result_3_f5_4 : MUXF5
    port map (
      I0 => Mmux_result_510_97,
      I1 => Mmux_result_45,
      S => operation_Code_1_IBUF_260,
      O => Mmux_result_3_f55
    );
  Mmux_result_2_f6_3 : MUXF6
    port map (
      I0 => Mmux_result_4_f54,
      I1 => Mmux_result_3_f54,
      S => operation_Code_2_IBUF_261,
      O => result_13_OBUF_282
    );
  Mmux_result_4_f5_3 : MUXF5
    port map (
      I0 => Mmux_result_4_f5_3_rt_87,
      I1 => Mmux_result_59_134,
      S => operation_Code_1_IBUF_260,
      O => Mmux_result_4_f54
    );
  Mmux_result_59 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => operation_Code_0_IBUF_259,
      I1 => result_shift0002_13_Q,
      I2 => result_shift0003_13_Q,
      O => Mmux_result_59_134
    );
  Mmux_result_3_f5_3 : MUXF5
    port map (
      I0 => Mmux_result_58_133,
      I1 => Mmux_result_44_57,
      S => operation_Code_1_IBUF_260,
      O => Mmux_result_3_f54
    );
  Mmux_result_2_f6_2 : MUXF6
    port map (
      I0 => Mmux_result_4_f53,
      I1 => Mmux_result_3_f53,
      S => operation_Code_2_IBUF_261,
      O => result_12_OBUF_281
    );
  Mmux_result_4_f5_2 : MUXF5
    port map (
      I0 => Mmux_result_4_f5_2_rt_86,
      I1 => Mmux_result_57_132,
      S => operation_Code_1_IBUF_260,
      O => Mmux_result_4_f53
    );
  Mmux_result_3_f5_2 : MUXF5
    port map (
      I0 => Mmux_result_56_131,
      I1 => Mmux_result_43,
      S => operation_Code_1_IBUF_260,
      O => Mmux_result_3_f53
    );
  Mmux_result_2_f6_1 : MUXF6
    port map (
      I0 => Mmux_result_4_f52,
      I1 => Mmux_result_3_f52,
      S => operation_Code_2_IBUF_261,
      O => result_11_OBUF_280
    );
  Mmux_result_4_f5_1 : MUXF5
    port map (
      I0 => Mmux_result_4_f5_1_rt_85,
      I1 => Mmux_result_55_130,
      S => operation_Code_1_IBUF_260,
      O => Mmux_result_4_f52
    );
  Mmux_result_55 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => operation_Code_0_IBUF_259,
      I1 => result_shift0002_11_Q,
      I2 => result_shift0003_11_Q,
      O => Mmux_result_55_130
    );
  Mmux_result_3_f5_1 : MUXF5
    port map (
      I0 => Mmux_result_54_129,
      I1 => Mmux_result_42_55,
      S => operation_Code_1_IBUF_260,
      O => Mmux_result_3_f52
    );
  Mmux_result_2_f6_0 : MUXF6
    port map (
      I0 => Mmux_result_4_f51,
      I1 => Mmux_result_3_f51,
      S => operation_Code_2_IBUF_261,
      O => result_10_OBUF_279
    );
  Mmux_result_4_f5_0 : MUXF5
    port map (
      I0 => Mmux_result_4_f5_0_rt_79,
      I1 => Mmux_result_53_126,
      S => operation_Code_1_IBUF_260,
      O => Mmux_result_4_f51
    );
  Mmux_result_53 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => operation_Code_0_IBUF_259,
      I1 => result_shift0002_10_Q,
      I2 => result_shift0003_10_Q,
      O => Mmux_result_53_126
    );
  Mmux_result_3_f5_0 : MUXF5
    port map (
      I0 => Mmux_result_52_111,
      I1 => Mmux_result_41,
      S => operation_Code_1_IBUF_260,
      O => Mmux_result_3_f51
    );
  Mmux_result_2_f6 : MUXF6
    port map (
      I0 => Mmux_result_4_f5_63,
      I1 => Mmux_result_3_f5_31,
      S => operation_Code_2_IBUF_261,
      O => result_0_OBUF_278
    );
  Mmux_result_4_f5 : MUXF5
    port map (
      I0 => Mmux_result_4_f5_rt_94,
      I1 => Mmux_result_51_96,
      S => operation_Code_1_IBUF_260,
      O => Mmux_result_4_f5_63
    );
  Mmux_result_3_f5 : MUXF5
    port map (
      I0 => Mmux_result_5_95,
      I1 => Mmux_result_4_47,
      S => operation_Code_1_IBUF_260,
      O => Mmux_result_3_f5_31
    );
  result_shift0003_15_11 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => b_2_IBUF_248,
      I2 => result_shift0003_11_bdd5,
      I3 => b_1_IBUF_247,
      O => result_shift0003_15_Q
    );
  result_shift0003_14_11 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => b_2_IBUF_248,
      I2 => result_mux0002_0_bdd9,
      I3 => b_1_IBUF_247,
      O => result_shift0003_14_Q
    );
  result_mux00012 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => operation_Code_1_IBUF_260,
      I1 => operation_Code_0_IBUF_259,
      I2 => operation_Code_2_IBUF_261,
      O => result_mux0001
    );
  result_shift0002_1_11 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => b_2_IBUF_248,
      I2 => result_shift0002_11_bdd14,
      I3 => b_1_IBUF_247,
      O => result_shift0002_1_Q
    );
  result_shift0003_13_11 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => result_shift0003_13_bdd2,
      I1 => b_3_IBUF_249,
      I2 => b_2_IBUF_248,
      O => result_shift0003_13_Q
    );
  result_shift0003_9_11 : LUT4
    generic map(
      INIT => X"0415"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => b_2_IBUF_248,
      I2 => result_shift0003_13_bdd2,
      I3 => result_mux0002_1_bdd10,
      O => result_shift0003_9_Q
    );
  result_shift0003_8_11 : LUT4
    generic map(
      INIT => X"0415"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => b_2_IBUF_248,
      I2 => result_mux0002_0_bdd5,
      I3 => result_mux0002_0_bdd1,
      O => result_shift0003_8_Q
    );
  result_shift0002_0_31 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => result_mux0002_0_bdd135,
      I1 => b_0_IBUF_240,
      I2 => b_1_IBUF_247,
      O => result_shift0002_0_bdd2
    );
  result_shift0002_7_11 : LUT4
    generic map(
      INIT => X"2227"
    )
    port map (
      I0 => b_2_IBUF_248,
      I1 => result_shift0002_3_bdd0,
      I2 => b_3_IBUF_249,
      I3 => result_shift0002_11_bdd3,
      O => result_shift0002_7_Q
    );
  result_shift0002_3_21 : LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => result_shift0002_11_bdd14,
      I2 => result_shift0002_11_bdd15,
      I3 => b_3_IBUF_249,
      O => result_shift0002_3_bdd0
    );
  result_shift0002_4_11 : LUT4
    generic map(
      INIT => X"0415"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => b_2_IBUF_248,
      I2 => result_shift0002_0_bdd2,
      I3 => result_shift0002_12_bdd1,
      O => result_shift0002_4_Q
    );
  result_shift0003_10_1 : LUT4
    generic map(
      INIT => X"0232"
    )
    port map (
      I0 => result_mux0002_10_bdd61,
      I1 => b_3_IBUF_249,
      I2 => b_2_IBUF_248,
      I3 => N5,
      O => result_shift0003_10_Q
    );
  result_shift0002_5_1 : LUT4
    generic map(
      INIT => X"0415"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => b_2_IBUF_248,
      I2 => N7,
      I3 => result_shift0002_13_bdd1,
      O => result_shift0002_5_Q
    );
  result_shift0002_6_1_SW0 : LUT4
    generic map(
      INIT => X"EEE2"
    )
    port map (
      I0 => result_shift0002_10_bdd14,
      I1 => b_1_IBUF_247,
      I2 => result_mux0002_0_bdd135,
      I3 => b_0_IBUF_240,
      O => result_shift0002_10_6
    );
  result_shift0002_6_1 : LUT4
    generic map(
      INIT => X"0415"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => b_2_IBUF_248,
      I2 => result_shift0002_10_6,
      I3 => result_shift0002_10_bdd3,
      O => result_shift0002_6_Q
    );
  result_shift0003_11_41 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd12,
      O => result_shift0003_11_bdd5
    );
  result_shift0003_1_11 : LUT3
    generic map(
      INIT => X"72"
    )
    port map (
      I0 => b_2_IBUF_248,
      I1 => result_shift0003_1_bdd0,
      I2 => result_mux0002_1_bdd1,
      O => result_shift0003_1_Q
    );
  result_shift0003_7_11 : LUT4
    generic map(
      INIT => X"085D"
    )
    port map (
      I0 => b_2_IBUF_248,
      I1 => result_mux0002_11_bdd23,
      I2 => b_3_IBUF_249,
      I3 => result_shift0003_3_bdd0,
      O => result_shift0003_7_Q
    );
  result_shift0003_6_11 : LUT4
    generic map(
      INIT => X"085D"
    )
    port map (
      I0 => b_2_IBUF_248,
      I1 => result_mux0002_10_bdd61,
      I2 => b_3_IBUF_249,
      I3 => result_shift0003_2_bdd0,
      O => result_shift0003_6_Q
    );
  result_shift0003_5_11 : LUT4
    generic map(
      INIT => X"0257"
    )
    port map (
      I0 => b_2_IBUF_248,
      I1 => b_3_IBUF_249,
      I2 => result_mux0002_1_bdd10,
      I3 => result_shift0003_1_bdd0,
      O => result_shift0003_5_Q
    );
  result_shift0003_4_11 : LUT4
    generic map(
      INIT => X"0257"
    )
    port map (
      I0 => b_2_IBUF_248,
      I1 => b_3_IBUF_249,
      I2 => result_mux0002_0_bdd1,
      I3 => result_mux0002_0_bdd0,
      O => result_shift0003_4_Q
    );
  result_shift0003_3_21 : LUT4
    generic map(
      INIT => X"AF8D"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => b_1_IBUF_247,
      I2 => result_mux0002_3_bdd3,
      I3 => result_shift0003_11_bdd5,
      O => result_shift0003_3_bdd0
    );
  result_shift0003_2_21 : LUT4
    generic map(
      INIT => X"AF8D"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => b_1_IBUF_247,
      I2 => result_mux0002_2_bdd3,
      I3 => result_mux0002_0_bdd9,
      O => result_shift0003_2_bdd0
    );
  result_shift0003_1_216 : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => b_0_IBUF_240,
      I2 => result_mux0002_0_bdd47,
      I3 => result_mux0002_0_bdd63,
      O => result_shift0003_1_216_515
    );
  result_shift0003_1_240 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => result_shift0003_1_21_514,
      I2 => result_shift0003_1_216_515,
      I3 => result_shift0003_13_bdd2,
      O => result_shift0003_1_bdd0
    );
  result_shift0003_0_125 : LUT3
    generic map(
      INIT => X"72"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => result_mux0002_0_bdd1,
      I2 => result_mux0002_0_211,
      O => result_mux0002_0_225
    );
  result_shift0003_0_148 : LUT3
    generic map(
      INIT => X"72"
    )
    port map (
      I0 => b_2_IBUF_248,
      I1 => result_mux0002_0_bdd0,
      I2 => result_mux0002_0_225,
      O => result_shift0003_0_Q
    );
  result_shift0002_13_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd29,
      I2 => result_mux0002_0_bdd30,
      O => result_shift0002_13_bdd2
    );
  result_shift0002_13_41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => result_shift0002_11_bdd5,
      I2 => result_shift0002_11_bdd15,
      O => result_shift0002_13_bdd1
    );
  result_shift0002_12_41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd30,
      I2 => result_mux0002_0_bdd83,
      O => result_shift0002_12_bdd2
    );
  result_shift0002_12_31 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => result_shift0002_10_bdd5,
      I2 => result_shift0002_10_bdd14,
      O => result_shift0002_12_bdd1
    );
  result_shift0002_11_91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd117,
      I2 => result_mux0002_0_bdd118,
      O => result_shift0002_11_bdd15
    );
  result_shift0002_11_81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd134,
      I2 => result_mux0002_0_bdd135,
      O => result_shift0002_11_bdd14
    );
  result_shift0002_11_41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd63,
      I2 => result_mux0002_0_bdd64,
      O => result_shift0002_11_bdd5
    );
  result_shift0002_11_111 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd83,
      I2 => result_mux0002_0_bdd84,
      O => result_shift0002_11_bdd12
    );
  result_shift0002_11_101 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd100,
      I2 => result_mux0002_0_bdd101,
      O => result_shift0002_11_bdd11
    );
  result_shift0002_10_91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd101,
      I2 => result_mux0002_0_bdd46,
      O => result_shift0002_10_bdd11
    );
  result_shift0002_10_81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd118,
      I2 => result_mux0002_0_bdd134,
      O => result_shift0002_10_bdd14
    );
  result_shift0002_10_41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd64,
      I2 => result_mux0002_0_bdd117,
      O => result_shift0002_10_bdd5
    );
  result_shift0002_10_101 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd84,
      I2 => result_mux0002_0_bdd100,
      O => result_shift0002_10_bdd12
    );
  result_mux0002_5_21 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => result_mux0002_1_bdd10,
      I2 => result_mux0002_13_bdd1,
      O => result_mux0002_5_bdd0
    );
  result_mux0002_4_21 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => result_mux0002_0_bdd1,
      I2 => result_mux0002_12_bdd1,
      O => result_mux0002_4_bdd0
    );
  result_shift0002_10_11 : LUT4
    generic map(
      INIT => X"0257"
    )
    port map (
      I0 => b_2_IBUF_248,
      I1 => b_3_IBUF_249,
      I2 => result_shift0002_10_bdd3,
      I3 => result_shift0002_10_bdd1,
      O => result_shift0002_10_Q
    );
  result_shift0002_11_67 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => result_shift0002_11_bdd15,
      I2 => result_shift0002_11_bdd14,
      O => result_shift0002_11_67_473
    );
  result_shift0002_11_620 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => result_shift0002_11_bdd12,
      I2 => result_shift0002_11_bdd11,
      O => result_shift0002_11_620_472
    );
  result_shift0002_10_62 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => result_shift0002_10_bdd12,
      I2 => result_shift0002_10_bdd11,
      O => result_shift0002_10_61
    );
  result_shift0002_10_6_f5 : MUXF5
    port map (
      I0 => result_shift0002_10_61,
      I1 => result_shift0002_10_6,
      S => b_3_IBUF_249,
      O => result_shift0002_10_bdd1
    );
  result_mux0002_3_31 : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => result_mux0002_1_bdd13,
      I2 => result_mux0002_1_bdd5,
      O => result_mux0002_3_bdd3
    );
  result_mux0002_1_81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd100,
      I2 => result_mux0002_0_bdd84,
      O => result_mux0002_1_bdd13
    );
  result_mux0002_1_71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => result_mux0002_1_bdd13,
      I2 => result_mux0002_11_bdd31,
      O => result_mux0002_1_bdd10
    );
  result_mux0002_1_41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd46,
      I2 => result_mux0002_0_bdd101,
      O => result_mux0002_1_bdd5
    );
  result_mux0002_13_91 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => result_mux0002_11_bdd30,
      I2 => result_mux0002_11_bdd18,
      O => result_mux0002_13_bdd14
    );
  result_mux0002_11_81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_10_bdd24,
      I2 => result_mux0002_10_bdd8,
      O => result_mux0002_11_bdd4
    );
  result_mux0002_11_31 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_10_bdd7,
      I2 => result_mux0002_11_bdd7,
      O => result_mux0002_11_bdd3
    );
  result_mux0002_11_181 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd83,
      I2 => result_mux0002_0_bdd30,
      O => result_mux0002_11_bdd31
    );
  result_mux0002_11_171 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd29,
      I2 => result_mux0002_0_bdd13,
      O => result_mux0002_11_bdd30
    );
  result_mux0002_11_161 : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => result_mux0002_11_bdd30,
      I2 => result_mux0002_11_bdd31,
      O => result_mux0002_11_bdd23
    );
  result_mux0002_11_111 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd12,
      I2 => result_mux0002_10_bdd44,
      O => result_mux0002_11_bdd18
    );
  result_mux0002_11_101 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_10_bdd43,
      I2 => result_mux0002_10_bdd84,
      O => result_mux0002_11_bdd17
    );
  result_mux0002_10_511 : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => result_mux0002_0_bdd10,
      I2 => result_mux0002_0_bdd80,
      O => result_mux0002_10_bdd61
    );
  result_mux0002_10_31 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_10_bdd8,
      I2 => result_mux0002_10_bdd7,
      O => result_mux0002_10_bdd3
    );
  result_mux0002_10_221 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_10_bdd44,
      I2 => result_mux0002_10_bdd43,
      O => result_mux0002_10_bdd41
    );
  result_mux0002_0_611 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd118,
      I2 => result_mux0002_0_bdd117,
      O => result_mux0002_0_bdd2
    );
  result_mux0002_0_61 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd13,
      I2 => result_mux0002_0_bdd12,
      O => result_mux0002_0_bdd9
    );
  result_mux0002_0_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => result_mux0002_0_bdd10,
      I2 => result_mux0002_0_bdd9,
      O => result_mux0002_0_bdd5
    );
  result_mux0002_0_431 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd84,
      I2 => result_mux0002_0_bdd83,
      O => result_mux0002_0_bdd80
    );
  result_mux0002_0_331 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd64,
      I2 => result_mux0002_0_bdd63,
      O => result_mux0002_0_bdd7
    );
  result_mux0002_0_151 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd30,
      I2 => result_mux0002_0_bdd29,
      O => result_mux0002_0_bdd10
    );
  result_shift0002_9_11 : LUT4
    generic map(
      INIT => X"0257"
    )
    port map (
      I0 => b_2_IBUF_248,
      I1 => b_3_IBUF_249,
      I2 => result_shift0002_13_bdd1,
      I3 => result_shift0002_13_bdd0,
      O => result_shift0002_9_Q
    );
  result_shift0002_8_11 : LUT4
    generic map(
      INIT => X"0257"
    )
    port map (
      I0 => b_2_IBUF_248,
      I1 => b_3_IBUF_249,
      I2 => result_shift0002_12_bdd1,
      I3 => result_shift0002_12_bdd0,
      O => result_shift0002_8_Q
    );
  result_mux0002_11_2_SW0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => result_mux0002_11_bdd18,
      I2 => result_mux0002_11_bdd17,
      O => result_mux0002_3_17
    );
  result_mux0002_11_137 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_10_bdd66,
      I2 => result_mux0002_10_bdd25,
      O => result_mux0002_11_137_395
    );
  result_mux0002_11_1320 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_10_bdd83,
      I2 => result_mux0002_10_bdd67,
      O => result_mux0002_11_1320_394
    );
  result_mux0002_10_327 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_10_bdd67,
      I2 => result_mux0002_10_bdd66,
      O => result_mux0002_10_327_370
    );
  result_mux0002_10_3220 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_10_bdd84,
      I2 => result_mux0002_10_bdd83,
      O => result_mux0002_10_3220_369
    );
  result_mux0002_10_3231 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => result_mux0002_10_3220_369,
      I2 => result_mux0002_10_327_370,
      O => result_mux0002_10_bdd60
    );
  result_mux0002_10_2_SW0 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => result_mux0002_0_bdd9,
      I2 => result_mux0002_10_bdd41,
      O => result_mux0002_2_18
    );
  result_mux0002_10_2 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => result_mux0002_2_18,
      I2 => N30,
      O => result_mux0002_10_bdd0
    );
  result_shift0002_13_147 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => b_2_IBUF_248,
      I1 => result_shift0002_13_135_485,
      I2 => result_shift0002_13_bdd0,
      O => result_shift0002_13_Q
    );
  result_mux0002_7_113 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => b_1_IBUF_247,
      I2 => result_mux0002_11_bdd18,
      I3 => result_mux0002_11_bdd17,
      O => result_mux0002_7_113_457
    );
  result_mux0002_6_114 : LUT4
    generic map(
      INIT => X"8A02"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => b_1_IBUF_247,
      I2 => result_mux0002_0_bdd9,
      I3 => result_mux0002_10_bdd41,
      O => result_mux0002_6_114_456
    );
  result_mux0002_3_450 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => result_mux0002_3_426_451,
      I2 => result_mux0002_11_bdd23,
      O => result_mux0002_3_bdd1
    );
  result_mux0002_1_648 : LUT3
    generic map(
      INIT => X"72"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => result_mux0002_1_bdd10,
      I2 => result_mux0002_1_625_441,
      O => result_mux0002_1_bdd1
    );
  result_mux0002_1_222 : LUT4
    generic map(
      INIT => X"FF1B"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd63,
      I2 => result_mux0002_0_bdd47,
      I3 => b_1_IBUF_247,
      O => result_mux0002_1_222_439
    );
  result_mux0002_1_247 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => result_mux0002_13_bdd14,
      I2 => result_mux0002_1_24_440,
      I3 => result_mux0002_1_222_439,
      O => result_mux0002_1_bdd0
    );
  result_mux0002_12_815 : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => b_0_IBUF_240,
      I2 => result_mux0002_10_bdd66,
      I3 => result_mux0002_10_bdd67,
      O => result_mux0002_12_815_414
    );
  result_mux0002_0_413 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => b_0_IBUF_240,
      I2 => result_mux0002_0_bdd47,
      I3 => result_mux0002_0_bdd46,
      O => result_mux0002_0_413_323
    );
  result_mux0002_0_440 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => result_mux0002_0_413_323,
      I2 => result_mux0002_0_416_324,
      I3 => result_mux0002_0_bdd5,
      O => result_mux0002_0_bdd0
    );
  result_shift0002_13_21 : LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd47,
      I2 => result_mux0002_0_bdd46,
      I3 => b_3_IBUF_249,
      O => result_shift0002_13_2
    );
  result_shift0002_13_22 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => result_shift0002_11_bdd11,
      I2 => result_shift0002_11_bdd14,
      O => result_shift0002_13_21_487
    );
  result_shift0002_13_2_f5 : MUXF5
    port map (
      I0 => result_shift0002_13_21_487,
      I1 => result_shift0002_13_2,
      S => b_1_IBUF_247,
      O => result_shift0002_13_bdd0
    );
  result_mux0002_14_30 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => b_13_IBUF_244,
      I1 => b_14_IBUF_245,
      O => result_mux0002_10_130
    );
  result_mux0002_14_33 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => b_12_IBUF_243,
      I1 => b_8_IBUF_254,
      I2 => b_9_IBUF_255,
      O => result_mux0002_10_133
    );
  result_mux0002_14_312 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_4_IBUF_250,
      I1 => b_15_IBUF_246,
      I2 => b_5_IBUF_251,
      I3 => b_6_IBUF_252,
      O => result_mux0002_10_1312
    );
  result_mux0002_14_317 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_7_IBUF_253,
      I1 => b_10_IBUF_241,
      I2 => b_11_IBUF_242,
      I3 => a_13_IBUF_212,
      O => result_mux0002_14_317_432
    );
  result_mux0002_14_327 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => result_mux0002_10_130,
      I1 => result_mux0002_10_133,
      I2 => result_mux0002_10_1312,
      I3 => result_mux0002_14_317_432,
      O => result_mux0002_14_bdd2
    );
  result_mux0002_13_317 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_7_IBUF_253,
      I1 => b_10_IBUF_241,
      I2 => b_11_IBUF_242,
      I3 => a_12_IBUF_211,
      O => result_mux0002_13_317_423
    );
  result_mux0002_13_327 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => result_mux0002_10_130,
      I1 => result_mux0002_10_133,
      I2 => result_mux0002_10_1312,
      I3 => result_mux0002_13_317_423,
      O => result_mux0002_13_bdd4
    );
  result_mux0002_12_317 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_7_IBUF_253,
      I1 => b_10_IBUF_241,
      I2 => b_11_IBUF_242,
      I3 => a_11_IBUF_210,
      O => result_mux0002_12_317_412
    );
  result_mux0002_12_327 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => result_mux0002_10_130,
      I1 => result_mux0002_10_133,
      I2 => result_mux0002_10_1312,
      I3 => result_mux0002_12_317_412,
      O => result_mux0002_12_bdd4
    );
  result_mux0002_11_417 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_7_IBUF_253,
      I1 => b_10_IBUF_241,
      I2 => b_11_IBUF_242,
      I3 => a_10_IBUF_209,
      O => result_mux0002_11_417_398
    );
  result_mux0002_11_427 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => result_mux0002_10_130,
      I1 => result_mux0002_10_133,
      I2 => result_mux0002_10_1312,
      I3 => result_mux0002_11_417_398,
      O => result_mux0002_11_bdd7
    );
  result_mux0002_10_817 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_7_IBUF_253,
      I1 => b_10_IBUF_241,
      I2 => b_11_IBUF_242,
      I3 => a_8_IBUF_222,
      O => result_mux0002_10_817_376
    );
  result_mux0002_10_827 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => result_mux0002_10_130,
      I1 => result_mux0002_10_133,
      I2 => result_mux0002_10_1312,
      I3 => result_mux0002_10_817_376,
      O => result_mux0002_10_bdd8
    );
  result_mux0002_10_4717 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_7_IBUF_253,
      I1 => b_10_IBUF_241,
      I2 => b_11_IBUF_242,
      I3 => a_2_IBUF_216,
      O => result_mux0002_10_4717_375
    );
  result_mux0002_10_4727 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => result_mux0002_10_130,
      I1 => result_mux0002_10_133,
      I2 => result_mux0002_10_1312,
      I3 => result_mux0002_10_4717_375,
      O => result_mux0002_10_bdd84
    );
  result_mux0002_10_4317 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_7_IBUF_253,
      I1 => b_10_IBUF_241,
      I2 => b_11_IBUF_242,
      I3 => a_3_IBUF_217,
      O => result_mux0002_10_4317_374
    );
  result_mux0002_10_4327 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => result_mux0002_10_130,
      I1 => result_mux0002_10_133,
      I2 => result_mux0002_10_1312,
      I3 => result_mux0002_10_4317_374,
      O => result_mux0002_10_bdd83
    );
  result_mux0002_10_417 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_7_IBUF_253,
      I1 => b_10_IBUF_241,
      I2 => b_11_IBUF_242,
      I3 => a_9_IBUF_223,
      O => result_mux0002_10_417_373
    );
  result_mux0002_10_427 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => result_mux0002_10_130,
      I1 => result_mux0002_10_133,
      I2 => result_mux0002_10_1312,
      I3 => result_mux0002_10_417_373,
      O => result_mux0002_10_bdd7
    );
  result_mux0002_10_3817 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_7_IBUF_253,
      I1 => b_10_IBUF_241,
      I2 => b_11_IBUF_242,
      I3 => a_4_IBUF_218,
      O => result_mux0002_10_3817_372
    );
  result_mux0002_10_3827 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => result_mux0002_10_130,
      I1 => result_mux0002_10_133,
      I2 => result_mux0002_10_1312,
      I3 => result_mux0002_10_3817_372,
      O => result_mux0002_10_bdd67
    );
  result_mux0002_10_3417 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_7_IBUF_253,
      I1 => b_10_IBUF_241,
      I2 => b_11_IBUF_242,
      I3 => a_5_IBUF_219,
      O => result_mux0002_10_3417_371
    );
  result_mux0002_10_3427 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => result_mux0002_10_130,
      I1 => result_mux0002_10_133,
      I2 => result_mux0002_10_1312,
      I3 => result_mux0002_10_3417_371,
      O => result_mux0002_10_bdd66
    );
  result_mux0002_10_2717 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_7_IBUF_253,
      I1 => b_10_IBUF_241,
      I2 => b_11_IBUF_242,
      I3 => a_0_IBUF_208,
      O => result_mux0002_10_2717_366
    );
  result_mux0002_10_2727 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => result_mux0002_10_130,
      I1 => result_mux0002_10_133,
      I2 => result_mux0002_10_1312,
      I3 => result_mux0002_10_2717_366,
      O => result_mux0002_10_bdd44
    );
  result_mux0002_10_2317 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_7_IBUF_253,
      I1 => b_10_IBUF_241,
      I2 => b_11_IBUF_242,
      I3 => a_1_IBUF_215,
      O => result_mux0002_10_2317_365
    );
  result_mux0002_10_2327 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => result_mux0002_10_130,
      I1 => result_mux0002_10_133,
      I2 => result_mux0002_10_1312,
      I3 => result_mux0002_10_2317_365,
      O => result_mux0002_10_bdd43
    );
  result_mux0002_10_1717 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_7_IBUF_253,
      I1 => b_10_IBUF_241,
      I2 => b_11_IBUF_242,
      I3 => a_6_IBUF_220,
      O => result_mux0002_10_1717_364
    );
  result_mux0002_10_1727 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => result_mux0002_10_130,
      I1 => result_mux0002_10_133,
      I2 => result_mux0002_10_1312,
      I3 => result_mux0002_10_1717_364,
      O => result_mux0002_10_bdd25
    );
  result_mux0002_10_1317 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_7_IBUF_253,
      I1 => b_10_IBUF_241,
      I2 => b_11_IBUF_242,
      I3 => a_7_IBUF_221,
      O => result_mux0002_10_1317_362
    );
  result_mux0002_10_1327 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => result_mux0002_10_130,
      I1 => result_mux0002_10_133,
      I2 => result_mux0002_10_1312,
      I3 => result_mux0002_10_1317_362,
      O => result_mux0002_10_bdd24
    );
  result_mux0002_0_750 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => b_13_IBUF_244,
      I1 => b_14_IBUF_245,
      O => result_mux0002_0_110
    );
  result_mux0002_0_753 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => b_12_IBUF_243,
      I1 => b_8_IBUF_254,
      I2 => b_9_IBUF_255,
      O => result_mux0002_0_113
    );
  result_mux0002_0_7512 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => b_4_IBUF_250,
      I1 => b_15_IBUF_246,
      I2 => b_5_IBUF_251,
      I3 => b_6_IBUF_252,
      O => result_mux0002_0_1112
    );
  result_mux0002_0_7520 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => a_0_IBUF_208,
      I1 => b_10_IBUF_241,
      I2 => b_11_IBUF_242,
      I3 => b_7_IBUF_253,
      O => result_mux0002_0_7520_335
    );
  result_mux0002_0_7531 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => result_mux0002_0_110,
      I1 => result_mux0002_0_113,
      I2 => result_mux0002_0_1112,
      I3 => result_mux0002_0_7520_335,
      O => result_mux0002_0_bdd135
    );
  result_mux0002_0_7120 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => a_1_IBUF_215,
      I1 => b_10_IBUF_241,
      I2 => b_11_IBUF_242,
      I3 => b_7_IBUF_253,
      O => result_mux0002_0_7120_333
    );
  result_mux0002_0_7131 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => result_mux0002_0_110,
      I1 => result_mux0002_0_113,
      I2 => result_mux0002_0_1112,
      I3 => result_mux0002_0_7120_333,
      O => result_mux0002_0_bdd134
    );
  result_mux0002_0_720 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => a_15_IBUF_214,
      I1 => b_10_IBUF_241,
      I2 => b_11_IBUF_242,
      I3 => b_7_IBUF_253,
      O => result_mux0002_0_720_334
    );
  result_mux0002_0_731 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => result_mux0002_0_110,
      I1 => result_mux0002_0_113,
      I2 => result_mux0002_0_1112,
      I3 => result_mux0002_0_720_334,
      O => result_mux0002_0_bdd12
    );
  result_mux0002_0_6620 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => a_2_IBUF_216,
      I1 => b_10_IBUF_241,
      I2 => b_11_IBUF_242,
      I3 => b_7_IBUF_253,
      O => result_mux0002_0_6620_332
    );
  result_mux0002_0_6631 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => result_mux0002_0_110,
      I1 => result_mux0002_0_113,
      I2 => result_mux0002_0_1112,
      I3 => result_mux0002_0_6620_332,
      O => result_mux0002_0_bdd118
    );
  result_mux0002_0_6220 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => a_3_IBUF_217,
      I1 => b_10_IBUF_241,
      I2 => b_11_IBUF_242,
      I3 => b_7_IBUF_253,
      O => result_mux0002_0_6220_331
    );
  result_mux0002_0_6231 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => result_mux0002_0_110,
      I1 => result_mux0002_0_113,
      I2 => result_mux0002_0_1112,
      I3 => result_mux0002_0_6220_331,
      O => result_mux0002_0_bdd117
    );
  result_mux0002_0_5720 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => a_8_IBUF_222,
      I1 => b_10_IBUF_241,
      I2 => b_11_IBUF_242,
      I3 => b_7_IBUF_253,
      O => result_mux0002_0_5720_330
    );
  result_mux0002_0_5731 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => result_mux0002_0_110,
      I1 => result_mux0002_0_113,
      I2 => result_mux0002_0_1112,
      I3 => result_mux0002_0_5720_330,
      O => result_mux0002_0_bdd101
    );
  result_mux0002_0_5320 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => a_9_IBUF_223,
      I1 => b_10_IBUF_241,
      I2 => b_11_IBUF_242,
      I3 => b_7_IBUF_253,
      O => result_mux0002_0_5320_329
    );
  result_mux0002_0_5331 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => result_mux0002_0_110,
      I1 => result_mux0002_0_113,
      I2 => result_mux0002_0_1112,
      I3 => result_mux0002_0_5320_329,
      O => result_mux0002_0_bdd100
    );
  result_mux0002_0_4820 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => a_10_IBUF_209,
      I1 => b_10_IBUF_241,
      I2 => b_11_IBUF_242,
      I3 => b_7_IBUF_253,
      O => result_mux0002_0_4820_328
    );
  result_mux0002_0_4831 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => result_mux0002_0_110,
      I1 => result_mux0002_0_113,
      I2 => result_mux0002_0_1112,
      I3 => result_mux0002_0_4820_328,
      O => result_mux0002_0_bdd84
    );
  result_mux0002_0_4420 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => a_11_IBUF_210,
      I1 => b_10_IBUF_241,
      I2 => b_11_IBUF_242,
      I3 => b_7_IBUF_253,
      O => result_mux0002_0_4420_327
    );
  result_mux0002_0_4431 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => result_mux0002_0_110,
      I1 => result_mux0002_0_113,
      I2 => result_mux0002_0_1112,
      I3 => result_mux0002_0_4420_327,
      O => result_mux0002_0_bdd83
    );
  result_mux0002_0_3820 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => a_4_IBUF_218,
      I1 => b_10_IBUF_241,
      I2 => b_11_IBUF_242,
      I3 => b_7_IBUF_253,
      O => result_mux0002_0_3820_322
    );
  result_mux0002_0_3831 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => result_mux0002_0_110,
      I1 => result_mux0002_0_113,
      I2 => result_mux0002_0_1112,
      I3 => result_mux0002_0_3820_322,
      O => result_mux0002_0_bdd64
    );
  result_mux0002_0_3420 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => a_5_IBUF_219,
      I1 => b_10_IBUF_241,
      I2 => b_11_IBUF_242,
      I3 => b_7_IBUF_253,
      O => result_mux0002_0_3420_321
    );
  result_mux0002_0_3431 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => result_mux0002_0_110,
      I1 => result_mux0002_0_113,
      I2 => result_mux0002_0_1112,
      I3 => result_mux0002_0_3420_321,
      O => result_mux0002_0_bdd63
    );
  result_mux0002_0_2920 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => a_6_IBUF_220,
      I1 => b_10_IBUF_241,
      I2 => b_11_IBUF_242,
      I3 => b_7_IBUF_253,
      O => result_mux0002_0_2920_320
    );
  result_mux0002_0_2931 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => result_mux0002_0_110,
      I1 => result_mux0002_0_113,
      I2 => result_mux0002_0_1112,
      I3 => result_mux0002_0_2920_320,
      O => result_mux0002_0_bdd47
    );
  result_mux0002_0_2520 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => a_7_IBUF_221,
      I1 => b_10_IBUF_241,
      I2 => b_11_IBUF_242,
      I3 => b_7_IBUF_253,
      O => result_mux0002_0_2520_319
    );
  result_mux0002_0_2531 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => result_mux0002_0_110,
      I1 => result_mux0002_0_113,
      I2 => result_mux0002_0_1112,
      I3 => result_mux0002_0_2520_319,
      O => result_mux0002_0_bdd46
    );
  result_mux0002_0_2020 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => a_12_IBUF_211,
      I1 => b_10_IBUF_241,
      I2 => b_11_IBUF_242,
      I3 => b_7_IBUF_253,
      O => result_mux0002_0_2020_316
    );
  result_mux0002_0_2031 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => result_mux0002_0_110,
      I1 => result_mux0002_0_113,
      I2 => result_mux0002_0_1112,
      I3 => result_mux0002_0_2020_316,
      O => result_mux0002_0_bdd30
    );
  result_mux0002_0_1620 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => a_13_IBUF_212,
      I1 => b_10_IBUF_241,
      I2 => b_11_IBUF_242,
      I3 => b_7_IBUF_253,
      O => result_mux0002_0_1620_315
    );
  result_mux0002_0_1631 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => result_mux0002_0_110,
      I1 => result_mux0002_0_113,
      I2 => result_mux0002_0_1112,
      I3 => result_mux0002_0_1620_315,
      O => result_mux0002_0_bdd29
    );
  result_mux0002_0_1120 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => a_14_IBUF_213,
      I1 => b_10_IBUF_241,
      I2 => b_11_IBUF_242,
      I3 => b_7_IBUF_253,
      O => result_mux0002_0_1120_313
    );
  result_mux0002_0_1131 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => result_mux0002_0_110,
      I1 => result_mux0002_0_113,
      I2 => result_mux0002_0_1112,
      I3 => result_mux0002_0_1120_313,
      O => result_mux0002_0_bdd13
    );
  result_mux0002_15_38 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_11_IBUF_242,
      I1 => b_12_IBUF_243,
      I2 => b_9_IBUF_255,
      I3 => a_14_IBUF_213,
      O => result_mux0002_15_38_436
    );
  result_mux0002_15_323 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => b_7_IBUF_253,
      I1 => b_8_IBUF_254,
      I2 => b_0_IBUF_240,
      I3 => b_10_IBUF_241,
      O => result_mux0002_15_323_434
    );
  result_mux0002_15_333 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => result_mux0002_10_130,
      I1 => result_mux0002_15_38_436,
      I2 => result_mux0002_10_1312,
      I3 => result_mux0002_15_323_434,
      O => result_mux0002_15_333_435
    );
  a_15_IBUF : IBUF
    port map (
      I => a(15),
      O => a_15_IBUF_214
    );
  a_14_IBUF : IBUF
    port map (
      I => a(14),
      O => a_14_IBUF_213
    );
  a_13_IBUF : IBUF
    port map (
      I => a(13),
      O => a_13_IBUF_212
    );
  a_12_IBUF : IBUF
    port map (
      I => a(12),
      O => a_12_IBUF_211
    );
  a_11_IBUF : IBUF
    port map (
      I => a(11),
      O => a_11_IBUF_210
    );
  a_10_IBUF : IBUF
    port map (
      I => a(10),
      O => a_10_IBUF_209
    );
  a_9_IBUF : IBUF
    port map (
      I => a(9),
      O => a_9_IBUF_223
    );
  a_8_IBUF : IBUF
    port map (
      I => a(8),
      O => a_8_IBUF_222
    );
  a_7_IBUF : IBUF
    port map (
      I => a(7),
      O => a_7_IBUF_221
    );
  a_6_IBUF : IBUF
    port map (
      I => a(6),
      O => a_6_IBUF_220
    );
  a_5_IBUF : IBUF
    port map (
      I => a(5),
      O => a_5_IBUF_219
    );
  a_4_IBUF : IBUF
    port map (
      I => a(4),
      O => a_4_IBUF_218
    );
  a_3_IBUF : IBUF
    port map (
      I => a(3),
      O => a_3_IBUF_217
    );
  a_2_IBUF : IBUF
    port map (
      I => a(2),
      O => a_2_IBUF_216
    );
  a_1_IBUF : IBUF
    port map (
      I => a(1),
      O => a_1_IBUF_215
    );
  a_0_IBUF : IBUF
    port map (
      I => a(0),
      O => a_0_IBUF_208
    );
  b_15_IBUF : IBUF
    port map (
      I => b(15),
      O => b_15_IBUF_246
    );
  b_14_IBUF : IBUF
    port map (
      I => b(14),
      O => b_14_IBUF_245
    );
  b_13_IBUF : IBUF
    port map (
      I => b(13),
      O => b_13_IBUF_244
    );
  b_12_IBUF : IBUF
    port map (
      I => b(12),
      O => b_12_IBUF_243
    );
  b_11_IBUF : IBUF
    port map (
      I => b(11),
      O => b_11_IBUF_242
    );
  b_10_IBUF : IBUF
    port map (
      I => b(10),
      O => b_10_IBUF_241
    );
  b_9_IBUF : IBUF
    port map (
      I => b(9),
      O => b_9_IBUF_255
    );
  b_8_IBUF : IBUF
    port map (
      I => b(8),
      O => b_8_IBUF_254
    );
  b_7_IBUF : IBUF
    port map (
      I => b(7),
      O => b_7_IBUF_253
    );
  b_6_IBUF : IBUF
    port map (
      I => b(6),
      O => b_6_IBUF_252
    );
  b_5_IBUF : IBUF
    port map (
      I => b(5),
      O => b_5_IBUF_251
    );
  b_4_IBUF : IBUF
    port map (
      I => b(4),
      O => b_4_IBUF_250
    );
  b_3_IBUF : IBUF
    port map (
      I => b(3),
      O => b_3_IBUF_249
    );
  b_2_IBUF : IBUF
    port map (
      I => b(2),
      O => b_2_IBUF_248
    );
  b_1_IBUF : IBUF
    port map (
      I => b(1),
      O => b_1_IBUF_247
    );
  b_0_IBUF : IBUF
    port map (
      I => b(0),
      O => b_0_IBUF_240
    );
  operation_Code_2_IBUF : IBUF
    port map (
      I => operation_Code(2),
      O => operation_Code_2_IBUF_261
    );
  operation_Code_1_IBUF : IBUF
    port map (
      I => operation_Code(1),
      O => operation_Code_1_IBUF_260
    );
  operation_Code_0_IBUF : IBUF
    port map (
      I => operation_Code(0),
      O => operation_Code_0_IBUF_259
    );
  result_15_OBUF : OBUF
    port map (
      I => result_15_OBUF_284,
      O => result(15)
    );
  result_14_OBUF : OBUF
    port map (
      I => result_14_OBUF_283,
      O => result(14)
    );
  result_13_OBUF : OBUF
    port map (
      I => result_13_OBUF_282,
      O => result(13)
    );
  result_12_OBUF : OBUF
    port map (
      I => result_12_OBUF_281,
      O => result(12)
    );
  result_11_OBUF : OBUF
    port map (
      I => result_11_OBUF_280,
      O => result(11)
    );
  result_10_OBUF : OBUF
    port map (
      I => result_10_OBUF_279,
      O => result(10)
    );
  result_9_OBUF : OBUF
    port map (
      I => result_9_OBUF_293,
      O => result(9)
    );
  result_8_OBUF : OBUF
    port map (
      I => result_8_OBUF_292,
      O => result(8)
    );
  result_7_OBUF : OBUF
    port map (
      I => result_7_OBUF_291,
      O => result(7)
    );
  result_6_OBUF : OBUF
    port map (
      I => result_6_OBUF_290,
      O => result(6)
    );
  result_5_OBUF : OBUF
    port map (
      I => result_5_OBUF_289,
      O => result(5)
    );
  result_4_OBUF : OBUF
    port map (
      I => result_4_OBUF_288,
      O => result(4)
    );
  result_3_OBUF : OBUF
    port map (
      I => result_3_OBUF_287,
      O => result(3)
    );
  result_2_OBUF : OBUF
    port map (
      I => result_2_OBUF_286,
      O => result(2)
    );
  result_1_OBUF : OBUF
    port map (
      I => result_1_OBUF_285,
      O => result(1)
    );
  result_0_OBUF : OBUF
    port map (
      I => result_0_OBUF_278,
      O => result(0)
    );
  Mmux_result_4_f5_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => result_addsub0000(9),
      O => Mmux_result_4_f5_14_rt_84
    );
  Mmux_result_4_f5_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => result_addsub0000(8),
      O => Mmux_result_4_f5_13_rt_83
    );
  Mmux_result_4_f5_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => result_addsub0000(7),
      O => Mmux_result_4_f5_12_rt_82
    );
  Mmux_result_4_f5_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => result_addsub0000(6),
      O => Mmux_result_4_f5_11_rt_81
    );
  Mmux_result_4_f5_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => result_addsub0000(5),
      O => Mmux_result_4_f5_10_rt_80
    );
  Mmux_result_4_f5_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => result_addsub0000(4),
      O => Mmux_result_4_f5_9_rt_93
    );
  Mmux_result_4_f5_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => result_addsub0000(3),
      O => Mmux_result_4_f5_8_rt_92
    );
  Mmux_result_4_f5_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => result_addsub0000(2),
      O => Mmux_result_4_f5_7_rt_91
    );
  Mmux_result_4_f5_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => result_addsub0000(1),
      O => Mmux_result_4_f5_6_rt_90
    );
  Mmux_result_4_f5_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => result_addsub0000(15),
      O => Mmux_result_4_f5_5_rt_89
    );
  Mmux_result_4_f5_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => result_addsub0000(14),
      O => Mmux_result_4_f5_4_rt_88
    );
  Mmux_result_4_f5_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => result_addsub0000(13),
      O => Mmux_result_4_f5_3_rt_87
    );
  Mmux_result_4_f5_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => result_addsub0000(12),
      O => Mmux_result_4_f5_2_rt_86
    );
  Mmux_result_4_f5_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => result_addsub0000(11),
      O => Mmux_result_4_f5_1_rt_85
    );
  Mmux_result_4_f5_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => result_addsub0000(10),
      O => Mmux_result_4_f5_0_rt_79
    );
  Mmux_result_4_f5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => result_addsub0000(0),
      O => Mmux_result_4_f5_rt_94
    );
  Mmux_result_430 : LUT3
    generic map(
      INIT => X"6E"
    )
    port map (
      I0 => a_9_IBUF_223,
      I1 => b_9_IBUF_255,
      I2 => operation_Code_0_IBUF_259,
      O => Mmux_result_415
    );
  Mmux_result_428 : LUT3
    generic map(
      INIT => X"6E"
    )
    port map (
      I0 => a_8_IBUF_222,
      I1 => b_8_IBUF_254,
      I2 => operation_Code_0_IBUF_259,
      O => Mmux_result_414_53
    );
  Mmux_result_426 : LUT3
    generic map(
      INIT => X"6E"
    )
    port map (
      I0 => a_7_IBUF_221,
      I1 => b_7_IBUF_253,
      I2 => operation_Code_0_IBUF_259,
      O => Mmux_result_413
    );
  Mmux_result_424 : LUT3
    generic map(
      INIT => X"6E"
    )
    port map (
      I0 => a_6_IBUF_220,
      I1 => b_6_IBUF_252,
      I2 => operation_Code_0_IBUF_259,
      O => Mmux_result_412_51
    );
  Mmux_result_422 : LUT3
    generic map(
      INIT => X"6E"
    )
    port map (
      I0 => a_5_IBUF_219,
      I1 => b_5_IBUF_251,
      I2 => operation_Code_0_IBUF_259,
      O => Mmux_result_411
    );
  Mmux_result_420 : LUT3
    generic map(
      INIT => X"6E"
    )
    port map (
      I0 => a_4_IBUF_218,
      I1 => b_4_IBUF_250,
      I2 => operation_Code_0_IBUF_259,
      O => Mmux_result_410_49
    );
  Mmux_result_418 : LUT3
    generic map(
      INIT => X"6E"
    )
    port map (
      I0 => a_3_IBUF_217,
      I1 => b_3_IBUF_249,
      I2 => operation_Code_0_IBUF_259,
      O => Mmux_result_49
    );
  Mmux_result_416 : LUT3
    generic map(
      INIT => X"6E"
    )
    port map (
      I0 => a_2_IBUF_216,
      I1 => b_2_IBUF_248,
      I2 => operation_Code_0_IBUF_259,
      O => Mmux_result_48_61
    );
  Mmux_result_414 : LUT3
    generic map(
      INIT => X"6E"
    )
    port map (
      I0 => a_1_IBUF_215,
      I1 => b_1_IBUF_247,
      I2 => operation_Code_0_IBUF_259,
      O => Mmux_result_47
    );
  Mmux_result_412 : LUT3
    generic map(
      INIT => X"6E"
    )
    port map (
      I0 => a_15_IBUF_214,
      I1 => b_15_IBUF_246,
      I2 => operation_Code_0_IBUF_259,
      O => Mmux_result_46_59
    );
  Mmux_result_410 : LUT3
    generic map(
      INIT => X"6E"
    )
    port map (
      I0 => a_14_IBUF_213,
      I1 => b_14_IBUF_245,
      I2 => operation_Code_0_IBUF_259,
      O => Mmux_result_45
    );
  Mmux_result_48 : LUT3
    generic map(
      INIT => X"6E"
    )
    port map (
      I0 => a_13_IBUF_212,
      I1 => b_13_IBUF_244,
      I2 => operation_Code_0_IBUF_259,
      O => Mmux_result_44_57
    );
  Mmux_result_46 : LUT3
    generic map(
      INIT => X"6E"
    )
    port map (
      I0 => a_12_IBUF_211,
      I1 => b_12_IBUF_243,
      I2 => operation_Code_0_IBUF_259,
      O => Mmux_result_43
    );
  Mmux_result_44 : LUT3
    generic map(
      INIT => X"6E"
    )
    port map (
      I0 => a_11_IBUF_210,
      I1 => b_11_IBUF_242,
      I2 => operation_Code_0_IBUF_259,
      O => Mmux_result_42_55
    );
  Mmux_result_42 : LUT3
    generic map(
      INIT => X"6E"
    )
    port map (
      I0 => a_10_IBUF_209,
      I1 => b_10_IBUF_241,
      I2 => operation_Code_0_IBUF_259,
      O => Mmux_result_41
    );
  Mmux_result_4 : LUT3
    generic map(
      INIT => X"6E"
    )
    port map (
      I0 => a_0_IBUF_208,
      I1 => b_0_IBUF_240,
      I2 => operation_Code_0_IBUF_259,
      O => Mmux_result_4_47
    );
  result_mux0002_13_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => result_mux0002_11_bdd17,
      I2 => result_mux0002_11_1320_394,
      O => result_mux0002_13_bdd1
    );
  result_mux0002_12_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => result_mux0002_10_bdd41,
      I2 => result_mux0002_10_3220_369,
      O => result_mux0002_12_bdd1
    );
  Mmux_result_530_SW0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_2_IBUF_248,
      I1 => result_mux0002_5_bdd0,
      I2 => result_mux0002_13_bdd2,
      O => N42
    );
  Mmux_result_530 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => operation_Code_0_IBUF_259,
      I1 => N42,
      I2 => a_9_IBUF_223,
      I3 => b_9_IBUF_255,
      O => Mmux_result_530_127
    );
  Mmux_result_528 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => operation_Code_0_IBUF_259,
      I1 => N44,
      I2 => a_8_IBUF_222,
      I3 => b_8_IBUF_254,
      O => Mmux_result_528_120
    );
  Mmux_result_526_SW0 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => b_2_IBUF_248,
      I1 => result_mux0002_7_113_457,
      I2 => result_mux0002_7_116_458,
      I3 => result_mux0002_11_bdd1,
      O => N46
    );
  Mmux_result_526 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => operation_Code_0_IBUF_259,
      I1 => N46,
      I2 => a_7_IBUF_221,
      I3 => b_7_IBUF_253,
      O => Mmux_result_526_118
    );
  Mmux_result_524 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => operation_Code_0_IBUF_259,
      I1 => N48,
      I2 => a_6_IBUF_220,
      I3 => b_6_IBUF_252,
      O => Mmux_result_524_116
    );
  Mmux_result_522_SW0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_2_IBUF_248,
      I1 => result_mux0002_1_bdd0,
      I2 => result_mux0002_5_bdd0,
      O => N50
    );
  Mmux_result_522 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => operation_Code_0_IBUF_259,
      I1 => N50,
      I2 => a_5_IBUF_219,
      I3 => b_5_IBUF_251,
      O => Mmux_result_522_114
    );
  Mmux_result_520_SW0 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => b_2_IBUF_248,
      I1 => result_mux0002_0_bdd0,
      I2 => result_mux0002_4_bdd0,
      O => N52
    );
  Mmux_result_520 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => operation_Code_0_IBUF_259,
      I1 => N52,
      I2 => a_4_IBUF_218,
      I3 => b_4_IBUF_250,
      O => Mmux_result_520_112
    );
  Mmux_result_519_SW0 : LUT3
    generic map(
      INIT => X"72"
    )
    port map (
      I0 => operation_Code_0_IBUF_259,
      I1 => result_mux0002_3_bdd1,
      I2 => result_shift0002_3_bdd0,
      O => N54
    );
  Mmux_result_519 : LUT4
    generic map(
      INIT => X"085D"
    )
    port map (
      I0 => b_2_IBUF_248,
      I1 => operation_Code_0_IBUF_259,
      I2 => result_shift0003_3_bdd0,
      I3 => N54,
      O => Mmux_result_519_110
    );
  Mmux_result_518 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => operation_Code_0_IBUF_259,
      I1 => N56,
      I2 => a_3_IBUF_217,
      I3 => b_3_IBUF_249,
      O => Mmux_result_518_107
    );
  Mmux_result_516 : LUT4
    generic map(
      INIT => X"AE04"
    )
    port map (
      I0 => b_2_IBUF_248,
      I1 => result_mux0002_2_bdd1,
      I2 => operation_Code_0_IBUF_259,
      I3 => N58,
      O => Mmux_result_516_103
    );
  Mmux_result_514_SW0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_2_IBUF_248,
      I1 => result_mux0002_1_bdd1,
      I2 => result_mux0002_1_bdd0,
      O => N60
    );
  Mmux_result_514 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => operation_Code_0_IBUF_259,
      I1 => N60,
      I2 => a_1_IBUF_215,
      I3 => b_1_IBUF_247,
      O => Mmux_result_514_101
    );
  Mmux_result_512_SW0 : LUT4
    generic map(
      INIT => X"EEE2"
    )
    port map (
      I0 => result_mux0002_11_bdd0,
      I1 => b_2_IBUF_248,
      I2 => result_mux0002_15_386_437,
      I3 => result_mux0002_15_397_438,
      O => N62
    );
  Mmux_result_512 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => operation_Code_0_IBUF_259,
      I1 => N62,
      I2 => a_15_IBUF_214,
      I3 => b_15_IBUF_246,
      O => Mmux_result_512_99
    );
  Mmux_result_510_SW0 : LUT4
    generic map(
      INIT => X"EEE2"
    )
    port map (
      I0 => result_mux0002_10_bdd0,
      I1 => b_2_IBUF_248,
      I2 => result_mux0002_14_127_430,
      I3 => result_mux0002_14_135_431,
      O => N64
    );
  Mmux_result_510 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => operation_Code_0_IBUF_259,
      I1 => N64,
      I2 => a_14_IBUF_213,
      I3 => b_14_IBUF_245,
      O => Mmux_result_510_97
    );
  Mmux_result_58 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => operation_Code_0_IBUF_259,
      I1 => result_mux0002(13),
      I2 => a_13_IBUF_212,
      I3 => b_13_IBUF_244,
      O => Mmux_result_58_133
    );
  Mmux_result_57_SW0 : LUT4
    generic map(
      INIT => X"AF8D"
    )
    port map (
      I0 => operation_Code_0_IBUF_259,
      I1 => b_3_IBUF_249,
      I2 => result_shift0002_12_125_480,
      I3 => result_mux0002_0_bdd5,
      O => N66
    );
  Mmux_result_57 : LUT4
    generic map(
      INIT => X"0257"
    )
    port map (
      I0 => b_2_IBUF_248,
      I1 => result_shift0002_12_bdd0,
      I2 => operation_Code_0_IBUF_259,
      I3 => N66,
      O => Mmux_result_57_132
    );
  Mmux_result_56 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => operation_Code_0_IBUF_259,
      I1 => N68,
      I2 => a_12_IBUF_211,
      I3 => b_12_IBUF_243,
      O => Mmux_result_56_131
    );
  Mmux_result_54_SW0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_2_IBUF_248,
      I1 => result_mux0002_11_bdd1,
      I2 => result_mux0002_11_bdd0,
      O => N70
    );
  Mmux_result_54 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => operation_Code_0_IBUF_259,
      I1 => N70,
      I2 => a_11_IBUF_210,
      I3 => b_11_IBUF_242,
      O => Mmux_result_54_129
    );
  Mmux_result_52 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => operation_Code_0_IBUF_259,
      I1 => N72,
      I2 => a_10_IBUF_209,
      I3 => b_10_IBUF_241,
      O => Mmux_result_52_111
    );
  Mmux_result_5 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => operation_Code_0_IBUF_259,
      I1 => result_shift0003_0_Q,
      I2 => a_0_IBUF_208,
      I3 => b_0_IBUF_240,
      O => Mmux_result_5_95
    );
  Mmux_result_51_SW0 : LUT4
    generic map(
      INIT => X"5F4E"
    )
    port map (
      I0 => operation_Code_0_IBUF_259,
      I1 => b_3_IBUF_249,
      I2 => result_mux0002_0_225,
      I3 => result_shift0002_0_bdd2,
      O => N74
    );
  Mmux_result_51 : LUT4
    generic map(
      INIT => X"085D"
    )
    port map (
      I0 => b_2_IBUF_248,
      I1 => operation_Code_0_IBUF_259,
      I2 => result_mux0002_0_bdd0,
      I3 => N74,
      O => Mmux_result_51_96
    );
  result_shift0003_10_1_SW0 : LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd12,
      I2 => result_mux0002_0_bdd13,
      I3 => b_1_IBUF_247,
      O => N5
    );
  result_shift0002_5_1_SW0 : LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd135,
      I2 => result_mux0002_0_bdd134,
      I3 => b_1_IBUF_247,
      O => N7
    );
  result_shift0003_13_31 : LUT4
    generic map(
      INIT => X"EEE2"
    )
    port map (
      I0 => result_mux0002_11_bdd30,
      I1 => b_1_IBUF_247,
      I2 => b_0_IBUF_240,
      I3 => result_mux0002_0_bdd12,
      O => result_shift0003_13_bdd2
    );
  result_shift0003_1_21 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => b_0_IBUF_240,
      I2 => result_mux0002_0_bdd46,
      I3 => result_mux0002_0_bdd101,
      O => result_shift0003_1_21_514
    );
  result_mux0002_7_116 : LUT4
    generic map(
      INIT => X"0415"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => b_1_IBUF_247,
      I2 => result_mux0002_1_bdd13,
      I3 => result_mux0002_1_bdd5,
      O => result_mux0002_7_116_458
    );
  result_mux0002_1_24 : LUT4
    generic map(
      INIT => X"1BFF"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd46,
      I2 => result_mux0002_0_bdd101,
      I3 => b_1_IBUF_247,
      O => result_mux0002_1_24_440
    );
  result_mux0002_12_80 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => b_0_IBUF_240,
      I2 => result_mux0002_10_bdd25,
      I3 => result_mux0002_10_bdd24,
      O => result_mux0002_12_80_413
    );
  result_mux0002_0_416 : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => b_0_IBUF_240,
      I2 => result_mux0002_0_bdd63,
      I3 => result_mux0002_0_bdd64,
      O => result_mux0002_0_416_324
    );
  result_mux0002_14_135 : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => b_1_IBUF_247,
      I2 => result_mux0002_10_327_370,
      I3 => result_mux0002_10_3220_369,
      O => result_mux0002_14_135_431
    );
  result_mux0002_15_397 : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => b_1_IBUF_247,
      I2 => result_mux0002_11_137_395,
      I3 => result_mux0002_11_1320_394,
      O => result_mux0002_15_397_438
    );
  Mmux_result_517_SW0 : LUT4
    generic map(
      INIT => X"5F4E"
    )
    port map (
      I0 => operation_Code_0_IBUF_259,
      I1 => result_shift0002_10_6,
      I2 => result_mux0002_2_bdd1,
      I3 => b_3_IBUF_249,
      O => N76
    );
  Mmux_result_517 : LUT4
    generic map(
      INIT => X"085D"
    )
    port map (
      I0 => b_2_IBUF_248,
      I1 => operation_Code_0_IBUF_259,
      I2 => result_shift0003_2_bdd0,
      I3 => N76,
      O => Mmux_result_517_106
    );
  result_shift0002_12_240 : MUXF5
    port map (
      I0 => N78,
      I1 => N79,
      S => b_1_IBUF_247,
      O => result_shift0002_12_bdd0
    );
  result_shift0002_12_240_F : LUT4
    generic map(
      INIT => X"EEE2"
    )
    port map (
      I0 => result_shift0002_10_bdd11,
      I1 => b_3_IBUF_249,
      I2 => result_mux0002_0_bdd135,
      I3 => b_0_IBUF_240,
      O => N78
    );
  result_shift0002_12_240_G : LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd63,
      I2 => result_mux0002_0_bdd47,
      I3 => b_3_IBUF_249,
      O => N79
    );
  result_mux0002_2_341 : MUXF5
    port map (
      I0 => N80,
      I1 => N81,
      S => b_1_IBUF_247,
      O => result_mux0002_2_bdd3
    );
  result_mux0002_2_341_F : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd46,
      I2 => result_mux0002_0_bdd47,
      O => N80
    );
  result_mux0002_2_341_G : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd100,
      I2 => result_mux0002_0_bdd101,
      O => N81
    );
  result_shift0003_0_1111 : MUXF5
    port map (
      I0 => N82,
      I1 => N83,
      S => b_1_IBUF_247,
      O => result_mux0002_0_211
    );
  result_shift0003_0_1111_F : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd134,
      I2 => result_mux0002_0_bdd135,
      O => N82
    );
  result_shift0003_0_1111_G : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd117,
      I2 => result_mux0002_0_bdd118,
      O => N83
    );
  result_shift0002_11_3 : MUXF5
    port map (
      I0 => N84,
      I1 => N85,
      S => b_1_IBUF_247,
      O => result_shift0002_11_bdd3
    );
  result_shift0002_11_3_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd46,
      I2 => result_mux0002_0_bdd47,
      O => N84
    );
  result_shift0002_11_3_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd63,
      I2 => result_mux0002_0_bdd64,
      O => N85
    );
  result_shift0002_10_3 : MUXF5
    port map (
      I0 => N86,
      I1 => N87,
      S => b_1_IBUF_247,
      O => result_shift0002_10_bdd3
    );
  result_shift0002_10_3_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd47,
      I2 => result_mux0002_0_bdd63,
      O => N86
    );
  result_shift0002_10_3_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd64,
      I2 => result_mux0002_0_bdd117,
      O => N87
    );
  result_mux0002_2_4 : MUXF5
    port map (
      I0 => N88,
      I1 => N89,
      S => b_3_IBUF_249,
      O => result_mux0002_2_bdd1
    );
  result_mux0002_2_4_F : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => result_mux0002_0_bdd7,
      I2 => result_mux0002_0_bdd2,
      O => N88
    );
  result_mux0002_2_4_G : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => result_mux0002_0_bdd10,
      I2 => result_mux0002_0_bdd80,
      O => N89
    );
  result_shift0002_12_125 : MUXF5
    port map (
      I0 => N90,
      I1 => N91,
      S => b_3_IBUF_249,
      O => result_shift0002_12_125_480
    );
  result_shift0002_12_125_F : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => result_shift0002_10_bdd12,
      I2 => result_shift0002_12_bdd2,
      O => N90
    );
  result_shift0002_12_125_G : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => result_shift0002_10_bdd14,
      I2 => result_shift0002_10_bdd5,
      O => N91
    );
  result_mux0002_1_625 : MUXF5
    port map (
      I0 => N92,
      I1 => N93,
      S => b_1_IBUF_247,
      O => result_mux0002_1_625_441
    );
  result_mux0002_1_625_F : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd118,
      I2 => result_mux0002_0_bdd134,
      O => N92
    );
  result_mux0002_1_625_G : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd64,
      I2 => result_mux0002_0_bdd117,
      O => N93
    );
  result_shift0002_15_125 : MUXF5
    port map (
      I0 => N94,
      I1 => N95,
      S => b_1_IBUF_247,
      O => result_shift0002_15_125_496
    );
  result_shift0002_15_125_F : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd13,
      I2 => result_mux0002_0_bdd12,
      O => N94
    );
  result_shift0002_15_125_G : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd30,
      I2 => result_mux0002_0_bdd29,
      O => N95
    );
  result_shift0002_15_179 : MUXF5
    port map (
      I0 => N96,
      I1 => N97,
      S => b_2_IBUF_248,
      O => result_shift0002_15_Q
    );
  result_shift0002_15_179_F : LUT3
    generic map(
      INIT => X"72"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => result_shift0002_11_bdd3,
      I2 => result_shift0002_15_125_496,
      O => N96
    );
  result_shift0002_15_179_G : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => result_shift0002_11_67_473,
      I2 => result_shift0002_11_620_472,
      O => N97
    );
  result_shift0002_14_125 : MUXF5
    port map (
      I0 => N98,
      I1 => N99,
      S => b_1_IBUF_247,
      O => result_shift0002_14_125_492
    );
  result_shift0002_14_125_F : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd29,
      I2 => result_mux0002_0_bdd13,
      O => N98
    );
  result_shift0002_14_125_G : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd83,
      I2 => result_mux0002_0_bdd30,
      O => N99
    );
  result_mux0002_14_127 : MUXF5
    port map (
      I0 => N100,
      I1 => N101,
      S => b_1_IBUF_247,
      O => result_mux0002_14_127_430
    );
  result_mux0002_14_127_F : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => b_0_IBUF_240,
      I2 => result_mux0002_11_bdd7,
      I3 => result_mux0002_12_bdd4,
      O => N100
    );
  result_mux0002_14_127_G : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => b_0_IBUF_240,
      I2 => result_mux0002_13_bdd4,
      I3 => result_mux0002_14_bdd2,
      O => N101
    );
  result_shift0002_13_135 : MUXF5
    port map (
      I0 => N102,
      I1 => N103,
      S => b_3_IBUF_249,
      O => result_shift0002_13_135_485
    );
  result_shift0002_13_135_F : LUT4
    generic map(
      INIT => X"FF1B"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => result_shift0002_13_bdd2,
      I2 => result_shift0002_11_bdd12,
      I3 => b_2_IBUF_248,
      O => N102
    );
  result_shift0002_13_135_G : LUT4
    generic map(
      INIT => X"FF1B"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => result_shift0002_11_bdd5,
      I2 => result_shift0002_11_bdd15,
      I3 => b_2_IBUF_248,
      O => N103
    );
  result_mux0002_15_386 : MUXF5
    port map (
      I0 => N104,
      I1 => N105,
      S => b_1_IBUF_247,
      O => result_mux0002_15_386_437
    );
  result_mux0002_15_386_F : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => b_0_IBUF_240,
      I2 => result_mux0002_12_bdd4,
      I3 => result_mux0002_13_bdd4,
      O => N104
    );
  result_mux0002_15_386_G : LUT4
    generic map(
      INIT => X"88A8"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => result_mux0002_15_333_435,
      I2 => result_mux0002_14_bdd2,
      I3 => b_0_IBUF_240,
      O => N105
    );
  result_mux0002_3_426 : MUXF5
    port map (
      I0 => N106,
      I1 => N107,
      S => b_1_IBUF_247,
      O => result_mux0002_3_426_451
    );
  result_mux0002_3_426_F : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd64,
      I2 => result_mux0002_0_bdd117,
      O => N106
    );
  result_mux0002_3_426_G : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd47,
      I2 => result_mux0002_0_bdd63,
      O => N107
    );
  Mmux_result_56_SW0 : MUXF5
    port map (
      I0 => N108,
      I1 => N109,
      S => b_2_IBUF_248,
      O => N68
    );
  Mmux_result_56_SW0_F : LUT4
    generic map(
      INIT => X"AF8D"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => result_mux0002_12_80_413,
      I2 => result_mux0002_0_bdd5,
      I3 => result_mux0002_12_815_414,
      O => N108
    );
  Mmux_result_56_SW0_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => result_mux0002_12_bdd1,
      I2 => result_mux0002_12_17,
      O => N109
    );
  result_shift0003_11_1 : MUXF5
    port map (
      I0 => N110,
      I1 => N111,
      S => b_2_IBUF_248,
      O => result_shift0003_11_Q
    );
  result_shift0003_11_1_F : LUT4
    generic map(
      INIT => X"0415"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => b_1_IBUF_247,
      I2 => result_mux0002_11_bdd30,
      I3 => result_mux0002_11_bdd31,
      O => N110
    );
  result_shift0003_11_1_G : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => b_0_IBUF_240,
      I2 => result_mux0002_0_bdd12,
      I3 => b_1_IBUF_247,
      O => N111
    );
  Mmux_result_524_SW0 : MUXF5
    port map (
      I0 => N112,
      I1 => N113,
      S => b_3_IBUF_249,
      O => N48
    );
  Mmux_result_524_SW0_F : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => b_2_IBUF_248,
      I1 => result_mux0002_6_114_456,
      I2 => result_mux0002_2_bdd3,
      I3 => result_mux0002_10_bdd61,
      O => N112
    );
  Mmux_result_524_SW0_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => b_2_IBUF_248,
      I1 => result_mux0002_6_114_456,
      I2 => result_mux0002_10_bdd60,
      O => N113
    );
  result_shift0002_11_112 : LUT4
    generic map(
      INIT => X"0415"
    )
    port map (
      I0 => b_2_IBUF_248,
      I1 => b_3_IBUF_249,
      I2 => result_shift0002_11_67_473,
      I3 => result_shift0002_11_620_472,
      O => result_shift0002_11_11
    );
  result_shift0002_11_113 : LUT4
    generic map(
      INIT => X"2637"
    )
    port map (
      I0 => b_2_IBUF_248,
      I1 => b_3_IBUF_249,
      I2 => result_shift0002_11_67_473,
      I3 => result_shift0002_11_620_472,
      O => result_shift0002_11_111_471
    );
  result_shift0002_11_11_f5 : MUXF5
    port map (
      I0 => result_shift0002_11_111_471,
      I1 => result_shift0002_11_11,
      S => result_shift0002_11_bdd3,
      O => result_shift0002_11_Q
    );
  result_mux0002_11_1211 : LUT4
    generic map(
      INIT => X"E4FF"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => result_mux0002_11_1320_394,
      I2 => result_mux0002_11_137_395,
      I3 => b_3_IBUF_249,
      O => result_mux0002_11_121
    );
  result_mux0002_11_1212 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => b_1_IBUF_247,
      I2 => result_mux0002_11_1320_394,
      I3 => result_mux0002_11_137_395,
      O => result_mux0002_11_1211_393
    );
  result_mux0002_11_121_f5 : MUXF5
    port map (
      I0 => result_mux0002_11_1211_393,
      I1 => result_mux0002_11_121,
      S => result_mux0002_11_bdd23,
      O => result_mux0002_11_bdd1
    );
  result_mux0002_11_21 : LUT4
    generic map(
      INIT => X"E4FF"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => result_mux0002_11_bdd4,
      I2 => result_mux0002_11_bdd3,
      I3 => b_3_IBUF_249,
      O => result_mux0002_11_2
    );
  result_mux0002_11_22 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => b_1_IBUF_247,
      I2 => result_mux0002_11_bdd4,
      I3 => result_mux0002_11_bdd3,
      O => result_mux0002_11_21_397
    );
  result_mux0002_11_2_f5 : MUXF5
    port map (
      I0 => result_mux0002_11_21_397,
      I1 => result_mux0002_11_2,
      S => result_mux0002_3_17,
      O => result_mux0002_11_bdd0
    );
  result_mux0002_10_2_SW11 : LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_10_bdd24,
      I2 => result_mux0002_10_bdd25,
      I3 => b_1_IBUF_247,
      O => result_mux0002_10_2_SW1
    );
  result_mux0002_10_2_SW12 : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => b_0_IBUF_240,
      I2 => result_mux0002_10_bdd24,
      I3 => result_mux0002_10_bdd25,
      O => result_mux0002_10_2_SW11_368
    );
  result_mux0002_10_2_SW1_f5 : MUXF5
    port map (
      I0 => result_mux0002_10_2_SW11_368,
      I1 => result_mux0002_10_2_SW1,
      S => result_mux0002_10_bdd3,
      O => N30
    );
  result_mux0002_13_8391 : LUT4
    generic map(
      INIT => X"E4FF"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => result_mux0002_11_137_395,
      I2 => result_mux0002_11_bdd4,
      I3 => b_3_IBUF_249,
      O => result_mux0002_13_839
    );
  result_mux0002_13_8392 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => b_1_IBUF_247,
      I2 => result_mux0002_11_137_395,
      I3 => result_mux0002_11_bdd4,
      O => result_mux0002_13_8391_425
    );
  result_mux0002_13_839_f5 : MUXF5
    port map (
      I0 => result_mux0002_13_8391_425,
      I1 => result_mux0002_13_839,
      S => result_mux0002_13_bdd14,
      O => result_mux0002_13_bdd2
    );
  result_mux0002_13_171 : LUT4
    generic map(
      INIT => X"EEE2"
    )
    port map (
      I0 => result_mux0002_11_bdd3,
      I1 => b_1_IBUF_247,
      I2 => b_0_IBUF_240,
      I3 => result_mux0002_12_bdd4,
      O => result_mux0002_13_171_421
    );
  result_mux0002_13_172 : LUT4
    generic map(
      INIT => X"7520"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => b_0_IBUF_240,
      I2 => result_mux0002_12_bdd4,
      I3 => result_mux0002_11_bdd3,
      O => result_mux0002_13_172_422
    );
  result_mux0002_13_17_f5 : MUXF5
    port map (
      I0 => result_mux0002_13_172_422,
      I1 => result_mux0002_13_171_421,
      S => result_mux0002_13_bdd4,
      O => result_mux0002_13_17
    );
  result_mux0002_12_171 : LUT4
    generic map(
      INIT => X"EEE2"
    )
    port map (
      I0 => result_mux0002_10_bdd3,
      I1 => b_1_IBUF_247,
      I2 => b_0_IBUF_240,
      I3 => result_mux0002_11_bdd7,
      O => result_mux0002_12_171_410
    );
  result_mux0002_12_172 : LUT4
    generic map(
      INIT => X"7520"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => b_0_IBUF_240,
      I2 => result_mux0002_11_bdd7,
      I3 => result_mux0002_10_bdd3,
      O => result_mux0002_12_172_411
    );
  result_mux0002_12_17_f5 : MUXF5
    port map (
      I0 => result_mux0002_12_172_411,
      I1 => result_mux0002_12_171_410,
      S => result_mux0002_12_bdd4,
      O => result_mux0002_12_17
    );
  result_shift0002_14_1791 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => b_2_IBUF_248,
      I1 => result_shift0002_10_bdd3,
      I2 => b_3_IBUF_249,
      I3 => result_shift0002_10_bdd1,
      O => result_shift0002_14_179
    );
  result_shift0002_14_1792 : LUT4
    generic map(
      INIT => X"04AE"
    )
    port map (
      I0 => b_2_IBUF_248,
      I1 => b_3_IBUF_249,
      I2 => result_shift0002_10_bdd3,
      I3 => result_shift0002_10_bdd1,
      O => result_shift0002_14_1791_494
    );
  result_shift0002_14_179_f5 : MUXF5
    port map (
      I0 => result_shift0002_14_1791_494,
      I1 => result_shift0002_14_179,
      S => result_shift0002_14_125_492,
      O => result_shift0002_14_Q
    );
  result_mux0002_0_421 : LUT4
    generic map(
      INIT => X"FFD8"
    )
    port map (
      I0 => b_0_IBUF_240,
      I1 => result_mux0002_0_bdd100,
      I2 => result_mux0002_0_bdd101,
      I3 => b_1_IBUF_247,
      O => result_mux0002_0_42
    );
  result_mux0002_0_422 : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => b_1_IBUF_247,
      I1 => b_0_IBUF_240,
      I2 => result_mux0002_0_bdd100,
      I3 => result_mux0002_0_bdd101,
      O => result_mux0002_0_421_326
    );
  result_mux0002_0_42_f5 : MUXF5
    port map (
      I0 => result_mux0002_0_421_326,
      I1 => result_mux0002_0_42,
      S => result_mux0002_0_bdd80,
      O => result_mux0002_0_bdd1
    );
  result_mux0002_13_1381 : LUT4
    generic map(
      INIT => X"E4FF"
    )
    port map (
      I0 => b_3_IBUF_249,
      I1 => result_mux0002_13_bdd1,
      I2 => result_mux0002_13_17,
      I3 => b_2_IBUF_248,
      O => result_mux0002_13_138
    );
  result_mux0002_13_1382 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => b_2_IBUF_248,
      I1 => b_3_IBUF_249,
      I2 => result_mux0002_13_bdd1,
      I3 => result_mux0002_13_17,
      O => result_mux0002_13_1381_419
    );
  result_mux0002_13_138_f5 : MUXF5
    port map (
      I0 => result_mux0002_13_1381_419,
      I1 => result_mux0002_13_138,
      S => result_mux0002_13_bdd2,
      O => result_mux0002(13)
    );
  Mmux_result_528_SW01 : LUT4
    generic map(
      INIT => X"EEE2"
    )
    port map (
      I0 => result_mux0002_4_bdd0,
      I1 => b_2_IBUF_248,
      I2 => result_mux0002_12_80_413,
      I3 => result_mux0002_12_815_414,
      O => Mmux_result_528_SW0
    );
  Mmux_result_528_SW02 : LUT3
    generic map(
      INIT => X"72"
    )
    port map (
      I0 => b_2_IBUF_248,
      I1 => result_mux0002_0_bdd5,
      I2 => result_mux0002_4_bdd0,
      O => Mmux_result_528_SW01_122
    );
  Mmux_result_528_SW0_f5 : MUXF5
    port map (
      I0 => Mmux_result_528_SW01_122,
      I1 => Mmux_result_528_SW0,
      S => b_3_IBUF_249,
      O => N44
    );
  Mmux_result_518_SW01 : LUT4
    generic map(
      INIT => X"FA72"
    )
    port map (
      I0 => b_2_IBUF_248,
      I1 => b_3_IBUF_249,
      I2 => result_mux0002_3_bdd1,
      I3 => result_mux0002_3_17,
      O => Mmux_result_518_SW0
    );
  Mmux_result_518_SW02 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => b_2_IBUF_248,
      I1 => result_mux0002_3_bdd1,
      I2 => result_mux0002_3_17,
      I3 => b_3_IBUF_249,
      O => Mmux_result_518_SW01_109
    );
  Mmux_result_518_SW0_f5 : MUXF5
    port map (
      I0 => Mmux_result_518_SW01_109,
      I1 => Mmux_result_518_SW0,
      S => result_mux0002_3_bdd3,
      O => N56
    );
  Mmux_result_516_SW01 : LUT4
    generic map(
      INIT => X"F5B1"
    )
    port map (
      I0 => operation_Code_0_IBUF_259,
      I1 => b_3_IBUF_249,
      I2 => a_2_IBUF_216,
      I3 => result_mux0002_2_18,
      O => Mmux_result_516_SW0
    );
  Mmux_result_516_SW02 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => operation_Code_0_IBUF_259,
      I1 => a_2_IBUF_216,
      I2 => result_mux0002_2_18,
      I3 => b_3_IBUF_249,
      O => Mmux_result_516_SW01_105
    );
  Mmux_result_516_SW0_f5 : MUXF5
    port map (
      I0 => Mmux_result_516_SW01_105,
      I1 => Mmux_result_516_SW0,
      S => result_mux0002_2_bdd3,
      O => N58
    );
  Mmux_result_52_SW01 : LUT4
    generic map(
      INIT => X"F5B1"
    )
    port map (
      I0 => b_2_IBUF_248,
      I1 => b_3_IBUF_249,
      I2 => result_mux0002_10_bdd0,
      I3 => result_mux0002_10_bdd60,
      O => Mmux_result_52_SW0
    );
  Mmux_result_52_SW02 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => b_2_IBUF_248,
      I1 => result_mux0002_10_bdd0,
      I2 => result_mux0002_10_bdd60,
      I3 => b_3_IBUF_249,
      O => Mmux_result_52_SW01_125
    );
  Mmux_result_52_SW0_f5 : MUXF5
    port map (
      I0 => Mmux_result_52_SW01_125,
      I1 => Mmux_result_52_SW0,
      S => result_mux0002_10_bdd61,
      O => N72
    );

end Structure;


--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:34:38 03/14/2018
-- Design Name:   
-- Module Name:   /home/ahmednasser/Desktop/Lab_2/testAll.vhd
-- Project Name:  Lab_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: TopModule
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY testAll IS
END testAll;
 
ARCHITECTURE behavior OF testAll IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TopModule
    PORT(
         mainclk : IN  std_logic;
         setSeconds : IN  std_logic;
         setMinuets : IN  std_logic;
         endReset : IN  std_logic;
         normalMode : IN  std_logic;
         DI : IN  std_logic_vector(7 downto 0);
         AN0 : OUT  std_logic;
         AN1 : OUT  std_logic;
         AN2 : OUT  std_logic;
         AN3 : OUT  std_logic;
         DP : OUT  std_logic;
         SEVEN_SEG : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal mainclk : std_logic := '0';
   signal setSeconds : std_logic := '0';
   signal setMinuets : std_logic := '0';
   signal endReset : std_logic := '0';
   signal normalMode : std_logic := '0';
   signal DI : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal AN0 : std_logic;
   signal AN1 : std_logic;
   signal AN2 : std_logic;
   signal AN3 : std_logic;
   signal DP : std_logic;
   signal SEVEN_SEG : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant mainclk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TopModule PORT MAP (
          mainclk => mainclk,
          setSeconds => setSeconds,
          setMinuets => setMinuets,
          endReset => endReset,
          normalMode => normalMode,
          DI => DI,
          AN0 => AN0,
          AN1 => AN1,
          AN2 => AN2,
          AN3 => AN3,
          DP => DP,
          SEVEN_SEG => SEVEN_SEG
        );

   -- Clock process definitions
 
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
          mainclk <= '1';
          setSeconds <= '0';
          setMinuets <= '0';
          endReset <= '0';
          normalMode <= '0';
          DI <= "00000000";
          AN0 <= '0';
          AN1 <= '0';
          AN2 <= '0';
          AN3 <= '0';
          DP <= '0';
          SEVEN_SEG <= "0000000";
      wait for 10 ns ;

      -- insert stimulus here 

      wait;
   end process;

END;

--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:46:10 03/14/2018
-- Design Name:   
-- Module Name:   /home/ahmednasser/Desktop/Lab_2/testCu.vhd
-- Project Name:  Lab_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CU
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
 
ENTITY testCu IS
END testCu;
 
ARCHITECTURE behavior OF testCu IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CU
    PORT(
         in_clk : IN  std_logic;
         setSeconds : IN  std_logic;
         setMinuets : IN  std_logic;
         endReset : IN  std_logic;
         normalMode : IN  std_logic;
         loadSec : OUT  std_logic;
         loadMin : OUT  std_logic;
         count : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal in_clk : std_logic := '0';
   signal setSeconds : std_logic := '0';
   signal setMinuets : std_logic := '0';
   signal endReset : std_logic := '0';
   signal normalMode : std_logic := '0';

 	--Outputs
   signal loadSec : std_logic;
   signal loadMin : std_logic;
   signal count : std_logic;

   -- Clock period definitions
   constant in_clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CU PORT MAP (
          in_clk => in_clk,
          setSeconds => setSeconds,
          setMinuets => setMinuets,
          endReset => endReset,
          normalMode => normalMode,
          loadSec => loadSec,
          loadMin => loadMin,
          count => count
        );

   -- Clock process definitions
   in_clk_process :process
   begin
		in_clk <= '0';
		wait for in_clk_period/2;
		in_clk <= '1';
		wait for in_clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for in_clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;

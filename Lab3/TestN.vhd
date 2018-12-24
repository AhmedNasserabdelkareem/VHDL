--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:36:07 04/23/2018
-- Design Name:   
-- Module Name:   /home/ahmednasser/Xillinx/WorkSpace/Lab3/TestN.vhd
-- Project Name:  Lab3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Top_Module
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
 
ENTITY TestN IS
END TestN;
 
ARCHITECTURE behavior OF TestN IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Top_Module
    PORT(
         clk : IN  std_logic;
         first : IN  std_logic;
         second : IN  std_logic;
         myPattern : IN  std_logic_vector(2 downto 0);
         outputs : OUT  std_logic_vector(6 downto 0);
         an : OUT  std_logic_vector(3 downto 0);
         temp : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal first : std_logic := '0';
   signal second : std_logic := '0';
   signal myPattern : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal outputs : std_logic_vector(6 downto 0);
   signal an : std_logic_vector(3 downto 0);
   signal temp : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Top_Module PORT MAP (
          clk => clk,
          first => first,
          second => second,
          myPattern => myPattern,
          outputs => outputs,
          an => an,
          temp => temp
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	


		myPattern <= "000";
		first <= '1';
		wait for 50 ns;
		first <= '0';
		wait for 50 ns;
		second <= '1';
		wait for 50 ns;
		
		
		myPattern <= "001";
		first <= '1';
		wait for 50 ns;
		first <= '0';
		wait for 50 ns;
		second <= '1';
		wait for 50 ns;
		second <= '0';
		wait for 50 ns;
		
		myPattern <= "001";
		first <= '1';
		wait for 50 ns;
		first <= '0';
		wait for 50 ns;
		second <= '1';
		wait for 50 ns;
		second <= '0';
		wait for 50 ns;
		
		myPattern <= "101";
		first <= '1';
		wait for 50 ns;
		first <= '0';
		wait for 50 ns;
		second <= '1';
		wait for 50 ns;
	--	second <= '0';
	--	wait for 50 ns;
		
--		myPattern <= "101";
--		first <= '1';
--		wait for 50 ns;
--		first <= '0';
--		wait for 50 ns;
--		second <= '1';
--		wait for 50 ns;
--		second <= '0';
--		wait for 50 ns;
--		
--		myPattern <= "110";
--		first <= '1';
--		wait for 50 ns;
--		first <= '0';
--		wait for 50 ns;
--		second <= '1';
--		wait for 50 ns;
--		second <= '0';
--		wait for 50 ns;
		
      -- insert stimulus here 

      wait;
   end process;

END;

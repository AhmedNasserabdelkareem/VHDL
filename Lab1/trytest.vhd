--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:35:01 02/20/2018
-- Design Name:   
-- Module Name:   /home/ahmednasser/Xillinx/WorkSpace/Lab1/trytest.vhd
-- Project Name:  Lab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Try
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
 
ENTITY trytest IS
END trytest;
 
ARCHITECTURE behavior OF trytest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Try
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         op : IN  std_logic_vector(2 downto 0);
         z : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal op : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal z : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Try PORT MAP (
          a => a,
          b => b,
          op => op,
          z => z
        );

   -- Clock process definitions
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	




      wait;
   end process;

END;

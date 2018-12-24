--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:52:18 02/18/2018
-- Design Name:   
-- Module Name:   /home/ahmednasser/Xillinx/WorkSpace/Lab1/testAlu.vhd
-- Project Name:  Lab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY testAlu IS
END testAlu;
 
ARCHITECTURE behavior OF testAlu IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';

 	--Outputs
   signal z : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          a => a,
          b => b,
          z => z
        );

   -- Clock process definitions

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	


   a <= '0';
	b <='0';
	wait for 10 ns ;
	
	   a <= '1';
	b <='0';
	wait for 10 ns ;
	
	
	   a <= '0';
	b <='1';
	wait for 10 ns ;
	
	
	   a <= '1';
	b <='1';
      -- insert stimulus here 
	wait for 10 ns ;

      wait;
   end process;

END;

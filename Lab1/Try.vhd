----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:14:12 02/20/2018 
-- Design Name: 
-- Module Name:    Try - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Try is
port (
 clk : In std_logic ;
   a : In std_logic_vector(3 downto 0) ;
		b : In unsigned_vector (3 downto 0);
		op : In std_logic_vector (2 downto 0);
		z : out bit_vector (3 downto 0)
);
end Try;

architecture Behavioral of Try is
begin
process (clk)
begin 
 if (clk = '1') then
  case op is
            when "000" => 
                 z <= a+b; --addition
            when "001" => 
                z <= a-b; --subtraction
           when "010" => 
                z <= a srl b ;  --unsigned right shift
           when "011" => 
                z <= a sll b ; --unsigned left shift   
           when "100" => 
               z <= a sra b; --signed left shift 
            when "101" => 
                z <= a and b; --and
            when "110" => 
                z <= a or b ;  --or
            when "111" => 
               z <= a xor b ; --xor
            when others =>
                NULL;
        end case;       
 end if ;
 end process ;
end Behavioral;


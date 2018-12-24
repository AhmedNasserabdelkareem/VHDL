library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU is
port (
     a : in std_logic_vector (15 downto 0);
	  b : in std_logic_vector (15 downto 0);
	  operation_Code : in std_logic_vector (2 downto 0);
	  result : out std_logic_vector (15 downto 0)
        );
end ALU;

architecture Behavioral of ALU is
begin

process(operation_Code)
begin
 
case operation_Code is

when "000" =>
 result <= a+b;
when "001" =>
 result <= a-b;
when "010" =>
 result <= std_logic_vector (unsigned(a)SLL to_integer(unsigned(b)));
when "011" =>
 result <= std_logic_vector (unsigned(a)SRL to_integer(unsigned(b)));
when "100" =>
 result <= std_logic_vector (tobitaunsigned(a)SLA to_integer(unsigned(b)));
when "101" =>
 result <= a and b;
when "110" =>
 result <= a or b;
when "111" =>
 result <= a xor b;
when OTHERS =>
 NULL;
end case; 
end process;

     

end Behavioral;


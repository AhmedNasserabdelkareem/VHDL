library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use IEEE.STD_LOGIC_ARITH.ALL;

entity Driver is
	port(clk : in std_logic;
		  a: out std_logic_vector(15 downto 0);
		  b : out std_logic_vector (15 downto 0);
	     operation_Code : out std_logic_vector (2 downto 0)
        );
end Driver;

architecture Behavioral of Driver is
type A_Array is array(7 downto 0) of std_logic_vector (15 downto 0);
type B_Array is array(7 downto 0) of std_logic_vector (15 downto 0);
type operation_Array is array(7 downto 0) of std_logic_vector (2 downto 0);

signal a_arr: A_Array;
signal b_arr: B_Array;
signal op_arr: operation_Array;
signal counter : std_logic_vector (2 downto 0):="000";


begin
a_arr <= (X"000A",X"000B",X"000C",X"000D",X"0100",X"0010",X"0001",X"0011");
b_arr <= (X"000A",X"000B",X"000C",X"000D",X"0100",X"0010",X"0001",X"0011");
op_arr <= ("000","001","010","011","100","101","110","111");
process (clk)
begin
 if(clk='1')then
 if(counter ="000")then
 a <=a_arr(0);
 b <=b_arr(0);
 operation_Code <= op_arr(0);
 elsif (counter ="001")then
 a <=a_arr(1);
 b <=b_arr(1);
 operation_Code <= op_arr(1);
  elsif (counter ="010")then
 a <=a_arr(2);
 b <=b_arr(2);
 operation_Code <= op_arr(2);
  elsif (counter ="011")then
 a <=a_arr(3);
 b <=b_arr(3);
 operation_Code <= op_arr(3);
  elsif (counter ="100")then
 a <=a_arr(4);
 b <=b_arr(4);
 operation_Code <= op_arr(4);
  elsif (counter ="101")then
 a <=a_arr(5);
 b <=b_arr(5);
 operation_Code <= op_arr(5);
  elsif (counter ="110")then
 a <=a_arr(6);
 b <=b_arr(6);
 operation_Code <= op_arr(6);
  elsif (counter ="111")then 
 a <=a_arr(7);
 b <=b_arr(7);
 operation_Code <= op_arr(7);
 end if;
 counter <= counter+1;
 else
 a <= X"0000";
 b <= X"0000";
 operation_Code <= "000";
end if;
end process;



end Behavioral;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:44:41 04/16/2018 
-- Design Name: 
-- Module Name:    lock_module - Behavioral 
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

entity lock_module is
    Port ( mode : in  STD_LOGIC;
           pattern : in  STD_LOGIC_VECTOR (2 downto 0);
           display : out  STD_LOGIC_VECTOR (2 downto 0)	;
			  clock : in STD_LOGIC);
end lock_module;

architecture Behavioral of lock_module is

signal password: std_logic_vector(2 downto 0) := "000";
signal new_password_1: std_logic_vector(2 downto 0);
signal new_password_2: std_logic_vector(2 downto 0);
signal output: std_logic_vector(2 downto 0) := "UUU";

signal flag: std_logic := '0';

begin

display <= output;




--output <= "000" when (output = "UUU" and mode = '0')
--              else "001" when (output = "000" and pattern = password and mode = '0')
--				  else "000" when(mode = '0')
--				  else "010" when(output = "001" and new_password_1 /= "UUU" and  mode = '0')
--				  else "000" when(mode = '0')
--				  else "011" when (output = "010" and  new_password_1 /= "UUU" and new_password_1 = new_password_2 and new_password_1 = password and mode = '0')
--              else "000" when(mode = '0');

--output <= "001" when (output = "000" and pattern = password and mode = '0')
--						else "000" when(mode = '0')
--						else output;
--output <= "010" when(output = "001" and new_password_1 /= "UUU" and  mode = '0')
--							else "000" when(mode = '0')
--						  else output;
--output <= "011" when (output = "010" and  new_password_1 /= "UUU" and new_password_1 = new_password_2 and new_password_1 = password and mode = '0')
--                      else "000" when(mode = '0')
--							 else output;


-- mode = '0' programming
-- mode = '1' operating
-- output = "000" old
-- output = "001" new password 1
-- output = "010" new password 2
-- output = "011" done
-- output = "100" lock
-- output = "101" err
-- output = "110" end


--password <= new_password_1 when (new_password_1 /= "UUU" and new_password_2 /= "UUU" and new_password_1 = new_password_2 and mode = '0' and clock = '1');
------output <= "011" when (password =  new_password_1 and password = new_password_2 and mode = '0' and clock = '1');
process (clock)
begin
  if(clock = '1') then
  if(mode = '0') then
	  if(output = "001") then
	  new_password_1 <= pattern;
	  output <= "010";
	  elsif (output = "010") then 
	  new_password_2 <= pattern;
	  end if;
	  if (new_password_1 /= "UUU" and new_password_2 /= "UUU" and new_password_1 = new_password_2) then 
	  password <= new_password_1;
	  output <= "011" ;
	  flag <= '0';
	  elsif(new_password_1 /= "UUU" and new_password_2 /= "UUU" and new_password_1 /= new_password_2) then
	  flag <= '0';
	  new_password_1 <= "UUU";
	  new_password_2 <= "UUU";
	  output <= "000" ;
	  else 
	  flag <= '1';
	  end if;
	  
	  
	  if (output = "UUU") then
			output <= "000";
	  elsif (output = "000" and pattern = password) then 
			output <= "001";
	  elsif( output = "000" ) then
			output <= "000";
	  end if;
----	elsif(mode = '0') then
------	--	output <= "000";
	elsif(mode = '1') then 
	
		if (((output = "110" and pattern /= "UUU") or output = "UUU")) then
		output <= "100";
		elsif (pattern /= password) then 
		output <= "101";
		elsif (pattern = password) then 
		output <= "110";
		else 
		output <= "100";
		end if;
  
  end if ; -- End if elsif mode check condiction (mode = '0' or '1')
  end if ; -- End if clock = '1'
end process;

-- Operating mode

----output <= "100" when(mode = '1' and ((output = "110" and pattern /= "UUU") or output = "UUU"))
----            else "000";
--output <= "101" when(mode ='1' and pattern /= password)
--             else output;
--output <= "110" when(mode = '1' and pattern = password)
--             else output;
							


end Behavioral;

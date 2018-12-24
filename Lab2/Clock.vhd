----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:48:40 03/06/2018 
-- Design Name: 
-- Module Name:    Clock - Behavioral 
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
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Clock is
port (
loadMin: in std_logic ;
loadSec:in std_logic ;
count : in std_logic;
clk : in std_logic;
DI :in std_logic_vector(7 downto 0);
Sec: out std_logic_vector(7 downto 0);
Min: out std_logic_vector(7 downto 0)
);
end Clock;

architecture Behavioral of Clock is
signal sec_first : std_logic_vector(3 downto 0);
signal sec_second : std_logic_vector(3 downto 0);
signal min_first : std_logic_vector(3 downto 0);
signal min_second : std_logic_vector(3 downto 0);

begin
process (clk) 
	begin 
		sec_first <= DI(7 downto 4);
		sec_second <= DI(3 downto 0);

		if (loadMin = '1') then	
			min_first <= DI(7 downto 4);
			min_second <= DI(3 downto 0);
		elsif (loadSec = '1') then	
			sec_first <= DI(7 downto 4);
			sec_second <= DI(3 downto 0);
		else
			if (sec_second = "1001") then -- Sec x9
				sec_second <= "0000";
				if (sec_first= "0101") then -- Sec 59
					sec_first <= "0000";
					if (min_second = "1001") then -- Min x9
						min_second <= "0000";
						if (min_first = "0101") then -- Min 59
							min_first <= "0000";
						else
							min_first <= std_logic_vector(Unsigned(min_first)+1);
						end if;
					else
					min_second <= std_logic_vector(Unsigned(min_second)+1);
					end if;
				else
				sec_first <= std_logic_vector(Unsigned(sec_first)+1);
				end if;
			else
				sec_second <= std_logic_vector(Unsigned(sec_second)+1);
			end if;
		end if;

Sec(7 downto 4) <= sec_first;
Sec (3 downto 0) <= sec_second;
Min(7 downto 4) <= min_first;
Min (3 downto 0) <= min_second;
	end process;

end Behavioral;


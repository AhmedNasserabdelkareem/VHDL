----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:16:01 03/15/2017 
-- Design Name: 
-- Module Name:    CLK50_1 - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CLK50_1 is
port(clk : in std_logic;
     clock: out std_logic
	);
end CLK50_1;

architecture Behavioral of CLK50_1 is

begin
process(clk)
	variable counter: integer:= 0;
	
	begin
		 if(clk'event and clk = '1') then
			if (counter < 50) then 
				counter := counter + 1;
				clock <= '0';
			else 
				counter := 0;
				clock <= '1';
			end if;
		 end if;
	end process;

end Behavioral;


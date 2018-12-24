Library ieee;
use ieee.std_logic_1164.all;


entity CU is

   port( 
		firstButton    : in std_logic;     --BTN2
		secondButton   : in std_logic;     --BTN1
		clock   : in std_logic;			     --T9 clock for running this module
		userClock           : out std_logic  	--userClock
	);
		
end CU;

architecture Signals of CU is

SIGNAL rising: STD_LOGIC;
	
begin
	 process (clock)
    begin
	 
--	if rising_edge(in_clk) then
			
			if firstButton = '0' and  secondButton = '1' and rising = '1' then
				userClock <= '1';
				rising <= '0';
			elsif firstButton = '1' and  secondButton = '0'  then
				rising <= '1';
				userClock <= '0';
			elsif firstButton = '0' and secondButton = '0'  then
				userClock <= '0';
			end if;
	
--	end if;

	end process;
	
end Signals;
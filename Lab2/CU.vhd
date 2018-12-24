Library ieee;
use ieee.std_logic_1164.all;


entity CU is

   port(
		in_clk     : in std_logic;     --clk
		setSeconds : in std_logic;     --BTN3  
		setMinuets : in std_logic;     --BTN2
		endReset   : in std_logic;     --BTN1
		normalMode : in std_logic;     --BTN0
		loadSec    : out std_logic;    --Load seconds
		loadMin    : out std_logic;    --Load Minuets
		count      : out std_logic     --Count
		);
		
end CU;



architecture Signals of CU is
begin

	process (in_clk , setSeconds , setMinuets , normalMode , endReset)
    begin
		if rising_edge(in_clk) then
			
			if setSeconds = '0' and setMinuets = '0' and normalMode = '0' and endReset = '1'  then
				count <= '1';
				loadSec <= '0';
				loadMin <= '0';
			elsif setSeconds = '0' and setMinuets = '0' and normalMode = '1' and endReset = '0' then
				count <= '1';
				loadSec <= '0';
				loadMin <= '0';
			elsif setSeconds = '1' and setMinuets = '0' and normalMode = '0' and endReset = '0' then
				loadSec <= '1';
				loadMin <= '0';
			elsif setSeconds = '0' and setMinuets = '1' and normalMode = '0' and endReset = '0' then
				loadSec <= '0';
				loadMin <= '1';
			elsif setSeconds = '0' and setMinuets = '0' and normalMode = '0' and endReset = '0'  then
				count <= '1';
				loadSec <= '0';
				loadMin <= '0'; 
				end if;
			
	
		end if;
	end process;
	
end Signals;
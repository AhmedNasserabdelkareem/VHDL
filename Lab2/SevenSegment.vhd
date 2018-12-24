library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SevenSegment is
port( IN0: in STD_LOGIC_vector(3 downto 0);
	   IN1: in STD_LOGIC_vector(3 downto 0);
		IN2: in STD_LOGIC_vector(3 downto 0);
		IN3: in STD_LOGIC_vector(3 downto 0);
		clk: in STD_LOGIC;
		AN0: out STD_LOGIC;
		AN1: out STD_LOGIC;
		AN2: out STD_LOGIC;
		AN3: out STD_LOGIC;
		DP: out STD_LOGIC;
      SEVEN_SEG: out STD_LOGIC_VECTOR(6 downto 0)
	);
end SevenSegment;

architecture Behavioral of SevenSegment is

begin
process (clk)
variable count: STD_LOGIC_VECTOR(10 downto 0);
variable digit: STD_LOGIC_VECTOR(3 downto 0);
variable index: STD_LOGIC_VECTOR(1 downto 0);
		begin
		
		if (clk = '1' and clk'event) then
		
			--clock counter between digits
			if (count = X"400") then  --count till 1024
				count := (others => '0');
			else 
				count := count + 1;
			end if;
			
			--each digit
			if(count = X"400") then 
				if (index = "00") then 
				digit := IN0;
				elsif(index = "01")then 
				digit := IN1;
				elsif(index = "10")then 
				digit := IN2;
				elsif(index = "11")then 
				digit := IN3;
				end if;
				
				if (index = "11") then 
					index := "00";
				else 
					index := index + 1;
				end if;
			
			end if;
				
			if (digit = "0000") then 
				SEVEN_SEG <= "0000001";
			elsif (digit = "0001") then 
				SEVEN_SEG <= "1001111";
			elsif (digit = "0010") then 
				SEVEN_SEG <= "0010010";
			elsif (digit = "0011") then 
				SEVEN_SEG <= "0000110";
			elsif (digit = "0100") then 
				SEVEN_SEG <= "1001100";
			elsif (digit = "0101") then 
				SEVEN_SEG <= "0100100";
			elsif (digit = "0110") then 
				SEVEN_SEG <= "0100000";
			elsif (digit = "0111") then 
				SEVEN_SEG <= "0001111";
			elsif (digit = "1000") then 
				SEVEN_SEG <= "0000000";
			elsif (digit = "1001") then 
				SEVEN_SEG <= "0000100";
			elsif (digit = "1010") then 
				SEVEN_SEG <= "0001000";
			elsif (digit = "1011") then 
				SEVEN_SEG <= "1100000";
			elsif (digit = "1100") then 
				SEVEN_SEG <= "0110001";
			elsif (digit = "1101") then 
				SEVEN_SEG <= "1000010";
			elsif (digit = "1110") then 
				SEVEN_SEG <= "0110000";
			elsif (digit = "1111") then 
				SEVEN_SEG <= "0111000";
			end if;
			
		end if;
			
		end process;

end Behavioral;


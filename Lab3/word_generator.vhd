
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity word_generator is
 Port (    code : in  STD_LOGIC_vector(2 downto 0);
           output : out  STD_LOGIC_vector(27 downto 0)
			 );
end word_generator;

architecture Behavioral of word_generator is
signal input_code :STD_LOGIC_vector(2 downto 0):= "000";
signal result :STD_LOGIC_vector(27 downto 0):= "0000000000000000000000000000";

begin
input_code <= code;
output <= result;

process(input_code)
begin
	case input_code is
		when "000" =>
			--old
			result <= "0000001111000110000101111111";	
		when "001" =>
			--new1
			result <= "1101010011000010101011001111";	
		when "010" =>
			--new2
			result <= "1101010011000010101010010010";	
		when "011" =>
			--done
			result <= "1000010000000111010100110000";	
		when "100" =>
		   --lock
			result <= "1110001000000101100011001000";	
		when "101" =>
			--Err
			result <= "0110000111101011110101111111";	
		when "110" =>
			--open
			result <= "0000001001100001100001101010";	
		when others =>
			--none
			result <= "1111111111111111111111111111";
	end case;

end process;


end Behavioral;


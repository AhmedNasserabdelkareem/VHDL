library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity seven_segment is
	 Port ( display : in  STD_LOGIC_vector(2 downto 0);
           output : out  STD_LOGIC_vector(6 downto 0);
			  anode : out STD_LOGIC_vector(3 downto 0);
			  clk : in STD_LOGIC);
end seven_segment;


architecture Behavioral of seven_segment is

component word_generator is
	PORT(
         code : IN  std_logic_vector(2 downto 0);
         output : OUT  std_logic_vector(27 downto 0)
        );
END COMPONENT; 

signal input_code :STD_LOGIC_vector(2 downto 0):= "000";
SIGNAL firstDigit  :STD_LOGIC_vector(6 downto 0) :="0000000";
SIGNAL secondDigit : STD_LOGIC_vector(6 downto 0) :="0000000";
SIGNAL thirdDigit  :STD_LOGIC_vector(6 downto 0) :="0000000";
SIGNAL fourthDigit  :STD_LOGIC_vector(6 downto 0) :="0000000";
SIGNAL word  :STD_LOGIC_vector(27 downto 0) :="0000000000000000000000000000";

signal d : std_logic_vector (3 downto 0) := "0111";
SIGNAL result  :STD_LOGIC_vector(6 downto 0) :="0000000";


begin


	 bit1:word_generator port map(input_code,word);
	 output <= result;
	 input_code <= display;
	 anode <= d;
	 firstDigit <= word(6 downto 0);
	 secondDigit <= word(13 downto 7);
	 thirdDigit <= word(20 downto 14);
	 fourthDigit <= word(27 downto 21);
		
	process(clk) 
		begin
			if(rising_edge(clk)) then
			
			case d is
				 when "1110" => 
						d <= "1101";
						result <= secondDigit;
				 when "1101" => 
						d <= "1011"; 
						result <= thirdDigit;
				 when "1011" => 
						d <= "0111"; 
						result <= fourthDigit;
				 when others => 
						d <= "1110";
						result <= firstDigit;
			
			end case;
			end if;
	end process;   


end Behavioral;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:08:49 04/19/2018 
-- Design Name: 
-- Module Name:    Top_Module - Behavioral 
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

entity Top_Module is
port(
 mode : in  STD_LOGIC;
 clk :in std_logic;
 first : in std_logic;
 second : in std_logic;
 myPattern : in STD_LOGIC_VECTOR (2 downto 0);
 outputs : out  STD_LOGIC_vector(6 downto 0);
 an : out STD_LOGIC_vector(3 downto 0);
 temp : out STD_LOGIC_vector(2 downto 0)
);
end Top_Module;

architecture Behavioral of Top_Module is
COMPONENT lock_module is
    Port ( mode : in  STD_LOGIC;
           pattern : in  STD_LOGIC_VECTOR (2 downto 0);
           display : out  STD_LOGIC_VECTOR (2 downto 0);
			   clock : in STD_LOGIC
			  );
end COMPONENT;

COMPONENT CU is

   port( 
		firstButton    : in std_logic;     --BTN2
		secondButton   : in std_logic;     --BTN1
		clock   : in std_logic;			     --T9 clock for running this module
		userClock           : out std_logic    --Flag to take the pattern
	);
		
end COMPONENT;
COMPONENT seven_segment is
	 Port ( display : in  STD_LOGIC_vector(2 downto 0);
           output : out  STD_LOGIC_vector(6 downto 0);
			  anode : out STD_LOGIC_vector(3 downto 0);
			  clk : in STD_LOGIC);
end COMPONENT;


signal flag:  std_logic :='0';
signal tempclk :  std_logic  := '0' ;
signal tempclksecond :  std_logic  := '0' ;
signal display:  std_logic_vector(2 downto 0); 
signal nodes : STD_LOGIC_vector(3 downto 0);
signal lastoutput : STD_LOGIC_vector(6 downto 0);

begin
Mode_Control    : CU port map (first,second,clk,flag);
lock  : lock_module port map (mode,myPattern,display,flag);
displaySeg   : seven_segment port map (display,lastoutput,nodes,clk);
outputs <= lastoutput;
an <= nodes;
temp <= display;

end Behavioral;


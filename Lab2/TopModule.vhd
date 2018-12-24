----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:55:51 03/12/2018 
-- Design Name: 
-- Module Name:    TopModule - Behavioral 
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

entity TopModule is
port (
mainclk : in std_logic;
		setSeconds : in std_logic;     --BTN3  
		setMinuets : in std_logic;     --BTN2
		endReset   : in std_logic;     --BTN1
		normalMode : in std_logic;     --BTN0
		DI :in std_logic_vector(7 downto 0);
		AN0: out STD_LOGIC;
		AN1: out STD_LOGIC;
		AN2: out STD_LOGIC;
		AN3: out STD_LOGIC;
		DP: out STD_LOGIC;
      SEVEN_SEG: out STD_LOGIC_VECTOR(6 downto 0)

);
end TopModule;

architecture Behavioral of TopModule is
component CLK50_1 is
port(clk : in std_logic;
     clock: out std_logic
	);
end component;
Component CLK1000_1 is 
port(clk : in std_logic;
     clock: out std_logic
	);
end Component;
component CU is
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
end component;
component Clock is 
port (
loadMin: in std_logic ;
loadSec:in std_logic ;
count : in std_logic;
clk : in std_logic;
DI :in std_logic_vector(7 downto 0);
Sec: out std_logic_vector(7 downto 0);
Min: out std_logic_vector(7 downto 0)
);
end component;
component SevenSegment is 
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
end component;
signal tempClk50 : STD_LOGIC:= '0';
signal tempClk10 : STD_LOGIC := '0';
signal tempClk100 : STD_LOGIC :='0';
signal Sec    : std_logic := '0';    --Load seconds
signal Min    :  std_logic :='0';    --Load Minuets
signal counter      :  std_logic  := '0' ;  --Count
signal Secarr: std_logic_vector(7 downto 0);
signal Minarr:  std_logic_vector(7 downto 0); 
signal	ch0:  STD_LOGIC;
signal		ch1: STD_LOGIC;
signal		ch2:  STD_LOGIC;
signal		ch3:  STD_LOGIC;
signal		flash:  STD_LOGIC;
signal      seg: STD_LOGIC_VECTOR(6 downto 0);
begin

firstclk    : CLK50_1 port map (mainclk,tempClk50);
secondtclk  : CLK1000_1 port map (tempClk50,tempClk10);
thirdclk   : CLK1000_1 port map (tempClk10,tempClk100);
control   : CU port map (tempClk100,setSeconds,setMinuets,endReset,normalMode,Sec,Min,counter);
clockmodule: clock port map (Sec,Min,counter,tempclk100,DI,Secarr,Minarr);
segment: SevenSegment port map (Secarr(7 downto 4),Secarr (3 downto 0),Minarr(7 downto 4),Minarr (3 downto 0), tempClk100,ch0,ch1,ch2,ch3,flash,seg);
AN0 <= ch0;
AN1 <= ch1;
AN2 <= ch2;
AN3 <= ch3;
DP <= flash;
SEVEN_SEG <= seg;
--
end Behavioral;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:17:06 09/26/2012 
-- Design Name: 
-- Module Name:    UART - Behavioral 
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

entity UART is
    Port ( clk : in  STD_LOGIC;
           datoRx : in  STD_LOGIC;
           salRx : out  STD_LOGIC_VECTOR (7 downto 0);
           datopp : out  STD_LOGIC;  --- señal que nos dice que el modulo Rx ya ha terminado de convertir la señal que le llego en serie a paralelo
           transmite : in  STD_LOGIC;
           datoTX : in  STD_LOGIC_VECTOR (7 downto 0);
			  freD :out std_logic;
           salTx : out  STD_LOGIC;
			  estadoRX : out std_logic_vector ( 1downto 0);
			  indexRX : out STD_LOGIC_vector(3 downto 0);
			  estadoTX : out std_logic_vector ( 1downto 0));
end UART;

architecture Behavioral of UART is
---------------- SEÑALES
signal clock : std_logic:='0';
signal t : std_logic:='0';
signal pBits : std_logic_vector (7 downto 0);
---------------- COMPONENTES
component Div_fre is
    Port ( clk : in  STD_LOGIC;
           clk_out : out  STD_LOGIC:='0');
end component;
----------------------------------------------
component TX_module is
    Port ( Transmite : in  STD_LOGIC;
           dato : in  STD_LOGIC_VECTOR (7 downto 0);
			  clk : in  STD_LOGIC;
			  clkBaud : in  STD_LOGIC;
			  estadoA : out  STD_LOGIC_VECTOR (1 DOWNTO 0);
           sal : out  STD_LOGIC);
end component;
-----------------------------------------------
component RX_module is
    Port ( clk : in  STD_LOGIC;
			  baud : in  STD_LOGIC;
           serie : in  STD_LOGIC;
			  encb : out  STD_LOGIC; -- encb va a ser la señal de completado de nuestro modulo de serieparalelo
           data : out  STD_LOGIC_VECTOR (7 downto 0);
			  index : out STD_LOGIC_vector(3 downto 0);
			  RXstate : out std_logic_vector (1 downto 0));
end component;
begin
------------------------
div1:Div_fre 
   Port Map ( clk =>clk, clk_out => clock);
	fred<=clock;
TX:TX_module 
    Port Map(Transmite=>t ,dato=>datoTX ,clk=>clk, clkBaud => clock, estadoA => estadoTX, sal=>salTx);
RX:RX_module 
    Port Map( clk=>clk, baud => clock ,serie=>datoRx ,encb=>t , data =>pBits, index => indexRX, RXstate => estadoRX);
datopp <= t;
salRx <= pBits;
end Behavioral;


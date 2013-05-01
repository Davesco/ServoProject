
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity RX_module is
    Port ( clk : in  STD_LOGIC;
			  baud : in  STD_LOGIC;
           serie : in  STD_LOGIC;
			  encb : out  STD_LOGIC; -- encb va a ser la señal de completado de nuestro modulo de serieparalelo
           data : out  STD_LOGIC_VECTOR (7 downto 0):="11111111";
			  index : out STD_LOGIC_vector(3 downto 0);
			  RXstate : out std_logic_vector (1 downto 0));
end RX_module;

architecture Behavioral of RX_module is

signal a,b,c,d,e :std_logic :='0';
signal estado :std_logic_vector(1 downto 0):="00";
signal numdata :std_logic_vector(3 downto 0):="0000";
signal dat :std_logic_vector(7 downto 0):="00000000";
------------------------------------

component M_estados is
    Port ( clk : in  STD_LOGIC;
			  baud : in  STD_LOGIC;
			  fin_contabits : in  STD_LOGIC;
           dato : in  STD_LOGIC;
           salida : out  STD_LOGIC_VECTOR (1 downto 0);
			  avisoRx : out std_logic);
end component;

component serie_paralelo is
    Port ( serie : in  STD_LOGIC;
           data : out  STD_LOGIC_VECTOR (7 downto 0);
			  clk : in std_logic;
           estado : in  STD_LOGIC_VECTOR (1 downto 0);
			  completado : out std_logic;
           contador : in  STD_LOGIC_VECTOR (3 downto 0));
end component;

component CuentaBits is
    Port ( clk : in  STD_LOGIC;
           en  : in  STD_LOGIC;
			  num : out STD_LOGIC_vector(3 downto 0);
           fin_contabits : out  STD_LOGIC);
end component;

begin

a<=baud;
RXstate <= estado;
index <= numdata;

c <= estado(1) and not(estado(0));

contador:CuentaBits 
    Port Map(clk=>a,en=>c  ,num=>numdata ,fin_contabits =>b);
	 
Mestados:M_estados 
    Port Map(clk=>clk, baud => baud,  fin_contabits=>b, avisoRx => encb, dato=>serie ,salida=>estado);
	 
SP:serie_paralelo 
    Port Map(serie=>serie ,data=>data ,clk=>a ,estado=>estado, contador =>numdata);

end Behavioral;


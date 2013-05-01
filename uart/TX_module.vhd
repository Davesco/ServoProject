
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TX_module is
    Port ( Transmite : in  STD_LOGIC;
           dato : in  STD_LOGIC_VECTOR (7 downto 0);
			  clk : in  STD_LOGIC;
			  clkBaud : in  STD_LOGIC;
			  estadoA : out  STD_LOGIC_VECTOR (1 DOWNTO 0);
			  datovoy: out  STD_LOGIC_VECTOR (3 DOWNTO 0);
           sal,freD,trans,finConta,vd : out  STD_LOGIC);
end TX_module;

architecture Behavioral of TX_module is
----------------------------------------
signal a,b,c,d,e,f,g,trasmiting,car_data,desplz,serie: std_logic:='0';
signal estate :std_logic_vector (1 downto 0):="00";
signal num :std_logic_vector (3 downto 0):="0000";
----------------------------------------

component CuentaBits is
    Port ( clk : in  STD_LOGIC;
           clkBaud  : in  STD_LOGIC;
           en  : in  STD_LOGIC;
			  num : out STD_LOGIC_vector(3 downto 0):="0000";
           fin_contabits : out  STD_LOGIC);
end component;

component Control is
    Port ( transmite : in  STD_LOGIC;
           clk,endRD : in  STD_LOGIC;
           baud : in  STD_LOGIC;
           fin_contabits : in  STD_LOGIC;
           transmitiendo : out  STD_LOGIC;
           cargadato : out  STD_LOGIC;
			  estado : out  STD_LOGIC_VECTOR (1 DOWNTO 0);
           desplaza : out  STD_LOGIC);
end component;

component  Carga is
    Port ( data : in  STD_LOGIC_VECTOR (7 downto 0);
           cargadato : in  STD_LOGIC;
			  clk :in std_logic;
           desplaza : in  STD_LOGIC_vector(3 downto 0);
           serie,endRd : out  STD_LOGIC);
end component;

component Mux
	Port ( dato_tx_in ,clk: in  STD_LOGIC;
			  sel : in  STD_LOGIC_VECTOR(1 DOWNTO 0);
           salida : out  STD_LOGIC);
end component;
-------------------------------------------
begin
	 a <= clk;
	 d<=not(estate(0))and estate(1);
	 vd<=d;
	 freD<=clkBaud;
	 
cuent1:CuentaBits 
    Port Map( clk => clkBaud, clkBaud => clkBaud, en=> d,num=>num, fin_contabits =>c);
	 finConta<=c;
	 datovoy<= num;
	 
control1:control
		Port Map ( transmite => Transmite,
		clk =>a ,
		endRD =>g,
		baud => clkBaud ,
		fin_contabits => c ,
		transmitiendo => trasmiting,
		cargadato =>car_data,
		estado => estate ,
		desplaza => desplz );
		----------
		
		estadoA<=estate;
		
carga1:Carga 
    Port Map( data => dato,
           cargadato => car_data,
			  clk =>a,
           desplaza =>num,
			  endRD =>g,
           serie =>serie);
			  trans<=serie;
			  
mux1:Mux
	 Port Map( dato_tx_in =>serie,clk=>a, sel=>estate, salida => sal);

end Behavioral;


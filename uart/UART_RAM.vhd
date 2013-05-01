library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UART_RAM is
    Port ( clk_ppal :in STD_LOGIC;
			  RX : in  STD_LOGIC;
           TX : out  STD_LOGIC;
			  Transmite_ppal : STD_LOGIC;
			  Address : in STD_LOGIC_VECTOR (7 downto 0)
			  );
			 
end UART_RAM;

architecture Behavioral of UART_RAM is

component UART is
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
end component;

COMPONENT ram
    PORT(
         Clk : IN  std_logic;
		   address_i : in std_logic_vector(7 downto 0);
         we : IN  std_logic;
         data_i : IN  std_logic_vector(7 downto 0);
         data_o : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;

-----------------------------------------------------
--SIGNALS
-----------------------------------------------------
signal DAT_RX : std_logic_vector (7 downto 0);
signal DAT_TX : std_logic_vector (7 downto 0);
signal WE_RX : std_logic;

begin

--------------------------------------------------
--falta agregar instanciación de los componentes (listo) 
--Hay que correguir un proble de REDECLARACION del symbolo RAM_EXAMPLE
--------------------------------------------------

inst_UART: UART PORT MAP(
		clk => clk_ppal,
		datoRx => RX,
		transmite => Transmite_ppal,
		salRx => DAT_RX,
		datoTX => DAT_TX,
		datopp => WE_RX,
		salTx => TX 
	);

inst_ram: ram PORT MAP(
		Clk => clk_ppal,
		we =>WE_RX,
		address_i => Address,
		data_i => DAT_RX,
		data_o => DAT_TX
	);

--Tener cuidado con todas las salidas y entradas que hay por montones

end Behavioral;


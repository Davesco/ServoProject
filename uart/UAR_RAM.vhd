library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity UAR_RAM is
    Port ( RX : in  STD_LOGIC;
           TX : out  STD_LOGIC_VECTOR (7 downto 0));
end UAR_RAM;



 COMPONENT  UART
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

 COMPONENT ram_example
    PORT(
         Clk : IN  std_logic;
		   address_i : in std_logic_vector(7 downto 0);
         we : IN  std_logic;
         data_i : IN  std_logic_vector(7 downto 0);
         data_o : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    


architecture Behavioral of UAR_RAM is

begin


end Behavioral;


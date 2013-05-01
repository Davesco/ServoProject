library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Control is
    Port ( transmite : in  STD_LOGIC;
           clk,endRD : in  STD_LOGIC;
           baud : in  STD_LOGIC;
           fin_contabits : in  STD_LOGIC;
           transmitiendo : out  STD_LOGIC := '0';
           cargadato : out  STD_LOGIC;
			  estado : out  STD_LOGIC_VECTOR (1 DOWNTO 0) := "00";
           desplaza : out  STD_LOGIC);
end Control;

architecture general of Control is

signal selector :std_logic_vector(1 downto 0):="00";
----------------------------------------------------------------

----------------------------------------------------------------

----------------------------------------------------------------
begin
process(clk, baud) is
begin
		if rising_edge(clk) then
			if	(selector = "00") and (transmite ='0') then
				cargadato <= '0';
				desplaza <= '0';
				transmitiendo <= '0';
			elsif	(selector = "00") and (transmite ='1') then -- se pasa al estado envio de bit de inicio
				cargadato <= '0';
				desplaza <= '0';
				transmitiendo <= '1';
				selector <="01";
			elsif	(selector = "01") and (baud ='0') then
				cargadato <= '0';
				desplaza <= '0';
				transmitiendo <= '1';
			elsif	(selector = "01") and (baud ='1') then -- se pasa al estado envio de datos
				cargadato <= '0';
				desplaza <= '0';
				transmitiendo <= '1';
				selector <="10";
			elsif	(selector = "10") and (fin_contabits = '0')  then
				cargadato <= '1';
				desplaza <= baud;
				transmitiendo <= '1';
			elsif	(selector = "10") and (fin_contabits = '1') then --se pasa al estado envio de bit de fin
				cargadato <= '0';
				desplaza <= '0';
				transmitiendo <= '1';
				selector <="11";
			elsif	(selector = "11") and (baud = '0') then
				cargadato <= '0';
				desplaza <= '0';
				transmitiendo <= '1';
			elsif	(selector = "11") and (baud = '1') then  -- se pasa al estado envio de inicio o idle
				cargadato <= '0';
				desplaza <= '0';
				transmitiendo <= '0';
				selector <="00";
			end if;
			estado<=selector;
		end if;
end process;	

end general;


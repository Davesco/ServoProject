library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity M_estados is
    Port ( clk : in  STD_LOGIC;
			  baud : in  STD_LOGIC;
			  fin_contabits : in  STD_LOGIC;
           dato : in  STD_LOGIC;
           avisoRX : out  STD_LOGIC := '0';
           salida : out  STD_LOGIC_VECTOR (1 downto 0):="00");
end M_estados;

architecture Behavioral of M_estados is
signal estado : std_logic_vector(1 downto 0):="00";
begin
process(clk, baud) is
begin
		if rising_edge(clk) then
			if	(estado = "00") and (dato ='1') then
				avisoRX <= '0';
				estado <="00";
			elsif	(estado = "00") and (dato ='0') then
				estado <="01";
			elsif	(estado = "01") and (baud ='1') then
				estado <="10";
			elsif	(estado = "10") and (fin_contabits = '1') then
				estado <="11";
			elsif	(estado = "11") and (baud = '1') and (dato = '1') then
				avisoRX <= '1';
				estado <="00";
			end if;
			salida<=estado;
		end if;
end process;
--process(clk, baud)is
--begin
--	if rising_edge(clk) then
--				if estado="00" and dato ='1' then
--					avisoRx <= '0';
--					estado <= "00";
--				elsif  estado="00" and dato ='0' then
--					report "Cambio a estado '01'" severity NOTE;
--					estado <= "01";
--				elsif estado = "01" then --and fin_contabits='1' then
--					report "Cambio a estado '10'" severity NOTE;
--					estado <="10";
--				elsif estado = "10" and fin_contabits='1' then
--					estado <="11";
--				elsif (estado ="11") and dato='1' then
--					avisoRx <= '1';
--					estado <="00";
--		end if;
--	end if;
--salida<=estado;
--
--end process;
end Behavioral;


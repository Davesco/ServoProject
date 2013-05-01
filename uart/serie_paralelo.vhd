library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity serie_paralelo is
    Port ( serie : in  STD_LOGIC;
           data : out  STD_LOGIC_VECTOR (7 downto 0);
			  clk : in std_logic;
           estado : in  STD_LOGIC_VECTOR (1 downto 0);
			  completado : out std_logic:='0';
           contador : in  STD_LOGIC_VECTOR (3 downto 0));
end serie_paralelo;

architecture Behavioral of serie_paralelo is

begin


process(clk)is
begin

	if rising_edge(clk) then
		if estado = "10" then
			case (contador)is
				when "0000" => data(7) <= serie ;
				completado<='0';
				when "0001" => data(6) <= serie ;
				completado<='0';
				when "0010" => data(5) <= serie ;
				completado<='0';
				when "0011" => data(4) <= serie ;
				completado<='0';
				when "0100" => data(3) <= serie ;
				completado<='0';
				when "0101" => data(2) <= serie ;
				completado<='0';
				when "0110" => data(1) <= serie ;
				completado<='0';
				when "0111" => data(0) <= serie ;
				completado<='1';
				when others => null;
			end case;
		
--		elsif estado /= "01" then
--				data <= "11111111";	
--				completado <= '0';
		
		end if;
		
	end if;
end process;

end Behavioral;


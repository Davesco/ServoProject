
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;


entity Carga is
    Port ( data : in  STD_LOGIC_VECTOR (7 downto 0);
           cargadato : in  STD_LOGIC;
			  clk :in std_logic;
			  desplaza :in std_logic_VECTOR (3 downto 0);
           serie,endRD : out  STD_LOGIC:='0');
end Carga;

architecture Behavioral of Carga is
--------------------------------------------------------
signal a,b: std_logic:='0';
signal cont :std_logic_vector(3 downto 0):="0000";
begin
process(desplaza,cargadato)is
begin
------------------
	if (cargadato='1') then
			case (desplaza)is
				when "0000" => 
					serie <= data(7);
					endRD<='0';
					
				when "0001" => 
					serie <= data(6);
					endRD<='0';
					
				when "0010" => serie <= data(5);
							endRD<='0';
				when "0011" => serie <= data(4);
							endRD<='0';
				when "0100" => serie <= data(3);
							endRD<='0';
				when "0101" => serie <= data(2);
							endRD<='0';
				when "0110" => serie <= data(1);
							endRD<='0';
				when "0111" => serie <= data(0);
							endRD<='1';
				when others => serie <='0';
							cont <="0000";
							endRD<='0';
					end case;
			cont <= cont +1;
		end if;
end process;
end Behavioral;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:04:47 09/23/2012 
-- Design Name: 
-- Module Name:    RD - Behavioral 
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
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RD is
    Port ( data : in  STD_LOGIC_VECTOR (8 downto 0);
	        clk : in  STD_LOGIC;
			  terminado: out std_logic:='0';
           sal : out  STD_LOGIC:='0');
end RD;

architecture Behavioral of RD is
signal cont :std_logic_vector(3 downto 0):="0000";
begin
process(clk)is
begin
		if rising_edge(clk) then
			if cont > "1000" then 
				cont <="0000";
				terminado <= '1';
			end if;
			case (cont)is
				when "0000" => sal <= 
							data(0);
							terminado<='0';
				when "0001" => sal <= data(1);
				when "0010" => sal <= data(2);
				when "0011" => sal <= data(3);
				when "0100" => sal <= data(4);
				when "0101" => sal <= data(5);
				when "0110" => sal <= data(6);
				when "0111" => sal <= data(7);
				when "1000" => sal <= data(8);
				when others => sal <='0';
				end case;
			cont <= cont +1;
		end if;
end process;
end Behavioral;


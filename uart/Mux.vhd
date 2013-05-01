library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux is
    Port ( dato_tx_in,clk: in  STD_LOGIC;
			  sel : in  STD_LOGIC_VECTOR(1 DOWNTO 0);
           salida : out  STD_LOGIC:='1');
end Mux;

architecture general of Mux is
begin
process(sel,dato_tx_in,clk) is
begin
--if rising_edge(clk) then
	if sel = "01" then 
		salida<= '0';
	elsif sel ="10" then 
		salida<= dato_tx_in;
	elsif sel ="00" then 
		salida<= '1';
	elsif sel ="11" then 
		salida<= '1';
	end if;	
--end if;
end process;
end general;
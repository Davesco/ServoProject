----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:39:47 09/18/2012 
-- Design Name: 
-- Module Name:    Div_freq - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Div_fre is
    Port ( clk : in  STD_LOGIC;
           clk_out : out  STD_LOGIC:='0');
end Div_fre;

architecture general of Div_fre is

signal cont: integer range 0 to 200_000:=0;

begin

process(clk)
	begin
		if rising_edge(clk) then
			if cont = 5207 then
				cont <= 0;
				clk_out <= '1';
			else
				cont <= cont +1;
				clk_out <= '0';
			end if;
		end if;
		
--	 if (rising_edge(clk)) then
--	   cont<=cont+1;
--			if(cont<2604) then
--				clk_out<='0';
--			end if;
--			if (cont=2604) then
--			    clk_out<='1';
--			end if;
--			if (cont>5208) then
--				cont<=0;
--			end if;
--		end if;
		end process;		
end general;


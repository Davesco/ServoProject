----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:46:12 09/22/2012 
-- Design Name: 
-- Module Name:    CuentaBits - Behavioral 
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

entity CuentaBits is
    Port ( clk : in  STD_LOGIC;
           clkBaud  : in  STD_LOGIC := '0';
           en  : in  STD_LOGIC;
			  num : out STD_LOGIC_vector(3 downto 0):="0000";
           fin_contabits : out  STD_LOGIC:='0');
end CuentaBits;

architecture general of CuentaBits is
signal cont :std_logic_vector(3 downto 0):= "0000";
begin

process(clk,en) is
begin
		if en ='0' then
			fin_contabits <= '0';
			elsif rising_edge(clk) and en='1' then
			if cont = "0111" then
				fin_contabits <= '1';
				cont <="0000";
			elsif cont < "0111"  then
				cont <= cont +1;
				fin_contabits <= '0';
			end if;
		end if;
		num<=cont;
end process;
end general;


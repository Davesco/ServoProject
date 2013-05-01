----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:13:31 09/22/2012 
-- Design Name: 
-- Module Name:    prueba_cuentaydivf - Behavioral 
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

entity prueba_cuentaydivf is
    Port ( clk : in  STD_LOGIC;
           terminado,v : out  STD_LOGIC:='0');
end prueba_cuentaydivf;

architecture Behavioral of prueba_cuentaydivf is
signal a,c: std_logic :='0';
-----------------------------------------------------------------
component Div_fre is
    Port ( clk : in  STD_LOGIC;
           clk_out : out  STD_LOGIC:='0');
end component;

component CuentaBits is
    Port ( clk : in  STD_LOGIC;
           en  : in  STD_LOGIC;
           fin_contabits : out  STD_LOGIC);
end component;
----------------------------------------------------------------
begin
div1:Div_fre 
    Port Map ( clk =>clk, clk_out => a);
	 v<=a;
cuent1:CuentaBits 
    Port Map( clk => a, en=> '1', fin_contabits =>c);
terminado <= c;

end Behavioral;


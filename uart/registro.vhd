----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:33:57 09/25/2012 
-- Design Name: 
-- Module Name:    registro - Behavioral 
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

entity registro is
    Port ( data : in  STD_LOGIC_VECTOR (8 downto 0);
           en : in  STD_LOGIC;
           sal : out  STD_LOGIC_VECTOR (8 downto 0):="000000000");
end registro;

architecture Behavioral of registro is
--signal a:std_logic_vector(8 downto 0):="000000000";
begin
--a<=data;
process(en)is
begin
	if (en ='1') then 
		sal<=data;
		end if;
end process;
end Behavioral;


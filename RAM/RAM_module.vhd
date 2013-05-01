library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use std.textio.all;
use IEEE.numeric_bit.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ram is
port (Clk : in std_logic;
        we : in std_logic;
		  address_i : in std_logic_vector(7 downto 0);
        data_i : in std_logic_vector(7 downto 0);
        data_o : out std_logic_vector(7 downto 0)
     );
end ram;

architecture Behavioral of ram is

type ram_t is array (0 to 255) of std_logic_vector(7 downto 0);
signal ram : ram_t := (others => (others => '0'));
signal address : integer := 0;

begin


PROCESS(Clk)
BEGIN
    if(rising_edge(Clk)) then
        if(we='1') then
            ram(address) <= data_i;
				address <= address + 1;
        else 
        data_o <= ram(conv_integer(address_i));
		  end if;
    end if; 
END PROCESS;

end Behavioral;
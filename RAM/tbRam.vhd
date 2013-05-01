LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY tbRam IS
END tbRam;
 
ARCHITECTURE behavior OF tbRam IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ram
    PORT(
         Clk : IN  std_logic;
		   address_i : in std_logic_vector(7 downto 0);
         we : IN  std_logic;
         data_i : IN  std_logic_vector(7 downto 0);
         data_o : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
	signal address_i : std_logic_vector(7 downto 0);
   signal we : std_logic := '0';
   signal data_i : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal data_o : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ram_example PORT MAP (
          Clk => Clk,
          we => we,
			 address_i => address_i,
          data_i => data_i,
          data_o => data_o
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	
		we <= '1';
		data_i <= "10000000";
		wait for 10 ns;
		data_i <= "10000001";
		wait for 10 ns;
		data_i <= "10000011"; 
		wait for 20 ns;
		we <= '0';
		address_i <= "00000000";
		wait for 10 ns;
		address_i <= "00000001";
		wait for 10 ns;
		address_i <= "00000010";
		wait for 20 ns;
		we <= '1';
		address_i <= "00000000";
		wait for 10 ns;
		address_i <= "00000001";
		wait for 10 ns;
		address_i <= "00000010";

      -- insert stimulus here 

      wait;
   end process;

END;

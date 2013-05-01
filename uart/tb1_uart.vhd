		--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:33:21 09/26/2012
-- Design Name:   
-- Module Name:   C:/Users/Administrador/Desktop/Lab_electroII/uart/uart/tb1_uart.vhd
-- Project Name:  uart
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UART
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb1_uart IS
END tb1_uart;
 
ARCHITECTURE behavior OF tb1_uart IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UART
    PORT(
         clk : IN  std_logic;
         datoRx : IN  std_logic;
         salRx : OUT  std_logic_vector(7 downto 0);
         datopp : OUT  std_logic;
         transmite : IN  std_logic;
         datoTX : IN  std_logic_vector(7 downto 0);
			freD :out std_logic;
         salTx : OUT  std_logic;
			estadoRX : out std_logic_vector (1 downto 0);
			indexRX : out STD_LOGIC_vector(3 downto 0);
			estadoTX : out std_logic_vector (1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal datoRx : std_logic := '0';
   signal transmite : std_logic := '0';
   signal datoTX : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal salRx : std_logic_vector(7 downto 0);
   signal datopp : std_logic;
	signal freD : std_logic;
   signal salTx : std_logic;
	signal estadoRX : std_logic_vector (1 downto 0);
	signal indexRX : STD_LOGIC_vector(3 downto 0);
	signal estadoTX : std_logic_vector (1 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UART PORT MAP (
          clk => clk,
          datoRx => datoRx,
          salRx => salRx,
          datopp => datopp,
          transmite => transmite,
			 freD => freD,
          datoTX => datoTX,
          salTx => salTx,
			 estadoRX => estadoRX,
			 indexRX => indexRX,
			 estadoTX => estadoTX
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		--datoTx<="10011010";
		--transmite<='1';	
      --wait for clk_period*10;
		
			datoRx<='1';
		wait for clk_period*5208;	
			datoRx<='1';
		wait for clk_period*5208;	
			datoRx<='1';
		wait for clk_period*5208;	
			datoRx<='1';
		wait for clk_period*5208;	
			datoRx<='0';
		wait for clk_period*5208;	
			datoRx<='1';
		wait for clk_period*5208;	
			datoRx<='0';
		wait for clk_period*5208;
			datoRx<='1';
		wait for clk_period*5208;
			datoRx<='1';
		wait for clk_period*5208;
			datoRx<='0';
		wait for clk_period*5208;
			datoRx<='1';
		wait for clk_period*5208;
			datoRx<='1';
		wait for clk_period*5208;
			datoRx<='0';
		wait for clk_period*5208;
			datoRx<='1';
		wait for clk_period*5208;	
			datoRx<='1';	
		wait for 5 ns;		

      -- insert stimulus here 

      wait;
   end process;

END;

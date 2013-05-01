--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:45:22 09/25/2012
-- Design Name:   
-- Module Name:   C:/Users/Administrador/Desktop/Lab_electroII/uart/uart/tb4_TX.vhd
-- Project Name:  uart
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: TX_module
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
 
ENTITY tb4_TX IS
END tb4_TX;
 
ARCHITECTURE behavior OF tb4_TX IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TX_module
    PORT(
         Transmite : IN  std_logic;
         dato : IN  std_logic_vector(7 downto 0);
         clk : IN  std_logic;
         estadoA : OUT  std_logic_vector(1 downto 0);
         datovoy : OUT  std_logic_vector(3 downto 0);
         sal : OUT  std_logic;
         freD : OUT  std_logic;
         trans : OUT  std_logic;
         finConta : OUT  std_logic;
         vd : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Transmite : std_logic := '0';
   signal dato : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal estadoA : std_logic_vector(1 downto 0);
   signal datovoy : std_logic_vector(3 downto 0);
   signal sal : std_logic;
   signal freD : std_logic;
   signal trans : std_logic;
   signal finConta : std_logic;
   signal vd : std_logic;

   -- Clock period definitions
   constant clk_period : time := 52.08 us;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TX_module PORT MAP (
          Transmite => Transmite,
          dato => dato,
          clk => clk,
          estadoA => estadoA,
          datovoy => datovoy,
          sal => sal,
          freD => freD,
          trans => trans,
          finConta => finConta,
          vd => vd
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
      dato<="10011010";
		transmite<='1';
      wait for 100 ns;	
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;

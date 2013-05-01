--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:06:10 09/26/2012
-- Design Name:   
-- Module Name:   C:/Users/Administrador/Desktop/Lab_electroII/uart/uart/Tb_tx.vhd
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
 
ENTITY Tb_tx IS
END Tb_tx;
 
ARCHITECTURE behavior OF Tb_tx IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TX_module
    PORT(
         Transmite : IN  std_logic;
         dato : IN  std_logic_vector(7 downto 0);
         clk : IN  std_logic;
         sal : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Transmite : std_logic := '0';
   signal dato : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal sal : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TX_module PORT MAP (
          Transmite => Transmite,
          dato => dato,
          clk => clk,
          sal => sal
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
      wait for 100 ns;	
		 dato<="10011010";
		transmite<='1';
      wait for 100 ns;
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;

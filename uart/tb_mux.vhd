--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:06:49 09/23/2012
-- Design Name:   
-- Module Name:   C:/Users/Torre/Desktop/uart/uart/tb_mux.vhd
-- Project Name:  uart
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Mux
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
 
ENTITY tb_mux IS
END tb_mux;
 
ARCHITECTURE behavior OF tb_mux IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mux
    PORT(
         dato_tx_in : IN  std_logic;
         sel : IN  std_logic_vector(1 downto 0);
         salida : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal dato_tx_in : std_logic := '0';
   signal sel : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal salida : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mux PORT MAP (
          dato_tx_in => dato_tx_in,
          sel => sel,
          salida => salida
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
			 dato_tx_in <= '1';
          sel <="10";
			      wait for 100 ns;	
			 dato_tx_in <= '1';
          sel <="11";
			 wait for 100 ns;	
			 dato_tx_in <= '1';
          sel <="00";
			 wait for 100 ns;	
			 dato_tx_in <= '1';
          sel <="10";
			 wait for 100 ns;	
			 dato_tx_in <= '1';
          sel <="00";
	       wait for 100 ns;	
			 dato_tx_in <= '1';
          sel <="01";
			 

      wait;
   end process;

END;

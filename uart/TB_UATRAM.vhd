--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:58:54 05/01/2013
-- Design Name:   
-- Module Name:   Z:/Documents/UTP/Semestre 7/Electronica/Proyecto3/uart/TB_UATRAM.vhd
-- Project Name:  uart
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UART_RAM
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
 
ENTITY TB_UATRAM IS
END TB_UATRAM;
 
ARCHITECTURE behavior OF TB_UATRAM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UART_RAM
    PORT(
         clk_ppal : IN  std_logic;
         RX : IN  std_logic;
         TX : OUT  std_logic;
         Transmite_ppal : IN  std_logic;
         Address : IN  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk_ppal : std_logic := '0';
   signal RX : std_logic := '0';
   signal Transmite_ppal : std_logic := '0';
   signal Address : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal TX : std_logic;

   -- Clock period definitions
   constant clk_ppal_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UART_RAM PORT MAP (
          clk_ppal => clk_ppal,
          RX => RX,
          TX => TX,
          Transmite_ppal => Transmite_ppal,
          Address => Address
        );

   -- Clock process definitions
   clk_ppal_process :process
   begin
		clk_ppal <= '0';
		wait for clk_ppal_period/2;
		clk_ppal <= '1';
		wait for clk_ppal_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_ppal_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;

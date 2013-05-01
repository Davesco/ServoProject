--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:28:36 09/22/2012
-- Design Name:   
-- Module Name:   C:/Users/Torre/Desktop/uart/uart/tb_cuenta.vhd
-- Project Name:  uart
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CuentaBits
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
 
ENTITY tb_cuenta IS
END tb_cuenta;
 
ARCHITECTURE behavior OF tb_cuenta IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CuentaBits
    PORT(
         clk : IN  std_logic;
         en : IN  std_logic;
         fin_contabits : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal en : std_logic := '0';

 	--Outputs
   signal fin_contabits : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CuentaBits PORT MAP (
          clk => clk,
          en => en,
          fin_contabits => fin_contabits
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
en<='1';
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;

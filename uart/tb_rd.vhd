--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:14:53 09/23/2012
-- Design Name:   
-- Module Name:   C:/Users/Torre/Desktop/uart/uart/tb_rd.vhd
-- Project Name:  uart
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RD
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
 
ENTITY tb_rd IS
END tb_rd;
 
ARCHITECTURE behavior OF tb_rd IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RD
    PORT(
         data : IN  std_logic_vector(8 downto 0);
         clk : IN  std_logic;
         sal : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal data : std_logic_vector(8 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal sal : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RD PORT MAP (
          data => data,
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
		data<="100110110";
      wait for 100 ns;	
      wait for clk_period*10;


      -- insert stimulus here 

      wait;
   end process;

END;

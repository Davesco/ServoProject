--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:24:11 09/24/2012
-- Design Name:   
-- Module Name:   C:/Users/Administrador/Desktop/Lab_electroII/uart/uart/tb_carga.vhd
-- Project Name:  uart
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Carga
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
 
ENTITY tb_carga IS
END tb_carga;
 
ARCHITECTURE behavior OF tb_carga IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Carga
    PORT(
         data : IN  std_logic_vector(8 downto 0);
         cargadato : IN  std_logic;
         clk : IN  std_logic;
         desplaza : IN  std_logic_vector(3 downto 0);
         serie : OUT  std_logic;
         endRD : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal data : std_logic_vector(8 downto 0) := (others => '0');
   signal cargadato : std_logic := '0';
   signal clk : std_logic := '0';
   signal desplaza : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal serie : std_logic;
   signal endRD : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Carga PORT MAP (
          data => data,
          cargadato => cargadato,
          clk => clk,
          desplaza => desplaza,
          serie => serie,
          endRD => endRD
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
		cargadato<='1';
		desplaza<="0000";
      data<="100110110";
      wait for 100 ns;	
      wait for clk_period*10;
		desplaza<="0001";
      wait for 100 ns;	
      wait for clk_period*10;
		desplaza<="0010";
      wait for 100 ns;	
      wait for clk_period*10;
		desplaza<="0011";
      wait for 100 ns;	
      wait for clk_period*10;
		desplaza<="0100";
      wait for 100 ns;	
      wait for clk_period*10;
		
		desplaza<="0101";
      wait for 100 ns;	
      wait for clk_period*10;
		desplaza<="0110";
      wait for 100 ns;	
      wait for clk_period*10;
		desplaza<="0111";
      wait for 100 ns;	
      wait for clk_period*10;
		desplaza<="1000";
      wait for 100 ns;	
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;

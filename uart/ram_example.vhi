
-- VHDL Instantiation Created from source file ram_example.vhd -- 09:20:42 04/27/2013
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ram_example
	PORT(
		Clk : IN std_logic;
		we : IN std_logic;
		address_i : IN std_logic_vector(7 downto 0);
		data_i : IN std_logic_vector(7 downto 0);          
		data_o : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_ram_example: ram_example PORT MAP(
		Clk => ,
		we => ,
		address_i => ,
		data_i => ,
		data_o => 
	);



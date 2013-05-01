
-- VHDL Instantiation Created from source file UART.vhd -- 09:09:07 04/27/2013
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT UART
	PORT(
		clk : IN std_logic;
		datoRx : IN std_logic;
		transmite : IN std_logic;
		datoTX : IN std_logic_vector(7 downto 0);          
		salRx : OUT std_logic_vector(7 downto 0);
		datopp : OUT std_logic;
		freD : OUT std_logic;
		salTx : OUT std_logic;
		estadoRX : OUT std_logic_vector(1 downto 0);
		indexRX : OUT std_logic_vector(3 downto 0);
		estadoTX : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

	Inst_UART: UART PORT MAP(
		clk => ,
		datoRx => ,
		salRx => ,
		datopp => ,
		transmite => ,
		datoTX => ,
		freD => ,
		salTx => ,
		estadoRX => ,
		indexRX => ,
		estadoTX => 
	);



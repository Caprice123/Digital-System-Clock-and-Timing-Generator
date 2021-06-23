
-- VHDL Instantiation Created from source file clockdivider.vhd -- 18:39:46 04/24/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT clockdivider
	PORT(
		on_board_clk : IN std_logic;          
		d_flipflop1 : OUT std_logic;
		d_flipflop2 : OUT std_logic;
		clk_1 : OUT std_logic;
		clk_2 : OUT std_logic
		);
	END COMPONENT;

	Inst_clockdivider: clockdivider PORT MAP(
		on_board_clk => ,
		d_flipflop1 => ,
		d_flipflop2 => ,
		clk_1 => ,
		clk_2 => 
	);



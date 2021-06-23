
-- VHDL Instantiation Created from source file buffering_module.vhd -- 20:27:52 04/10/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT buffering_module
	PORT(
		clk_buffering : IN std_logic;
		d_buffering : IN std_logic;          
		output_buffering : OUT std_logic
		);
	END COMPONENT;

	Inst_buffering_module: buffering_module PORT MAP(
		clk_buffering => ,
		d_buffering => ,
		output_buffering => 
	);



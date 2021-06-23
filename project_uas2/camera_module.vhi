
-- VHDL Instantiation Created from source file camera_module.vhd -- 22:21:02 04/09/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT camera_module
	PORT(
		clk_camera : IN std_logic;
		d_camera : IN std_logic;          
		output_camera : OUT std_logic
		);
	END COMPONENT;

	Inst_camera_module: camera_module PORT MAP(
		clk_camera => ,
		d_camera => ,
		output_camera => 
	);



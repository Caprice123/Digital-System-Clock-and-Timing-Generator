LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;
 
ENTITY clockdiv_tb IS
END clockdiv_tb;
 
ARCHITECTURE behavior OF clockdiv_tb IS 
 
	-- camera control and vga and thresholding clock
    COMPONENT clockdivider
    PORT(
				camera_clk 		: in  STD_LOGIC;
				camcon_status	: in 	STD_LOGIC;
				clock_out		: out STD_LOGIC
				
				);
				
	END COMPONENT;
				
	-- motor clock			
	 COMPONENT pwm_motor_clk_divider
	 PORT(
				
				on_board_clk		: in 		std_logic;
				reset					: in 		std_logic;
				E						: in		std_logic;
				pwm_motor_clk		: out 	std_logic
	 
	 );
    END COMPONENT;
	 
	-- counter
	 COMPONENT counter
	 PORT (
			clk 						: in  	STD_LOGIC;
			reset 					: in  	STD_LOGIC;
			equal						: in 		STD_LOGIC;
			cnt_out 					: out  	STD_LOGIC_VECTOR(7 downto 0)
	 );
	 END COMPONENT;
	 
	 -- comparator 
	 COMPONENT comparator 
	 PORT (
			cnt_out 					: in 		STD_LOGIC_VECTOR (7 downto 0);
			B							: in 		STD_LOGIC_VECTOR (7 downto 0);
			E							: out 	STD_LOGIC
			
	 );
	 END COMPONENT;
	
	
   
	
	-- INPUT for thresholding and vga from camera control
   signal camera_clk 		: std_logic := '1';
	signal camcon_status 	: std_logic := '0';
	
	-- OUTPUT for thresholding and vga from camera control
	signal clock_out			: std_logic;
	
	
	-- INPUT clock divider from on board basys 3
	signal on_board_clk		: std_logic := '1';
	signal E						: std_logic;
	signal reset 				: std_logic := '0';
	
	
	-- OUTPUT clock divider from on board basys 3 to motor
	signal pwm_motor_clk		: std_logic;
	
	
	
	-- INPUT for counter 
	
	-- OUTPUT for counter
	signal cnt_out				: std_logic_vector (7 downto 0);
	
	
	-- INPUT for comparator
	signal B						: std_logic_vector (7 downto 0) := "01100100"; 
	--
	
	-- OUTPUT for comparator 
	
	

	-- Clock Description
	constant camcon_clk_frequency 		: integer 	:= 50e6;
	constant camcon_clk_period    		: time    	:= 1000 ms / camcon_clk_frequency;
	
	constant basys3_clk_frequency 		: integer 	:= 100e6;
	constant basys3_clk_period				: time 	  	:= 1000 ms / basys3_clk_frequency;
	
BEGIN	
	-- Assigning all testbench variable to all port in implementation port
	clock_div : entity work.clockdivider(rtl_divider)
	port map(
				camera_clk 		=> camera_clk,
				camcon_status	=>	camcon_status,
				clock_out		=> clock_out
				);
				
	
	pwm_motor : entity work.pwm_motor_clk(rtl_pwm_clk)
	port map(
				on_board_clk 	=> on_board_clk,
				reset 			=> reset,
				E					=> E,
				pwm_motor_clk	=> pwm_motor_clk
				);
				
	counter_clk 	: entity work.counter_clk (rtl_counter)
	port map(
				on_board_clk	=> on_board_clk,
				reset				=> reset,
				equal			 	=> E,
				cnt_out 			=> cnt_out
	);
	
	comparator_clk : entity work.comparator (rtl_comparator)
	port map(
				cnt_out			=> cnt_out,
				B					=> B,
				E 					=> E
	);
	
	-- Simulation input clock
	camera_clk 		<= not camera_clk 			after camcon_clk_period / 2;
	on_board_clk	<= not on_board_clk			after basys3_clk_period / 2;
	
	
	process is
	begin 
		wait for 100ns;
		
		camcon_status <= '1';
		reset <= '1';
		
		wait for 100ns;
		reset <= '0';

		wait for 400ns;
		camcon_status <= '0';

		wait;
	end process;
	
END;

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.numeric_std.ALL;
 
ENTITY vga_thresh_clock_tb IS
END vga_thresh_clock_tb;
 
ARCHITECTURE behavior OF vga_thresh_clock_tb IS 
	-- camera control and vga and thresholding clock
   COMPONENT toggle_flip_flop_clock
   PORT(
			-- input port for toggle flip flop
			-- data 							: feedback from clock25Mhz to store data
			--	camera_clk					: to start giving output
			-- camcon_status				: acts as reset for flip flop (0 means camera already done with configuration and 1 means not done)
			data		 				: in  STD_LOGIC;
			camera_clk 				: in  STD_LOGIC;
			camcon_status			: in 	STD_LOGIC;
         
			-- output port for toggle flip flop
			-- q								: reflects data from data port
			-- clock25Mhz					: output that will be created for vga and thresholding (25MHz)
			q 							: out  STD_LOGIC;
         clock25Mhz 				: out  STD_LOGIC		
			);
				
	END COMPONENT;

	-- INPUT
	signal camera_clk 			: std_logic := '0';
	signal camcon_status 		: std_logic := '0';
	
	-- OUTPUT
	signal q 						: std_logic;
	signal clock25Mhz 			: std_logic;
	
	-- Clock Description
	constant camcon_clk_frequency 		: integer 	:= 50e6;
	constant camcon_clk_period    		: time    	:= 1000 ms / camcon_clk_frequency;
	
BEGIN	
	-- Assigning all testbench variable to all port in implementation port
	toggle_flop_flop_clock	: entity work.toggle_flip_flop (rtl_toggle_flip_flop)
	port map(
				data 				=> qbar,
				clk 				=> E,
				reset 			=> reset,
				q					=> q,
				qbar				=> qbar
	
	);
	-- Simulation input clock
	camera_clk 		<= not camera_clk 			after camcon_clk_period / 2;
	
	
	process is
	begin 
		camcon_status <= '1';
		wait for 100ns;
		
		camcon_status <= '0';
		wait;
	end process;
	
END;

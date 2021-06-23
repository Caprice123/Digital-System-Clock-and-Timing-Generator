--------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ardhian Mahendar, Irvine, Kelvin Cendra, Raymond Winsher, Richie Eviendy
--
-- Create Date:   20:47:06 06/01/2021
-- Design Name:   
-- Module Name:   D:/Clock_Timing_Generator/pwm_motor_tb.vhd
-- Project Name:  Clock_Timing_Generator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: comparator
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
use IEEE.numeric_std.ALL;
 
ENTITY pwm_motor_tb IS
END pwm_motor_tb;
 
ARCHITECTURE behavior OF pwm_motor_tb IS  
	-- counter
	 COMPONENT counter
	 PORT (
			-- input counter 
			-- on_board_clk for clock 	: to start counting
			-- reset 						: to force the counter back to 0 (external signal)
			-- equal							: to reset counter back to 0 if already pass the maximum in the comparator (internal signal from comparator)
			on_board_clk			: in  	STD_LOGIC;
			reset 					: in  	STD_LOGIC;
			equal						: in 		STD_LOGIC;
			
			-- output counter
			-- cnt_out				: result of counting that will be passed to comparator
			cnt_out 					: out  	STD_LOGIC_VECTOR(7 downto 0)
	 );
	 END COMPONENT;
	 
	 -- comparator 
	 COMPONENT comparator 
	 PORT (
			-- input comparator
			-- cnt_out				: value from counter that will be compared
			-- B						: comparison number
			cnt_out 					: in 		STD_LOGIC_VECTOR (7 downto 0);
			B							: in 		STD_LOGIC_VECTOR (7 downto 0);
			
			-- output comparator
			-- E						: 1 is equal, 0 is not equal
			E							: out 	STD_LOGIC
	 );
	 END COMPONENT;
	 
	 -- toggle flip flop
	 COMPONENT toggle_flip_flop_pwm
	 PORT (
			-- input register
			-- data 					: feedback from qbar to store data
			--	clk					: to start giving output
			-- reset					: to force register back to default value
			data 						: in  STD_LOGIC;
         clk 						: in  STD_LOGIC;
			reset						: in 	STD_LOGIC;
			
			-- output register
			-- q						: reflects data from data port
			-- qbar					: output that will be created for motor (500 kHz)
         q 							: out  STD_LOGIC;
         qbar 						: out  STD_LOGIC
	 
	 );
	 END COMPONENT;
	 
	-- INPUT
	signal on_board_clk		: std_logic := '1';
	signal reset 				: std_logic := '0';
	signal cnt_out				: std_logic_vector (7 downto 0);
	signal B						: std_logic_vector (7 downto 0) := "01100100"; 
	
	-- OUTPUT 
	signal E						: std_logic;
	signal q						: std_logic;
	signal qbar					: std_logic;
	
	-- Clock Description
	constant basys3_clk_frequency 		: integer 	:= 100e6;
	constant basys3_clk_period				: time 	  	:= 1000 ms / basys3_clk_frequency;
	
BEGIN	
	-- Assigning all testbench variable to all port in implementation port
	counter_clk 	: entity work.counter_clk (rtl_counter)
	port map(
				clk				=> on_board_clk,
				reset				=> reset,
				equal				=> E,
				cnt_out 			=> cnt_out
	);
	
	comparator_clk : entity work.comparator (rtl_comparator)
	port map(
				A					=> cnt_out,
				B					=> B,
				E 					=> E
	);
	
	toggle_flop_flop_pwm	: entity work.toggle_flip_flop (rtl_toggle_flip_flop)
	port map(
				data 				=> qbar,
				clk 				=> E,
				reset 			=> reset,
				q					=> q,
				qbar				=> qbar
	
	);
	
	-- Simulation input clock
	on_board_clk	<= not on_board_clk			after basys3_clk_period / 2;
	
	process is
	begin 
		reset <= '1';	
		wait for 100ns;
		
		reset <= '0';
		wait;
	end process;
END;

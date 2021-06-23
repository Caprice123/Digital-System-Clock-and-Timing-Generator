library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity camera_tb is
end entity;

architecture camera_sim of camera_tb is
	constant ClockFrequency : integer := 50e6; -- 100 MHz
	constant ClockPeriod    : time    := 1000 ms / ClockFrequency;
	
	
	signal clk_camera			: std_logic := '1';
	signal d_camera   		: std_logic := '0';
	signal output_camera 	: std_logic;
	
	signal clk_display		: std_logic := '1';
	signal d_display   		: std_logic := '0';
	signal output_display 	: std_logic;
	
	signal clk_buffering		: std_logic := '1';
	signal d_buffering   	: std_logic := '0';
	signal output_buffering : std_logic;

begin
	
	camera_FlipFlop : entity work.camera_module(rtl_camera)
	port map(
		clk_camera 		=> clk_camera,
		d_camera			=> d_camera,
		output_camera	=>	output_camera);
		
		
	display_FlipFlop : entity work.vga_display(rtl_display)
	port map(
		clk_display 		=> clk_display,
		d_display			=> d_display,
		output_display		=>	output_display);
		
		
	buffering_FlipFlop : entity work.buffering_module(rtl_buffering)
	port map(
		clk_buffering 		=> clk_buffering,
		d_buffering			=> d_buffering,
		output_buffering	=>	output_buffering);
		
	clk_camera <= not clk_camera after ClockPeriod / 2;
	clk_display <= not clk_display after ClockPeriod / 2;
	clk_buffering <= not clk_buffering after ClockPeriod / 2;
	
	
	
	process is
		variable count: integer := 0;
	begin
		while (count < 1000) loop
			d_camera <= '1';
			d_display <= '1';
			d_buffering <= '1';
			wait for 19 ns;
			
			d_camera <= '0';
			d_display <= '0';
			d_buffering <= '0';
			wait for 20 ns;
			
			d_camera <= '1';
			d_display <= '1';
			d_buffering <= '1';
			wait for 19 ns;
			count := count + 19 + 20 + 19;
		end loop;
		
		wait;
	end process;
end architecture;
		
		
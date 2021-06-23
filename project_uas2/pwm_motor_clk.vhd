library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity pwm_motor_clk is
    Port ( 
				-- motor clock
				on_board_clk	: in std_logic;
				reset				: in std_logic;
				E					: in std_logic;
				pwm_motor_clk	: out std_logic
			);
end pwm_motor_clk;

architecture rtl_pwm_clk of pwm_motor_clk is
	signal tmp		 	: std_logic := '0';
	
begin
	process (on_board_clk, reset, E) is
	begin
		if (reset = '1') then
			tmp <= '0';
			pwm_motor_clk <= '0';
		elsif (rising_edge(E)) then
			if (tmp = '1') then
				tmp <= '0';
				pwm_motor_clk <= '0';
			else 
				tmp <= '1';
				pwm_motor_clk <= '1';
			end if;
		else
			pwm_motor_clk <= tmp;
		end if;
		
			
		
	end process;
end rtl_pwm_clk;


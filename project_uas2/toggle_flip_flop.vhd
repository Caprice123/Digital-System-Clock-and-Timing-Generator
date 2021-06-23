library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity toggle_flip_flop is
    Port ( data 		: in  STD_LOGIC;
           clk 		: in  STD_LOGIC;
			  reset		: in 	STD_LOGIC;
           q 			: out  STD_LOGIC;
           qbar 		: out  STD_LOGIC);
end toggle_flip_flop;

architecture rtl_toggle_flip_flop of toggle_flip_flop is

begin
	process(clk, data) is
	begin
	-- setting back to default
	if (reset = '1') then
			q <= '1';
			qbar <= '0';
	
	elsif (rising_edge(clk)) then
		-- prevent undefined from being error
		if (data = 'U') then
			q <= '0';
			qbar <= '1';
		elsif (data = '1') then
			q <= '1';
			qbar <= '0';
		elsif (data = '0') then
			q <= '0';
			qbar <= '1';
		end if;
	end if;
		
	end process;

end rtl_toggle_flip_flop;


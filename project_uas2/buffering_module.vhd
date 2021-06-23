
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity buffering_module is
    Port ( clk_buffering : in  STD_LOGIC;
           d_buffering : in  STD_LOGIC;
           output_buffering : out  STD_LOGIC);
end buffering_module;

architecture rtl_buffering of buffering_module is

	
begin
		process(clk_buffering) is
		begin
		
			if rising_edge(clk_buffering) then 
				if d_buffering = '0' then
					output_buffering <= '0';
				else
					output_buffering <= '1';
				end if;
			end if;
			
		end process;

end rtl_buffering;


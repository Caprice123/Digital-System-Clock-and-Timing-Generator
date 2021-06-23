
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity vga_display is
    Port ( clk_display : in  STD_LOGIC;
           d_display : in  STD_LOGIC;
           output_display : out  STD_LOGIC);
end vga_display;

architecture rtl_display of vga_display is

	
begin
		process(clk_display) is
		begin
		
			if rising_edge(clk_display) then 
				if d_display = '0' then
					output_display <= '0';
				else
					output_display <= '1';
				end if;
			end if;
			
		end process;

end rtl_display;


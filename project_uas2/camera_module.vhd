
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity camera_module is
    Port ( clk_camera : in  STD_LOGIC;
           d_camera : in  STD_LOGIC;
           output_camera : out  STD_LOGIC);
end camera_module;

architecture rtl_camera of camera_module is

	
begin
		process(clk_camera) is
		begin
		
			if rising_edge(clk_camera) then 
				if d_camera = '0' then
					output_camera <= '0';
				else
					output_camera <= '1';
				end if;
			end if;
			
		end process;

end rtl_camera;


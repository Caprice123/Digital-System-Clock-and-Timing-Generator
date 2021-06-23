library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

-- camera control and vga and thresholding port
entity clockdivider is
    Port ( 	
				camera_clk 		: in  STD_LOGIC;
				camcon_status	: in 	STD_LOGIC;
				clock_out		: out STD_LOGIC
				);
end clockdivider;

architecture rtl_divider of clockdivider is
	signal tmp 			: std_logic := '0';
	
	
begin
	process ( camera_clk, camcon_status) is 
	begin 
		-- Clock divider for vga thresholding from camera control
		if (camcon_status = '1') then
				if rising_edge(camera_clk) then
						if tmp = '0' then
							tmp <= '1';
							clock_out <= '1';
						elsif tmp = '1' then
							tmp <= '0';
							clock_out <= '0';
						end if;
				end if;
		elsif (camcon_status = '0') then
				tmp <= '0';
				clock_out <= '0';
		end if;	
	end process;

end rtl_divider;


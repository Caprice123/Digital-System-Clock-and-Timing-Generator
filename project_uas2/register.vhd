library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity register is
    Port ( data 		: in  STD_LOGIC;
           clk 		: in  STD_LOGIC;
           q 			: out  STD_LOGIC;
           qbar 		: out  STD_LOGIC);
end register;

architecture Behavioral of register is

begin
	process(data, clk) is
	begin
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
		
		
	end process;

end Behavioral;


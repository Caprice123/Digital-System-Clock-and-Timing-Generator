library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity not_gate is
    Port ( component_A 		: in  STD_LOGIC;
           component_B 		: in  STD_LOGIC;
           out_port 			: out  STD_LOGIC
			  );
end not_gate;

architecture rtl_not of not_gate is

begin
	out_port <= component_A or component_B;

end rtl_not;


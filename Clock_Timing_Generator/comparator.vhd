----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ardhian Mahendar, Irvine, Kelvin Cendra, Raymond Winsher, Richie Eviendy
-- 
-- Create Date:    18:44:04 06/01/2021 
-- Design Name: 
-- Module Name:    comparator - rtl_comparator 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparator is
	 Port ( 	
				A 					: in  STD_LOGIC_vector(7 downto 0);
				B					: in 	STD_LOGIC_vector(7 downto 0);
				E					: out STD_LOGIC		
				);
end comparator;

architecture rtl_comparator of comparator is
	
begin
	process(	A, B ) is
		variable indicator: std_logic := '0';
	begin
		-- comparing bit by bit from A and B
		for k in 0 to A'length - 1 loop
			if ( (A(k) = '0' and B(k) = '0') or (A(k) = '1' and B(k) = '1')) then 
				indicator := '1';
			-- bit in A is not the same as bit in B return not same
			else
				indicator := '0';
				exit;
			end if;
		end loop;
		
		E <= indicator;
	end process;
end rtl_comparator;


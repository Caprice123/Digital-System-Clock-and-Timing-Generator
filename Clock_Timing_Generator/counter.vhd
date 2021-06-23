----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Ardhian Mahendar, Irvine, Kelvin Cendra, Raymond Winsher, Richie Eviendy
-- 
-- Create Date:    17:42:52 06/01/2021 
-- Design Name: 
-- Module Name:    counter - rtl_counter 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_1164.ALL;

entity counter_clk is
    Port ( clk						: in  	STD_LOGIC;
           reset 					: in  	STD_LOGIC;
			  equal					: in 		STD_LOGIC;
           cnt_out 				: out  	STD_LOGIC_VECTOR(7 downto 0)
			  );
end counter_clk;

architecture rtl_counter of counter_clk is
	signal cnt : std_logic_vector(7 downto 0) := "00000001";
	
begin
	process(clk, reset, equal) is
	begin
			-- reset counter to default if reset = 1
			if (reset = '1') then
					cnt <= "00000001";
					
			elsif (rising_edge(clk)) then
				-- reset counter to default if equal = 1
				if (equal = '1') then
					cnt <= "00000001";
					
				-- start counting
				else	
					cnt <= cnt + "1";
				end if;
			end if;
			
	end process;
	cnt_out <= cnt;
			
end rtl_counter;


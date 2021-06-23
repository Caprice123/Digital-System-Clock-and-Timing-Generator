LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY comparator_tb IS
END comparator_tb;
 
ARCHITECTURE behavior OF comparator_tb IS 
 
    COMPONENT comparator
    Port ( 	
				A 					: in  STD_LOGIC_vector(7 downto 0);
				B					: in 	STD_LOGIC_vector(7 downto 0);
				
				
				-- e => equal than
				E					: out STD_LOGIC
				);
    END COMPONENT;
    
   -- INPUT 
	signal A			: std_logic_vector (7 downto 0) := (others => '0');
	signal B			: std_logic_vector (7 downto 0) := (others => '0');
	
	
	-- OUTPUT
	
	signal E 		: std_logic;
	
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comparator PORT MAP (
					A => A,
					B => B,
					
					E => E
        );

   
   process
   begin		
	
      wait for 100ns;
      A <= "00010011";
		B <= "01100100";
		
   end process;

END;

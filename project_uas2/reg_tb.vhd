LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY reg_tb IS
END reg_tb;
 
ARCHITECTURE behavior OF reg_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT reg
    PORT(
         data 			: IN  std_logic;
         clk 			: IN  std_logic;
         q 				: OUT  std_logic;
         qbar 			: OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal data : std_logic;
   signal clk 	: std_logic := '0';

 	--Outputs
   signal q : std_logic;
   signal qbar : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: reg PORT MAP (
          data 		=> qbar,
          clk 			=> clk,
          q 			=> q,
          qbar 		=> qbar
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      
      wait;
   end process;

END;

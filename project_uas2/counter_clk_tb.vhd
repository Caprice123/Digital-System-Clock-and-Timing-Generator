LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY counter_clk_tb IS
END counter_clk_tb;
 
ARCHITECTURE behavior OF counter_clk_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT counter_clk
    PORT(
         clk 			: IN  std_logic;
         reset 		: IN  std_logic;
			pass_max		: IN 	std_logic;
         cnt_out 		: OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk 			: std_logic := '0';
   signal reset 		: std_logic := '0';
	signal pass_max	: std_logic := '0';

 	--Outputs
   signal cnt_out 	: std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: counter_clk PORT MAP (
          clk => clk,
          reset => reset,
			 pass_max => pass_max,
          cnt_out => cnt_out
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '1';
		wait for clk_period/2;
		clk <= '0';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
	
	
   stim_proc: process
   begin		
      reset <= '1';
		wait for 400ns;
		
		reset <= '0';
		wait for 200ns;
		
		pass_max <= '1';
		wait for 50ns;
		
		pass_max <= '0';
		

      wait;
   end process;

END;

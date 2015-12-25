--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:43:54 12/25/2015
-- Design Name:   
-- Module Name:   /home/superus/vhdl_system_design/workspace/idea_rcs2/tb_roundcounter.vhd
-- Project Name:  idea_rcs2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: roundcounter
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_roundcounter IS
END tb_roundcounter;
 
ARCHITECTURE behavior OF tb_roundcounter IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT roundcounter
    PORT(
         Start : IN  std_logic;
         Clock : IN  std_logic;
         Ready : OUT  std_logic;
         S_i : OUT  std_logic;
         Result : IN  std_logic;
         Round : OUT  std_logic;
         Init : OUT  std_logic;
         Trafo : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Start : std_logic := '0';
   signal Clock : std_logic := '0';
   signal Result : std_logic := '0';

 	--Outputs
   signal Ready : std_logic;
   signal S_i : std_logic;
   signal Round : std_logic;
   signal Init : std_logic;
   signal Trafo : std_logic;

   -- Clock period definitions
   constant Clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: roundcounter PORT MAP (
          Start => Start,
          Clock => Clock,
          Ready => Ready,
          S_i => S_i,
          Result => Result,
          Round => Round,
          Init => Init,
          Trafo => Trafo
        );

   -- Clock process definitions
   Clock_process :process
   begin
		Clock <= '0';
		wait for Clock_period/2;
		Clock <= '1';
		wait for Clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for Clock_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;

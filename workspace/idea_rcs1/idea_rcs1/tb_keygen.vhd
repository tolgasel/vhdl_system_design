----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Tolga Sel 
-- 
-- Create Date:   12:21:11 11/15/2015
-- Design Name:   
-- Module Name:   /home/superus/vhdl_system_design/workspace/idea_rcs1/idea_rcs1/tb_keygen.vhd
-- Project Name:  idea_rcs1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: keygen
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
 
ENTITY tb_keygen IS
END tb_keygen;
 
ARCHITECTURE behavior OF tb_keygen IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT keygen
    PORT(
         rc : IN  std_logic_vector(3 downto 0);
         key_in : IN  std_logic_vector(15 downto 0);
         key_out : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal rc : std_logic_vector(3 downto 0) := (others => '0');
   signal key_in : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal key_out : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: keygen PORT MAP (
          rc => rc,
          key_in => key_in,
          key_out => key_out
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;

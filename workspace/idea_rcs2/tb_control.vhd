--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:23:07 11/16/2015
-- Design Name:   
-- Module Name:   /home/superus/vhdl_system_design/workspace/idea_rcs1/idea_rcs1/tb_control.vhd
-- Project Name:  idea_rcs1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: control
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
 
ENTITY tb_control IS
END tb_control;
 
ARCHITECTURE behavior OF tb_control IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT control
    PORT(
         clk : IN  std_logic;
         start : IN  std_logic;
         round : OUT  std_logic_vector(3 downto 0);
         ready : OUT  std_logic;
         en : OUT  std_logic;
         s : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal start : std_logic := '0';

 	--Outputs
   signal round : std_logic_vector(3 downto 0);
   signal ready : std_logic;
   signal en : std_logic;
   signal s : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: control PORT MAP (
          clk => clk,
          start => start,
          round => round,
          ready => ready,
          en => en,
          s => s
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
start <= '0', '1' after 5 ns, '0' after 15 ns, '1' after 505 ns, '0' after 515 ns;


END;

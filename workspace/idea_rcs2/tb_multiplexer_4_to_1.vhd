--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:54:42 12/23/2015
-- Design Name:   
-- Module Name:   /home/superus/vhdl_system_design/workspace/idea_rcs2/tb_multiplexer_4_to_1.vhd
-- Project Name:  idea_rcs2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: multiplexer_4_to_1
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
 
ENTITY tb_multiplexer_4_to_1 IS
END tb_multiplexer_4_to_1;
 
ARCHITECTURE behavior OF tb_multiplexer_4_to_1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT multiplexer_4_to_1
    PORT(
         in1 : IN  std_logic_vector(15 downto 0);
         in2 : IN  std_logic_vector(15 downto 0);
         in3 : IN  std_logic_vector(15 downto 0);
         in4 : IN  std_logic_vector(15 downto 0);
         s : IN  std_logic_vector(1 downto 0);
         O : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal in1 : std_logic_vector(15 downto 0) := (others => '0');
   signal in2 : std_logic_vector(15 downto 0) := (others => '0');
   signal in3 : std_logic_vector(15 downto 0) := (others => '0');
   signal in4 : std_logic_vector(15 downto 0) := (others => '0');
   signal s : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal O : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: multiplexer_4_to_1 PORT MAP (
          in1 => in1,
          in2 => in2,
          in3 => in3,
          in4 => in4,
          s => s,
          O => O
        );

in1 <= "0000000000000000", "0000000000000001" after 20 ns, "0000000000000011" after 40 ns;
in2 <= "0000000000000001", "0000000000000001" after 20 ns, "0000000000000011" after 40 ns;
in3 <= "0000000000000010", "0000000000000001" after 20 ns, "0000000000000011" after 40 ns;
in4 <= "0000000000000100", "0000000000000001" after 20 ns, "0000000000000011" after 40 ns;
s <= "00", "01" after 5 ns, "11" after 15 ns, "10" after 25 ns, "00" after 35 ns, "01" after 40 ns, "10" after 50 ns;

END;

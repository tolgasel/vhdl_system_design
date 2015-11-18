----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Tolga Sel 
-- 
-- Create Date:   09:51:37 11/03/2015
-- Design Name:   
-- Module Name:   /home/ga69kaw/vhdl_system_design_lab/workspace/Exercise1/direct_implementation/tb_mulop.vhd
-- Project Name:  direct_implementation
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mulop
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
 
ENTITY tb_mulop IS
END tb_mulop;
 
ARCHITECTURE behavior OF tb_mulop IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mulop
    PORT(
         X : IN  std_logic_vector(15 downto 0);
         Y : IN  std_logic_vector(15 downto 0);
         O : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(15 downto 0) := (others => '0');
   signal Y : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal O : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT) (43241*63743) mod (65537)
   uut: mulop PORT MAP (
          X => X,
          Y => Y,
          O => O
        );

X <= "0000000000000000", "1000000000000000" after 200ns, "1111111111111111" after 400ns, "1010100011101001" after 800ns;
Y <= "0000000000000000", "1000000000000000" after 200ns, "1111111111111111" after 400ns, "1111100011111111" after 800ns;

end   behavior;

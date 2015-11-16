--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:06:01 11/15/2015
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
USE ieee.numeric_std.ALL;
 
ENTITY tb_keygen IS
END tb_keygen;
 
ARCHITECTURE behavior OF tb_keygen IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT keygen
    PORT(
         rc : IN  std_logic_vector(3 downto 0);
         key_in : IN  std_logic_vector(127 downto 0);
         z1 : OUT  std_logic_vector(15 downto 0);
         z2 : OUT  std_logic_vector(15 downto 0);
         z3 : OUT  std_logic_vector(15 downto 0);
         z4 : OUT  std_logic_vector(15 downto 0);
         z5 : OUT  std_logic_vector(15 downto 0);
         z6 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal rc : std_logic_vector(3 downto 0) := (others => '0');
   signal key_in : std_logic_vector(127 downto 0) := (others => '0');

 	--Outputs
   signal z1 : std_logic_vector(15 downto 0);
   signal z2 : std_logic_vector(15 downto 0);
   signal z3 : std_logic_vector(15 downto 0);
   signal z4 : std_logic_vector(15 downto 0);
   signal z5 : std_logic_vector(15 downto 0);
   signal z6 : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: keygen PORT MAP (
          rc => rc,
          key_in => key_in,
          z1 => z1,
          z2 => z2,
          z3 => z3,
          z4 => z4,
          z5 => z5,
          z6 => z6
        );


key_in <= std_logic_vector(to_unsigned(1,16))&std_logic_vector(to_unsigned(2,16))&std_logic_vector(to_unsigned(3,16))&std_logic_vector(to_unsigned(4,16))&std_logic_vector(to_unsigned(5,16))&std_logic_vector(to_unsigned(6,16))&std_logic_vector(to_unsigned(7,16))&std_logic_vector(to_unsigned(8,16));
rc <= std_logic_vector(to_unsigned(0,4)), std_logic_vector(to_unsigned(1,4))after 10 ns, std_logic_vector(to_unsigned(2,4)) after 20 ns,std_logic_vector(to_unsigned(3,4)) after 30 ns,std_logic_vector(to_unsigned(4,4)) after 40 ns,std_logic_vector(to_unsigned(5,4)) after 50 ns,std_logic_vector(to_unsigned(6,4)) after 60 ns,std_logic_vector(to_unsigned(7,4)) after 70 ns,std_logic_vector(to_unsigned(8,4)) after 80 ns;


END;

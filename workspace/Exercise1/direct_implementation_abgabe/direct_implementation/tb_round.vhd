----------------------------------------------------------------------------------
-- Company: 
-- Engineer: ga69kaw, Tolga Sel 
-- 
-- Create Date:   14:12:52 11/03/2015
-- Design Name:   
-- Module Name:   /home/ga69kaw/vhdl_system_design_lab/workspace/Exercise1/direct_implementation/tb_round.vhd
-- Project Name:  direct_implementation
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: round
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
 
ENTITY tb_round IS
END tb_round;
 
ARCHITECTURE behavior OF tb_round IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT round
    PORT(
         x1 : IN  std_logic_vector(15 downto 0);
         x2 : IN  std_logic_vector(15 downto 0);
         X3 : IN  std_logic_vector(15 downto 0);
         x4 : IN  std_logic_vector(15 downto 0);
         z1 : IN  std_logic_vector(15 downto 0);
         z2 : IN  std_logic_vector(15 downto 0);
         z3 : IN  std_logic_vector(15 downto 0);
         z4 : IN  std_logic_vector(15 downto 0);
         z5 : IN  std_logic_vector(15 downto 0);
         z6 : IN  std_logic_vector(15 downto 0);
         y1 : OUT  std_logic_vector(15 downto 0);
         y2 : OUT  std_logic_vector(15 downto 0);
         y3 : OUT  std_logic_vector(15 downto 0);
         y4 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal x1 : std_logic_vector(15 downto 0) := (others => '0');
   signal x2 : std_logic_vector(15 downto 0) := (others => '0');
   signal X3 : std_logic_vector(15 downto 0) := (others => '0');
   signal x4 : std_logic_vector(15 downto 0) := (others => '0');
   signal z1 : std_logic_vector(15 downto 0) := (others => '0');
   signal z2 : std_logic_vector(15 downto 0) := (others => '0');
   signal z3 : std_logic_vector(15 downto 0) := (others => '0');
   signal z4 : std_logic_vector(15 downto 0) := (others => '0');
   signal z5 : std_logic_vector(15 downto 0) := (others => '0');
   signal z6 : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal y1 : std_logic_vector(15 downto 0);
   signal y2 : std_logic_vector(15 downto 0);
   signal y3 : std_logic_vector(15 downto 0);
   signal y4 : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: round PORT MAP (
          x1 => x1,
          x2 => x2,
          X3 => X3,
          x4 => x4,
          z1 => z1,
          z2 => z2,
          z3 => z3,
          z4 => z4,
          z5 => z5,
          z6 => z6,
          y1 => y1,
          y2 => y2,
          y3 => y3,
          y4 => y4
        );

         x1 <= std_logic_vector(to_unsigned(0,16));
         x2 <= std_logic_vector(to_unsigned(1,16));
         X3 <= std_logic_vector(to_unsigned(2,16));
         x4 <= std_logic_vector(to_unsigned(3,16));
         z1 <= std_logic_vector(to_unsigned(1,16));
         z2 <= std_logic_vector(to_unsigned(2,16));
         z3 <= std_logic_vector(to_unsigned(3,16));
         z4 <= std_logic_vector(to_unsigned(4,16));
         z5 <= std_logic_vector(to_unsigned(5,16));
         z6 <= std_logic_vector(to_unsigned(6,16));
  


END behavior;
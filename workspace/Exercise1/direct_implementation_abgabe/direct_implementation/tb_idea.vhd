----------------------------------------------------------------------------------
-- Company: 
-- Engineer: ga69kaw, Tolga Sel 
-- 
-- Create Date:   08:38:20 11/04/2015
-- Design Name:   
-- Module Name:   /home/ga69kaw/vhdl_system_design_lab/workspace/Exercise1/direct_implementation/tb_idea.vhd
-- Project Name:  direct_implementation
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: idea
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
 
ENTITY tb_idea IS
END tb_idea;
 
ARCHITECTURE behavior OF tb_idea IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT idea
    PORT(
         KEY : IN  std_logic_vector(127 downto 0);
         X1 : IN  std_logic_vector(15 downto 0);
         X2 : IN  std_logic_vector(15 downto 0);
         X3 : IN  std_logic_vector(15 downto 0);
         X4 : IN  std_logic_vector(15 downto 0);
         Y1 : OUT  std_logic_vector(15 downto 0);
         Y2 : OUT  std_logic_vector(15 downto 0);
         Y3 : OUT  std_logic_vector(15 downto 0);
         Y4 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal KEY : std_logic_vector(127 downto 0) := (others => '0');
   signal X1 : std_logic_vector(15 downto 0) := (others => '0');
   signal X2 : std_logic_vector(15 downto 0) := (others => '0');
   signal X3 : std_logic_vector(15 downto 0) := (others => '0');
   signal X4 : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal Y1 : std_logic_vector(15 downto 0);
   signal Y2 : std_logic_vector(15 downto 0);
   signal Y3 : std_logic_vector(15 downto 0);
   signal Y4 : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
   constant I_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: idea PORT MAP (
          KEY => KEY,
          X1 => X1,
          X2 => X2,
          X3 => X3,
          X4 => X4,
          Y1 => Y1,
          Y2 => Y2,
          Y3 => Y3,
          Y4 => Y4
        );

       -- Clock process definitions
   test_process :process
   begin
	-- Test 1      
		
			X1 <= std_logic_vector(to_unsigned(1,16));
			X2 <= std_logic_vector(to_unsigned(0,16));
			X3 <= std_logic_vector(to_unsigned(1,16));
			X4 <= std_logic_vector(to_unsigned(0,16));
		
			KEY <= "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
			
			wait for I_period/2;
	-- Test 2
			KEY <= "00000000000000010000000000000010000000000000001100000000000001000000000000000101000000000000011000000000000001110000000000001000";
         X1 <= std_logic_vector(to_unsigned(0,16));
         X2 <= std_logic_vector(to_unsigned(1,16));
         X3 <= std_logic_vector(to_unsigned(2,16));
         X4 <= std_logic_vector(to_unsigned(3,16));
         wait for I_period/2;

	-- Test 3      
		
			X1 <= std_logic_vector(to_unsigned(0,16));
			X2 <= std_logic_vector(to_unsigned(1,16));
			X3 <= std_logic_vector(to_unsigned(2,16));
			X4 <= std_logic_vector(to_unsigned(3,16));
		
			KEY <= "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
			
			wait for I_period/2;
					
	-- Test 4
			KEY <= "00000000000000010000000000000010000000000000001100000000000001000000000000000101000000000000011000000000000001110000000000001000";
         X1 <= std_logic_vector(to_unsigned(0,16));
         X2 <= std_logic_vector(to_unsigned(1,16));
         X3 <= std_logic_vector(to_unsigned(2,16));
         X4 <= std_logic_vector(to_unsigned(3,16));
         wait for I_period/2;
			
		end process test_process;
END behavior;
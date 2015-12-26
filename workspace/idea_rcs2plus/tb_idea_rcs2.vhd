--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:35:27 12/25/2015
-- Design Name:   
-- Module Name:   /home/superus/vhdl_system_design/workspace/idea_rcs2/tb_idea_rcs2.vhd
-- Project Name:  idea_rcs2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: idea_rcs2
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
 
ENTITY tb_idea_rcs2 IS
END tb_idea_rcs2;
 
ARCHITECTURE behavior OF tb_idea_rcs2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT idea_rcs2
    PORT(
         X1 : IN  std_logic_vector(15 downto 0);
         X2 : IN  std_logic_vector(15 downto 0);
         X3 : IN  std_logic_vector(15 downto 0);
         X4 : IN  std_logic_vector(15 downto 0);
         Y1 : OUT  std_logic_vector(15 downto 0);
         Y2 : OUT  std_logic_vector(15 downto 0);
         Y3 : OUT  std_logic_vector(15 downto 0);
         Y4 : OUT  std_logic_vector(15 downto 0);
         Clock : IN  std_logic;
         KEY : IN  std_logic_vector(127 downto 0);
         Start : IN  std_logic;
         Ready : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X1 : std_logic_vector(15 downto 0) := (others => '0');
   signal X2 : std_logic_vector(15 downto 0) := (others => '0');
   signal X3 : std_logic_vector(15 downto 0) := (others => '0');
   signal X4 : std_logic_vector(15 downto 0) := (others => '0');
   signal Clock : std_logic := '0';
   signal KEY : std_logic_vector(127 downto 0) := (others => '0');
   signal Start : std_logic := '0';

 	--Outputs
   signal Y1 : std_logic_vector(15 downto 0);
   signal Y2 : std_logic_vector(15 downto 0);
   signal Y3 : std_logic_vector(15 downto 0);
   signal Y4 : std_logic_vector(15 downto 0);
   signal Ready : std_logic;

   -- Clock period definitions
   constant Clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: idea_rcs2 PORT MAP (
          X1 => X1,
          X2 => X2,
          X3 => X3,
          X4 => X4,
          Y1 => Y1,
          Y2 => Y2,
          Y3 => Y3,
          Y4 => Y4,
          Clock => Clock,
          KEY => KEY,
          Start => Start,
          Ready => Ready
        );

   -- Clock process definitions
   Clock_process :process
   begin
		Clock <= '0';
		wait for Clock_period/2;
		Clock <= '1';
		wait for Clock_period/2;
   end process;
 
X1 <= std_logic_vector(to_unsigned(0,16)), std_logic_vector(to_unsigned(2,16)) after 1000 ns;
X2 <= std_logic_vector(to_unsigned(1,16));
X3 <= std_logic_vector(to_unsigned(2,16));
X4 <= std_logic_vector(to_unsigned(3,16));
KEY <= "00000000000000010000000000000010000000000000001100000000000001000000000000000101000000000000011000000000000001110000000000001000";
START <= '0', '1' after 20 ns, '0' after 50 ns, '1' after 1000 ns, '0' after 1100 ns;


END;

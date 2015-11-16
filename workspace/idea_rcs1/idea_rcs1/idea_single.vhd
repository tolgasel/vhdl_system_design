----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:05:10 11/16/2015 
-- Design Name: 
-- Module Name:    idea_single - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity idea_single is
    Port ( KEY : in  std_logic_vector(127 downto 0);
			  X1 : in  std_logic_vector(15 downto 0);
			  X2 : in  std_logic_vector(15 downto 0);
			  X3 : in  std_logic_vector(15 downto 0);
			  X4 : in  std_logic_vector(15 downto 0);
			  Y1 : out  std_logic_vector(15 downto 0);
			  Y2 : out  std_logic_vector(15 downto 0);
			  Y3 : out  std_logic_vector(15 downto 0);
			  Y4 : out  std_logic_vector(15 downto 0));
end idea_single;

architecture Behavioral of idea_single is

begin


end Behavioral;


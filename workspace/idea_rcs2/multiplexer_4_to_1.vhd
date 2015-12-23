----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:34:29 12/23/2015 
-- Design Name: 
-- Module Name:    multiplexer_4_to_1 - Behavioral 
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

entity multiplexer_4_to_1 is
    Port ( in1 : IN  std_logic_vector(15 downto 0);
           in2 : IN  std_logic_vector(15 downto 0);
           in3 : IN  std_logic_vector(15 downto 0);
           in4 : IN  std_logic_vector(15 downto 0);
           S 	: in  STD_LOGIC_VECTOR(1 downto 0);
           O	: out  std_logic_vector(15 downto 0));
end multiplexer_4_to_1;

architecture Behavioral of multiplexer_4_to_1 is

begin

process (in1, in2, in3, in4, S)
begin
	case S is
		when "00"	=>	O <= in1;
		when "01"	=> O <= in2;
		when "10"	=> O <= in3;
		when "11"	=> O <= in4;
		when others => O <= "0000000000000000";
	end case;
end process;

end Behavioral;


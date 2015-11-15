----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Tolga Sel 
-- 
-- Create Date:    17:06:16 11/14/2015 
-- Design Name: 
-- Module Name:    multiplexer - Behavioral 
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

entity multiplexer is
    Port ( A : in  STD_LOGIC_VECTOR(15 downto 0);
           B : in  STD_LOGIC_VECTOR(15 downto 0);
           O : out  STD_LOGIC_VECTOR(15 downto 0);
           s : in	 STD_LOGIC);
end multiplexer;

architecture Behavioral of multiplexer is

begin

multiplex_proc : process(A,B,s)
	begin
	case s is
		when '1' => O <= A;
		when '0' => O <= B;
		when others => O <= "XXXXXXXXXXXXXXXX";
	end case;
end process multiplex_proc;


end Behavioral;


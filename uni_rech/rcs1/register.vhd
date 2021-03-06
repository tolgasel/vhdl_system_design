----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Tolga Sel 
-- 
-- Create Date:    16:24:47 11/14/2015 
-- Design Name: 
-- Module Name:    register - Behavioral 
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

entity register_16bit is
    Port ( D : in  STD_LOGIC_VECTOR(15 downto 0);
           Q : out  STD_LOGIC_VECTOR(15 downto 0);
           en : in STD_LOGIC;
			  clk : in STD_LOGIC);
end register_16bit;

architecture Behavioral of register_16bit is

	signal q_sig : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');


begin

Q <= q_sig;


proc_reg : process (clk)
	begin
		if(clk = '1' and clk'event) then
			if en = '1' then
			q_sig <= D;
			end if;
		end if;
end process proc_reg;

end Behavioral;


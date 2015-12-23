----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:18:39 12/23/2015 
-- Design Name: 
-- Module Name:    module - Behavioral 
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

entity module is
    Port ( Clock		: IN  std_logic;
           Initial	: IN  std_logic;
           EN125		: out  std_logic;
           EN346		: out  std_logic;
			  EN78		: out  std_logic;
           S			: out  std_logic_vector(1 downto 0);
           Result		: out  std_logic);
end module;

architecture Behavioral of module is

signal int_state_sig : std_logic_vector(2 downto 0) := "111" ;
	
begin

proc_counter: process (Clock, int_state_sig, Initial)
			
begin

	if Clock = '1' and Clock'EVENT then
		case int_state_sig is
			when "000" =>	int_state_sig <= "001";
			when "001" =>	int_state_sig <= "010";
			when "010" =>	int_state_sig <= "011";
			when "011" =>	int_state_sig <= "100";
			when "100" =>	int_state_sig <= "101";
			when "101" =>	int_state_sig <= "110";
			when "110" =>	int_state_sig <= "111";
			when "111" =>	if Initial = '1' then int_state_sig <= "000";
								else int_state_sig <= "111";
								end if;
			when others => int_state_sig <= "111";
		end case;
	end if;

end process proc_counter;


register_enable_proc : process (int_state_sig)

begin
	case int_state_sig is
		when "000"	=>	EN125 <= '1';
							EN346	<= '0';			
							EN78	<= '0';
							Result <= '0';	
							
		when "010"	=>	EN125 <= '0';
							EN346	<= '1';			
							EN78	<= '0';
							Result <= '0';
							
		when "100"	=>	EN125 <= '0';
							EN346	<= '0';			
							EN78	<= '1';
							Result <= '0';
							
		when "110"	=>	EN125 <= '0';
							EN346	<= '0';			
							EN78	<= '0';
							Result <= '1';
							
		when others	=>	EN125 <= '0';
							EN346	<= '0';			
							EN78	<= '0';
							Result <= '0';
	end case;
end process register_enable_proc;
							

int_state_proc : process (int_state_sig)	
begin
	case int_state_sig is
		when "000"	=>	S <= "00";
		when "001"	=>	S <= "00";
		when "010" 	=> S <= "01";
		when "011"	=> S <= "01";
		when "100" 	=>	S <= "10";
		when "101"	=>	S <= "10";
		when "110" 	=> S <= "11";
		when "111"	=> S <= "11";
		when others	=> S <= "00";
	end case;
end process int_state_proc;				
							
end Behavioral;


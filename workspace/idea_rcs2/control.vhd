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

entity control is
    Port ( Clock		: IN  std_logic;
           Initial	: IN  std_logic;
			  trafo		: IN  std_logic;
           EN125		: out  std_logic;
           EN346		: out  std_logic;
			  EN78		: out  std_logic;
           S			: out  std_logic_vector(1 downto 0);
			  S_t			: out  std_logic_vector(1 downto 0);
           Result		: out  std_logic);
end control;

architecture Behavioral of control is

signal int_state_sig : std_logic_vector(2 downto 0) := "111" ;
signal S_sig	:std_logic_vector(1 downto 0) := "00";
	
begin

S <= S_sig;

proc_counter: process (Clock, int_state_sig, Initial, trafo)
			
begin
	if Clock = '1' and Clock'EVENT then
		if trafo = '0' then
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
		else
			case int_state_sig is
				when "000" =>	int_state_sig <= "001";
				when "001" =>	int_state_sig <= "010";
				when "010" =>	int_state_sig <= "011";
				when "011" =>	int_state_sig <= "110";
				when "110" =>	int_state_sig <= "111";
				when "111" =>	if Initial = '1' then int_state_sig <= "000";
									else int_state_sig <= "111";
									end if;
				when others => int_state_sig <= "111";
			end case;
		end if;
	end if;

end process proc_counter;


register_enable_proc : process (int_state_sig)

begin
		if trafo = '0' then
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
		else
			case int_state_sig is
				when "000"	=>	EN125 <= '1';
									EN346	<= '0';			
									EN78	<= '0';
									Result <= '0';	
									
				when "010"	=>	EN125 <= '0';
									EN346	<= '1';			
									EN78	<= '0';
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
		end if;
end process register_enable_proc;
							

int_state_proc : process (int_state_sig)	
begin
		if trafo = '0' then
			case int_state_sig is
				when "000"	=>	S_sig <= "00";
				when "001"	=>	S_sig <= "00";
				when "010" 	=> S_sig <= "01";
				when "011"	=> S_sig <= "01";
				when "100" 	=>	S_sig <= "10";
				when "101"	=>	S_sig <= "10";
				when "110" 	=> S_sig <= "11";
				when "111"	=> S_sig <= "11";
				when others	=> S_sig <= "00";
			end case;
		else
			case int_state_sig is
				when "000"	=>	S_sig <= "00";
				when "001"	=>	S_sig <= "00";
				when "010" 	=> S_sig <= "01";
				when "011"	=> S_sig <= "01";
				when "110" 	=> S_sig <= "11";
				when "111"	=> S_sig <= "11";
				when others	=> S_sig <= "00";
			end case;		
		end if;
end process int_state_proc;				
							
							
signal_S_t_proc : process (S_sig)
begin
	if trafo = '0' then
		S_t(1) <= S_sig(1);
		S_t(0) <= S_sig(0);
	else
		S_t(1) <= S_sig(1);
		S_t(0) <= not S_sig(0);
	end if;
end process signal_S_t_proc;
							
end Behavioral;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:31:58 12/25/2015 
-- Design Name: 
-- Module Name:    round_counter - Behavioral 
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
use IEEE.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity roundcounter is
    Port (	Start	:	in  STD_LOGIC;
				Clock	:	in  STD_LOGIC;
				Ready	:	out STD_LOGIC;
				S_i	:	out STD_LOGIC;
				Result:	in	STD_LOGIC;
				Round :	out STD_LOGIC_VECTOR(3 DOWNTO 0);
				Init	:	out STD_LOGIC;
				Trafo	:	out STD_LOGIC);
end roundcounter;

architecture Behavioral of roundcounter is
	signal Round_Sig : STD_LOGIC_VECTOR(3 DOWNTO 0);

	type States is (Sleep, Calc, Setup);
	signal State, Next_State : States;

begin


Trafo <= Round_Sig(3);
Round <= Round_Sig;

trafo_proc : process(Round_Sig)
begin
	if Round_Sig = "0000" then S_i <= '1';
	else S_i <= '0';
	end if;
end process trafo_proc;


State_Memory : process (Clock)
begin
	if Clock = '1' and Clock'EVENT then
		State <= Next_State;
	end if;
end process State_Memory;


NextStateLogic: process(Clock, State)
begin
	if Clock = '1' and Clock'EVENT then
		case State is
			when Sleep => If Start = '1' then 	
										Next_State <= Setup;
										Round_Sig <= "0000";
								else 
										Round_Sig <= "1000";
								end if;
			when Setup => Next_State <= Calc;
			when Calc	=>	If Result = '0' then --Next_State <= Calc;
								else 
										if Result = '1' and Round_Sig = "1000" then
											Next_State <= Sleep;
										else 	if Result = '1' and Round_Sig /= "1000" then
												Next_State <= Setup;
												Round_Sig <= Round_Sig + 1;
												end if;
										end if;
								end if;
		end case;
	end if;
end process NextStateLogic;

OutputLogic: process(Clock, State)
begin
		case State is
			when Sleep	=>	Init <= '0';
								Ready <= '1';
			when Calc	=>	Ready <= '0';
								Init	<= '0';
			when Setup	=>	Init	<= '1';
								Ready	<=	'0';
		end case;
end process OutputLogic;



end Behavioral;


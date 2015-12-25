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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity round_counter is
    Port (	Start	:	in  STD_LOGIC;
				Ready	:	out STD_LOGIC;
				S_i	:	out STD_LOGIC;
				Result:	in	STD_LOGIC;
				Init	:	out STD_LOGIC;
				Trafo	:	out STD_LOGIC);
end round_counter;

architecture Behavioral of round_counter is

begin
	type States is (Sleep, Calc, Setup);
	signal State, Next_State : States;

begin


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
			when Sleep => If Start = '1' then Next_State <= Setup;
								end if;
			when Setup => Next_State <= Calc;
			when Calc	=>	If Result = '0' then Next_State <= Calc;
								else 
										if Result = '1' and Round = "1000" then
											Next_State <= Sleep;
										else 	if Result = '1' and Round /= "1000" then
												Next_State <= Setup;
												end if;
										end if;
								end if;
		end case;
	end if;
end process NextStateLogic;

OutputLogic: process(Clock, State)
begin
	if Clock = '1' and Clock'EVENT then
		case State is
			when Sleep	=>	Init <= '0';
								Ready <= '1';
			when Calc	=>	Ready <= '0';
								Init	<= '0';
			when Setup	=>	Init	<= '1';
								Ready	<=	'0';
		end case;
	end if;
end process OutputLogic;

end Behavioral;


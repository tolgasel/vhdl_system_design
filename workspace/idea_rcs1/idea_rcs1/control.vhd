----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:08:33 11/16/2015 
-- Design Name: 
-- Module Name:    control - Behavioral 
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

entity control is
    Port (  clk	:	in		STD_LOGIC;
				start	:	in		STD_LOGIC;
				round	:	out	STD_LOGIC_VECTOR(3 downto 0);
				ready :	out	STD_LOGIC;
				en		:	out	STD_LOGIC;
				s		:	out	STD_LOGIC);
end control;

architecture Behavioral of control is

	signal	fsm_start_sig 		:	std_logic := '0';
	signal	round_sig			: 	std_logic_vector(3 downto 0)  := (others => '0');
	signal	start_before_sig	:	std_logic := '0';
begin

control_proc: process(clk, start)
	variable ready_var			:	std_logic := '0';
	variable s_var					:	std_logic := '0';
	variable en_var				:	std_logic := '0';
	variable counter_var			:	std_logic_vector(3 downto 0)  := (others => '0');
	begin
	
	if(clk = '1' and clk'event) then
		if(start = '1' and start_before_sig = '0') then		
				ready_var := '0';
				s_var	:=	'0';
				en_var	:=	'1';
				counter_var	:=	std_logic_vector(to_unsigned(0,4));
				fsm_start_sig <= '1';
				start_before_sig <= '1';
		else	if(start = '0' and fsm_start_sig = '0') then	s_var := '1';
																			ready_var	:= '1';
																			counter_var := "1000";
				end if;
		end if;
		
		if(fsm_start_sig = '1') then
			if(round_sig = "0000") then s_var := '1';
			end if;
			counter_var := counter_var + 1;
			if(round_sig = "0111") then 
				fsm_start_sig <= '0';
				ready_var	:= '1';
				en_var		:=	'0';
				start_before_sig <= '0';

			else
				fsm_start_sig <= '1';
				ready_var	:= '0';
				en_var		:=	'1';
			end if;
		end if;
		
		round <= counter_var;
		round_sig <= counter_var;
		ready <= ready_var;
		en <= en_var;
		s <= s_var;
	end if;
		
	end process control_proc;
		
end Behavioral;



------------------------------------------------------------------------------------
---- Company: 
---- Engineer: 
---- 
---- Create Date:    00:08:33 11/16/2015 
---- Design Name: 
---- Module Name:    control - Behavioral 
---- Project Name: 
---- Target Devices: 
---- Tool versions: 
---- Description: 
----
---- Dependencies: 
----
---- Revision: 
---- Revision 0.01 - File Created
---- Additional Comments: 
----
------------------------------------------------------------------------------------
--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.std_logic_unsigned.all;
---- Uncomment the following library declaration if using
---- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;
--
---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
----library UNISIM;
----use UNISIM.VComponents.all;
--
--entity control is
--    Port (  clk	:	in		STD_LOGIC;
--				start	:	in		STD_LOGIC;
--				round	:	out	STD_LOGIC_VECTOR(3 downto 0);
--				ready :	out	STD_LOGIC;
--				en		:	out	STD_LOGIC;
--				s		:	out	STD_LOGIC);
--end control;
--
--architecture Behavioral of control is
--
--	signal	start_before_sig 	:	std_logic := '0';
--	signal	fsm_start_sig 		:	std_logic := '0';
--	signal	round_sig			: 	std_logic_vector(3 downto 0)  := (others => '0');
--	
--begin
--
--control_proc: process(clk, start)
--	variable ready_var			:	std_logic := '0';
--	variable s_var					:	std_logic := '0';
--	variable en_var				:	std_logic := '0';
--	variable counter_var			:	std_logic_vector(3 downto 0)  := (others => '0');
--	begin
--	
--	if(clk = '1' and clk'event) then
--		if(start = '1') then 
--					start_before_sig <= '1';
--		end if;
--		
--		if(start_before_sig = '1' and start = '0') then
--				ready_var := '0';
--				s_var	:=	'0';
--				en_var	:=	'1';
--				counter_var	:=	std_logic_vector(to_unsigned(0,4));
--				fsm_start_sig <= '1';
--				start_before_sig <= '0';
--		else	if(fsm_start_sig = '0' and start_before_sig = '0') then	s_var := '1';
--																							ready_var	:= '1';
--																							counter_var := "1000";
--				end if;
--		end if;
--		
--		if(fsm_start_sig = '1') then
--			if(round_sig = "0000") then s_var := '1';
--			end if;
--			counter_var := counter_var + 1;
--			if(round_sig = "0111") then 
--				fsm_start_sig <= '0';
--				ready_var	:= '1';
--				en_var		:=	'0';
--			else
--				fsm_start_sig <= '1';
--				ready_var	:= '0';
--				en_var		:=	'1';
--			end if;
--		end if;
--		
--		round <= counter_var;
--		round_sig <= counter_var;
--		ready <= ready_var;
--		en <= en_var;
--		s <= s_var;
--	end if;
--		
--	end process control_proc;
--		
--end Behavioral;
--

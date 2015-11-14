----------------------------------------------------------------------------------
-- Company: 
-- Engineer: ga69kaw, Tolga Sel 
-- 
-- Create Date:    14:33:45 11/02/2015 
-- Design Name: 
-- Module Name:    mulop - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mulop is
    Port ( X : in  STD_LOGIC_VECTOR(15 downto 0);
           Y : in  STD_LOGIC_VECTOR(15 downto 0);
           O : out  STD_LOGIC_VECTOR(15 downto 0));
end mulop;

architecture Behavioral of mulop is

begin

	mul_process: process (X,Y)
		variable a: std_logic_vector(16 downto 0) := "00000000000000000"; --X signed to a
		variable b: std_logic_vector(16 downto 0) := "00000000000000000";	--Y signed to b
		variable c: std_logic_vector(33 downto 0) := "0000000000000000000000000000000000"; -- result a*b
		variable d: std_logic_vector(32 downto 0) := "000000000000000000000000000000000"; -- result d=c mod (2^16)
		variable e: std_logic_vector(32 downto 0) := "000000000000000000000000000000000"; -- result d=c mod (2^16)
		variable f: std_logic_vector(32 downto 0) := "000000000000000000000000000000000"; -- total result

		begin
			-- substitute 
			if X="0000000000000000" then a:="10000000000000000";
				else a:='0' & X(15 downto 0);
			end if;

			if Y="0000000000000000" then b:="10000000000000000";
				else b:='0' & Y(15 downto 0);
			end if;
			
			-- c=a*b
			-- c is 33 downto 0 because 33th bit is vorzeichen
			c :=  std_logic_vector(unsigned(a)*unsigned(b));
			
			-- d= c mod (2^16)
			d := "00000000000000000"&c(15 downto 0);

			-- e=c div (2^16)
			e := "0000000000000000"&c(32 downto 16);
			
			if unsigned(d) >= unsigned(e) then f := std_logic_vector(unsigned(d)-unsigned(e));
													else f := std_logic_vector(unsigned(d)-unsigned(e) + 65537);
									
			end if;
			
			O<=f(15 downto 0);
			
			
		end process mul_process;


end Behavioral;

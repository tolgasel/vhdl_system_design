----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Tolga Sel 
-- 
-- Create Date:    12:10:30 11/15/2015 
-- Design Name: 
-- Module Name:    keygen - Behavioral 
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

entity keygen is
    Port ( rc 		: in   STD_LOGIC_VECTOR(3 downto 0); --rc:round_counter
           key_in : in   STD_LOGIC_VECTOR(127 downto 0);
			  z1 		: out  STD_LOGIC_VECTOR(15 downto 0);
           z2 		: out  STD_LOGIC_VECTOR(15 downto 0);
           z3 		: out  STD_LOGIC_VECTOR(15 downto 0);
           z4 		: out  STD_LOGIC_VECTOR(15 downto 0);
           z5 		: out  STD_LOGIC_VECTOR(15 downto 0);
           z6 		: out  STD_LOGIC_VECTOR(15 downto 0));
end keygen;

architecture Behavioral of keygen is

	signal skeyshift1 : std_logic_vector(127 downto 0);
	signal skeyshift2 : std_logic_vector(127 downto 0);	
	signal skeyshift3 : std_logic_vector(127 downto 0);
	signal skeyshift4 : std_logic_vector(127 downto 0);
	signal skeyshift5 : std_logic_vector(127 downto 0);
	signal skeyshift6 : std_logic_vector(127 downto 0);
	signal skeyshift7 : std_logic_vector(127 downto 0);
	
begin



keygen_proc: process(rc,key_in)
	variable skeyshift1 : std_logic_vector(127 downto 0);
	variable skeyshift2 : std_logic_vector(127 downto 0);	
	variable skeyshift3 : std_logic_vector(127 downto 0);
	variable skeyshift4 : std_logic_vector(127 downto 0);
	variable skeyshift5 : std_logic_vector(127 downto 0);
	variable skeyshift6 : std_logic_vector(127 downto 0);
	variable skeyshift7 : std_logic_vector(127 downto 0);
	
	begin
	
	skeyshift1 := key_in;
	skeyshift2 := skeyshift1(102 downto 0) & skeyshift1(127 downto 103);
	skeyshift3 := skeyshift2(102 downto 0) & skeyshift2(127 downto 103);
	skeyshift4 := skeyshift3(102 downto 0) & skeyshift3(127 downto 103);
	skeyshift5 := skeyshift4(102 downto 0) & skeyshift4(127 downto 103);
	skeyshift6 := skeyshift5(102 downto 0) & skeyshift5(127 downto 103);
	skeyshift7 := skeyshift6(102 downto 0) & skeyshift6(127 downto 103);
	
	case rc is
		when	"0000" =>				z1 <= skeyshift1(127 downto 112); 	--z1r1;
											z2 <= skeyshift1(111 downto 96);  	--z2r1;
											z3 <= skeyshift1(95 downto 80);   	--z3r1;
											z4 <= skeyshift1(79 downto 64);   	--z4r1;
											z5 <= skeyshift1(63 downto 48);	  	--z5r1;
											z6 <= skeyshift1(47 downto 32);    	--z6r1;
		when	"0001"	=>
											z1 <= skeyshift1(31 downto 16);		--z1r2;
											z2 <= skeyshift1(15 downto 0);		--z2r2;
											z3 <= skeyshift2(127 downto 112); 	--z3r2;
											z4 <= skeyshift2(111 downto 96);		--z4r2;
											z5 <= skeyshift2(95 downto 80);		--z5r2;
											z6 <= skeyshift2(79 downto 64);		--z6r2;
							
		when	"0010"	=>				z1 <= skeyshift2(63 downto 48);		--z1r3;
											z2 <= skeyshift2(47 downto 32);		--z3r2;
											z3 <= skeyshift2(31 downto 16);		--z3r3;
											z4 <= skeyshift2(15 downto 0);		--z4r3;
											z5 <= skeyshift3(127 downto 112);	--z5r3;
											z6 <= skeyshift3(111 downto 96);		--z6r3;	
		when	"0011"	=>				
											z1 <= skeyshift3(95 downto 80);		--z1r4;
											z2 <= skeyshift3(79 downto 64);		--z2r4;
											z3 <= skeyshift3(63 downto 48);		--z3r4;
											z4 <= skeyshift3(47 downto 32);		--z4r4;
											z5 <= skeyshift3(31 downto 16);		--z5r4;
											z6 <= skeyshift3(15 downto 0);		--z6r4;
		when	"0100"	=>				z1 <= skeyshift4(127 downto 112);	--z1r5;
											z2 <= skeyshift4(111 downto 96);		--z2r5;
											z3 <= skeyshift4(95 downto 80);		--z3r5;
											z4 <= skeyshift4(79 downto 64);		--z4r5;
											z5 <= skeyshift4(63 downto 48);		--z5r5;
											z6 <= skeyshift4(47 downto 32);		--z6r5;
		when	"0101"	=>				
											z1 <= skeyshift4(31 downto 16);		--z1r6;
											z2 <= skeyshift4(15 downto 0);		--z2r6;
											z3 <= skeyshift5(127 downto 112);	--z3r6;
											z4 <= skeyshift5(111 downto 96);		--z4r6;
											z5 <= skeyshift5(95 downto 80);		--z5r6;
											z6 <= skeyshift5(79 downto 64);		--z6r6;
							
		when	"0110"	=>
											z1 <= skeyshift5(63 downto 48);		--z1r7;
											z2 <= skeyshift5(47 downto 32);		--2r7;
											z3 <= skeyshift5(31 downto 16);		--z3r7;
											z4 <= skeyshift5(15 downto 0);		--z4r7;
											z5 <= skeyshift6(127 downto 112);	--z5r7;
											z6 <= skeyshift6(111 downto 96);		--z6r7;
		when	"0111"	=>				
											z1 <= skeyshift6(95 downto 80);		--z1r8;
											z2 <= skeyshift6(79 downto 64);		--z2r8;
											z3 <= skeyshift6(63 downto 48);		--z3r8;
											z4 <= skeyshift6(47 downto 32);		--z4r8;
											z5 <= skeyshift6(31 downto 16);		--z5r8;
											z6 <= skeyshift6(15 downto 0);		--z6r8;
	
		when	"1000"	=>				
											z1 <= skeyshift7(127 downto 112);	--z1r9;
											z2 <= skeyshift7(111 downto 96);		--z2r9;
											z3 <= skeyshift7(95 downto 80);		--z3r9;
											z4 <= skeyshift7(79 downto 64);		--z4r9;
											z5 <= "0000000000000000";				--z5r8;
											z6 <= "0000000000000000";				--z6r8;
		when others		=>				
											z1 <= "0000000000000000";				--z1r9;
											z2 <= "0000000000000000";				--z2r9;
											z3 <= "0000000000000000";				--z3r9;
											z4 <= "0000000000000000";				--z4r9;
											z5 <= "0000000000000000";				--z5r8;
											z6 <= "0000000000000000";				--z6r8;	

		end case;
		
	end process keygen_proc;

end Behavioral;


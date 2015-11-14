----------------------------------------------------------------------------------
-- Company: 
-- Engineer: ga69kaw, Tolga Sel 
-- 
-- Create Date:    14:23:19 11/03/2015 
-- Design Name: 
-- Module Name:    idea - Behavioral 
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

entity idea is
    Port ( KEY : in  std_logic_vector(127 downto 0);
			  X1 : in  std_logic_vector(15 downto 0);
			  X2 : in  std_logic_vector(15 downto 0);
			  X3 : in  std_logic_vector(15 downto 0);
			  X4 : in  std_logic_vector(15 downto 0);
			  Y1 : out  std_logic_vector(15 downto 0);
			  Y2 : out  std_logic_vector(15 downto 0);
			  Y3 : out  std_logic_vector(15 downto 0);
			  Y4 : out  std_logic_vector(15 downto 0));
end idea;

architecture Behavioral of idea is

 
    COMPONENT trafo
    PORT(
         X1 : IN  std_logic_vector(15 downto 0);
         X2 : IN  std_logic_vector(15 downto 0);
         X3 : IN  std_logic_vector(15 downto 0);
         X4 : IN  std_logic_vector(15 downto 0);
         Z1 : IN  std_logic_vector(15 downto 0);
         Z2 : IN  std_logic_vector(15 downto 0);
         Z3 : IN  std_logic_vector(15 downto 0);
         Z4 : IN  std_logic_vector(15 downto 0);
         Y1 : OUT  std_logic_vector(15 downto 0);
         Y2 : OUT  std_logic_vector(15 downto 0);
         Y3 : OUT  std_logic_vector(15 downto 0);
         Y4 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	 
    COMPONENT round
    PORT(
         x1 : IN  std_logic_vector(15 downto 0);
         x2 : IN  std_logic_vector(15 downto 0);
         X3 : IN  std_logic_vector(15 downto 0);
         x4 : IN  std_logic_vector(15 downto 0);
         z1 : IN  std_logic_vector(15 downto 0);
         z2 : IN  std_logic_vector(15 downto 0);
         z3 : IN  std_logic_vector(15 downto 0);
         z4 : IN  std_logic_vector(15 downto 0);
         z5 : IN  std_logic_vector(15 downto 0);
         z6 : IN  std_logic_vector(15 downto 0);
         y1 : OUT  std_logic_vector(15 downto 0);
         y2 : OUT  std_logic_vector(15 downto 0);
         y3 : OUT  std_logic_vector(15 downto 0);
         y4 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;

	signal sr1y1 : std_logic_vector(15 downto 0) := (others => '0');
	signal sr1y2 : std_logic_vector(15 downto 0) := (others => '0');
	signal sr1y3 : std_logic_vector(15 downto 0) := (others => '0');
	signal sr1y4 : std_logic_vector(15 downto 0) := (others => '0');
	signal sr2y1 : std_logic_vector(15 downto 0) := (others => '0');
	signal sr2y2 : std_logic_vector(15 downto 0) := (others => '0');
	signal sr2y3 : std_logic_vector(15 downto 0) := (others => '0');
	signal sr2y4 : std_logic_vector(15 downto 0) := (others => '0');
	signal sr3y1 : std_logic_vector(15 downto 0) := (others => '0');
	signal sr3y2 : std_logic_vector(15 downto 0) := (others => '0');
	signal sr3y3 : std_logic_vector(15 downto 0) := (others => '0');
	signal sr3y4 : std_logic_vector(15 downto 0) := (others => '0');
	signal sr4y1 : std_logic_vector(15 downto 0) := (others => '0');
	signal sr4y2 : std_logic_vector(15 downto 0) := (others => '0');
	signal sr4y3 : std_logic_vector(15 downto 0) := (others => '0');
	signal sr4y4 : std_logic_vector(15 downto 0) := (others => '0');
	signal sr5y1 : std_logic_vector(15 downto 0) := (others => '0');
	signal sr5y2 : std_logic_vector(15 downto 0) := (others => '0');
	signal sr5y3 : std_logic_vector(15 downto 0) := (others => '0');
	signal sr5y4 : std_logic_vector(15 downto 0) := (others => '0');
	signal sr6y1 : std_logic_vector(15 downto 0) := (others => '0');
	signal sr6y2 : std_logic_vector(15 downto 0) := (others => '0');
	signal sr6y3 : std_logic_vector(15 downto 0) := (others => '0');
	signal sr6y4 : std_logic_vector(15 downto 0) := (others => '0');
	signal sr7y1 : std_logic_vector(15 downto 0) := (others => '0');
	signal sr7y2 : std_logic_vector(15 downto 0) := (others => '0');
	signal sr7y3 : std_logic_vector(15 downto 0) := (others => '0');
	signal sr7y4 : std_logic_vector(15 downto 0) := (others => '0');
	signal sr8y1 : std_logic_vector(15 downto 0) := (others => '0');
	signal sr8y2 : std_logic_vector(15 downto 0) := (others => '0');
	signal sr8y3 : std_logic_vector(15 downto 0) := (others => '0');
	signal sr8y4 : std_logic_vector(15 downto 0) := (others => '0');
	signal skeyshift1 : std_logic_vector(127 downto 0);
	signal skeyshift2 : std_logic_vector(127 downto 0);	
	signal skeyshift3 : std_logic_vector(127 downto 0);
	signal skeyshift4 : std_logic_vector(127 downto 0);
	signal skeyshift5 : std_logic_vector(127 downto 0);
	signal skeyshift6 : std_logic_vector(127 downto 0);
	signal skeyshift7 : std_logic_vector(127 downto 0);
	
	

	
begin

	skeyshift1 <= KEY;
	skeyshift2 <= skeyshift1(102 downto 0) & skeyshift1(127 downto 103);
	skeyshift3 <= skeyshift2(102 downto 0) & skeyshift2(127 downto 103);
	skeyshift4 <= skeyshift3(102 downto 0) & skeyshift3(127 downto 103);
	skeyshift5 <= skeyshift4(102 downto 0) & skeyshift4(127 downto 103);
	skeyshift6 <= skeyshift5(102 downto 0) & skeyshift5(127 downto 103);
	skeyshift7 <= skeyshift6(102 downto 0) & skeyshift6(127 downto 103);
				

	-- Instantiate the Unit Under Test (UUT)
   trafo_1: trafo PORT MAP (
          X1 => sr8y1,
          X2 => sr8y2,
          X3 => sr8y3,
          X4 => sr8y4,
          Z1 => skeyshift7(127 downto 112),		--z1r9,
          Z2 => skeyshift7(111 downto 96),		--z2r9,
          Z3 => skeyshift7(95 downto 80),		--z3r9,
          Z4 => skeyshift7(79 downto 64),		--z4r9,
          Y1 => Y1,
          Y2 => Y2,
          Y3 => Y3,
          Y4 => Y4
        );


   round_1: round PORT MAP (
          x1 => X1,
          x2 => X2,
          X3 => X3,
          x4 => X4,
          z1 => skeyshift1(127 downto 112), --z1r1,
          z2 => skeyshift1(111 downto 96),  --z2r1,
          z3 => skeyshift1(95 downto 80),   --z3r1,
          z4 => skeyshift1(79 downto 64),   --z4r1,
          z5 => skeyshift1(63 downto 48),	  --z5r1,
          z6 => skeyshift1(47 downto 32),    --z6r1,
          y1 => sr1y1,
          y2 => sr1y2,
          y3 => sr1y3,
          y4 => sr1y4
        );
		  
		  
   round_2: round PORT MAP (
          x1 => sr1y1,
          x2 => sr1y2,
          X3 => sr1y3,
          x4 => sr1y4,
          z1 => skeyshift1(31 downto 16),		--z1r2,
          z2 => skeyshift1(15 downto 0),		--z2r2,
          z3 => skeyshift2(127 downto 112), 	--z3r2,
          z4 => skeyshift2(111 downto 96),	--z4r2,
          z5 => skeyshift2(95 downto 80),		--z5r2,
          z6 => skeyshift2(79 downto 64),		--z6r2,
          y1 => sr2y1,
          y2 => sr2y2,
          y3 => sr2y3,
          y4 => sr2y4
        );
		  
		  
	round_3: round PORT MAP (
          x1 => sr2y1,
          x2 => sr2y2,
          X3 => sr2y3,
          x4 => sr2y4,
          z1 => skeyshift2(63 downto 48),		--z1r3,
          z2 => skeyshift2(47 downto 32),		--z3r2,
          z3 => skeyshift2(31 downto 16),		--z3r3,
          z4 => skeyshift2(15 downto 0),		--z4r3,
          z5 => skeyshift3(127 downto 112),	--z5r3,
          z6 => skeyshift3(111 downto 96),	--z6r3,
          y1 => sr3y1,
          y2 => sr3y2,
          y3 => sr3y3,
          y4 => sr3y4
        );
		  
		  
	round_4: round PORT MAP (
          x1 => sr3y1,
          x2 => sr3y2,
          X3 => sr3y3,
          x4 => sr3y4,
          z1 => skeyshift3(95 downto 80),		--z1r4,
          z2 => skeyshift3(79 downto 64),		--z2r4,
          z3 => skeyshift3(63 downto 48),	--z3r4,
          z4 => skeyshift3(47 downto 32),	--z4r4,
          z5 => skeyshift3(31 downto 16),		--z5r4,
          z6 => skeyshift3(15 downto 0),		--z6r4,
          y1 => sr4y1,
          y2 => sr4y2,
          y3 => sr4y3,
          y4 => sr4y4
        );
		  
   round_5: round PORT MAP (
          x1 => sr4y1,
          x2 => sr4y2,
          X3 => sr4y3,
          x4 => sr4y4,
          z1 => skeyshift4(127 downto 112),		--z1r5,
          z2 => skeyshift4(111 downto 96),		--z2r5,
          z3 => skeyshift4(95 downto 80),	--z3r5,
          z4 => skeyshift4(79 downto 64),	--z4r5,
          z5 => skeyshift4(63 downto 48),		--z5r5,
          z6 => skeyshift4(47 downto 32),		--z6r5,
          y1 => sr5y1,
          y2 => sr5y2,
          y3 => sr5y3,
          y4 => sr5y4
        );
		  
		  
   round_6: round PORT MAP (
          x1 => sr5y1,
          x2 => sr5y2,
          X3 => sr5y3,
          x4 => sr5y4,
          z1 => skeyshift4(31 downto 16),		--z1r6,
          z2 => skeyshift4(15 downto 0),		--z2r6,
          z3 => skeyshift5(127 downto 112),	--z3r6,
          z4 => skeyshift5(111 downto 96),	--z4r6,
          z5 => skeyshift5(95 downto 80),		--z5r6,
          z6 => skeyshift5(79 downto 64),		--z6r6,
          y1 => sr6y1,
          y2 => sr6y2,
          y3 => sr6y3,
          y4 => sr6y4
        );
		  
		  
	round_7: round PORT MAP (
          x1 => sr6y1,
          x2 => sr6y2,
          X3 => sr6y3,
          x4 => sr6y4,
          z1 => skeyshift5(63 downto 48),		--z1r7,
          z2 => skeyshift5(47 downto 32),		--2r7,
          z3 => skeyshift5(31 downto 16),		--z3r7,
          z4 => skeyshift5(15 downto 0),		--z4r7,
          z5 => skeyshift6(127 downto 112),	--z5r7,
          z6 => skeyshift6(111 downto 96),		--z6r7,
          y1 => sr7y1,
          y2 => sr7y2,
          y3 => sr7y3,
          y4 => sr7y4
        );
		  
		  
	round_8: round PORT MAP (
          x1 => sr7y1,
          x2 => sr7y2,
          X3 => sr7y3,
          x4 => sr7y4,
          z1 => skeyshift6(95 downto 80),		--z1r8,
          z2 => skeyshift6(79 downto 64),		--z2r8,
          z3 => skeyshift6(63 downto 48),		--z3r8,
          z4 => skeyshift6(47 downto 32),		--z4r8,
          z5 => skeyshift6(31 downto 16),		--z5r8,
          z6 => skeyshift6(15 downto 0),		--z6r8,
          y1 => sr8y1,
          y2 => sr8y2,
          y3 => sr8y3,
          y4 => sr8y4
        );
		  




end Behavioral;


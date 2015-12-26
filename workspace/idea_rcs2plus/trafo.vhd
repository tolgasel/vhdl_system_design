----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Tolga Sel 
-- 
-- Create Date:    14:13:12 11/03/2015 
-- Design Name: 
-- Module Name:    trafo - Behavioral 
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

entity trafo is
    Port ( X1 : in  STD_LOGIC_VECTOR(15 downto 0);
			  X2 : in  STD_LOGIC_VECTOR(15 downto 0);
			  X3 : in  STD_LOGIC_VECTOR(15 downto 0);
			  X4 : in  STD_LOGIC_VECTOR(15 downto 0);
           Z1 : in  STD_LOGIC_VECTOR(15 downto 0);
			  Z2 : in  STD_LOGIC_VECTOR(15 downto 0);
			  Z3 : in  STD_LOGIC_VECTOR(15 downto 0);
			  Z4 : in  STD_LOGIC_VECTOR(15 downto 0);
           Y1 : OUT  STD_LOGIC_VECTOR(15 downto 0);
			  Y2 : OUT  STD_LOGIC_VECTOR(15 downto 0);
			  Y3 : OUT  STD_LOGIC_VECTOR(15 downto 0);
			  Y4 : OUT  STD_LOGIC_VECTOR(15 downto 0));
end trafo;

architecture Behavioral of trafo is

    COMPONENT addop
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
         O : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	 
	     COMPONENT mulop
    PORT(
         X : IN  std_logic_vector(15 downto 0);
         Y : IN  std_logic_vector(15 downto 0);
         O : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	 


begin

   mulop_1: mulop PORT MAP (
          X => X1,
          Y => Z1,
          O => Y1
        );

   mulop_2: mulop PORT MAP (
          X => X4,
          Y => Z4,
          O => Y4
        );

   addop_1: addop PORT MAP (
          A => X3,
          B => Z2,
          O => Y2
        );		  

   addop_2: addop PORT MAP (
          A => X2,
          B => Z3,
          O => Y3
        );		  
		  
end Behavioral;


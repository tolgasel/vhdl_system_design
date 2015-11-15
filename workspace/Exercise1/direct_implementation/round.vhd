----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Tolga Sel 
-- 
-- Create Date:    10:57:18 11/03/2015 
-- Design Name: 
-- Module Name:    round - Behavioral 
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

entity round is
    Port ( x1 : in  std_logic_vector(15 downto 0);
			  x2 : in  std_logic_vector(15 downto 0);
			  X3 : in  std_logic_vector(15 downto 0);
			  x4 : in  std_logic_vector(15 downto 0);
			  z1 : in  std_logic_vector(15 downto 0);
			  z2 : in  std_logic_vector(15 downto 0);
			  z3 : in  std_logic_vector(15 downto 0);
			  z4 : in  std_logic_vector(15 downto 0);
			  z5 : in  std_logic_vector(15 downto 0);
			  z6 : in  std_logic_vector(15 downto 0);
			  y1 : out  std_logic_vector(15 downto 0);
			  y2 : out  std_logic_vector(15 downto 0);
			  y3 : out  std_logic_vector(15 downto 0);
			  y4 : out  std_logic_vector(15 downto 0));
end round;

architecture Behavioral of round is

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
	 
	  
    COMPONENT xorop
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
         O : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;

   --Inputs
   signal x1z1 : std_logic_vector(15 downto 0) := (others => '0');
   signal x2z2 : std_logic_vector(15 downto 0) := (others => '0');
   signal x3z3 : std_logic_vector(15 downto 0) := (others => '0');
   signal x4z4 : std_logic_vector(15 downto 0) := (others => '0');
   signal sm1 : std_logic_vector(15 downto 0) := (others => '0');
   signal sm2 : std_logic_vector(15 downto 0) := (others => '0');
   signal sm3 : std_logic_vector(15 downto 0) := (others => '0');
   signal sm4 : std_logic_vector(15 downto 0) := (others => '0');
   signal sa1 : std_logic_vector(15 downto 0) := (others => '0');
   signal sa2  : std_logic_vector(15 downto 0) := (others => '0');
   signal sa3  : std_logic_vector(15 downto 0) := (others => '0');
   signal sa4  : std_logic_vector(15 downto 0) := (others => '0');
   signal sx1  : std_logic_vector(15 downto 0) := (others => '0');
   signal sx2 : std_logic_vector(15 downto 0) := (others => '0');





begin

   mulop_1: mulop PORT MAP (
          X => x1,
          Y => z1,
          O => x1z1
        );

   mulop_2: mulop PORT MAP (
          X => x4,
          Y => z4,
          O => x4z4
        );

   mulop_3: mulop PORT MAP (
          X => sx1,
          Y => z5,
          O => sm3
        );

   mulop_4: mulop PORT MAP (
          X => sa3,
          Y => z6,
          O => sm4
        );

   addop_1: addop PORT MAP (
          A => x2,
          B => z2,
          O => x2z2
        );		  

   addop_2: addop PORT MAP (
          A => x3,
          B => z3,
          O => x3z3
        );		  


   addop_3: addop PORT MAP (
          A => sx2,
          B => sm3,
          O => sa3
        );		  


   addop_4: addop PORT MAP (
          A => sm4,
          B => sm3,
          O => sa4
        );		  

   xorop_1: xorop PORT MAP (
          A => x1z1,
          B => x3z3,
          O => sx1
        );

   xorop_2: xorop PORT MAP (
          A => x2z2,
          B => x4z4,
          O => sx2
        );

   xorop_3: xorop PORT MAP (
          A => x1z1,
          B => sm4,
          O => y1
        );

   xorop_4: xorop PORT MAP (
          A => x3z3,
          B => sm4,
          O => y2
        );

   xorop_5: xorop PORT MAP (
          A => x2z2,
          B => sa4,
          O => y3
        );

   xorop_6: xorop PORT MAP (
          A => x4z4,
          B => sa4,
          O => y4
        );

end Behavioral;


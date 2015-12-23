----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:11:48 12/23/2015 
-- Design Name: 
-- Module Name:    datapath - Behavioral 
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

entity datapath is
    Port ( Clock : in  STD_LOGIC;
           S : IN  std_logic_vector(1 downto 0);
           EN125 : in  STD_LOGIC;
           EN346 : in  STD_LOGIC;
           EN78 : in  STD_LOGIC;
           X1 : IN  std_logic_vector(15 downto 0);
           X2 : IN  std_logic_vector(15 downto 0);
           X3 : IN  std_logic_vector(15 downto 0);
           X4 : IN  std_logic_vector(15 downto 0);
           Z1 : IN  std_logic_vector(15 downto 0);
           Z2 : IN  std_logic_vector(15 downto 0);
           Z3 : IN  std_logic_vector(15 downto 0);
           Z4 : IN  std_logic_vector(15 downto 0);
           Z5 : IN  std_logic_vector(15 downto 0);
           Z6 : IN  std_logic_vector(15 downto 0);
           Y1 : OUT std_logic_vector(15 downto 0);
           Y2 : OUT std_logic_vector(15 downto 0);
           Y3 : OUT std_logic_vector(15 downto 0);
           Y4 : OUT std_logic_vector(15 downto 0));
end datapath;

architecture Behavioral of datapath is

 
    COMPONENT multiplexer_4_to_1
    PORT(
         in1 : IN  std_logic_vector(15 downto 0);
         in2 : IN  std_logic_vector(15 downto 0);
         in3 : IN  std_logic_vector(15 downto 0);
         in4 : IN  std_logic_vector(15 downto 0);
         S : IN  std_logic_vector(1 downto 0);
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
	 
	 
    COMPONENT addop
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
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
	 

begin

   XOR_1: xorop PORT MAP (
          A => MUL1_OUT,
          B => ADD1_OUT,
          O => R5_IN
        );

   XOR_2: xorop PORT MAP (
          A => A,
          B => B,
          O => O
        );

   XOR_3: xorop PORT MAP (
          A => A,
          B => B,
          O => O
        );
		  
   XOR_4: xorop PORT MAP (
          A => A,
          B => B,
          O => O
        );


   XOR_5: xorop PORT MAP (
          A => A,
          B => B,
          O => O
        );		  
		  
		  
   ADD1: addop PORT MAP (
          A => MUX3_OUT,
          B => MUX4_OUT,
          O => ADD1_OUT
        );

   MUL1: mulop PORT MAP (
          X => MUX1_OUT,
          Y => MUX2_OUT,
          O => MUL1_OUT
        );

   MUX1_4_to_1: multiplexer_4_to_1 PORT MAP (
          in1 => X1,
          in2 => X4,
          in3 => Z5,
          in4 => Z6,
          S => S,
          O => MUX1_OUT
        );		  


   MUX2_4_to_1: multiplexer_4_to_1 PORT MAP (
          in1 => Z1,
          in2 => Z4,
          in3 => R5_OUT,
          in4 => R8_OUT,
          S => S,
          O => MUX2_OUT
        );

   MUX3_4_to_1: multiplexer_4_to_1 PORT MAP (
          in1 => X3,
          in2 => X2,
          in3 => R6_OUT,
          in4 => R7_OUT,
          S => S,
          O => MUX3_OUT
        );

   MUX4_4_to_1: multiplexer_4_to_1 PORT MAP (
          in1 => Z3,
          in2 => Z2,
          in3 => MUL_OUT,
          in4 => MUL_OUT,
          S => S,
          O => MUX4_OUT
        );


end Behavioral;


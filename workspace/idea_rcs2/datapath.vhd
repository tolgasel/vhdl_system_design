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
           S_t : IN  std_logic_vector(1 downto 0);
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
     Y1_trafo : OUT std_logic_vector(15 downto 0);
     Y2_trafo : OUT std_logic_vector(15 downto 0);
     Y3_trafo : OUT std_logic_vector(15 downto 0);
	  Y4_trafo : OUT std_logic_vector(15 downto 0);
           Y1 : OUT std_logic_vector(15 downto 0);
           Y2 : OUT std_logic_vector(15 downto 0);
           Y3 : OUT std_logic_vector(15 downto 0);
           Y4 : OUT std_logic_vector(15 downto 0));
end datapath;

architecture Behavioral of datapath is

    COMPONENT register_16bit
    PORT(
         D : IN  std_logic_vector(15 downto 0);
         Q : OUT  std_logic_vector(15 downto 0);
         en : IN  std_logic;
         clk : IN  std_logic
        );
    END COMPONENT;
 
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
	 

SIGNAL MUL1_OUT : std_logic_vector(15 downto 0);
SIGNAL ADD1_OUT : std_logic_vector(15 downto 0);
SIGNAL XOR1_OUT : std_logic_vector(15 downto 0);
SIGNAL R1_OUT : std_logic_vector(15 downto 0);
SIGNAL R2_OUT : std_logic_vector(15 downto 0);
SIGNAL R3_OUT : std_logic_vector(15 downto 0);
SIGNAL R4_OUT : std_logic_vector(15 downto 0);
SIGNAL R5_OUT : std_logic_vector(15 downto 0);
SIGNAL R6_OUT : std_logic_vector(15 downto 0);
SIGNAL R7_OUT : std_logic_vector(15 downto 0);
SIGNAL R8_OUT : std_logic_vector(15 downto 0);
SIGNAL MUX1_OUT : std_logic_vector(15 downto 0);
SIGNAL MUX2_OUT : std_logic_vector(15 downto 0);
SIGNAL MUX3_OUT : std_logic_vector(15 downto 0);
SIGNAL MUX4_OUT : std_logic_vector(15 downto 0);

begin

  Y3_trafo <= R3_OUT;
  Y2_trafo <= R2_OUT;
  Y4_trafo <= R4_OUT;
  Y1_trafo <= R1_OUT;

   REG_1: register_16bit PORT MAP (
          D => MUL1_OUT,
          Q => R1_OUT,
          en => EN125,
          clk => Clock
        );

   REG_2: register_16bit PORT MAP (
          D => ADD1_OUT,
          Q => R2_OUT,
          en => EN125,
          clk => Clock
        );

   REG_3: register_16bit PORT MAP (
          D => ADD1_OUT,
          Q => R3_OUT,
          en => EN346,
          clk => Clock
        );

   REG_4: register_16bit PORT MAP (
          D => MUL1_OUT,
          Q => R4_OUT,
          en => EN346,
          clk => Clock
        );

   REG_5: register_16bit PORT MAP (
          D => XOR1_OUT,
          Q => R5_OUT,
          en => EN125,
          clk => Clock
        );

   REG_6: register_16bit PORT MAP (
          D => XOR1_OUT,
          Q => R6_OUT,
          en => EN346,
          clk => Clock
        );

   REG_7: register_16bit PORT MAP (
          D => MUL1_OUT,
          Q => R7_OUT,
          en => EN78,
          clk => Clock
        );

   REG_8: register_16bit PORT MAP (
          D => ADD1_OUT,
          Q => R8_OUT,
          en => EN78,
          clk => Clock
        );


   XOR_1: xorop PORT MAP (
          A => MUL1_OUT,
          B => ADD1_OUT,
          O => XOR1_OUT
        );

   XOR_2: xorop PORT MAP (
          A => R3_OUT,
          B => ADD1_OUT,
          O => Y3
        );

   XOR_3: xorop PORT MAP (
          A => R2_OUT,
          B => MUL1_OUT,
          O => Y2
        );
		  
   XOR_4: xorop PORT MAP (
          A => R4_OUT,
          B => ADD1_OUT,
          O => Y4
        );


   XOR_5: xorop PORT MAP (
          A => R1_OUT,
          B => MUL1_OUT,
          O => Y1
        );		  
		  
		  
   ADDER1: addop PORT MAP (
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
          in3 => MUL1_OUT,
          in4 => MUL1_OUT,
          S => S_t,
          O => MUX4_OUT
        );


end Behavioral;


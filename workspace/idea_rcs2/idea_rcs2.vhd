----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:24:26 12/25/2015 
-- Design Name: 
-- Module Name:    idea_rcs2 - Behavioral 
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

entity idea_rcs2 is
    Port (	X1	 	: in  STD_LOGIC_VECTOR(15 DOWNTO 0);
				X2 	: in  STD_LOGIC_VECTOR(15 DOWNTO 0);
				X3 	: in  STD_LOGIC_VECTOR(15 DOWNTO 0);
				X4 	: in  STD_LOGIC_VECTOR(15 DOWNTO 0);
				Y1 	: out STD_LOGIC_VECTOR(15 DOWNTO 0);
				Y2 	: out	STD_LOGIC_VECTOR(15 DOWNTO 0);
				Y3 	: out STD_LOGIC_VECTOR(15 DOWNTO 0);
				Y4 	: out STD_LOGIC_VECTOR(15 DOWNTO 0);
				Clock : in STD_LOGIC;
				KEY	: IN	STD_LOGIC_VECTOR(127 DOWNTO 0);
				Start	: IN STD_LOGIC;
				Ready	: OUT STD_LOGIC);
end idea_rcs2;

architecture Behavioral of idea_rcs2 is

    COMPONENT register_16bit
    PORT(
         D : IN  std_logic_vector(15 downto 0);
         Q : OUT  std_logic_vector(15 downto 0);
         en : IN  std_logic;
         clk : IN  std_logic
        );
    END COMPONENT;


    COMPONENT multiplexer
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
         O : OUT  std_logic_vector(15 downto 0);
         s : IN  std_logic
        );
    END COMPONENT;
	 
    COMPONENT roundcounter
    PORT(
         Start : IN  std_logic;
         Clock : IN  std_logic;
         Ready : OUT  std_logic;
         S_i : OUT  std_logic;
         Result : IN  std_logic;
         Round : OUT  std_logic_vector(3 downto 0);
         Init : OUT  std_logic;
         Trafo : OUT  std_logic
        );
    END COMPONENT; 
	 
    COMPONENT keygen
    PORT(
         rc : IN  std_logic_vector(3 downto 0);
         key_in : IN  std_logic_vector(127 downto 0);
         z1 : OUT  std_logic_vector(15 downto 0);
         z2 : OUT  std_logic_vector(15 downto 0);
         z3 : OUT  std_logic_vector(15 downto 0);
         z4 : OUT  std_logic_vector(15 downto 0);
         z5 : OUT  std_logic_vector(15 downto 0);
         z6 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;	 

   
    COMPONENT clockedround
    PORT(
         Clock : IN  std_logic;
			Init : IN Std_Logic;
			Result : OUT Std_Logic;
			Trafo : IN Std_Logic;
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
         Y1 : OUT  std_logic_vector(15 downto 0);
         Y2 : OUT  std_logic_vector(15 downto 0);
         Y3 : OUT  std_logic_vector(15 downto 0);
         Y4 : OUT  std_logic_vector(15 downto 0);
         Y1_trafo : OUT  std_logic_vector(15 downto 0);
         Y2_trafo : OUT  std_logic_vector(15 downto 0);
         Y3_trafo : OUT  std_logic_vector(15 downto 0);
         Y4_trafo : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;

signal EN125  : STD_LOGIC;
signal EN346  : STD_LOGIC;
signal EN78	  : STD_LOGIC;
signal S	     : STD_LOGIC_VECTOR(1 DOWNTO 0);
signal S_t	  : STD_LOGIC_VECTOR(1 DOWNTO 0);
signal S_i    : STD_LOGIC;
signal Trafo  : STD_LOGIC;
signal Init	  : STD_LOGIC;
signal Result : STD_LOGIC;
signal Round  : STD_LOGIC_VECTOR(3 DOWNTO 0);
signal Y1_OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
signal Y2_OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
signal Y3_OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
signal Y4_OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
signal MUX1_OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
signal MUX2_OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
signal MUX3_OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
signal MUX4_OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
signal R1_OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
signal R2_OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
signal R3_OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
signal R4_OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
signal Z1_OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
signal Z2_OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
signal Z3_OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
signal Z4_OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
signal Z5_OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
signal Z6_OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);



begin


   REG1: register_16bit PORT MAP (
          D => Y1_OUT,
          Q => R1_OUT,
          en => Result,
          clk => Clock
        );

   REG2: register_16bit PORT MAP (
          D => Y2_OUT,
          Q => R2_OUT,
          en => Result,
          clk => Clock
        );

   REG3: register_16bit PORT MAP (
          D => Y3_OUT,
          Q => R3_OUT,
          en => Result,
          clk => Clock
        );

   REG4: register_16bit PORT MAP (
          D => Y4_OUT,
          Q => R4_OUT,
          en => Result,
          clk => Clock
        );		  
		  
		  
   MUX1: multiplexer PORT MAP (
          A => R1_OUT,
          B => X1,
          O => MUX1_OUT,
          s => S_i
        );

   MUX2: multiplexer PORT MAP (
          A => R2_OUT,
          B => X2,
          O => MUX2_OUT,
          s => S_i
        );

   MUX3: multiplexer PORT MAP (
          A => R3_OUT,
          B => X3,
          O => MUX3_OUT,
          s => S_i
        );

   MUX4: multiplexer PORT MAP (
          A => R4_OUT,
          B => X4,
          O => MUX4_OUT,
          s => S_i
        );



ROUND_COUNTER: roundcounter PORT MAP (
          Start => Start,
          Clock => Clock,
          Ready => Ready,
          S_i => S_i,
          Result => Result,
          Round => Round,
          Init => Init,
          Trafo => Trafo
        );


		  
 KEY_GENERATOR: keygen PORT MAP (
          rc => Round,
          key_in => KEY,
          z1 => Z1_OUT,
          z2 => Z2_OUT,
          z3 => Z3_OUT,
          z4 => Z4_OUT,
          z5 => Z5_OUT,
          z6 => Z6_OUT
        );		  


extended_round_module: clockedround PORT MAP (
          Clock => Clock,
			 Init => Init,
			 Result => Result,
			 Trafo => Trafo,
          X1 => MUX1_OUT,
          X2 => MUX2_OUT,
          X3 => MUX3_OUT,
          X4 => MUX4_OUT,
          Z1 => Z1_OUT,
          Z2 => Z2_OUT,
          Z3 => Z3_OUT,
          Z4 => Z4_OUT,
          Z5 => Z5_OUT,
          Z6 => Z6_OUT,
          Y1 => Y1_OUT,
          Y2 => Y2_OUT,
          Y3 => Y3_OUT,
          Y4 => Y4_OUT,
          Y1_trafo =>  Y1,
          Y2_trafo =>  Y2,
          Y3_trafo =>  Y3,
          Y4_trafo =>  Y4
        );


end Behavioral;


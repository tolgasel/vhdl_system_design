----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:22:56 12/23/2015 
-- Design Name: 
-- Module Name:    clockedround - Behavioral 
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

entity clockedround is
    Port ( Clock : in Std_logic;
				Init : in Std_Logic;
				Result : out Std_Logic;
				Trafo : in Std_Logic;
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
           Y4_trafo : OUT  std_logic_vector(15 downto 0));
end clockedround;

architecture Behavioral of clockedround is

signal EN125	:	std_logic;
signal EN346	:	std_logic;
signal EN78		:	std_logic;
signal S_sig	:	std_logic_vector(1 downto 0);
signal S_t_sig :	std_logic_vector(1 downto 0);



 
    COMPONENT control
    PORT(
         Clock : IN  std_logic;
         Initial : IN  std_logic;
         trafo : IN  std_logic;
         EN125 : OUT  std_logic;
         EN346 : OUT  std_logic;
         EN78 : OUT  std_logic;
         S : OUT  std_logic_vector(1 downto 0);
         S_t : OUT  std_logic_vector(1 downto 0);
         Result : OUT  std_logic
        );
    END COMPONENT;

    COMPONENT datapath
    PORT(
         Clock : IN  std_logic;
         S : IN  std_logic_vector(1 downto 0);
         S_t : IN  std_logic_vector(1 downto 0);
         EN125 : IN  std_logic;
         EN346 : IN  std_logic;
         EN78 : IN  std_logic;
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
         Y1_trafo : OUT  std_logic_vector(15 downto 0);
         Y2_trafo : OUT  std_logic_vector(15 downto 0);
         Y3_trafo : OUT  std_logic_vector(15 downto 0);
         Y4_trafo : OUT  std_logic_vector(15 downto 0);
         Y1 : OUT  std_logic_vector(15 downto 0);
         Y2 : OUT  std_logic_vector(15 downto 0);
         Y3 : OUT  std_logic_vector(15 downto 0);
         Y4 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;

begin

   control_module: control PORT MAP (
          Clock => Clock,
          Initial => Init,
          trafo => Trafo,
          EN125 => EN125,
          EN346 => EN346,
          EN78 => EN78,
          S => S_sig,
          S_t => S_t_sig,
          Result => Result
        );

   datapath_module: datapath PORT MAP (
          Clock => Clock,
          S => S_sig,
          S_t => S_t_sig,
          EN125 => EN125,
          EN346 => EN346,
          EN78 => EN78,
          X1 => X1,
          X2 => X2,
          X3 => X3,
          X4 => X4,
          Z1 => Z1,
          Z2 => Z2,
          Z3 => Z3,
          Z4 => Z4,
          Z5 => Z5,
          Z6 => Z6,
          Y1_trafo => Y1_trafo,
          Y2_trafo => Y2_trafo,
          Y3_trafo => Y3_trafo,
          Y4_trafo => Y4_trafo,
          Y1 => Y1,
          Y2 => Y2,
          Y3 => Y3,
          Y4 => Y4
        );




end Behavioral;


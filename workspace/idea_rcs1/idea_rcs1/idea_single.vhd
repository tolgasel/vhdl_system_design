----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:05:10 11/16/2015 
-- Design Name: 
-- Module Name:    idea_single - Behavioral 
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

entity idea_single is
    Port ( KEY 		: in  std_logic_vector(127 downto 0);
			  clk_in 	: in std_logic;
			  ready_out : out std_logic;
			  start_in	: in std_logic;
			  X1 : in  std_logic_vector(15 downto 0);
			  X2 : in  std_logic_vector(15 downto 0);
			  X3 : in  std_logic_vector(15 downto 0);
			  X4 : in  std_logic_vector(15 downto 0);
			  Y1 : out  std_logic_vector(15 downto 0);
			  Y2 : out  std_logic_vector(15 downto 0);
			  Y3 : out  std_logic_vector(15 downto 0);
			  Y4 : out  std_logic_vector(15 downto 0));
end idea_single;

architecture Behavioral of idea_single is

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

    COMPONENT multiplexer
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
         O : OUT  std_logic_vector(15 downto 0);
         s : IN  std_logic
        );
    END COMPONENT;
	 
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
	 
    COMPONENT control
    PORT(
         clk : IN  std_logic;
         start : IN  std_logic;
         round : OUT  std_logic_vector(3 downto 0);
         ready : OUT  std_logic;
         en : OUT  std_logic;
         s : OUT  std_logic
        );
    END COMPONENT;
	 
    COMPONENT register_16bit
    PORT(
         D : IN  std_logic_vector(15 downto 0);
         Q : OUT  std_logic_vector(15 downto 0);
         en : IN  std_logic;
         clk : IN  std_logic
        );
    END COMPONENT;

	signal round_in_x1	: std_logic_vector(15 downto 0) := (others => '0');
	signal round_in_x2	: std_logic_vector(15 downto 0) := (others => '0');
	signal round_in_x3	: std_logic_vector(15 downto 0) := (others => '0');
	signal round_in_x4	: std_logic_vector(15 downto 0) := (others => '0');

	signal round_out_y1	: std_logic_vector(15 downto 0) := (others => '0');
	signal round_out_y2	: std_logic_vector(15 downto 0) := (others => '0');
	signal round_out_y3	: std_logic_vector(15 downto 0) := (others => '0');
	signal round_out_y4	: std_logic_vector(15 downto 0) := (others => '0');	

	signal round_number	: std_logic_vector(3 downto 0) := (others => '0');	
	
	signal enable_sig		: std_logic := '0';
	
	signal s_sig			: std_logic := '0';
	
	signal key_1_sig  	: std_logic_vector(15 downto 0) := (others => '0');
	signal key_2_sig  	: std_logic_vector(15 downto 0) := (others => '0');
	signal key_3_sig  	: std_logic_vector(15 downto 0) := (others => '0');
	signal key_4_sig  	: std_logic_vector(15 downto 0) := (others => '0');
	signal key_5_sig  	: std_logic_vector(15 downto 0) := (others => '0');
	signal key_6_sig  	: std_logic_vector(15 downto 0) := (others => '0');
	
	signal reg_1_out		: std_logic_vector(15 downto 0) := (others => '0');
	signal reg_2_out		: std_logic_vector(15 downto 0) := (others => '0');
	signal reg_3_out		: std_logic_vector(15 downto 0) := (others => '0');
	signal reg_4_out		: std_logic_vector(15 downto 0) := (others => '0');
	
	
	signal mux_1_out		: std_logic_vector(15 downto 0) := (others => '0');
	signal mux_2_out		: std_logic_vector(15 downto 0) := (others => '0');
	signal mux_3_out		: std_logic_vector(15 downto 0) := (others => '0');
	signal mux_4_out		: std_logic_vector(15 downto 0) := (others => '0');
	

	
begin

   register_1: register_16bit PORT MAP (
          D => round_out_y1,
          Q => reg_1_out,
          en => enable_sig,
          clk => clk_in
        );

   register_2: register_16bit PORT MAP (
          D => round_out_y2,
          Q => reg_2_out,
          en => enable_sig,
          clk => clk_in
        );

   register_3: register_16bit PORT MAP (
          D => round_out_y3,
          Q => reg_3_out,
          en => enable_sig,
          clk => clk_in
        );
		  
   register_4: register_16bit PORT MAP (
          D => round_out_y4,
          Q => reg_4_out,
          en => enable_sig,
          clk => clk_in
        );
		  
   control_1: control PORT MAP (
          clk => clk_in,
          start => start_in,
          round => round_number,
          ready => ready_out,
          en => enable_sig,
          s => s_sig
        );
		  
		  
   trafo_1: trafo PORT MAP (
          X1 => reg_1_out,
          X2 => reg_2_out,
          X3 => reg_3_out,
          X4 => reg_4_out,
          Z1 => key_1_sig,
          Z2 => key_2_sig,
          Z3 => key_3_sig,
          Z4 => key_4_sig,
          Y1 => Y1,
          Y2 => Y2,
          Y3 => Y3,
          Y4 => Y4
        );
		  
		  
   round_module: round PORT MAP (
          x1 => mux_1_out,
          x2 => mux_2_out,
          X3 => mux_3_out,
          x4 => mux_4_out,
          z1 => key_1_sig,
          z2 => key_2_sig,
          z3 => key_3_sig,
          z4 => key_4_sig,
          z5 => key_5_sig,
          z6 => key_6_sig,
          y1 => round_out_y1,
          y2 => round_out_y2,
          y3 => round_out_y3,
          y4 => round_out_y4
        );		  
		  
   mux_1: multiplexer PORT MAP (
          A => X1,
          B => reg_1_out,
          O => mux_1_out,
          s => s_sig
        );

   mux_2: multiplexer PORT MAP (
          A => X2,
          B => reg_2_out,
          O => mux_2_out,
          s => s_sig
        );
		  
   mux_3: multiplexer PORT MAP (
          A => X3,
          B => reg_3_out,
          O => mux_3_out,
          s => s_sig
        );
		  
   mux_4: multiplexer PORT MAP (
          A => X4,
          B => reg_4_out,
          O => mux_4_out,
          s => s_sig
        );

   keygen_module: keygen PORT MAP (
          rc => round_number,
          key_in => KEY,
          z1 => key_1_sig,
          z2 => key_2_sig,
          z3 => key_3_sig,
          z4 => key_4_sig,
          z5 => key_5_sig,
          z6 => key_6_sig
        );

end Behavioral;


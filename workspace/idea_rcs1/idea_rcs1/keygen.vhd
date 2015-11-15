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
    Port ( rc : in  STD_LOGIC_VECTOR(3 downto 0); --rc:round_counter
           key_in : in  STD_LOGIC_VECTOR(15 downto 0);
           key_out : out  STD_LOGIC_VECTOR(15 downto 0));
end keygen;

architecture Behavioral of keygen is

begin

keygen_proc: process(rc,key_in,key_out)
	begin
	key_out <= std_logic_vector(rotate_right(unsigned(key_in), to_integer(unsigned(rc))));
	end process keygen_proc;

end Behavioral;


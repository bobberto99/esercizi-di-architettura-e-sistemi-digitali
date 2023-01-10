----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.12.2022 20:21:03
-- Design Name: 
-- Module Name: counter_8 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

entity counter_mod10 is port ( 
    clock   : in  STD_LOGIC;
    reset   : in  STD_LOGIC;
    enable  : in STD_LOGIC;
    counter : out  STD_LOGIC_VECTOR (3 downto 0)
);
end counter_mod10;

architecture Behavioral of counter_mod10 is

signal c : std_logic_vector (3 downto 0) := (others => '0');

begin

counter <= c;

counter_process: process(clock)
begin
	if (clock'event AND clock = '1') then
	  if (reset = '1') then
		c <= (others => '0');
	  else
	   if (enable='1') then
	       if (c = "1001") then
	           c <= (others => '0');
	       end if;
		  c <= std_logic_vector(unsigned(c) + 1);
	   end if;
	  end if;
	end if;	
end process;

end Behavioral;

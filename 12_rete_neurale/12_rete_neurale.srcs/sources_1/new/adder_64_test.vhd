----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.12.2022 15:30:31
-- Design Name: 
-- Module Name: adder_64_test - Behavioral
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity add_64_test is
    Port 
	(
		a : in  STD_LOGIC_VECTOR(31 downto 0);
		b : in  STD_LOGIC_VECTOR(31 downto 0);
		add_sub_n : in STD_LOGIC;
		s : out  STD_LOGIC_VECTOR (31 downto 0);
		ov : out  STD_LOGIC
	);
END add_64_test;

architecture behavioral of add_64_test is

begin
	add_proc: process(a,b,add_sub_n)
	begin
		if(add_sub_n = '1') then
			s <= std_logic_vector(signed(a)-signed(b));
		else
			s <= std_logic_vector(signed(a)+signed(b));
		end if;
	end process;
end behavioral;

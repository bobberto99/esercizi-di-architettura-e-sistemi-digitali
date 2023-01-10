----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.12.2022 20:34:31
-- Design Name: 
-- Module Name: 8bit_register - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

library ieee;
use ieee.std_logic_1164.all;

entity register_8 is port (
        clock   : in std_logic;
        reset   : in std_logic;
        enable  : in std_logic;
        shift   : in std_logic;
        in_s    : in std_logic;
        in_p    : in std_logic_vector(7 downto 0);
        out_p   : out std_logic_vector(7 downto 0);
        out_s   : out std_logic
);
end register_8;

architecture behavioural of register_8 is
signal tmp: std_logic_vector(7 downto 0) := (others=>'0');

begin

process (clock)
begin
if (rising_edge(clock)) then
    if (reset='1') then
        tmp <= (others=>'0');
    elsif (enable = '1') then
        tmp <= in_p;
    elsif (shift = '1') then
        tmp(7) <= in_s;
        tmp(6) <= tmp(7);
        tmp(5) <= tmp(6);
        tmp(4) <= tmp(5);
        tmp(3) <= tmp(4);
        tmp(2) <= tmp(3);
        tmp(1) <= tmp(2);
        tmp(0) <= tmp(1);
        --out_serial <= tmp(0);
    end if;
end if;
end process;

--out_s <= out_serial when sel = '0';
out_s <= tmp(0);
out_p <= tmp;

end behavioural;
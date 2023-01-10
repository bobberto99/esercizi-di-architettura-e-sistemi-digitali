----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.12.2022 20:41:36
-- Design Name: 
-- Module Name: 1bit_register - Behavioral
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

entity register_1 is port (
    clock   : in std_logic;
    reset   : in std_logic;
    enable  : in std_logic;
    input   : in std_logic;
    output  : out std_logic
);
end register_1;

architecture Behavioral of register_1 is

signal tmp: std_logic := '0';

begin

process (clock)
begin
if (rising_edge(clock)) then
    if (reset='1') then
        tmp <= '0';
    elsif (enable = '1') then
        tmp <= input;
    end if;
end if;
end process;

output <= tmp;

end Behavioral;

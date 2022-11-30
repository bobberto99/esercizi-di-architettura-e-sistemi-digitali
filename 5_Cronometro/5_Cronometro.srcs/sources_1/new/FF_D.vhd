----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.11.2022 00:06:29
-- Design Name: 
-- Module Name: FF_D - Behavioral
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

entity FF_D is port (
    clk         : in std_logic;
    en          : in std_logic;
    reset       : in std_logic;
    preset      : in std_logic;
    input       : in std_logic;
    output      : out std_logic;
    not_out    : out std_logic
);
end FF_D;

architecture Behavioral of FF_D is

signal u : std_logic;

begin

process (clk)
begin

if (rising_edge(clk)) then
    if (reset = '1') then
        u <= '0';
    end if;
    if (preset = '1') then
    u <= '1';
    end if;
    if (en = '1' and preset = '0') then
            u <= input;
        end if;
end if;

end process;

output <= u;
not_out <= not u;

end Behavioral;

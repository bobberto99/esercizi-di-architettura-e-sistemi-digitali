----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.11.2022 15:19:42
-- Design Name: 
-- Module Name: Registrer - Behavioral
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

entity Registrer is port (
    clk     : in std_logic;
    en      : in std_logic;
    reset   : in std_logic;
    preset  : in std_logic;
    input   : in std_logic;
    output  : out std_logic
);
end Registrer;

architecture Behavioral of Registrer is

begin

process (clk)
begin

if (rising_edge(clk)) then
    if (reset = '1') then
        output <= '0';
    end if;
    if (en = '1') then
        if (preset = '1') then
            output <= '1';
        else
            output <= input;
        end if;
    end if;
end if;

end process;

end Behavioral;

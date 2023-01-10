----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.12.2022 21:38:29
-- Design Name: 
-- Module Name: memoria - Behavioral
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity memoria is port (
    clock       : in std_logic;
    reset       : in std_logic;
    input       : in std_logic_vector(8 downto 0);
    write_addr  : in std_logic_vector(2 downto 0);
    read_addr   : in std_logic_vector(2 downto 0);
    write_en    : in std_logic;
    output      : out std_logic_vector(8 downto 0)
);
end memoria;

architecture Behavioral of memoria is

type ram_type is array(0 to 7) of std_logic_vector(8 downto 0);
signal ram : ram_type := (others => "000000000");

begin

process(clock)
begin
    if (rising_edge(clock)) then
        if (write_en = '1') then
            ram(conv_integer(write_addr)) <= input;
        end if;
        output <= ram(conv_integer(read_addr));
    end if;
end process;

end Behavioral;
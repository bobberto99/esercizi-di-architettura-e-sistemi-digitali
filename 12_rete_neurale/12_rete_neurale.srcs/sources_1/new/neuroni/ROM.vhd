library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

library work;
use work.type_package.all;

entity ROM is 
generic (
    rom_generic : rom_type
);
port(
    clk  : in std_logic;
    read : in std_logic;
    addr : in std_logic_vector(3 downto 0);
    data : out std_logic_vector(8 downto 0)
);
end ROM;

architecture behavioral of ROM is

signal ROM : rom_type := rom_generic;

begin

process(CLK)
  begin
    if rising_edge(CLK) then
        if (read = '1') then
            DATA <= ROM(conv_integer(ADDR));
        end if;
    end if;
end process;
end behavioral;

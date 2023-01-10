library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

library work;
use work.type_package_output.all;

entity ROM_output is 
generic (
    rom_generic : rom_type_output
);
port(
    clk  : in std_logic;
    read : in std_logic;
    addr : in std_logic_vector(3 downto 0);
    data : out std_logic_vector(31 downto 0)
);
end ROM_output;

architecture behavioral of ROM_output is

signal ROM : rom_type_output := rom_generic;

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

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ROM is port(
    clk  : in std_logic;
    read : in std_logic;
    addr : in std_logic_vector(2 downto 0);
    data : out std_logic_vector(7 downto 0)
);
end ROM;

architecture behavioral of ROM is

type rom_type is array (0 to 7) of std_logic_vector(7 downto 0);
signal ROM : rom_type := (
X"0F", 
X"1E", 
X"2D", 
X"3C", 
X"4B",
X"5A",
X"69", 
X"78"
);

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

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ROM is port(
    clk : in std_logic; 
    addr : in std_logic_vector(3 downto 0);                                   
    data : out std_logic_vector(3 downto 0)
);
end ROM;

architecture behavioral of ROM is 
type rom_type is array (0 to 15) of std_logic_vector(3 downto 0);
signal ROM : rom_type := (
X"7", X"1", X"2", X"3", X"4", X"5", X"6", X"7",
X"8", X"9", X"A", X"B", X"C", X"D", X"E", X"F"
);

begin

process(CLK)
  begin
    if rising_edge(CLK) then
       DATA <= ROM(conv_integer(ADDR));
    end if;
end process;
end behavioral;

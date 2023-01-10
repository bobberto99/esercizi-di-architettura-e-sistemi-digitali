library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ROM is port(
    clk : in std_logic; 
    addr : in std_logic_vector(3 downto 0);                                   
    data : out std_logic_vector(7 downto 0)
);
end ROM;

architecture behavioral of ROM is 
type rom_type is array (0 to 15) of std_logic_vector(7 downto 0);
signal ROM : rom_type := (
x"0F", 
x"1E", 
X"2D", 
X"3C", 
X"4B",
X"5A",
X"69", 
X"78",
X"87", 
X"96", 
X"A5", 
X"B4", 
X"C3",
X"D2",
X"E1",
X"F0");

begin

process(CLK)
  begin
    if rising_edge(CLK) then
       DATA <= ROM(conv_integer(ADDR));
    end if;
end process;
end behavioral;

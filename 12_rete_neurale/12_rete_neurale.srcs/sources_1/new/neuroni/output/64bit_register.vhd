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

entity register_64 is port (
        clock   : in std_logic;
        reset   : in std_logic;
        enable  : in std_logic;
        in_p    : in std_logic_vector(63 downto 0);
        out_p   : out std_logic_vector(63 downto 0)
);
end register_64;

architecture behavioural of register_64 is
signal tmp: std_logic_vector(63 downto 0) := (others=>'0');

begin

process (clock)
begin
if (rising_edge(clock)) then
    if (reset='1') then
        tmp <= (others=>'0');
    elsif (enable = '1') then
        tmp <= in_p;
    end if;
end if;
end process;

out_p <= tmp;

end behavioural;
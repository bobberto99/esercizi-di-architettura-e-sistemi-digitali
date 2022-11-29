----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.11.2022 10:01:35
-- Design Name: 
-- Module Name: contatore_behavioural - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity contatore_behavioural is port (
reset       : in std_logic;
ingresso    : in std_logic;
clock       : in std_logic;
uscita      : out std_logic_vector (20 downto 0)
);
end contatore_behavioural;

architecture Behavioral of contatore_behavioural is

signal conteggio : std_logic_vector (20 downto 0):= (others => '0');

begin
uscita<=conteggio;

counter : process (clock)
    begin
    if (clock'event AND clock = '1') then
        if (reset= '1') then
            conteggio<=(others=>'0');
        else
            if (ingresso = '1') then
                conteggio <= std_logic_vector(unsigned(conteggio) + 1);
            end if;
        end if;
    end if;
end process;
            

end Behavioral;

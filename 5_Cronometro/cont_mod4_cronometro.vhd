----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.11.2022 11:03:01
-- Design Name: 
-- Module Name: selettore_display - Behavioral
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

entity cont_mod4_cronometro is port(
    clk     : in  std_logic;
    en      : in std_logic;
    reset   : in std_logic;
    counter : out std_logic_vector(1 downto 0)
);
end cont_mod4_cronometro;

architecture Behavioral of cont_mod4_cronometro is

signal conteggio : std_logic_vector(1 downto 0) := (others => '0');
begin
counter <= conteggio;

counter_process: process(clk)

begin

    if (rising_edge(clk)) then
        if (reset = '1') then
            conteggio <= (others => '0');
        elsif (en = '1') then

            conteggio <= std_logic_vector(unsigned(conteggio) + 1);

        end if;
    end if;

end process;

end Behavioral;

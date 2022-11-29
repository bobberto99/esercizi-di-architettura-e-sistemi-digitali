----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.11.2022 23:54:45
-- Design Name: 
-- Module Name: Counter_mod64 - Behavioral
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

entity Counter_mod64 is port ( 
    clk     : in  std_logic;
    en      : in std_logic;
    reset   : in std_logic;
    set     : in std_logic;
    v_set   : in std_logic_vector(5 downto 0);
    counter : out std_logic_vector(5 downto 0);
    count   : out std_logic
);
end Counter_mod64;

architecture Behavioral of Counter_mod64 is

signal conteggio : std_logic_vector(5 downto 0) := (others => '0');

begin

counter <= conteggio;

counter_process: process(clk)
begin

if (rising_edge(clk)) then
    if (reset = '1') then
        conteggio <= (others => '0');
    elsif (en = '1') then
        if (set='1') then
            conteggio <= v_set;
        else 
            conteggio <= std_logic_vector(unsigned(conteggio) + 1);
            if (conteggio = "11111111") then
                count <= '1';
            end if;
        end if;
    end if;
end if;
    
end process;

end Behavioral;

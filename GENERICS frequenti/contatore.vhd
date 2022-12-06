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

entity contatore is 
generic( 
    bits        : integer range 0 to integer'right;
    max_number  : integer range 0 to integer'right
);
port ( 
    clk     : in  std_logic;
    en      : in std_logic;
    reset   : in std_logic;
    set     : in std_logic;
    v_set   : in std_logic_vector(bits-1 downto 0);
    counter : out std_logic_vector(bits-1 downto 0);
    count   : out std_logic
);
end contatore;

architecture Behavioral of contatore is

signal conteggio : std_logic_vector(bits-1 downto 0) := (others => '0');

begin

counter <= conteggio;

counter_process: process(clk)
begin

if (rising_edge(clk)) then
 
    if (en = '1') then
            if (set='1') then
                conteggio <= v_set;
                count <= '0'; 
            elsif (reset = '1') then
                count <= '0';
                conteggio <= (others => '0');
            elsif (conteggio = std_logic_vector(to_unsigned(max_number, bits-1))) then
                count <= '1';
                conteggio <= (OTHERS => '0');
            else
                conteggio <= std_logic_vector(unsigned(conteggio) + 1);
                count <= '0';
            end if;
        end if;
    end if;
    
end process;

end Behavioral;
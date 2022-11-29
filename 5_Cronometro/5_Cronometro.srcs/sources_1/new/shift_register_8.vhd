----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.11.2022 11:07:09
-- Design Name: 
-- Module Name: shift_register_8 - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity shift_register_8 is port(
    clk     : in std_logic;
    en      : in std_logic;
    reset   : in std_logic;
    input   : in std_logic_vector(1 downto 0);
    sel     : in std_logic;
    output  : out std_logic_vector(7 downto 0)
);
end shift_register_8;

architecture Behavioral of shift_register_8 is

signal reg: std_logic_vector(7 downto 0);

begin

process (clk)
begin

-- owo

if (rising_edge(clk)) then

    if (reset = '1') then
        reg <= (others => '0');
    end if;
    
    if (en = '1') then
                reg(7) <= input(0);
                reg(6) <= reg(7);
                reg(5) <= reg(6);
                reg(4) <= reg(5);
                reg(3) <= reg(4);
                reg(2) <= reg(3);
                reg(1) <= reg(2);
                reg(0) <= reg(1);
       end if;     
end if;

end process;

output (7 downto 0) <= reg (7 downto 0);

end Behavioral;

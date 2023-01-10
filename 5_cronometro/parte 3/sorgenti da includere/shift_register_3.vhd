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

entity shift_register_3 is port(
    clk     : in std_logic;
    en      : in std_logic;
    reset   : in std_logic;
    input   : in std_logic;
    output  : out std_logic_vector(0 to 2)
);
end shift_register_3;

architecture Behavioral of shift_register_3 is

signal reg: std_logic_vector(0 to 2);

begin

process (clk)
begin


if (rising_edge(clk)) then

    if (reset = '1') then
        reg <= (others => '0');
    end if;
    
    if (en = '1') then
                reg(0) <= input;
                reg(1) <= reg(0);
                reg(2) <= reg(1);

    end if;     
end if;

end process;

output (0 to 2) <= reg (0 to 2);

end Behavioral;

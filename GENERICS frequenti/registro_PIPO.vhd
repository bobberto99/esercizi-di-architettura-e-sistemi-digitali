----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.12.2022 12:56:26
-- Design Name: 
-- Module Name: registro_PIPO - Behavioral
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

entity registro_PIPO is 
generic(
    N       : integer :=8
);
port(
    clk     : in std_logic;
    en      : in std_logic;
    reset   : in std_logic;
    input   : in std_logic_vector(N-1 downto 0);
    output  : out std_logic_vector(N-1 downto 0)
);
end registro_PIPO;

architecture Behavioral of registro_PIPO is

signal registri :   std_logic_vector (N-1 downto 0);

begin

process(clk)

begin

if (rising_edge(clk) and en ='1') then

    registri (N-1 downto 0) <= input (N-1 downto 0);

end if;

end process;

output (N-1 downto 0) <= registri (N-1 downto 0);

end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.11.2022 11:28:58
-- Design Name: 
-- Module Name: splitter - Behavioral
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

entity splitter is port(
    numero_ingresso :   in  std_logic_vector (5 downto 0);
    clk             :   in  std_logic;
    unita           :   out std_logic_vector (3 downto 0);
    decine          :   out std_logic_vector (2 downto 0)
);
end splitter;

architecture Behavioral of splitter is

signal temp_decine, temp_unita  : integer;

begin
calcolo : process(clk)

begin
temp_decine <= (to_integer(unsigned(numero_ingresso))) / 10;
temp_unita <= (to_integer(unsigned(numero_ingresso))) mod 10;
end process;


unita <= std_logic_vector(to_unsigned(temp_unita, 4));
decine <= std_logic_vector(to_unsigned(temp_decine, 3));


end Behavioral;

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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity selettore_display is port(
    unita_secondi   :   in  std_logic_vector (3 downto 0);
    decine_secondi  :   in  std_logic_vector (2 downto 0);
    unita_minuti    :   in  std_logic_vector (3 downto 0);
    decine_minuti   :   in  std_logic_vector (2 downto 0);
    unita_ore       :   in  std_logic_vector (3 downto 0);
    decine_ore      :   in  std_logic_vector (1 downto 0);
    sel             :   in  std_logic_vector (2 downto 0);
    clk             :   in  std_logic;
    cifra          :   out std_logic_vector (3 downto 0)
    );
end selettore_display;

architecture behavioral of selettore_display is

begin

selettore : process (clk)

begin

case sel is 
    when "000"  => cifra <= unita_secondi;
    when "001"  => cifra <= '0' & decine_secondi;
    when "010"  => cifra <= unita_minuti;
    when "011"  => cifra <= '0' & decine_minuti;
    when "100"  => cifra <= unita_ore;
    when "101"  => cifra <= "00" & decine_ore;
    when others => cifra <= "0000";
end case;

end process;
end behavioral;

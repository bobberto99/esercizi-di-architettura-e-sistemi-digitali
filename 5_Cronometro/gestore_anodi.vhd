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

entity gestore_anodi is port (
    sel     : in    std_logic_vector (2 downto 0);
    anodi   : out   std_logic_vector (7 downto 0)
    );
end gestore_anodi;

architecture Dataflow of gestore_anodi is

begin
with sel select
    anodi   <=  "01111111" when "000",
                "10111111" when "001",
                "11011111" when "010",
                "11101111" when "011",
                "11110111" when "100",
                "11111011" when "101",
                "11111101" when "110",
                "11111110" when "111",
                "11111111" when others;

end Dataflow;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.10.2022 16:25:41
-- Design Name: 
-- Module Name: Encoder_BCD - Dataflow
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

entity Encoder_BCD is
    port (
        a : in std_logic_vector(9 downto 0);
        u : out std_logic_vector(3 downto 0)
    );
end Encoder_BCD;

architecture Dataflow of Encoder_BCD is

begin

    u <= "0000" when a = "0000000001" else
         "0001" when a = "0000000010" else
         "0010" when a = "0000000100" else
         "0011" when a = "0000001000" else
         "0100" when a = "0000010000" else
         "0101" when a = "0000100000" else
         "0110" when a = "0001000000" else
         "0111" when a = "0010000000" else
         "1000" when a = "0100000000" else
         "1001" when a = "1000000000" else
         "1111";
   
end Dataflow;

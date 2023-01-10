----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.12.2022 15:29:25
-- Design Name: 
-- Module Name: arbitro_logico - structural
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

entity arbitro_logico is port (
    enable  : in std_logic_vector(3 downto 0);
    sel     : out std_logic_vector(1 downto 0)
);
end arbitro_logico;

architecture dataflow of arbitro_logico is

begin

sel <= "00" when enable(0)='1' else
       "01" when enable(1)='1' else
       "10" when enable(2)='1' else
       "11" when enable(3)='1' else
       "--";

end dataflow;

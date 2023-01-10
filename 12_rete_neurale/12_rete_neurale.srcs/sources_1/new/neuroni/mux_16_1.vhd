----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.10.2022 16:57:09
-- Design Name: 
-- Module Name: mux_2_1 - Structural
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

entity mux_16_1 is port (
    input0  : in std_logic_vector(8 downto 0);
    input1  : in std_logic_vector(8 downto 0);
    input2  : in std_logic_vector(8 downto 0);
    input3  : in std_logic_vector(8 downto 0);
    input4  : in std_logic_vector(8 downto 0);
    input5  : in std_logic_vector(8 downto 0);
    input6  : in std_logic_vector(8 downto 0);
    input7  : in std_logic_vector(8 downto 0);
    input8  : in std_logic_vector(8 downto 0);
    s       : in std_logic_vector(3 downto 0);
    output  : out std_logic_vector(8 downto 0)
);
end mux_16_1;

architecture dataflow of mux_16_1 is
begin

output <=   input0 when s="0000" else
            input1 when s="0001" else
            input2 when s="0010" else
            input3 when s="0011" else
            input4 when s="0100" else
            input5 when s="0101" else
            input6 when s="0110" else
            input7 when s="0111" else
            input8 when s="1000" else
            (others => '0');
            
end dataflow;

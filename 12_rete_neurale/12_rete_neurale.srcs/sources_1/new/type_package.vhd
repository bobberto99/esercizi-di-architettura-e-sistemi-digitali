----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.12.2022 16:21:50
-- Design Name: 
-- Module Name: type_package - asdasd
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

package type_package is
 
type hidden_input is array (0 to 9) of std_logic_vector(8 downto 0);
type hidden_output is array (0 to 9) of std_logic_vector(31 downto 0);
type hidden_bias is array (0 to 9) of std_logic_vector(31 downto 0);

type rom_type is array (0 to 8) of std_logic_vector(8 downto 0);
type array_rom_type is array (0 to 9) of rom_type;

constant neurone_hidden_0 : rom_type := (
"000011011", "111010010", "000001001", "000001111", "111110001","111011111","000010100", "000011110", "111100111"
);

constant neurone_hidden_1 : rom_type := (
"000111101",
"000110110",
"111010010",
"111001110",
"111100011",
"000010001",
"111011111",
"111101111",
"000110001"
);

constant neurone_hidden_2 : rom_type := (
"111010011", "000100101", "000011101", "111011001", "000010010","000000011","111110011", "000010100", "111111010"
);

constant neurone_hidden_3 : rom_type := (
"000101101",
"111111101",
"000101111",
"111001011",
"000011111",
"111011000",
"000010100",
"111100010",
"000000100"
);

constant neurone_hidden_4 : rom_type := (
"000010001", "000011010", "000010000", "111001010", "111011000","111001101","000100100", "000100110", "000100101"
);

constant neurone_hidden_5 : rom_type := (
"110110010",
"111011110",
"000010011",
"000101010",
"111111000",
"000000101",
"000111000",
"111111001",
"111110011"
);

constant neurone_hidden_6 : rom_type := (
"111011100", "111101100", "000010001", "000001011", "111101111", "000101001","111111011","111010011", "000010010"
);

constant neurone_hidden_7 : rom_type := (
"000000100",
"000101001",
"111110101",
"111101101",
"000001110",
"111101010",
"111010110",
"111100110",
"000001101"
);

constant neurone_hidden_8 : rom_type := (
"000101011", "000011000", "000001000", "000101001", "000001111","000000000","111001111", "000000100", "111101001"
);

constant neurone_hidden_9 : rom_type := (
"000110101",
"001000001",
"111100101",
"111011010",
"000100110",
"111101111",
"111110011",
"000001101",
"000010111"
);

constant array_hidden : array_rom_type := (
neurone_hidden_0, 
neurone_hidden_1, 
neurone_hidden_2, 
neurone_hidden_3, 
neurone_hidden_4,
neurone_hidden_5,
neurone_hidden_6, 
neurone_hidden_7, 
neurone_hidden_8,
neurone_hidden_9
);

constant value_hidden_bias : hidden_bias:= (
"11111111111111111111111111111000",
"00000000000000000000000000000010",
"11111111111111111111111111110010",
"11111111111111111111111111111110",
"11111111111111111111111111111000",
"00000000000000000000000000000110",
"11111111111111111111111111110101",
"11111111111111111111111111111011",
"11111111111111111111111111110111",
"00000000000000000000000000001110"
);

end package type_package;

package body type_package is
 
end package body type_package;

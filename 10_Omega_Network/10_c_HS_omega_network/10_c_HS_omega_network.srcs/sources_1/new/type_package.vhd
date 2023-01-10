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
 
type input_array is array (0 to 7) of std_logic_vector(9 downto 0);
type input_message is array (0 to 7) of std_logic_vector(1 downto 0);
type input_destination is array (0 to 7) of std_logic_vector(2 downto 0);
 
end package type_package;

package body type_package is
 
end package body type_package;

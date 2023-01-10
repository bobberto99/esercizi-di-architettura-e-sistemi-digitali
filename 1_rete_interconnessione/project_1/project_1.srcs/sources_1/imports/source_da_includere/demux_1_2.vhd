----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.10.2022 17:46:29
-- Design Name: 
-- Module Name: demux_1_2 - Behavioral
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

entity demux_1_2 is
    port(
        i: in std_logic;
        r: in std_logic;
        y0: out std_logic;
        y1: out std_logic
    );
end demux_1_2;

architecture dataflow of demux_1_2 is

begin
    
    y0 <= (not r) and i;
    y1 <= r and i;
    
end dataflow;
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.12.2022 12:52:52
-- Design Name: 
-- Module Name: switch_2_2 - structural
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

entity switch_2_2 is port (
    input0  : in std_logic_vector(5 downto 0);
    input1  : in std_logic_vector(5 downto 0);
    s_in    : in std_logic;
    s_out   : in std_logic;
    output0 : out std_logic_vector(5 downto 0);
    output1 : out std_logic_vector(5 downto 0)
);
end switch_2_2;

architecture structural of switch_2_2 is

signal conn : std_logic_vector(5 downto 0);

begin

mux : entity work.mux_2_1 port map(
    input0  => input0,
    input1  => input1,
    s       => s_in,
    output  => conn
);

demux : entity work.demux_1_2 port map(
    input   => conn,
    s       => s_out,
    output0 => output0,
    output1 => output1
);

end structural;

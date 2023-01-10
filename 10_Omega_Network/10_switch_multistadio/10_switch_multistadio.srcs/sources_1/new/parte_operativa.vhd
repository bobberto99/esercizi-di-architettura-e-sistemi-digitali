----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.12.2022 14:47:00
-- Design Name: 
-- Module Name: parte_operativa - structural
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

entity parte_operativa is port (
    in0, in1, in2, in3      : in std_logic_vector(5 downto 0);
    src, dst                : in std_logic_vector(1 downto 0);
    out0, out1, out2, out3  : out std_logic_vector(5 downto 0)
);
end parte_operativa;

architecture structural of parte_operativa is

signal conn0 : std_logic_vector(5 downto 0);
signal conn1 : std_logic_vector(5 downto 0);
signal conn2 : std_logic_vector(5 downto 0);
signal conn3 : std_logic_vector(5 downto 0);

begin

switch_0_0 : entity work.switch_2_2 port map(
    input0  => in0,
    input1  => in2,
    s_in    => src(1),
    s_out   => dst(1),
    output0 => conn0,
    output1 => conn1
);

switch_0_1 : entity work.switch_2_2 port map(
    input0  => in1,
    input1  => in3,
    s_in    => src(1),
    s_out   => dst(1),
    output0 => conn2,
    output1 => conn3
);

switch_1_0 : entity work.switch_2_2 port map(
    input0  => conn0,
    input1  => conn2,
    s_in    => src(0),
    s_out   => dst(0),
    output0 => out0,
    output1 => out1
);

switch_1_1 : entity work.switch_2_2 port map(
    input0  => conn1,
    input1  => conn3,
    s_in    => src(0),
    s_out   => dst(0),
    output0 => out2,
    output1 => out3
);

end structural;

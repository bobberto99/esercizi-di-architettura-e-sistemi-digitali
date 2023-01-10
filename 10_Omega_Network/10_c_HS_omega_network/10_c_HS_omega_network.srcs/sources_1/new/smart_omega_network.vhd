----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.12.2022 16:15:38
-- Design Name: 
-- Module Name: smart_omega_network - structural
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
library work;
use work.type_package.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity smart_omega_network is port (
    clock       : in std_logic;
    reset       : in std_logic;
    nodes_in    : in input_array;
    nodes_out   : out input_array
);
end smart_omega_network;

architecture structural of smart_omega_network is

signal first_conn   : input_array;
signal second_conn  : input_array;

begin

first_lvl : for i in 0 to 3 generate
    switch_0: entity work.smart_switch_2_2 
        generic map ( level => 0)
        port map(
            clock   => clock,
            reset   => reset,
            input0  => nodes_in(i),
            input1  => nodes_in(4+i),
            output0 => first_conn(2*i),
            output1 => first_conn(2*i+1)
        );
end generate;

second_lvl : for i in 0 to 3 generate
    switch_0: entity work.smart_switch_2_2 
        generic map ( level => 1)
        port map(
            clock   => clock,
            reset   => reset,
            input0  => first_conn(i),
            input1  => first_conn(4+i),
            output0 => second_conn(2*i),
            output1 => second_conn(2*i+1)
        );
end generate;

thrid_lvl : for i in 0 to 3 generate
    switch_0: entity work.smart_switch_2_2 
        generic map ( level => 2)
        port map(
            clock   => clock,
            reset   => reset,
            input0  => second_conn(i),
            input1  => second_conn(4+i),
            output0 => nodes_out(2*i),
            output1 => nodes_out(2*i+1)
        );
end generate;

end structural;

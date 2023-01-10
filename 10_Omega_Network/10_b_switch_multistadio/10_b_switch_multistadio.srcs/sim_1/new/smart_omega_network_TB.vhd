----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.12.2022 16:40:08
-- Design Name: 
-- Module Name: smart_omega_network_TB - Behavioral
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

entity smart_omega_network_TB is
--  Port ( );
end smart_omega_network_TB;

architecture Behavioral of smart_omega_network_TB is

component smart_omega_network is port (
    clock       : in std_logic;
    reset       : in std_logic;
    nodes_in    : in input_array;
    nodes_out   : out input_array
);
end component;

constant clk_period : time := 20 ns;
signal clk          : std_logic;
signal rst          : std_logic;
signal nodes_in     : input_array := (others => "000000000");
signal nodes_out    : input_array := (others => "000000000");

begin

alfa_chad : smart_omega_network port map(
    clock       => clk,
    reset       => rst,
    nodes_in    => nodes_in,
    nodes_out   => nodes_out
);

clk_process : process
begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
end process;

stimuli : process 
begin 

rst <= '1';
wait for 100 ns;
rst <= '0';

wait for 10 ns;

nodes_in(0) <= "100000001";
nodes_in(1) <= "100100011";
wait for clk_period;
nodes_in(0) <= "000000000";
nodes_in(1) <= "000000000";

wait for clk_period*2;

nodes_in(0) <= "100010000";
nodes_in(3) <= "101110010";
wait for clk_period;
nodes_in(0) <= "000000000";
nodes_in(3) <= "000000000";

wait for clk_period*2;

nodes_in(0) <= "100000001";
wait for 5 ns;
nodes_in(1) <= "100100011";
wait for 15 ns;
nodes_in(0) <= "000000000";
wait for 5 ns;
nodes_in(1) <= "000000000";

wait;

end process;

end Behavioral;

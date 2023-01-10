----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.12.2022 12:22:34
-- Design Name: 
-- Module Name: sim_output_neuron - Behavioral
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

library work;
use work.type_package_output.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sim_output_neuron is
--  Port ( );
end sim_output_neuron;

architecture Behavioral of sim_output_neuron is

component output_neuron is
generic (
    weights : rom_type_output;
    bias    : std_logic_vector(6 downto 0)
);
port (
    clock   : in std_logic;
    reset   : in std_logic;
    start   : in std_logic_vector(9 downto 0);
    inputs  : in hidden_output;
    end_op  : out std_logic;
    value   : out std_logic_vector(63 downto 0)
);
end component;

constant clk_period : time := 10 ns;

signal weights : rom_type_output := (
"00000000000000000000000000000000",
"00000000000000000000000000000000",
"11111111111111101001011101010000",
"00000000000000000000000000000000",
"11111111111111000001000101110000",
"00000000000000110010110110000100",
"00000000000000000000000000000000",
"00000000000000000000000000000000",
"11111111111111101000001000101000",
"00000000000001110010011111111100"
);

signal inputs : hidden_output := (
"00000000000000000000000000000001",
"00000000000000000000000000000001",
"00000000000000000000000000000001",
"00000000000000000000000000000001",
"00000000000000000000000000000001",
"00000000000000000000000000000001",
"00000000000000000000000000000001",
"00000000000000000000000000000001",
"00000000000000000000000000000001",
"00000000000000000000000000000001"
);

signal bias : std_logic_vector(6 downto 0) := "0001100";
signal reset : std_logic;
signal clk_tb : std_logic;
signal start : std_logic_vector(9 downto 0);
signal end_op : std_logic;
signal value : std_logic_vector(63 downto 0);

begin

clk_process : process
begin
    clk_tb <= '0';
    wait for clk_period/2;
    clk_tb <= '1';
    wait for clk_period/2;
end process;

uut : output_neuron 
generic map (
    weights => weights,
    bias    => bias
)
port map (
    clock   => clk_tb,
    reset   => reset,
    start   => start,
    inputs  => inputs,
    end_op  => end_op,
    value   => value
);

stimuli : process
begin

reset <= '1';
wait for 100ns;  --global reset
reset <='0';

wait for clk_period*3;

start <= (others => '1');
wait for clk_period*3;
start <= (others => '0');

wait;
end process;

end Behavioral;
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.12.2022 22:38:40
-- Design Name: 
-- Module Name: simulation - Behavioral
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

entity simulation is
--  Port ( );
end simulation;

architecture Behavioral of simulation is

component Multiplier_on_board is port (
    clock   : in std_logic;
    reset   : in std_logic;
    start   : in std_logic;
    input1  : in std_logic_vector(7 downto 0);
    input2  : in std_logic_vector(7 downto 0);
    output  : out std_logic_vector(15 downto 0)
);
end component;

constant clk_period : time := 10 ns;
signal reset : std_logic;
signal clk_tb : std_logic;
signal start : std_logic;
signal input1 : std_logic_vector(7 downto 0);
signal input2 : std_logic_vector(7 downto 0);
signal output : std_logic_vector(15 downto 0);

begin

clk_process : process
begin
    clk_tb <= '0';
    wait for clk_period/2;
    clk_tb <= '1';
    wait for clk_period/2;
end process;

uut : Multiplier_on_board port map (
    clock   => clk_tb,
    reset   => reset,
    start   => start,
    input1  => input1,
    input2  => input2,
    output  => output
);

stimuli : process
begin

reset <= '1';
wait for 100ns;  --global reset
reset <='0';

input1 <= "00000010";
input2 <= "00000011";
start <= '1';
wait for clk_period*7;
start <='0';

wait;
end process;

end Behavioral;

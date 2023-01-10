----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.12.2022 22:04:40
-- Design Name: 
-- Module Name: insieme_cose_tb - Behavioral
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

entity insieme_cose_tb is
--  Port ( );
end insieme_cose_tb;

architecture Behavioral of insieme_cose_tb is

component insieme_cose is port (
    clock   : in std_logic; 
    read    : in std_logic;
    reset   : in std_logic;
    output  : out std_logic_vector(2 downto 0)
);
end component;

constant clk_period : time := 10 ns;
signal rst : std_logic;
signal clk_tb : std_logic;
signal read : std_logic;
signal output : std_logic_vector(2 downto 0);

begin

clk_process : process
begin
    clk_tb <= '0';
    wait for clk_period/2;
    clk_tb <= '1';
    wait for clk_period/2;
end process;

uut : insieme_cose
    port map (
        clock   => clk_tb,
        read    => read,
        reset   => rst,
        output  => output
);

stimuli : process
begin
    
rst <= '1';
wait for 100ns;

read <= '0';
rst <='0';
wait for clk_period*3;

read <= '1';
wait for clk_period;
read <= '0';
wait for clk_period;

read <= '1';
wait for clk_period;
read <= '0';
wait for clk_period;

read <= '1';
wait for clk_period;
read <= '0';
wait for clk_period;

rst <= '1';
wait for clk_period;
rst <= '0';
wait for clk_period;

read <= '1';
wait for clk_period;
read <= '0';
wait for clk_period;

wait;

end process;

end Behavioral;

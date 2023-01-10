----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.12.2022 17:11:01
-- Design Name: 
-- Module Name: HS_TB - Behavioral
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

entity HS_TB is
--  Port ( );
end HS_TB;

architecture Behavioral of HS_TB is

component Handshaking_TB is port (
    clockA  : in std_logic;
    clockB  : in std_logic;
    reset   : in std_logic;
    start   : in std_logic
);
end component;

constant clk_periodA : time := 10 ns;
constant clk_periodB : time := 40 ns;
signal clk_A : std_logic;
signal clk_B : std_logic;
signal reset : std_logic;
signal start : std_logic;

begin

uut : Handshaking_TB port map (
    clockA  => clk_A,
    clockB  => clk_B,
    reset   => reset,
    start   => start
);

clk_processA : process
begin
    clk_A <= '0';
    wait for clk_periodA/2;
    clk_A <= '1';
    wait for clk_periodA/2;
end process;

clk_processB : process
begin
    clk_B <= '0';
    wait for clk_periodB/2;
    clk_B <= '1';
    wait for clk_periodB/2;
end process;


stimuli : process
begin
reset <= '1';
wait for 100ns;  --global reset
reset <='0';

start <= '1';
wait for clk_periodA*3;
start <='0';

wait;
end process;

end Behavioral;
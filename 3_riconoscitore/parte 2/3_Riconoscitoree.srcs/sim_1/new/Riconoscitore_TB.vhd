----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.12.2022 16:48:35
-- Design Name: 
-- Module Name: Riconoscitore_TB - Behavioral
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

entity Riconoscitore_TB is
--  Port ( );
end Riconoscitore_TB;

architecture Behavioral of Riconoscitore_TB is

component Riconoscitore_su_board is port (
    clock       : in std_logic;
    reset       : in std_logic;
    button1     : in std_logic;
    button2     : in std_logic;
    switch1     : in std_logic;
    switch2     : in std_logic;
    led         : out std_logic
);
end component;

constant clk_period : time := 10 ns; 
signal reset : std_logic;
signal clock : std_logic;
signal button1 : std_logic;
signal button2 : std_logic;
signal switch1 : std_logic;
signal switch2 : std_logic;
signal led : std_logic;

begin

clk_process : process
begin
    clock <= '0';
    wait for clk_period/2;
    clock <= '1';
    wait for clk_period/2;
end process;

uut : Riconoscitore_su_board port map (
    clock       => clock,
    reset       => reset,
    button1     => button1,
    button2     => button2,
    switch1     => switch1,
    switch2     => switch2,
    led         => led
);

stimuli : process
begin
    
reset <= '1';
wait for 100ns;
reset <='0';

switch2 <= '0';
button2 <= '1';
wait for 11ms;
button2 <= '0';

wait for clk_period*10;

switch1 <= '1';
button1 <= '1';
wait for 11ms;
button1 <= '0';

wait for clk_period*10;

switch1 <= '0';
button1 <= '1';
wait for 11ms;
button1 <= '0';

wait for clk_period*10;

switch1 <= '0';
button1 <= '1';
wait for 11ms;
button1 <= '0';

wait for clk_period*10;

switch1 <= '1';
button1 <= '1';
wait for 11ms;
button1 <= '0';



wait;
end process;

end Behavioral;

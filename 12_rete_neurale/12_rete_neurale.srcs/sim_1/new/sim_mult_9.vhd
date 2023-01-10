----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.12.2022 15:55:01
-- Design Name: 
-- Module Name: sim_mult_9 - Behavioral
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

entity sim_mult_9 is
--  Port ( );
end sim_mult_9;

architecture Behavioral of sim_mult_9 is

component Booth_multiplier is port (
    clock       : in std_logic;
    reset       : in std_logic;
    start       : in std_logic;
    Y           : in std_logic_vector(8 downto 0);
    X           : in std_logic_vector(8 downto 0);
    prodotto    : out std_logic_vector(17 downto 0);
    stop        : out std_logic
);
end component;

constant clk_period : time := 10 ns;
signal reset : std_logic;
signal clk_tb : std_logic;
signal start : std_logic;
signal Y : std_logic_vector(8 downto 0);
signal X : std_logic_vector(8 downto 0);
signal prodotto : std_logic_vector(17 downto 0);
signal stop : std_logic;

begin

clk_process : process
begin
    clk_tb <= '0';
    wait for clk_period/2;
    clk_tb <= '1';
    wait for clk_period/2;
end process;

uut : Booth_multiplier port map (
    clock   => clk_tb,
    reset   => reset,
    start   => start,
    Y       => Y,
    X       => X,
    prodotto  => prodotto,
    stop => stop
);

stimuli : process
begin

reset <= '1';
wait for 100ns;  --global reset
reset <='0';

Y <= "111110010";
X <= "111110010";
start <= '1';
wait for clk_period*3;
start <='0';

wait for 500 ns;

Y <= "000000010";
X <= "000000010";
start <= '1';
wait for clk_period*3;
start <='0';

wait;
end process;

end Behavioral;

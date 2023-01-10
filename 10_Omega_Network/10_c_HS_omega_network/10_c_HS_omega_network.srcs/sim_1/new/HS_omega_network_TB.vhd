----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.12.2022 18:25:45
-- Design Name: 
-- Module Name: HS_omega_network_TB - Behavioral
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

entity HS_omega_network_TB is
--  Port ( );
end HS_omega_network_TB;

architecture Behavioral of HS_omega_network_TB is

component HS_omega_network is port (
    clock   : in std_logic;
    reset   : in std_logic;
    start   : in std_logic_vector(7 downto 0);
    mess    : in input_message;
    dest    : in input_destination;
    output  : out input_array
);
end component;

constant clk_period : time := 20 ns;
signal clk          : std_logic;
signal rst          : std_logic;
signal start        : std_logic_vector(7 downto 0):= (others => '0');
signal mess         : input_message := (others => "00");
signal dest         : input_destination := (others => "000");
signal output       : input_array;

begin

alfa_chad : HS_omega_network port map(
    clock   => clk,
    reset   => rst,
    start   => start,
    mess    => mess,
    dest    => dest,
    output  => output
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

wait for clk_period;

mess(0) <= "01";
mess(1) <= "11";
dest(0) <= "000";
dest(1) <= "000";

wait for clk_period*2;

start <= "00000011";

wait for clk_period;

start <= "00000000";

wait;

end process;

end Behavioral;
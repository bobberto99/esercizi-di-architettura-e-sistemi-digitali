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

component comunicazione_seriale is port(
    reset           :   in  std_logic;                          -- reset
    clk             :   in  std_logic;                          -- clock    
    wr_button       :   in  std_logic;                          -- bottone di avvio trasmissione
    input           :   in  std_logic_vector (7 downto 0);      -- input dall'esterno che si vuole comunicare
    LED             :   out std_logic_vector(7 downto 0);
    errors          :   out std_logic_vector(2 downto 0)
);
end component;

constant clk_period : time := 10 ns;
signal rst : std_logic;
signal clk_tb : std_logic;
signal wr_button: std_logic;
signal input: std_logic_vector (7 downto 0);
signal LED : std_logic_vector(7 downto 0);
signal err : std_logic_vector(2 downto 0);

begin

clk_process : process
begin
    clk_tb <= '0';
    wait for clk_period/2;
    clk_tb <= '1';
    wait for clk_period/2;
end process;

uut : comunicazione_seriale
    port map (
        clk         => clk_tb,
        reset       => rst,
        wr_button   => wr_button,
        input       => input,
        LED         => LED,
        errors      => err
);

stimuli : process
begin

wait for 100ns;

wait for clk_period*3;

input <= "10100101";

wr_button <= '1';
wait for 1ms;
wr_button <= '0';

input <= "10001001";

wr_button <= '1';
wait for 3ms;
wr_button <= '0';

wait for 1 ms;

wait;


wait for 1 ms;

end process;

end Behavioral;

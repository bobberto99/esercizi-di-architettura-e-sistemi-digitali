----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.12.2022 16:08:08
-- Design Name: 
-- Module Name: sim_rete_neurale - Behavioral
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
use work.type_package_output.all;

library work;
use work.type_package.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sim_rete_neurale is
--  Port ( );
end sim_rete_neurale;

architecture Behavioral of sim_rete_neurale is

component rete_neurale is port (
    clock   : in std_logic;
    reset   : in std_logic;
    start   : in std_logic;
    input0  : in std_logic_vector(8 downto 0);
    input1  : in std_logic_vector(8 downto 0);
    input2  : in std_logic_vector(8 downto 0);
    input3  : in std_logic_vector(8 downto 0);
    input4  : in std_logic_vector(8 downto 0);
    input5  : in std_logic_vector(8 downto 0);
    input6  : in std_logic_vector(8 downto 0);
    input7  : in std_logic_vector(8 downto 0);
    input8  : in std_logic_vector(8 downto 0);
    
    output  : out uscite
);
end component;

constant clk_period : time := 10 ns;
signal input0  : std_logic_vector(8 downto 0);
signal input1  : std_logic_vector(8 downto 0);
signal input2  : std_logic_vector(8 downto 0);
signal input3  : std_logic_vector(8 downto 0);
signal input4  : std_logic_vector(8 downto 0);
signal input5  : std_logic_vector(8 downto 0);
signal input6  : std_logic_vector(8 downto 0);
signal input7  : std_logic_vector(8 downto 0);
signal input8  : std_logic_vector(8 downto 0);

signal reset : std_logic;
signal clk_tb : std_logic;
signal start : std_logic;
signal output : uscite;

begin

clk_process : process
begin
    clk_tb <= '0';
    wait for clk_period/2;
    clk_tb <= '1';
    wait for clk_period/2;
end process;

uut : rete_neurale port map (
    clock   => clk_tb,
    reset   => reset,
    start   => start,
    input0  => input0,
    input1  => input1,
    input2  => input2,
    input3  => input3,
    input4  => input4,
    input5  => input5,
    input6  => input6,
    input7  => input7,
    input8  => input8,
    output  => output
);


stimuli : process
begin

reset <= '1';
wait for 100ns;  --global reset
reset <='0';

input0 <= "000000001";
input1 <= "000000001";
input2 <= "000000001";
input3 <= "000000001";
input4 <= "000000001";
input5 <= "000000001";
input6 <= "000000001";
input7 <= "000000001";
input8 <= "000000001";

start <= '1';
wait for clk_period*3;
start <='0';

wait for 17000 ns;

input0 <= "000000010";
input1 <= "000000010";
input2 <= "000000010";
input3 <= "000000010";
input4 <= "000000010";
input5 <= "000000010";
input6 <= "000000010";
input7 <= "000000010";
input8 <= "000000010";

start <= '1';
wait for clk_period*3;
start <='0';

wait;
end process;

end Behavioral;

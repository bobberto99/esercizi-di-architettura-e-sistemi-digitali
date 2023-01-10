----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.12.2022 16:18:45
-- Design Name: 
-- Module Name: Nodo_A - Behavioral
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

entity Nodo_A is port (
    clock       : in std_logic;
    reset       : in std_logic;
    start       : in std_logic;
    ack         : in std_logic;
    go          : out std_logic;
    data_out    : out std_logic_vector(7 downto 0)
);
end Nodo_A;

architecture Behavioral of Nodo_A is

signal sig_count    : std_logic;
signal sig_counter  : std_logic_vector(2 downto 0);
signal sig_rst_c    : std_logic;
signal sig_read     : std_logic;

begin

controllo : entity work.uc_A port map(
    clock       => clock,
    reset       => reset,
    start       => start,
    ack         => ack,
    counter     => sig_counter,
    rst_c       => sig_rst_c,
    count       => sig_count,
    go          => go,
    read        => sig_read
);

contatore : entity work.counter_mod8 port map(
    clock   => clock,
    reset   => sig_rst_c,
    enable  => sig_count,
    counter => sig_counter
);

memoria_ROM : entity work.ROM port map(
    clk     => clock,
    read    => sig_read,
    addr    => sig_counter,
    data    => data_out
);

end Behavioral;

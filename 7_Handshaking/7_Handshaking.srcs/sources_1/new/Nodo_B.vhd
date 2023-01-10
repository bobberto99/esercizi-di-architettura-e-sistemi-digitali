----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.12.2022 16:35:21
-- Design Name: 
-- Module Name: Nodo_B - Behavioral
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

entity Nodo_B is port (
    clk         : in std_logic;
    reset       : in std_logic;
    go          : in std_logic;
    data_in     : in std_logic_vector(7 downto 0);
    ack         : out std_logic
);
end Nodo_B;

architecture Behavioral of Nodo_B is

signal sig_en_count     : std_logic;
signal sig_en_write     : std_logic;
signal sig_counter      : std_logic_vector(2 downto 0);
signal sig_dadaT        : std_logic_vector(7 downto 0);
signal sig_res          : std_logic_vector(7 downto 0);
signal sig_cout         : std_logic;

begin

controllo : entity work.uc_B port map(
    clk         => clk,
    reset       => reset,
    go          => go,
    counter     => sig_counter,
    en_count    => sig_en_count,
    en_write    => sig_en_write,
    ack         => ack
);

memoria_ROM : entity work.ROM port map(
    clk  => clk,
    read => '1',
    addr => sig_counter,
    data => sig_dadaT
);

memoria_RAM : entity work.memoria port map(
    clock       => clk,
    reset       => reset,
    input       => sig_cout & sig_res,
    write_addr  => sig_counter,
    read_addr   => sig_counter,
    write_en    => sig_en_write,
    output      => open
);

contatore : entity work.counter_mod8 port map(
    clock   => clk,
    reset   => reset,
    enable  => sig_en_count,
    counter => sig_counter
);

adder : entity work.adder_sub port map(
    X       => sig_dadaT,
    Y       => data_in,
    cin     => '0', 
    Z       => sig_res,
    cout    => sig_cout
);

end Behavioral;

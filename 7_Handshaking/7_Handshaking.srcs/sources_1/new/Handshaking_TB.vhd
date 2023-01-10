----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.12.2022 16:36:17
-- Design Name: 
-- Module Name: Handshaking_TB - Behavioral
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

entity Handshaking_TB is port (
    clockA  : in std_logic;
    clockB  : in std_logic;
    reset   : in std_logic;
    start   : in std_logic
);
end Handshaking_TB;

architecture Behavioral of Handshaking_TB is

signal data_line    : std_logic_vector(7 downto 0);
signal ack          : std_logic;
signal go           : std_logic;

begin

nodoA : entity work.Nodo_A port map(
    clock       => clockA,
    reset       => reset,
    start       => start,
    ack         => ack,
    go          => go,
    data_out    => data_line
);

nodoB : entity work.Nodo_B port map(
    clk         => clockB,
    reset       => reset,
    go          => go,
    data_in     => data_line,
    ack         => ack
);


end Behavioral;

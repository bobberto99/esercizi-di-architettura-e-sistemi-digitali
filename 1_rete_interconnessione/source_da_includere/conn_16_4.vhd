----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.10.2022 18:02:18
-- Design Name: 
-- Module Name: conn_16_4 - structural
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

entity conn_16_4 is
    port (
        a: in std_logic_vector(0 to 15);
        s_mux: in std_logic_vector(3 downto 0);
        s_demux: in std_logic_vector(1 downto 0);
        y: out std_logic_vector(0 to 3)
    );
end conn_16_4;

architecture structural of conn_16_4 is

component mux_16_1 is
    port (
        x: in std_logic_vector(0 to 15);
        k: in std_logic_vector(3 downto 0);
        y: out std_logic
    );
end component;

component demux_1_4 is
    port (
        j: in std_logic;
        s: in std_logic_vector(1 downto 0);
        u: out std_logic_vector(0 to 3)
    );
end component;

signal c: std_logic;

begin

    mux: mux_16_1
        port map (
            x(0 to 15) => a(0 to 15),
            k(3 downto 0) => s_mux(3 downto 0),
            y => c
    );

    demux: demux_1_4
        port map (
            j => c,
            s(1 downto 0) => s_demux(1 downto 0),
            u(0 to 3) => y(0 to 3)
    );

end structural;
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.10.2022 17:49:27
-- Design Name: 
-- Module Name: demux_1_4 - structural
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

entity demux_1_4 is 
    port(    
        j: in std_logic;
        s: in std_logic_vector(1 downto 0);
        u: out std_logic_vector(0 to 3)
    );
end demux_1_4;

architecture structural of demux_1_4 is

component demux_1_2 is
    port(
        i: in std_logic;
        r: in std_logic;
        y0: out std_logic;
        y1: out std_logic
    );
end component;

signal c: std_logic_vector(0 to 1);

begin

    demux_0: demux_1_2
        port map (
            i => j,
            r => s(1),
            y0 => c(0),
            y1 => c(1)
    );
    
    demux_1_0: demux_1_2
        port map (
            i => c(0),
            r => s(0),
            y0 => u(0),
            y1 => u(1)
    );
    
    demux_1_1: demux_1_2
        port map (
            i => c(1),
            r => s(0),
            y0 => u(2),
            y1 => u(3)
    );

end structural;

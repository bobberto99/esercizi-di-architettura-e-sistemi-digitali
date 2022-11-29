----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.10.2022 17:12:12
-- Design Name: 
-- Module Name: mux_4_1 - Behavioral
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

entity mux_4_1 is
    port (
        b: in std_logic_vector(0 to 3);
        s: in std_logic_vector(1 downto 0);
        z: out std_logic
    );
end mux_4_1;

architecture structural of mux_4_1 is

component mux_2_1 is
    port (
            a0 : in std_logic;
            a1 : in std_logic;
            r  : in std_logic;
            u  : out std_logic
        );
end component;

signal c: std_logic_vector (0 to 1);

begin

mux0_0: mux_2_1
    port map (
        a0 => b(0),
        a1 => b(1),
        r => s(0),
        u => c(0)
    );

mux0_1: mux_2_1
    port map (
        a0 => b(2),
        a1 => b(3),
        r => s(0),
        u => c(1)
    );

mux1: mux_2_1
    port map (
        a0 => c(0),
        a1 => c(1),
        r => s(1),
        u => z
    );

end structural;

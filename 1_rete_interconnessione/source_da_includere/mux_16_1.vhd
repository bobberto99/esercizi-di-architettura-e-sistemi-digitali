----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.10.2022 17:33:14
-- Design Name: 
-- Module Name: mux_16_1 - structural
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

entity mux_16_1 is
    port (
        x: in std_logic_vector(0 to 15);
        k: in std_logic_vector(3 downto 0);
        y: out std_logic
    );
end mux_16_1;

architecture structural of mux_16_1 is

component mux_4_1 is
    port (
        b: in std_logic_vector(0 to 3);
        s: in std_logic_vector(1 downto 0);
        z: out std_logic
    );
end component;

signal c: std_logic_vector(0 to 3);

begin

    mux0_0: mux_4_1
        port map (
            b(0 to 3) => x(0 to 3),
            s(1 downto 0) => k(1 downto 0),
            z => c(0)
        );
        
    mux0_1: mux_4_1
        port map (
            b(0 to 3) => x(4 to 7),
            s(1 downto 0) => k(1 downto 0),
            z => c(1)
        );
        
    mux0_2: mux_4_1
        port map (
            b(0 to 3) => x(8 to 11),
            s(1 downto 0) => k(1 downto 0),
            z => c(2)
        );
        
    mux0_3: mux_4_1
        port map (
            b(0 to 3) => x(12 to 15),
            s(1 downto 0) => k(1 downto 0),
            z => c(3)
        );
        
    mux1: mux_4_1
        port map (
            b(0 to 3) => c(0 to 3),
            s(1 downto 0) => k(3 downto 2),
            z => y
        );

end structural;
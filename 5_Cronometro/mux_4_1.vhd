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
        input: in std_logic_vector(0 to 3);
        s: in std_logic_vector(1 downto 0);
        output: out std_logic
    );
end mux_4_1;

architecture structural of mux_4_1 is

component mux_2_1 is 
    port (
        input0 : in std_logic;
        input1 : in std_logic;
        s  : in std_logic;
        output  : out std_logic
    );  
end component;

signal c: std_logic_vector (0 to 1);

begin

mux0_0: mux_2_1
    port map (
        input0 => input(0),
        input1 => input(1),
        s => s(0),
        output => c(0)
    );

mux0_1: mux_2_1
    port map (
        input0 => input(2),
        input1 => input(3),
        s => s(0),
        output => c(1)
    );

mux1: mux_2_1
    port map (
        input0 => c(0),
        input1 => c(1),
        s => s(1),
        output => output
    );

end structural;
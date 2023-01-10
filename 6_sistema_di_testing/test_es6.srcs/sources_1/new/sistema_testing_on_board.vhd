----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.12.2022 17:12:25
-- Design Name: 
-- Module Name: sistema_testing_on_board - structural
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

entity sistema_testing_on_board is port (
    clock   : in std_logic;
    read    : in std_logic;
    reset   : in std_logic;
    output  : out std_logic_vector(2 downto 0)
);
end sistema_testing_on_board;

architecture structural of sistema_testing_on_board is

component ButtonDebouncer is port (
    RST         : in STD_LOGIC;
    CLK         : in STD_LOGIC;
    BTN         : in STD_LOGIC;
    CLEARED_BTN : out STD_LOGIC
);
end component;

component insieme_cose is port (
    clock   : in std_logic;
    read    : in std_logic;
    reset   : in std_logic;
    output  : out std_logic_vector(2 downto 0)
);
end component;

signal read_clear : std_logic := '0';
signal reset_clear : std_logic := '0';

begin

sistema : insieme_cose port map (
    clock   => clock,
    read    => read_clear,
    reset   => reset_clear,
    output  => output
);

deb_read : ButtonDebouncer port map (
    RST         => '0',
    CLK         => clock,
    BTN         => read,
    CLEARED_BTN => read_clear 
);

deb_reset : ButtonDebouncer port map (
    RST         => '0',
    CLK         => clock,
    BTN         => reset,
    CLEARED_BTN => reset_clear
);

end structural;

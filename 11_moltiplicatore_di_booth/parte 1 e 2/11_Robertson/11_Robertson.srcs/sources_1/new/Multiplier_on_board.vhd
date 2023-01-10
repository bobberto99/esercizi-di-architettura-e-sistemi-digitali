----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.12.2022 17:08:30
-- Design Name: 
-- Module Name: Multiplier_on_board - structural
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

entity Multiplier_on_board is port (
    clock   : in std_logic;
    reset   : in std_logic;
    start   : in std_logic;
    input1  : in std_logic_vector(7 downto 0);
    input2  : in std_logic_vector(7 downto 0);
    output  : out std_logic_vector(15 downto 0)
);
end Multiplier_on_board;

architecture structural of Multiplier_on_board is

signal start_clear  : std_logic;
signal reset_clear  : std_logic;
signal sig_div      : std_logic;

begin

multiplier : entity work.Booth_multiplier port map (
    clock       => clock,
    reset       => reset,
    start       => start_clear,
    Y           => input1,
    X           => input2,
    prodotto    => output
);

deb_start : entity work.ButtonDebouncer port map (
    RST         => '0',
    CLK         => clock,
    BTN         => start,
    --div         => sig_div,
    CLEARED_BTN => start_clear
);

--divisore : entity work.Divisore_freq port map (
--    reset => reset,
--    clock => clock,
--    div   => sig_div
--);

end structural;

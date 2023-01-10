----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.12.2022 16:18:01
-- Design Name: 
-- Module Name: Riconoscitore_su_board - Behavioral
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

entity Riconoscitore_su_board is port (
    clock       : in std_logic;
    reset       : in std_logic;
    button1     : in std_logic;
    button2     : in std_logic;
    switch1     : in std_logic;
    switch2     : in std_logic;
    led         : out std_logic
);
end Riconoscitore_su_board;

architecture structural of Riconoscitore_su_board is

component Riconoscitore_2modi is
    port(
        i : in std_logic;
        div : in std_logic;
        RST: in std_logic;
        CLK: in std_logic;
        M : in std_logic;
        i_read : in std_logic;
        M_read : in std_logic;
        uscita : out std_logic
        );
end component;

component automa_debouncer is 
    generic (                       
        CLK_period: integer := 10;  -- periodo del clock in nanosec
        btn_noise_time: integer := 30 --durata dell'oscillazione in nanosec
        );
    Port ( RST : in STD_LOGIC;
           div : in std_logic; 
           CLK : in STD_LOGIC;
           BTN : in STD_LOGIC; 
           CLEARED_BTN : out STD_LOGIC);
end component;

component Divisore_freq is
    generic (
        f_in  : integer := 100000000;
        f_out : integer := 50000000
    );
    port (
        reset : in std_logic;
        clock : in std_logic;
        div   : out std_logic
    );
end component;

signal sig_div  : std_logic;
signal sig_in   : std_logic;
signal sig_m    : std_logic;

begin

riconoscitore : Riconoscitore_2modi port map (
    i       => switch1,
    div     => sig_div,
    RST     => reset,
    CLK     => clock,
    M       => switch2,
    i_read  => sig_in,
    M_read  => sig_m,
    uscita  => led
);

deb_in : automa_debouncer port map (
    RST         => '0',
    div         => sig_div,
    CLK         => clock,
    BTN         => button1,
    CLEARED_BTN => sig_in
);

deb_m : automa_debouncer port map (
    RST         => '0',
    div         => sig_div,
    CLK         => clock,
    BTN         => button2,
    CLEARED_BTN => sig_m
);

divisore : Divisore_freq port map (
    reset   => '0',
    clock   => clock,
    div     => sig_div
);

end structural;

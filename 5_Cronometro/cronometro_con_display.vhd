----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.11.2022 22:46:08
-- Design Name: 
-- Module Name: cronometro_con_display - Behavioral
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

entity cronometro_con_display is port(
    clk             : in  std_logic;
    reset           : in  std_logic;
    set             : in std_logic;
    btn_save        : in std_logic;
    btn_show        : in std_logic;
    set_switch_1    : in std_logic_vector(5 downto 0);
    set_switch_2    : in std_logic_vector(5 downto 0);
    anodi           : out std_logic_vector(7 downto 0);
    catodi          : out std_logic_vector(7 downto 0)

);
end cronometro_con_display;

architecture structural of cronometro_con_display is

component Cronometro is port (
    clk         : in  std_logic;
    reset       : in  std_logic;
    set         : in std_logic;
    btn_save    : in std_logic;
    btn_show    : in std_logic;
    set_switch_1     : in std_logic_vector(5 downto 0);
    set_switch_2     : in std_logic_vector(5 downto 0);
    seconds     : out  std_logic_vector(5 downto 0);
    minutes     : out  std_logic_vector(5 downto 0);
    hours       : out  std_logic_vector(4 downto 0)
);
end component;

component display is port(
    seconds     : in  std_logic_vector(5 downto 0);
    minutes     : in  std_logic_vector(5 downto 0);
    hours       : in  std_logic_vector(4 downto 0);
    clk         : in  std_logic;
    reset       : in  std_logic;
    anodi       : out std_logic_vector(7 downto 0);
    catodi      : out std_logic_vector(7 downto 0)
);
end component;

component ButtonDebouncer is
    generic (                       
        CLK_period: integer := 10;  -- periodo del clock in nanosec
        btn_noise_time: integer := 100000000 --durata dell'oscillazione in nanosec
        );
    Port ( RST : in STD_LOGIC;
           CLK : in STD_LOGIC;
           BTN : in STD_LOGIC; 
           CLEARED_BTN : out STD_LOGIC);
end component;

signal seconds, minutes     : std_logic_vector (5 downto 0);
signal hours                : std_logic_vector (4 downto 0);
signal conn_set, conn_res   : std_logic;
signal cancellami, owo      : std_logic;
signal conn_save, conn_show : std_logic;

begin
Cron : Cronometro port map(
    clk             =>  clk,
    reset           =>  conn_res,
    set             =>  conn_set,
    btn_save        =>  conn_save,
    btn_show        =>  conn_show,
    set_switch_1    =>  set_switch_1,
    set_switch_2    =>  set_switch_2,
    seconds         =>  seconds,
    minutes         =>  minutes,
    hours           =>  hours
);

dis  : Display Port map(
    seconds => seconds,
    minutes => minutes,
    hours   => hours,
    clk     => clk,
    reset   => conn_res,
    anodi   => anodi,
    catodi  => catodi
);

debouncer_set : ButtonDebouncer port map(
    rst => '0',
   clk => clk,
    btn => set,
    cleared_btn => conn_set
);

debouncer_reset : ButtonDebouncer port map(
    rst => '0',
    clk => clk,
    btn => reset,
    cleared_btn => conn_res
    );
    
    
debouncer_save : ButtonDebouncer port map(
    rst => '0',
    clk => clk,
    btn => btn_save,
    cleared_btn => conn_save
    );
    
    
debouncer_show : ButtonDebouncer port map(
    rst => '0',
    clk => clk,
    btn => btn_show,
    cleared_btn => conn_show
    );


end structural;

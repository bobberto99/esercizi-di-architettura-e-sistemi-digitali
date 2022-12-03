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
    clk         : in  std_logic;
    reset       : in  std_logic;
    set         : in std_logic;
    --v_set_s     : in std_logic_vector(5 downto 0);
    --v_set_m     : in std_logic_vector(5 downto 0);
    --v_set_h     : in std_logic_vector(4 downto 0);
    anodi       : out std_logic_vector(7 downto 0);
    catodi      : out std_logic_vector(7 downto 0)
);
end cronometro_con_display;

architecture structural of cronometro_con_display is

component Cronometro is port (
    clk         : in  std_logic;
    reset       : in  std_logic;
    set         : in std_logic;
    v_set_s     : in std_logic_vector(5 downto 0);
    v_set_m     : in std_logic_vector(5 downto 0);
    v_set_h     : in std_logic_vector(4 downto 0);
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

signal seconds, minutes : std_logic_vector (5 downto 0);
signal hours            : std_logic_vector (4 downto 0);

-----------------------------------------------------------------------
-- da eliminare
signal      v_set_s     : std_logic_vector(5 downto 0) := ("111100");
signal      v_set_m     : std_logic_vector(5 downto 0) := ("000111");
signal      v_set_h     : std_logic_vector(4 downto 0) := ("00000");
--------------------------------------------------------------------------
begin
Cron : Cronometro port map(
    clk         =>  clk,
    reset       =>  reset,
    set         =>  set,
    v_set_s     =>  v_set_s,
    v_set_m     =>  v_set_m,
    v_set_h     =>  v_set_h,
    seconds     =>  seconds,
    minutes     =>  minutes,
    hours       =>  hours
);

dis  : Display Port map(
    seconds => seconds,
    minutes => minutes,
    hours   => hours,
    clk     => clk,
    reset   => reset,
    anodi   => anodi,
    catodi  => catodi
);
end structural;

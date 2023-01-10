----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.12.2022 21:34:53
-- Design Name: 
-- Module Name: insieme_cose - structural
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

entity insieme_cose is port (
    clock   : in std_logic;
    read    : in std_logic;
    reset   : in std_logic;
    output  : out std_logic_vector(2 downto 0)
);
end insieme_cose;

architecture structural of insieme_cose is

component counter_mod16 is port (
    clock   : in  STD_LOGIC;
    reset   : in  STD_LOGIC;
    enable  : in STD_LOGIC;
    counter : out  STD_LOGIC_VECTOR (3 downto 0)
);
end component;

component ROM is port(
    clk : in std_logic;
    addr : in std_logic_vector(3 downto 0);
    data : out std_logic_vector(3 downto 0)
);
end component;

component combinatorius is port (
    input   : in std_logic_vector(3 downto 0);
    output  : out std_logic_vector(2 downto 0)
);
end component;

component memoria is port (
    clock       : in std_logic;
    reset       : in std_logic;
    input       : in std_logic_vector(2 downto 0);
    write_addr  : in std_logic_vector(3 downto 0);
    read_addr   : in std_logic_vector(3 downto 0);
    write_en    : in std_logic;
    output      : out std_logic_vector(2 downto 0)
);
end component;

signal m_input : std_logic_vector(3 downto 0):= (others => '0');
signal m_output : std_logic_vector(2 downto 0):= (others => '0');
signal address : std_logic_vector(3 downto 0);

begin

counter : counter_mod16 port map (
    clock   => clock,
    reset   => reset,
    enable  => read,
    counter => address 
);

rom_data : ROM port map (
    clk     => clock,
    addr    => address,
    data    => m_input 
);

macchina : combinatorius port map (
    input   => m_input,
    output  => m_output 
);

ram : memoria port map (
    clock       => clock,
    reset       => reset,
    input       => m_output,
    write_addr  => address,
    read_addr   => (others => '0'),
    write_en    => read 
);

output <= m_output;

end structural;

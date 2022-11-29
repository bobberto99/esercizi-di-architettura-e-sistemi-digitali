----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.11.2022 17:18:09
-- Design Name: 
-- Module Name: macchina - structural
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

entity macchina is port (
switch      : in std_logic_vector (0 to 15);
button_0    : in std_logic;    -- button [0] per i selettori button [1] per i dati
button_1    : in std_logic;
reset       : in std_logic;
clock       : in std_logic;
led         : out std_logic_vector (0 to 3)
);
end macchina;

architecture structural of macchina is
component conn_16_4 is port (
    a: in std_logic_vector(0 to 15);
    s_mux: in std_logic_vector(3 downto 0);
    s_demux: in std_logic_vector(1 downto 0);
    y: out std_logic_vector(0 to 3)
);
end component;

component unita_di_controllo is port (
switch  : in std_logic_vector (0 to 15);
button_0  : in std_logic;    -- button [0] per i selettori button [1] per i dati
button_1  : in std_logic;
reset   : in std_logic;
clock   : in std_logic;
reg_inputs   : out std_logic_vector (15 downto 0) := (others => '0');
reg_selmux   :out  std_logic_vector (3 downto 0) := "0000";
reg_seldem   : out std_logic_vector (1 downto 0) := "00"
);
end component;


signal inputs   : std_logic_vector (0 to 15);
signal selmux   : std_logic_vector (3 downto 0);
signal seldem   : std_logic_vector (1 downto 0);

begin

cu : unita_di_controllo port map (
switch      => switch,
button_0    =>button_0,
button_1    =>button_1,
reset       =>reset,
clock       =>clock,
reg_inputs  => inputs,
reg_selmux  => selmux,
reg_seldem  => seldem
);

po : conn_16_4 port map (
        a           => inputs,
        s_mux       => selmux,
        s_demux     => seldem,
        y           => led
    );

end structural;
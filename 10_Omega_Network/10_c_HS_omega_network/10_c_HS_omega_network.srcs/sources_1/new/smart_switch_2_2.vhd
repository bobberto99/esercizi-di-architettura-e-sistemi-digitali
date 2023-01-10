----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.12.2022 12:52:52
-- Design Name: 
-- Module Name: switch_2_2 - structural
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

entity smart_switch_2_2 is 
generic (
    level : integer := 0
);
port (
    clock   : in std_logic;
    reset   : in std_logic;
    input0  : in std_logic_vector(9 downto 0);
    input1  : in std_logic_vector(9 downto 0);
    output0 : out std_logic_vector(9 downto 0);
    output1 : out std_logic_vector(9 downto 0)
);
end smart_switch_2_2;

architecture structural of smart_switch_2_2 is

signal sig_mux          : std_logic_vector(9 downto 0);
signal sig_conn         : std_logic_vector(9 downto 0);
signal sig_output       : std_logic_vector(9 downto 0);
signal sig_mem_input    : std_logic_vector(9 downto 0);
signal sig_s_in         : std_logic;
signal sig_s_out        : std_logic;
signal sig_load         : std_logic;
signal sig_sel          : std_logic;

begin

controllo : entity work.uc_switch 
generic map (
level => level
)
port map(
    clock   => clock,
    reset   => reset,
    input0  => input0,
    input1  => input1,
    out_reg => sig_output,
    src     => sig_s_in,
    dst     => sig_s_out,
    load    => sig_load,
    in_reg  => sig_mem_input,
    sel     => sig_sel
);

mux_buffer : entity work.mux_2_1 port map(
    input0  => sig_mux,
    input1  => sig_output,
    s       => sig_sel,
    output  => sig_conn
);

mux : entity work.mux_2_1 port map(
    input0  => input0,
    input1  => input1,
    s       => sig_s_in,
    output  => sig_mux
);

demux : entity work.demux_1_2 port map(
    input   => sig_conn,
    s       => sig_s_out,
    output0 => output0,
    output1 => output1
);

reg : entity work.register_9 port map(
    clock   => clock,
    reset   => reset,
    load    => sig_load,
    in_p    => sig_mem_input,
    out_p   => sig_output
);

end structural;

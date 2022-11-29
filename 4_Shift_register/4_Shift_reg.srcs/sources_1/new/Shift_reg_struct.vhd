----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.11.2022 15:09:20
-- Design Name: 
-- Module Name: Shift_reg_struct - Structural
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

entity Shift_reg_struct is port (
    clk     : in std_logic;                   
    en      : in std_logic;                   
    reset   : in std_logic;                   
    input   : in std_logic_vector(1 downto 0);
    sel     : in std_logic_vector(1 downto 0);
    output  : out std_logic_vector(1 downto 0)
);
end Shift_reg_struct;

architecture Structural of Shift_reg_struct is

component mux_4_1 is port (
        input: in std_logic_vector(0 to 3);
        s: in std_logic_vector(1 downto 0);
        output: out std_logic
);
end component;

component Registrer is port (
    clk     : in std_logic;
    en      : in std_logic;
    reset   : in std_logic;
    preset  : in std_logic;
    input   : in std_logic;
    output  : out std_logic
);
end component;

signal d_tmp    : std_logic_vector (7 downto 0);
signal mux_out  : std_logic_vector (7 downto 0);
signal mux_in   : std_logic_vector (0 to 31);

begin

mux_7 : mux_4_1
    port map (
        input(0 to 3)   => mux_in(0 to 3),
        s               => sel,
        output          => mux_out(7)
);

reg_7 : Registrer 
    port map (
        clk     => clk,
        en      => en,
        reset   => reset,
        preset  => '0',
        input   => mux_out(7),
        output  => d_tmp(7)
);

mux_6 : mux_4_1
    port map (
        input(0 to 3)   => mux_in(4 to 7),
        s               => sel,
        output          => mux_out(6)
);

mux_intermedi : for j in 2 to 5 generate
    mux : mux_4_1
        port map (
            input(0 to 3)   => mux_in(4*j to (4*j)+3),
            s               => sel,
            output          => mux_out(7-j)
);
end generate mux_intermedi;

registri_intermedi : for i in 6 downto 1 generate
    reg : Registrer 
        port map (
            clk     => clk,
            en      => en,
            reset   => reset,
            preset  => '0',
            input   => mux_out(i),
            output  => d_tmp(i)
);
end generate registri_intermedi;

mux_1 : mux_4_1
    port map (
        input(0 to 3)   => mux_in(24 to 27),
        s               => sel,
        output          => mux_out(1)
);

mux_0 : mux_4_1
    port map (
        input(0 to 3)   => mux_in(28 to 31),
        s               => sel,
        output          => mux_out(0)
);

reg_0 : Registrer 
    port map (
        clk     => clk,
        en      => en,
        reset   => reset,
        preset  => '0',
        input   => mux_out(0),
        output  => d_tmp(0)
);

m_output0 : mux_4_1
    port map (
        input(0)  => d_tmp(0),
        input(1)  => d_tmp(7),
        input(2)  => d_tmp(0),
        input(3)  => d_tmp(7),
        s         => sel,
        output    => output(0)
    
);

m_output1 : mux_4_1
    port map (
        input(0)  => d_tmp(1),
        input(1)  => d_tmp(6),
        input(2)  => d_tmp(1),
        input(3)  => d_tmp(6),
        s         => sel,
        output    => output(1)
    
);

mux_line_1: for k in 1 to 7 generate
    mux_in(4*k) <= d_tmp(8-k);
end generate mux_line_1;

mux_line_2: for k in 6 downto 0 generate
    mux_in((4*k)+1) <= d_tmp(6-k);
end generate mux_line_2;

mux_line_3: for k in 1 to 6 generate
    mux_in((4*k)+6) <= d_tmp(8-k);
end generate mux_line_3;

mux_line_4: for k in 6 downto 1 generate
    mux_in((4*k)-1) <= d_tmp(6-k);
end generate mux_line_4;

mux_in(0) <= input(0);

mux_in(29) <= input(0);

mux_in(2) <= input(1);
mux_in(6) <= input(0);

mux_in(27) <= input(0);
mux_in(31) <= input(1);

end Structural;

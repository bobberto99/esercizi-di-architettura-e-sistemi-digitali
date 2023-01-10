----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.12.2022 12:33:01
-- Design Name: 
-- Module Name: Booth_multiplier - structural
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

entity Booth_multiplier is port (
    clock       : in std_logic;
    reset       : in std_logic;
    start       : in std_logic;
    Y           : in std_logic_vector(8 downto 0);
    X           : in std_logic_vector(8 downto 0);
    prodotto    : out std_logic_vector(17 downto 0);
    stop        : out std_logic
);
end Booth_multiplier;

architecture structural of Booth_multiplier is

signal sig_M            : std_logic_vector(8 downto 0) := (others=>'0');
signal sig_A            : std_logic_vector(8 downto 0) := (others=>'0');
signal sig_Q            : std_logic_vector(8 downto 0) := (others=>'0');
signal sig_newA         : std_logic_vector(8 downto 0) := (others=>'0');
--signal sig_operand2     : std_logic_vector(7 downto 0) := (others=>'0');
signal sig_counter      : std_logic_vector(3 downto 0) := (others=>'0');
signal sig_enable_rA    : std_logic := '0';
signal sig_enable_rQ    : std_logic := '0';
signal sig_enable_rM    : std_logic := '0';
signal sig_shift_r      : std_logic := '0';
signal sig_shift_rM     : std_logic := '0';
signal sig_sub          : std_logic := '0';
signal sig_cout         : std_logic := '0';
signal sig_count_in     : std_logic := '0';
signal sig_reset_c      : std_logic := '0';
signal sig_q_0          : std_logic := '0';
signal sig_q_meno1      : std_logic := '0';
signal AtoQ             : std_logic := '0';
signal sig_reset_all    : std_logic := '0';

begin

controllo : entity work.control_unit port map(
    clock       => clock,
    reset       => reset,
    start       => start,
    counter     => sig_counter,
    q_0         => sig_q_0,
    q_meno1     => sig_q_meno1,
    enable_rA   => sig_enable_rA,
    enable_rQ   => sig_enable_rQ,
    enable_rM   => sig_enable_rM,
    shift_r     => sig_shift_r,
    sub         => sig_sub,
    count       => sig_count_in,
    rst_c       => sig_reset_c,
    rst_all     => sig_reset_all,
    stop        => stop
);

contatore : entity work.counter_mod9 port map (
    clock   => clock,
    reset   => sig_reset_c or sig_reset_all or reset,
    enable  => sig_count_in,
    counter => sig_counter 
);

M : entity work.register_9 port map (
    clock   => clock,
    reset   => sig_reset_all or reset,
    enable  => sig_enable_rM,
    shift   => sig_shift_rM,
    in_s    => '0',
    in_p    => Y,
    out_p   => sig_M
);

A : entity work.register_9 port map (
    clock   => clock,
    reset   => sig_reset_all or reset,
    enable  => sig_enable_rA,
    shift   => sig_shift_r,
    in_s    => sig_A(7),--sig_cout or '0',
    in_p    => sig_newA,
    out_p   => sig_A,
    out_s   => AtoQ
);

Q : entity work.register_9 port map (
    clock   => clock,
    reset   => sig_reset_all or reset,
    enable  => sig_enable_rQ,
    shift   => sig_shift_r,
    in_s    => AtoQ,
    in_p    => X,
    out_p   => sig_Q,
    out_s   => sig_q_0
);

q_meno1 : entity work.register_1 port map (
    clock   => clock,
    reset   => sig_reset_all or reset,
    enable  => sig_shift_r,
    input   => sig_q_0,
    output  => sig_q_meno1
);

--lots_of_xor: for i in 0 to 7 generate
--    sig_operand2(i) <= sig_sub xor sig_M(i);
--end generate;

adder : entity work.adder_sub port map (
    X       => sig_A,
    Y       => sig_M,--sig_operand2,
    cin     => sig_sub,
    Z       => sig_newA,
    cout    => sig_cout
);

prodotto(17 downto 9) <= sig_A;
prodotto(8 downto 0) <= sig_Q;

end structural;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.12.2022 11:17:39
-- Design Name: 
-- Module Name: output_neuron - structural
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

library work;
use work.type_package.all;

library work;
use work.type_package_output.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity output_neuron is 
generic (
    weights : rom_type_output;
    bias    : std_logic_vector(6 downto 0)
);
port (
    clock   : in std_logic;
    reset   : in std_logic;
    start   : in std_logic_vector(9 downto 0);
    inputs  : in hidden_output;
    end_op  : out std_logic;
    value   : out std_logic_vector(63 downto 0)
);
end output_neuron;

architecture structural of output_neuron is
signal sig_read         : std_logic;
signal sig_counter      : std_logic_vector(3 downto 0);
signal sig_cont         : std_logic;
signal sig_weights      : std_logic_vector(31 downto 0);
signal sig_input        : std_logic_vector(31 downto 0);
signal sig_mult_start   : std_logic;
signal sig_mult_stop    : std_logic;
signal sig_prodotto     : std_logic_vector(63 downto 0);
signal sig_in_reg       : std_logic_vector(63 downto 0);
signal sig_out_reg      : std_logic_vector(63 downto 0) := (others=>'0');
signal sig_adder1       : std_logic_vector(63 downto 0);
signal sig_adder2       : std_logic_vector(63 downto 0);
signal sig_sel_bias     : std_logic := '0';
signal sig_load_r       : std_logic;
signal sig_reset        : std_logic;

signal temp_bias        : std_logic_vector(63 downto 0);

begin

controllo : entity work.uc_neurone_output port map (
    clock       => clock,
    reset       => reset,
    start       => start,
    mult_stop   => sig_mult_stop,
    counter     => sig_counter,
    mult_start  => sig_mult_start,
    cont        => sig_cont,
    read        => sig_read,
    load_reg    => sig_load_r,
    sel_bias    => sig_sel_bias,
    rst_all     => sig_reset,
    end_op      => end_op
);

pesi : entity work.ROM_output 
generic map (
    rom_generic => weights
)
port map (
    clk  => clock,
    read => sig_read,
    addr => sig_counter,
    data => sig_weights
);

contatore : entity work.counter_mod10 port map (
    clock   => clock,
    reset   => reset or sig_reset,
    enable  => sig_cont,
    counter => sig_counter
);

mux_input : entity work.mux_16_1_output port map (
    input0  => inputs(0),
    input1  => inputs(1),
    input2  => inputs(2),
    input3  => inputs(3),
    input4  => inputs(4),
    input5  => inputs(5),
    input6  => inputs(6),
    input7  => inputs(7),
    input8  => inputs(8),
    input9  => inputs(9),
    s       => sig_counter,
    output  => sig_input
);

molticatore : entity work.Booth_multiplier_32 port map (
    clock       => clock,
    reset       => reset or sig_reset,
    start       => sig_mult_start,
    Y           => sig_input,
    X           => sig_weights,
    prodotto    => sig_prodotto,
    stop        => sig_mult_stop
);
                 
temp_bias <= "000000000000000000000000000000000000000000000000000000000" & bias when bias(6) = '0' else
             "111111111111111111111111111111111111111111111111111111111" & bias when bias(6) = '1' else
             (others => '0');
        
mux_adder : entity work.mux_2_1
generic map (
    bits => 64
)
port map (
    input0  => sig_prodotto,
    input1  => sig_out_reg,
    s       => sig_sel_bias,
    output  => sig_adder1
);

mux_bias : entity work.mux_2_1
generic map (
    bits => 64
)
port map (
    input0  => sig_out_reg,
    input1  => temp_bias,
    s       => sig_sel_bias,
    output  => sig_adder2
);

addizionatore : entity work.adder_sub_64 port map (
    X       => sig_adder1,
    Y       => sig_adder2,
    cin     => '0',
    Z       => sig_in_reg,
    cout    => open
);

registroo : entity work.registro 
generic map (
    bits => 64
) port map (
    clock   => clock,
    reset   => reset or sig_reset,
    enable  => sig_load_r,
    in_p    => sig_in_reg,
    out_p   => sig_out_reg
);

funz_attivazione : entity work.ReLU
generic map (
    bits => 64
)
port map (
    out_neuron  => sig_out_reg,
    rectified   => value
);

end structural;

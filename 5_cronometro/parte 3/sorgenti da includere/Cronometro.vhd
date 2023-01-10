----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.11.2022 19:20:16
-- Design Name: 
-- Module Name: Cronometro - Structural
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

entity Cronometro is port (
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
end Cronometro;

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

architecture Structural of Cronometro is

component Counter_mod60 is port (
    clk     : in  std_logic;
    en      : in std_logic;
    reset   : in  std_logic;
    set     : in std_logic;
    v_set   : in std_logic_vector(5 downto 0);
    counter : out  std_logic_vector(5 downto 0);
    count   : out std_logic
);
end component;

component Counter_mod24_struct is port (
    clk : in  std_logic;
    en : in std_logic;
    reset : in  std_logic;
    set     : in std_logic;
    v_set   : in std_logic_vector(4 downto 0);
    counter : out  std_logic_vector(4 downto 0);
    count : out std_logic
);
end component;

component Divisore_freq is
    generic (
        f_in  : integer := 100000000;
        f_out : integer := 1
    );
    port (
        reset : in std_logic;
        clock : in std_logic;
        div   : out std_logic
    );
end component;

component CU_set is port (
    reset       : in std_logic;
    en          : in std_logic;
    btn         : in std_logic;
    clk         : in std_logic;
    set_switch_1     : in std_logic_vector(5 downto 0);
    set_switch_2     : in std_logic_vector(5 downto 0);
    set_out     : out std_logic;
    v_set_s     : out std_logic_vector(5 downto 0);
    v_set_m     : out std_logic_vector(5 downto 0);
    v_set_h     : out std_logic_vector(4 downto 0)
);
end component;

component shift_register_3 is port(
    clk     : in std_logic;
    en      : in std_logic;
    reset   : in std_logic;
    input   : in std_logic;
    output  : out std_logic_vector(0 to 2)
);
end component;

component mux_4_1 is port (
        input: in std_logic_vector(0 to 3);
        s: in std_logic_vector(1 downto 0);
        output: out std_logic
    );
end component;

component cont_mod4_cronometro is port(
    clk     : in  std_logic;
    en      : in std_logic;
    reset   : in std_logic;
    counter : out std_logic_vector(1 downto 0)
);
end component;

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

signal cont             : std_logic_vector(1 downto 0);
signal en, temp_set     : std_logic;
signal conn_m, conn_s   :  std_logic_vector(5 downto 0);
signal conn_h           :  std_logic_vector(4 downto 0);

signal secondi, minuti  :  std_logic_vector(5 downto 0);
signal ore              :  std_logic_vector(4 downto 0);

signal selezione_mux    : std_logic_vector(1 downto 0);

type reg_out_sm is array (0 to 5) of std_logic_vector(0 to 2);
type reg_out_h is array (0 to 4) of std_logic_vector(0 to 2);

signal reg_out_s : reg_out_sm;
signal reg_out_m : reg_out_sm;
signal reg_out_o : reg_out_h;

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

begin

div : Divisore_freq 
    port map (
        reset => '0',
        clock => clk,  
        div => en
);

cont_secondi : Counter_mod60
    port map (
        clk => clk,
        en => en or reset or temp_set,
        reset => reset,
        set => temp_set,
        v_set => conn_s,
        counter => secondi,
        count => cont(0)
);
cont_minuti : Counter_mod60
    port map (
        clk => clk,
        en => (en and cont(0)) or (reset) or (temp_set),
        reset => reset,
        set => temp_set,
        v_set => conn_m,
        counter => minuti,
        count => cont(1)
);

cont_ore : Counter_mod24_struct
    port map (
        clk => clk,
        en => (en and cont(1) and cont(0)) or (reset) or (temp_set),
        reset => reset,
        set => temp_set,
        v_set => conn_h,
        counter => ore
);

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

reg_seconds : for i in 0 to 5 generate
    reg_s : shift_register_3
        port map (
            clk     => clk,
            en      => btn_save,
            reset   => reset,
            input   => secondi(5-i),
            output  => reg_out_s(i)
);
end generate reg_seconds;

reg_minutes : for i in 0 to 5 generate
    reg_m : shift_register_3
        port map (
            clk     => clk,
            en      => btn_save,
            reset   => reset,
            input   => minuti(5-i),
            output  => reg_out_m(i)
);
end generate reg_minutes;

reg_hours : for i in 0 to 4 generate
    reg_o : shift_register_3
        port map (
            clk     => clk,
            en      => btn_save,
            reset   => reset,
            input   => ore(4-i),
            output  => reg_out_o(i)
);
end generate reg_hours;

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

cont_mod4 : cont_mod4_cronometro port map (
    clk     => clk,
    en      => btn_show,
    reset   => reset,
    counter => selezione_mux
);

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

mux_seconds : for i in 0 to 5 generate
    mux_s : mux_4_1
        port map (
            input (0)       => secondi(5-i),
            input (1 to 3)  => reg_out_s(i),
            s               => selezione_mux,
            output          => seconds(5-i)
);
end generate mux_seconds;

mux_minutes : for i in 0 to 5 generate
    mux_m : mux_4_1
        port map (
            input (0)       => minuti(5-i),
            input (1 to 3)  => reg_out_m(i),
            s               => selezione_mux,
            output          => minutes(5-i)
);
end generate mux_minutes;

mux_ore : for i in 0 to 4 generate
    mux_o : mux_4_1
        port map (
            input (0)       => ore(4-i),
            input (1 to 3)  => reg_out_o(i),
            s               => selezione_mux,
            output          => hours(4-i)
);
end generate mux_ore;

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

funzione_set : CU_set  port map (
    reset           => reset,
    en              => en,
    btn             => set,
    clk             => clk,
    set_switch_1    => set_switch_1,
    set_switch_2    => set_switch_2,
    set_out         => temp_set,
    v_set_s         => conn_s,
    v_set_m         => conn_m,
    v_set_h         => conn_h
);

end Structural;

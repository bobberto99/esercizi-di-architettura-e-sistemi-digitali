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



----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------


signal en, temp_set     : std_logic;				--segnale di enable proveniente dal divisore e segnale di set che viene dato dalla control unit.
signal conn_m, conn_s   :  std_logic_vector(5 downto 0);	--segnali utilizzati per collegare gli input degli switch ai v_set dei minuti e dei secondi.
signal conn_h           :  std_logic_vector(4 downto 0);	--segnale utilizzato per collegare gli input degli switch al v_set delle ore.
signal cont             :  std_logic_vector(1 downto 0);




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
        counter => seconds,
        count => cont(0)
);
cont_minuti : Counter_mod60
    port map (
        clk => clk,
        en => (en and cont(0)) or (reset) or (temp_set),
        reset => reset,
        set => temp_set,
        v_set => conn_m,
        counter => minutes,
        count => cont(1)
);

cont_ore : Counter_mod24_struct
    port map (
        clk => clk,
        en => (en and cont(1) and cont(0)) or (reset) or (temp_set),
        reset => reset,
        set => temp_set,
        v_set => conn_h,
        counter => hours
);



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

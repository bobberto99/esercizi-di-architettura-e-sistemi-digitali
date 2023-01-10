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
    sel_minuti  : in std_logic_vector(5 downto 0);
    sel_secondi : in std_logic_vector(5 downto 0);
    sel_ore     : in std_logic_vector(4 downto 0);
    secondi     : out std_logic_vector(5 downto 0);
    minuti      : out std_logic_vector(5 downto 0);
    ore         : out std_logic_vector(4 downto 0)
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
        f_out : integer := 50000000
    );
    port (
        reset : in std_logic;
        clock : in std_logic;
        div   : out std_logic
    );
end component;

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

signal cont             : std_logic_vector(1 downto 0);
signal en               : std_logic;




----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

begin

div : Divisore_freq 
    port map (
        reset => reset or set,
        clock => clk,  
        div => en
);

cont_secondi : Counter_mod60
    port map (
        clk => clk,
        en => en or reset or set,
        reset => reset,
        set => set,
        v_set => sel_secondi,
        counter => secondi,
        count => cont(0)
);
cont_minuti : Counter_mod60
    port map (
        clk => clk,
        en => (en and cont(0)) or (reset) or (set),
        reset => reset,
        set => set,
        v_set => sel_minuti,
        counter => minuti,
        count => cont(1)
);

cont_ore : Counter_mod24_struct
    port map (
        clk => clk,
        en => (en and cont(1) and cont(0)) or (reset) or (set),
        reset => reset,
        set => set,
        v_set => sel_ore,
        counter => ore
);

end Structural;
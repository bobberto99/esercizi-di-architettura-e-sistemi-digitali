----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.11.2022 12:03:36
-- Design Name: 
-- Module Name: display - Behavioral
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

entity display is port(
    seconds     : in  std_logic_vector(5 downto 0);
    minutes     : in  std_logic_vector(5 downto 0);
    hours       : in  std_logic_vector(4 downto 0);
    clk         : in  std_logic;
    reset       : in  std_logic;
    anodi       : out std_logic_vector(7 downto 0);
    catodi      : out std_logic_vector(7 downto 0)
);
end display;



architecture structural of display is

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




component gestore_anodi is port (
    sel     : in    std_logic_vector (2 downto 0);
    anodi   : out   std_logic_vector (7 downto 0)
    );
end component;

component gestore_catodi is Port ( 
           value : in  STD_LOGIC_VECTOR (3 downto 0); --dato da mostrare sulla cifra del display
           dot : in  STD_LOGIC; --configurazione del punto: acceso o spento
           cathodes_dot : out  STD_LOGIC_VECTOR (7 downto 0)); --indica i 7 catodi più il punto
end component;

component selettore_display is port(
    unita_secondi   :   in  std_logic_vector (3 downto 0);
    decine_secondi  :   in  std_logic_vector (2 downto 0);
    unita_minuti    :   in  std_logic_vector (3 downto 0);
    decine_minuti   :   in  std_logic_vector (2 downto 0);
    unita_ore       :   in  std_logic_vector (3 downto 0);
    decine_ore      :   in  std_logic_vector (1 downto 0);
    sel             :   in  std_logic_vector (2 downto 0);
    clk             :   in  std_logic;
    cifra          :   out std_logic_vector (3 downto 0)
    );
end component;

component contatore_modulo_8_display is port(
    clk     : in  std_logic;
    en      : in std_logic;
    reset   : in std_logic;
    set     : in std_logic;
    v_set   : in std_logic_vector(2 downto 0);
    counter : out std_logic_vector(2 downto 0);
    count   : out std_logic);
end component;

component splitter is port(
    numero_ingresso :   in  std_logic_vector (5 downto 0);
    clk             :   in  std_logic;
    unita           :   out std_logic_vector (3 downto 0);
    decine          :   out std_logic_vector (2 downto 0)
);
end component;


signal  uscita_divisore, reset_contatore            :   std_logic;
signal  uscita_contatore                            :   std_logic_vector (2 downto 0);  --uscita del contatore modulo 8
signal  uscita_selettore_display                    :   std_logic_vector (3 downto 0);
signal  unita_secondi, unita_minuti, unita_ore      :   std_logic_vector (3 downto 0);  --uscite degli splitter
signal  decine_secondi, decine_minuti, decine_ore   :   std_logic_vector (2 downto 0);  --uscite degli splitter
constant frequenza_divisore                         :   integer :=65000;

begin
------------------------------------------------------------------------------------------------------------
-- in questa sezione del componente inizializzo la frequenza in base alla quale cambio cifra ed il contatore che indica quale cifra mostrare sul display
freq_div : Divisore_freq 
generic map(
    f_out =>frequenza_divisore
    )
port map(
        reset => '0',
        clock => clk,
        div   => uscita_divisore
    );

reset_contatore <= uscita_contatore(2) and uscita_contatore(1) and not uscita_contatore(0);

contatore : contatore_modulo_8_display port map(
    clk     => clk,
    en      => uscita_divisore,
    reset   => reset or reset_contatore,
    set     => '0',
    v_set   => "000",
    counter => uscita_contatore);
------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------
-- in questa sezione del componente mi preoccupo di dividere le decine dai secondi dai numeri dei flip-flops
splitter_secondi    :splitter port map(
    numero_ingresso => seconds,
    clk             => clk,
    unita           => unita_secondi,
    decine          => decine_secondi
);

splitter_minuti     : splitter port map(
    numero_ingresso => minutes,
    clk             => clk,
    unita           => unita_minuti,
    decine          => decine_minuti
);

splitter_ore        : splitter port map(
    numero_ingresso (5) => '0',
    numero_ingresso (4 downto 0) => hours,
    clk                         => clk,
    unita                       => unita_ore,
    decine                      => decine_ore
);
------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------
--in questa sezione del componente scelgo quale numero deve essere mostrato (in base alla selezione data dal contatore
selettore_numero : selettore_display port map(
    unita_secondi   => unita_secondi,
    decine_secondi  => decine_secondi,
    unita_minuti    => unita_minuti,
    decine_minuti   => decine_minuti,
    unita_ore       => unita_ore,
    decine_ore      => decine_ore(1 downto 0),
    sel             => uscita_contatore,
    clk             => clk,
    cifra           => uscita_selettore_display
    );

gestore_catodi_display : gestore_catodi Port map ( 
           value => uscita_selettore_display,
           dot   => '0',
           cathodes_dot => catodi
           );
------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------
--In questa sezione del componente scelgo quale cifra deve essere illuminata (in base al valore del contatore)
gestore_anodi_display : gestore_anodi port map (
    sel     => uscita_contatore,
    anodi   => anodi
    );
------------------------------------------------------------------------------------------------------------
end structural;

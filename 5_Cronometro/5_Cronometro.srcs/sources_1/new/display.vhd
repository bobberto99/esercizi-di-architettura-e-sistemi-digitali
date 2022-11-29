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
    anodi       : out std_logic_vector(7 downto 0);
    catodi       : out std_logic_vector(7 downto 0)
);
end display;



architecture Behavioral of display is

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

begin


end Behavioral;

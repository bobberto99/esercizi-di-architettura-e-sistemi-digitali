----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.12.2022 10:40:25
-- Design Name: 
-- Module Name: simulazione_cronometro - Behavioral
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

entity simulazione_cronometro is
--  Port ( );
end simulazione_cronometro;

architecture Behavioral of simulazione_cronometro is
component Cronometro is port (
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
end component;


signal reset        : std_logic := '0';
signal clock_tb     : std_logic := '0';
signal set          : std_logic := '0';
signal sel_minuti   : std_logic_vector(5 downto 0):= (OTHERS => '0');
signal sel_secondi  : std_logic_vector(5 downto 0):= (OTHERS => '0');
signal sel_ore      : std_logic_vector(4 downto 0):= (OTHERS => '0');
signal minuti       : std_logic_vector(5 downto 0):= (OTHERS => '0');
signal secondi      : std_logic_vector(5 downto 0):= (OTHERS => '0');
signal ore          : std_logic_vector(4 downto 0):= (OTHERS => '0');


begin

cron : Cronometro
    port map(
        clk         => clock_tb,
        reset       => reset,
        set         => set,
        sel_minuti  => sel_minuti,
        sel_secondi => sel_secondi,
        sel_ore     => sel_ore,
        secondi     => secondi,
        minuti      => minuti,
        ore         => ore
    );
    
clock_proc : process
   begin

    clock_tb <= '0';
    wait for 5 ns;
    clock_tb <= '1';
    wait for 5 ns;
    
end process;


stim_proc : process
    begin
    
    --resetto
    reset <= '1';
    wait for 100 ns;
    reset <= '0';
    
    wait for 100ns;
    
    -- setto un nuovo orario
    sel_minuti <= "110000";  --48 minuti
    sel_ore    <= "00001";   -- 1 ora
    sel_secondi<= "111010";  --58 secondi
    wait for 10ns;
    set<= '1';
    wait for 10ns;
    set<= '0';
    
    wait;

end process;




end Behavioral;

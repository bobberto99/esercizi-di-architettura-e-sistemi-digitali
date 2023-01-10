----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.12.2022 14:15:10
-- Design Name: 
-- Module Name: macchina - Behavioral
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

entity comunicazione_seriale is port(
    CLK         :   in  std_logic;
    RST         :   in  std_logic;
    wr_button   :   in  std_logic;
    input       :   in  std_logic_vector (7 downto 0);
    LEDS        :   out std_logic_vector (7 downto 0);
    errors      :   out std_logic_vector (2 downto 0)
);
end comunicazione_seriale;

architecture Behavioral of comunicazione_seriale is

component trasmettitore is port (
    reset           :   in  std_logic;                          -- reset
    clk             :   in  std_logic;                          -- clock    
    wr_button       :   in  std_logic;                          -- bottone di avvio trasmissione
    input           :   in  std_logic_vector (7 downto 0);      -- input dall'esterno che si vuole comunicare
    output          :   out std_logic     := '1'                      -- segnale di uscita dell'uart    
);
end component;


component ricevitore is port (
    CLK         :   in  std_logic;
    RST         :   in  std_logic;
    UART_RXD    :   in  std_logic;
    LEDS        :   out std_logic_vector (7 downto 0);
    errors      :   out std_logic_vector (2 downto 0)
);
end component;


component ButtonDebouncer is 
    generic (                       
        CLK_period: integer := 10;  -- periodo del clock in nanosec
        btn_noise_time: integer := 10000000 --durata dell'oscillazione in nanosec
        );
    Port ( RST : in STD_LOGIC;
           CLK : in STD_LOGIC;
           BTN : in STD_LOGIC; 
           CLEARED_BTN : out STD_LOGIC);
end component;


signal connessione_seriale  :   std_logic := '1';
signal wr_cleared           :   std_logic := '0';

begin

trasm   :   trasmettitore port map(
        reset       => RST,
        clk         => CLK,
        wr_button   => wr_cleared,
        input       => input,
        output      => connessione_seriale
);

ricev    :  ricevitore port map(
        CLK         => CLK,
        RST         => RST,
        UART_RXD    => connessione_seriale,
        LEDS        => LEDS,
        errors      => errors
);


wr_clearer  :   ButtonDebouncer port map(
        RST         => RST,
        CLK         => CLK,
        BTN         => wr_button,
        CLEARED_BTN => wr_cleared
);
end Behavioral;
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.12.2022 10:30:21
-- Design Name: 
-- Module Name: cu_ricevitore - Behavioral
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

entity cu_ricevitore is port(
    CLK         :   in  std_logic;
    RESET       :   in  std_logic;
    RDA         :   in  std_logic;
    UART_OUTPUT :   in  std_logic_vector (7 downto 0);
    uart_reset          :   out std_logic;
    leds        :   out std_logic_vector (7 downto 0)
);
end cu_ricevitore;

architecture Behavioral of cu_ricevitore is

type stato is (reset_state, attesa_dati,lettura_dati,conferma_lettura);
signal  leds_temp   :   std_logic_vector (7 downto 0) := (OTHERS=>'0');
signal  reset_temp     :   std_logic   :='0';
signal  curr_state   :   stato       := attesa_dati;
signal  next_state   :   stato       := attesa_dati;

begin

registri      : process (clk)
begin
if rising_edge(clk) then

    if reset='1' then
        curr_state <= reset_state;
    else
        curr_state  <= next_state;
        leds        <= leds_temp;
        uart_reset  <= reset_temp;
    end if;
    
end if;
end process;


calcolo_stato : process(curr_state, next_state, RDA)
begin
case curr_state is 
            when reset_state => 
                                leds_temp <= (others=>'0');
                                reset_temp   <= '0';
                                next_state <= attesa_dati;        
            when attesa_dati => 
                                reset_temp <= '0';
                                if RDA = '1' then
                                    next_state<=lettura_dati;
                                elsif RDA = '0' then
                                    next_state<= attesa_dati;
                                end if;
                                
            when lettura_dati => 
                                reset_temp <= '0';
                                leds_temp <=UART_OUTPUT;
                                next_state<=conferma_lettura;
                                
            when conferma_lettura => 
                                
                                reset_temp <= '1';
                                if RDA = '1' then
                                    next_state<=conferma_lettura;
                                elsif RDA = '0' then
                                    next_state<= attesa_dati;
                                end if;
end case;
end process;



end Behavioral;
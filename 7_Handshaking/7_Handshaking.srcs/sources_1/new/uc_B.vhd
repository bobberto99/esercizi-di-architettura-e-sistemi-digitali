----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.12.2022 16:37:13
-- Design Name: 
-- Module Name: uc_B - Behavioral
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
use IEEE.std_logic_1164.all;

entity uc_B is port (
    clk         :    in     std_logic;
    reset       :    in     std_logic;
    go          :    in     std_logic;
    counter     :    in     std_logic_vector(2 downto 0);
    en_count    :    out    std_logic;
    en_write    :    out    std_logic;
    ack         :    out    std_logic
);
end uc_B;

architecture Behavioral of uc_B is

type stato is (idle, waiting, send_ack);
signal curr_state : stato := waiting;
signal next_state : stato := waiting;

begin

registri      : process (clk)
begin
if rising_edge(clk) then

    if reset='1' then
        curr_state <= waiting;
    else
        curr_state  <= next_state;
    end if;
end if;
end process;


calcolo_stato : process(curr_state, go)
begin

en_count    <= '0';
en_write    <= '0';
ack         <= '0';

case curr_state is

    when idle               => 
                            next_state <= idle;
                            
    when waiting            =>
                            if go ='1' then
                                next_state <= send_ack;
                            else
                                next_state <= waiting;
                            end if;

    when send_ack           =>
                            en_write    <= '1';
                            en_count    <= '1';
                            ack <= '1';
                            if (counter = "111") then 
                                next_state  <= idle;
                            else  
                                next_state  <= waiting;
                            end if;


end case;
end process;

end Behavioral;
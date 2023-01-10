----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.12.2022 17:41:52
-- Design Name: 
-- Module Name: uc_receiver - Behavioral
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

entity uc_receiver is
generic ( address : std_logic_vector(2 downto 0) );
port (
    clk     : in std_logic;
    reset   : in std_logic;
    input   : in std_logic_vector(9 downto 0);
    ack     : out std_logic_vector(9 downto 0)
);  
end uc_receiver;

architecture Behavioral of uc_receiver is

type stato is (waiting, send_ack);
signal curr_state : stato := waiting;
signal next_state : stato := waiting;

begin

registri  : process (clk)
begin
if rising_edge(clk) then

    if reset='1' then
        curr_state <= waiting;
    else
        curr_state  <= next_state;
    end if;
end if;
end process;


calcolo_stato : process(curr_state, input)
begin

ack <= (others => '0');

case curr_state is
                            
    when waiting            =>
                            if input(8)='1' then
                                next_state <= send_ack;
                            else
                                next_state <= waiting;
                            end if;

    when send_ack           =>
                            ack <= '1' & '1' & address & input(7 downto 5) & "00";
                            next_state  <= waiting;


end case;
end process;

end Behavioral;

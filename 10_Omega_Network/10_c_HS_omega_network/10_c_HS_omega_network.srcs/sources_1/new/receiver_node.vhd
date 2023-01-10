----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.12.2022 17:27:06
-- Design Name: 
-- Module Name: receiver_node - Behavioral
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

entity receiver_node is
generic ( address : std_logic_vector(2 downto 0) );
port (
    clk     : in std_logic;
    reset   : in std_logic;
    input   : in std_logic_vector(9 downto 0);
    ack     : out std_logic_vector(9 downto 0)
);  
end receiver_node;

architecture Behavioral of receiver_node is

type stato is (waiting, send_ack);
signal curr_state : stato := waiting;
signal next_state : stato := waiting;
signal input_temp : std_logic_vector(9 downto 0);

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
                                input_temp <= input;
                                next_state <= send_ack;
                            else
                                next_state <= waiting;
                            end if;

    when send_ack           =>
                            ack <= '1' & '1' & address & input_temp(7 downto 5) & "00";
                            next_state  <= waiting;


end case;
end process;

end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.12.2022 15:59:45
-- Design Name: 
-- Module Name: uc_A - Behavioral
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

entity uc_A is port (
    clock   : in std_logic;
    reset   : in std_logic;
    start   : in std_logic;
    ack     : in std_logic;
    counter : in std_logic_vector(2 downto 0);
    rst_c   : out std_logic;
    count   : out std_logic;
    go      : out std_logic;
    read    : out std_logic
);  
end uc_A;

architecture Behavioral of uc_A is

type stato is (idle, inserisci_dato, invio, ricevuto);
signal curr_state : stato := idle;
signal next_state : stato := idle;

begin

registri : process (clock)
begin
if rising_edge(clock) then

    if reset='1' then
        curr_state <= idle;
    else
        curr_state  <= next_state;
    end if;
end if;
end process;

calcolo_stato : process(curr_state, start, ack)
begin

rst_c <= '0';
read <= '0';
go <= '0';
count <= '0';

case curr_state is
    when idle       =>
                    if (start = '1') then
                        rst_c <= '1';
                        next_state <= inserisci_dato;
                    else 
                        next_state <= idle;
                    end if;
    when inserisci_dato =>
                    read <= '1';
                    next_state<= invio;
    when invio      =>
                    go <= '1';
                    if (ack = '1') then
                        next_state <= ricevuto;
                    else 
                        next_state <= invio;
                    end if;
    when ricevuto   =>
                    if (ack = '0') then
                        count <= '1';
                        if (counter = "111") then 
                            next_state <= idle;
                        else 
                            next_state <= inserisci_dato;
                        end if;
                    else 
                        next_state <= ricevuto;
                    end if;    
                    
                    
end case;
end process;

end Behavioral;

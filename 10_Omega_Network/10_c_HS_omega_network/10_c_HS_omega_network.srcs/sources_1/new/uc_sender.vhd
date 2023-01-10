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
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity uc_A is 
generic ( address : std_logic_vector(2 downto 0) );
port (
    clock   : in std_logic;
    reset   : in std_logic;
    start   : in std_logic;
    ack     : in std_logic;
    dest    : in std_logic_vector(2 downto 0);
    mess    : in std_logic_vector(1 downto 0);
    output  : out std_logic_vector(9 downto 0)
);  
end uc_A;

architecture Behavioral of uc_A is

type stato is (idle, invio, ricevuto);
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

output <= (others => '0');

case curr_state is
    when idle       =>
                    if (start = '1') then
                        next_state <= invio;
                    else 
                        next_state <= idle;
                    end if;
    when invio      =>
                    output <= '1' & '1' & address & dest & mess;
                    if (ack = '1') then
                        next_state <= ricevuto;
                    else 
                        next_state <= invio;
                    end if;
    when ricevuto   =>
                    if (ack = '0') then
                        next_state <= idle;
                    else 
                        next_state <= ricevuto;
                    end if;    
                    
                    
end case;
end process;

end Behavioral;
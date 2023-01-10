----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.12.2022 21:27:39
-- Design Name: 
-- Module Name: control_unit - Behavioral
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

entity control_unit is port (
    clock       : in std_logic;
    reset       : in std_logic;
    start       : in std_logic;
    counter     : in std_logic_vector(3 downto 0);
    q_0         : in std_logic;
    q_meno1     : in std_logic;
    enable_rA   : out std_logic;
    enable_rQ   : out std_logic;
    enable_rM   : out std_logic;
    shift_r     : out std_logic;
    sub         : out std_logic :='0';
    count       : out std_logic;
    rst_c       : out std_logic;
    rst_all     : out std_logic;
    stop        : out std_logic := '0'
);
end control_unit;

architecture Behavioral of control_unit is

type stato is (idle, prelievo, inizio, operazione, shift);
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

calcolo_stato : process(curr_state, start)
begin

rst_all <= '0';
rst_c <= '0';
enable_rA <= '0';
enable_rQ <= '0';
enable_rM <= '0';
shift_r <= '0';
sub <= '0';
count <= '0';

case curr_state is
    when idle               =>
                                stop <='0';
                                if (start ='1') then
                                    rst_all <= '1';
                                    next_state <= prelievo;
                                else
                                    next_state <= idle;
                                end if;
    when prelievo           =>
                                stop <='0';
                                enable_rM <= '1';
                                enable_rQ <= '1';
                                next_state <= inizio;
    when inizio             =>
                                if (counter >= "1000") then 
                                    stop <='1';
                                    next_state <= idle;
                                else
                                    next_state <= operazione;
                                end if;
    when operazione         =>
                                if (q_0 = q_meno1) then
                                    next_state <= shift;
                                else 
                                    if (q_0='0' and q_meno1='1') then
                                        sub <= '0';
                                    elsif (q_0='1' and q_meno1='0') then 
                                        sub <= '1';
                                    end if;
                                    enable_rA <= '1';
                                    next_state <= shift;
                                end if;
    when shift              =>
                                shift_r <= '1';
                                count <= '1';
                                next_state <= inizio;

end case;
end process;

end Behavioral;

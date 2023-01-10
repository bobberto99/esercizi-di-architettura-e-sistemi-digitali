----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.12.2022 17:09:12
-- Design Name: 
-- Module Name: uc_neurone_hidden - Behavioral
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

entity uc_neurone_hidden is port (
    clock       : in std_logic;
    reset       : in std_logic;
    start       : in std_logic;
    mult_stop   : in std_logic;
    counter     : in std_logic_vector(3 downto 0);
    mult_start  : out std_logic;
    cont        : out std_logic;
    read        : out std_logic;
    load_reg    : out std_logic;
    sel_bias    : out std_logic;
    rst_all     : out std_logic;
    end_op      : out std_logic
);   
end uc_neurone_hidden;

architecture Behavioral of uc_neurone_hidden is

type stato is (idle, read_rom, mult, add, add_bias, fine);
signal curr_state : stato := idle;
signal next_state : stato := idle;

begin

registri : process (clock)
begin
if rising_edge(clock) then

    if reset='1' then
        curr_state <= idle;
    else
        curr_state <= next_state;
    end if;
end if;
end process;

calcolo_stato : process( curr_state, start, mult_stop)
begin

rst_all <= '0';
cont <= '0';
read <= '0';
mult_start <='0';
load_reg <= '0';
sel_bias <= '0';

case curr_state is
    when idle               =>
                                if (start = '1') then
                                    end_op <= '0';
                                    rst_all <= '1';
                                    next_state <= read_rom;
                                else
                                    next_state <= idle;
                                end if;
    when read_rom           =>
                                read <= '1';
                                next_state <= mult;
    when mult               =>
                                if (mult_stop = '1') then
                                    next_state <= add;
                                else
                                    mult_start <='1';
                                    next_state <= mult;
                                end if;
    when add                =>
                                load_reg <= '1';
                                if (counter = "1000") then
                                    sel_bias <= '1';
                                    next_state <= add_bias;
                                else
                                    cont <= '1';
                                    next_state <= read_rom;
                                end if;
    when add_bias           =>
                                load_reg <= '1';
                                next_state <= fine;
    when fine               =>
                                end_op <= '1';
                                next_state <= idle;

end case;
end process;

end Behavioral;

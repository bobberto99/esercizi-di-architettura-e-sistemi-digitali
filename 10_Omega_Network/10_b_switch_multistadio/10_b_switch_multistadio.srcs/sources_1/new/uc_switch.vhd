----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.12.2022 13:27:09
-- Design Name: 
-- Module Name: uc_switch - Behavioral
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

entity uc_switch is 
generic (
    level : integer := 0
);
port (
    clock   : in std_logic;
    reset   : in std_logic;
    input0  : in std_logic_vector(8 downto 0);
    input1  : in std_logic_vector(8 downto 0);
    out_reg : in std_logic_vector(8 downto 0); 
    src     : out std_logic;
    dst     : out std_logic;
    load    : out std_logic;
    rs_reg  : out std_logic;
    in_reg  : out std_logic_vector(8 downto 0);
    sel     : out std_logic
);
end uc_switch;

architecture Behavioral of uc_switch is

type stato is (empty_buffer, full_buffer);
signal curr_state : stato := empty_buffer;
signal next_state : stato := empty_buffer;

begin

registri : process (clock)
begin
if rising_edge(clock) then

    if reset='1' then
        curr_state <= empty_buffer;
    else
        curr_state  <= next_state;
    end if;
end if;
end process;

calcolo_stato : process(curr_state, input0, input1)
begin

load <= '0';
sel <= '0';
in_reg <= (others => '0');
src <= '0';
dst <= '0';

case curr_state is
    when empty_buffer       =>
                                rs_reg <= '1';
                                if (input0(8)='1' and input1(8)='1') then
                                    src <= input0(7-level);
                                    dst <= input0(4-level);
                                    in_reg <= input1;
                                    load <= '1';
                                    rs_reg <= '0';
                                    next_state <= full_buffer;
                                    
                                elsif (input0(8)='1') then
                                    src <= input0(7-level);
                                    dst <= input0(4-level);
                                    next_state <= empty_buffer;
                                    
                                elsif (input1(8)='1') then
                                    src <= input1(7-level);
                                    dst <= input1(4-level);
                                    next_state <= empty_buffer;
                                    
                                end if;
        
    when full_buffer        =>
                                if (input0(8)='1') then
                                    dst <= out_reg(4-level);
                                    sel <= '1';
                                    in_reg <= input0;
                                    load <= '1';
                                    next_state <= full_buffer;
                                    
                                elsif (input1(8)='1') then
                                    dst <= out_reg(4-level);
                                    sel <= '1';
                                    in_reg <= input1;
                                    load <= '1';
                                    next_state <= full_buffer;
                                
                                else
                                    dst <= out_reg(4-level);
                                    sel <= '1';
                                    next_state <= empty_buffer;
            
                                end if;

end case;
end process;

end Behavioral;

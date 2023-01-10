----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.12.2022 14:07:27
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

entity uc_A is port (
    reset          :   in  std_logic; 
    wr_cleared     :   in  std_logic; 
    clk            :   in  std_logic;
    TBE		       :   in  std_logic;
    WR             :   out std_logic;
    uart_reset     :   out std_logic;
    cont_en        :   out std_logic
);
end uc_A;

architecture Behavioral of uc_A is

type stato is (idle, Inizio_comunicazione, Fine_comunicazione, incremento);
signal curr_state : stato := idle;
signal next_state : stato := idle;

begin

registri      : process (clk)
begin
if rising_edge(clk) then

    if reset='1' then
        curr_state <= idle;
    else
        curr_state  <= next_state;
    end if;
end if;
end process;


calcolo_stato : process(curr_state, next_state, wr_cleared, TBE)
begin
case curr_state is
    when idle                       =>
                            uart_reset <= '0';
                            WR <= '0';
                            cont_en <= '0';
                            if wr_cleared = '1'    THEN
                                next_state <= Inizio_comunicazione;
                            end if;
    when Inizio_comunicazione       =>
                            WR <= '1';
                            uart_reset <= '0';
                            cont_en <= '0';
                            if TBE = '0'    THEN
                                next_state <= Fine_comunicazione;
                            end if;
    when Fine_comunicazione         =>
                            uart_reset <= '0';
                            WR <= '0';
                            cont_en <= '0';
                            if TBE = '1'    THEN
                                next_state <= incremento;
                            end if;
   when incremento                  =>
                            uart_reset <= '0';
                            WR <= '0';
                            cont_en <= '1';
                            next_state <= idle;
end case;
end process;

end Behavioral;
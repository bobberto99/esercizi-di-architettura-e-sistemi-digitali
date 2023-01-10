----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.12.2022 16:55:47
-- Design Name: 
-- Module Name: ButtonDebouncer - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ButtonDebouncer is 
    generic (                       
        CLK_period: integer := 10;  -- periodo del clock in nanosec
        btn_noise_time: integer := 20 --6500000 --durata dell'oscillazione in nanosec 10000000
        );
    Port ( RST : in STD_LOGIC;
           CLK : in STD_LOGIC;
           BTN : in STD_LOGIC;
           --DIV : in STD_LOGIC;
           CLEARED_BTN : out STD_LOGIC);
end ButtonDebouncer;

architecture Behavioral of ButtonDebouncer is

type stato is (non_premuto, controllo_pressione, premuto, controllo_rilascio);
constant max_count: integer := btn_noise_time/CLK_period;
signal btn_state : stato := non_premuto;

begin

debouncer : process (CLK)
variable cont: integer :=0;

begin
if (falling_edge(CLK)) then
    if (RST= '1') then
        btn_state <= non_premuto;
        CLEARED_BTN<='0';
    else
        case btn_state is 

            when non_premuto => 
                        CLEARED_BTN <='0';
                        cont := 0;
                        if (BTN = '1') then
                            btn_state <= controllo_pressione;
                        else
                            btn_state <= non_premuto;
                        end if;
            
            when controllo_pressione =>
                        if (cont /= max_count-1) then
                            cont := cont+1;
                        elsif (BTN = '1') then 
                            CLEARED_BTN <='1';
                            btn_state<=premuto;
                        else 
                            btn_state <= non_premuto;
                        end if;
          
            when premuto =>
                        --if (DIV='1') then
                            CLEARED_BTN <='0';
                        --end if;
                        if (BTN = '0') then
                            cont:=0;
                            btn_state <= controllo_rilascio;
                        else
                            btn_state <= premuto;
                        end if;                                            
            
            when controllo_rilascio =>
                        if (cont /= max_count-1) then
                            cont := cont+1;
                        elsif (BTN = '0') then
                            CLEARED_BTN <= '0';
                            btn_state <= non_premuto;
                        else
                            btn_state <= premuto;
                        end if;            
            
             when others =>
                        btn_state <= non_premuto;
            
            end case;
     end if;
end if;

end process;

end Behavioral;  

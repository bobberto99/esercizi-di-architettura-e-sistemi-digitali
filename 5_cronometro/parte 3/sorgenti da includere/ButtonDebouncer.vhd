----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.11.2022 10:38:41
-- Design Name: 
-- Module Name: automa_debouncer - Behavioral
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
        btn_noise_time: integer := 10000000 --durata dell'oscillazione in nanosec
        );
    Port ( RST : in STD_LOGIC;
           CLK : in STD_LOGIC;
           BTN : in STD_LOGIC; 
           CLEARED_BTN : out STD_LOGIC);
end ButtonDebouncer;

architecture Behavioral of ButtonDebouncer is

type stato is (non_premuto,controllo_pressione, premuto, controllo_rilascio );
constant max_count: integer :=btn_noise_time/CLK_period;
signal btn_state : stato := non_premuto;
begin
debouncer : process (CLK)
variable cont: integer :=0;
begin
if (rising_edge(CLK)) then
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
                        end if;
            
            when controllo_pressione =>
                        if (cont /= max_count-1) then
                            cont := cont+1;
                        else
                            if (BTN = '1') then
                                btn_state<=premuto;
                                cont:=0;
                                CLEARED_BTN <='1';
                            else
                                btn_state <= non_premuto;
                            end if;
                        end if;
            
            when premuto =>
                        CLEARED_BTN <='0';
                        if (BTN = '0') then
                            btn_state <= controllo_rilascio;
                        end if;                                            
            
            when controllo_rilascio =>
                        if (cont /= max_count-1) then
                            cont := cont+1;
                        else
                            if (BTN = '0') then
                                btn_state <= non_premuto;
                                CLEARED_BTN <= '0';
                            else
                                btn_state <= premuto;
                            end if;
                        end if;            
            
             when others =>
                        btn_state <= non_premuto;
            
            end case;
     end if;
end if;

end process;

end Behavioral;
                
           
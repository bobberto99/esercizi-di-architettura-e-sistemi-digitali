----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.12.2022 17:30:18
-- Design Name: 
-- Module Name: CU_set - Behavioral
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


entity CU_set is port (
    reset       : in std_logic;
    en          : in std_logic;
    btn         : in std_logic;
    clk         : in std_logic;
    set_switch_1     : in std_logic_vector(5 downto 0);
    set_switch_2     : in std_logic_vector(5 downto 0);
    set_out     : out std_logic;
    v_set_s     : out std_logic_vector(5 downto 0);
    v_set_m     : out std_logic_vector(5 downto 0);
    v_set_h     : out std_logic_vector(4 downto 0)
);
end CU_set;



--IL COMPONENTE VIENE USATO PERCHÉ NON AVENDO 17 SWITCH É NECESSARIO PRENDERE 2 VOLTE IL PRESET DAGLI SWITCH
--IL COMPONENTE VIENE USATO NEL PUNTO 2



architecture Behavioral of CU_set is
------------------------------------------------------------------------------------------
-- definizione macchina di mealy
type stato is (S0, S1, S2);
signal stato_corrente : stato := S0;
signal stato_prossimo : stato;
------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------
--segnale per le uscite
signal      temp_v_set_s     : std_logic_vector(5 downto 0) := (others => '0');
signal      temp_v_set_m     : std_logic_vector(5 downto 0) := (others => '0');
signal      temp_v_set_h     : std_logic_vector(4 downto 0) := (others => '0');
signal      temp_set_out     : std_logic := '0';
------------------------------------------------------------------------------------------
begin
-------------------------------------------------------------------------------------------
stato_uscita: process (btn, stato_corrente)
variable bottone_premuto :std_logic := '0';
    begin
    
    case stato_corrente is
        when S0 =>          
            temp_set_out <= '0';
            if (btn = '1') then 
                stato_prossimo <= S1;
                temp_v_set_s   <= set_switch_1;
                temp_v_set_m   <= set_switch_2;
                bottone_premuto := '1';
            end if;
            if bottone_premuto = '0' and btn = '0' then
                stato_prossimo <= S0;
            end if;
            
        when S1 =>
            if (btn = '1') then 
                stato_prossimo <= S2;
                temp_v_set_h <= set_switch_1 (4 downto 0);
            end if;
            bottone_premuto := '0';
                        
        when S2 =>
           temp_set_out <= '1';
           stato_prossimo <= S0;
           bottone_premuto := '0';
       end case;


end process;

registro: process (clk)
    begin
        if(rising_edge(clk)) then    
            if(reset ='1') then
                stato_corrente <= S0;
            elsif (en ='1') then
                set_out <= temp_set_out;
                stato_corrente <= stato_prossimo;
            end if;
            
        end if;
        
end process;

v_set_s <= temp_v_set_s;
v_set_m <= temp_v_set_m;
v_set_h <= temp_v_set_h;

-------------------------------------------------------------------------------------------
end Behavioral;

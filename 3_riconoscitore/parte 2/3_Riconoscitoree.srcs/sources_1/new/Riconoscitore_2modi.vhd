----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.10.2022 16:21:22
-- Design Name: 
-- Module Name: Riconoscitore_2modi - Behavioral
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

entity Riconoscitore_2modi is
    port(
        i : in std_logic;
        div : in std_logic;
        RST: in std_logic;
        CLK: in std_logic;
        M : in std_logic;
        i_read : in std_logic;
        M_read : in std_logic;
        uscita : out std_logic
        );
end Riconoscitore_2modi;

architecture Behavioral of Riconoscitore_2modi is
    
type stato is (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11);
    
signal stato_corrente : stato := S0;
signal stato_prossimo : stato;
signal Y : std_logic;
signal state_tmp : std_logic_vector(2 downto 0);
    
begin

stato_uscita: process (i, stato_corrente, M, div)
    begin
    
    case stato_corrente is
        when S0 =>
            state_tmp <= "001";
            if (M = '0') then 
                stato_prossimo <= S5;
                Y <= '0';
            else
                stato_prossimo <= S1;
                Y <= '0';
            end if;
            
        when S1 =>
            if (i = '1') then 
                stato_prossimo <= S2;
                Y <= '0';
            else
                stato_prossimo <= S1;
                Y <= '0';
            end if;
            
        when S2 =>
            if (i = '1') then 
                stato_prossimo <= S2;
                Y <= '0';
            else
                stato_prossimo <= S3;
                Y <= '0';
            end if;
            
        when S3 =>
            if (i = '1') then 
                stato_prossimo <= S2;
                Y <= '0';
            else
                stato_prossimo <= S4;
                Y <= '0';
            end if;
            
        when S4 =>
            if (i = '1') then 
                stato_prossimo <= S1;
                Y <= '1';
            else
                stato_prossimo <= S1;
                Y <= '0';
            end if;
            
        when S5 =>
            if (i = '1') then 
                stato_prossimo <= S6;
                Y <= '0';
            else
                stato_prossimo <= S9;
                Y <= '0';
            end if;
            
        when S6 =>
            if (i = '0') then 
                stato_prossimo <= S7;
                Y <= '0';
            else
                stato_prossimo <= S10;
                Y <= '0';
            end if;
            
        when S7 =>
            if (i = '0') then 
                stato_prossimo <= S8;
                Y <= '0';
            else
                stato_prossimo <= S11;
                Y <= '0';
            end if;
            
        when S8 =>
            if (i = '0') then 
                stato_prossimo <= S5;
                Y <= '0';
            else
                stato_prossimo <= S5;
                Y <= '1';
            end if;
            
        when S9 =>
            stato_prossimo <= S10;
            Y <= '0';
            
        when S10 =>
            stato_prossimo <= S11;
            Y <= '0';
            
        when S11 =>
            stato_prossimo <= S5;
            Y <= '0';
            
    end case;    
    
end process;

registro: process (CLK)
    begin
        if(CLK'event and CLK='1') then    
            if(RST='1') then
                stato_corrente <= S0;
                uscita <= '0';
            else
                if (div = '1') then
                    if (stato_corrente = S0 and m_read='1') then
                        stato_corrente <= stato_prossimo;
                        uscita <= Y;
                    elsif (stato_corrente /= S0 and i_read ='1') then
                        stato_corrente <= stato_prossimo;
                        uscita <= Y; 
                    end if;
                end if;
            end if;
        end if;
        
end process;

end Behavioral;

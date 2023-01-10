----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.11.2022 13:07:02
-- Design Name: 
-- Module Name: Shift_reg - Behavioral
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

entity Shift_reg is port(
    clk     : in std_logic;
    en      : in std_logic;
    reset   : in std_logic;
    input   : in std_logic_vector(1 downto 0);
    sel     : in std_logic_vector(1 downto 0);
    output  : out std_logic_vector(1 downto 0)
);
end Shift_reg;

architecture Behavioral of Shift_reg is

signal reg: std_logic_vector(7 downto 0);

begin

process (clk)
begin

-- Il nostro registro a scorrimento ha 4 modalità di funzionamento.
-- In output abbiamo sempre i bit che escono dal registro al scorrimento ad un dato impulso di clock
-- questi valori in output fino al prossimo enable

if (rising_edge(clk)) then

    if (reset = '1') then
        reg <= (others => '0');
    end if;
    
    if (en = '1') then
        case sel is
            when "00" => -- scorrimento a destra di 1
                reg(7) <= input(0);
                reg(6 downto 0) <= reg(7 downto 1);
                --reg(6) <= reg(7);
                --reg(5) <= reg(6);
                --reg(4) <= reg(5);
                --reg(3) <= reg(4);
                --reg(2) <= reg(3);
                --reg(1) <= reg(2);
                --reg(0) <= reg(1);
                --output(0) <= reg(0);
            
            when "01" => -- scorrimento a sinistra di 1
                reg(0) <= input(0);
                reg(7 downto 1) <= reg(6 downto 0);
                --reg(1) <= reg(0);
                --reg(2) <= reg(1);
                --reg(3) <= reg(2);
                --reg(4) <= reg(3);
                --reg(5) <= reg(4);
                --reg(6) <= reg(5);
                --reg(7) <= reg(6);
                --output(0) <= reg(7);
                
            when "10" => --scorrimento a destra di 2
                reg(7) <= input(1);
                reg(6) <= input(0);
                reg(5 downto 0) <= reg(7 downto 2);
                --reg(5) <= reg(7);
                --reg(4) <= reg(6);
                --reg(3) <= reg(5);
                --reg(2) <= reg(4);
                --reg(1) <= reg(3);
                --reg(0) <= reg(2);
                --output(1) <= reg(1);
                --output(0) <= reg(0);

            when "11" => --scorrimento a sinistra di 2
                reg(0) <= input(1);
                reg(1) <= input(0);
                reg(7 downto 2) <= reg(5 downto 0);
                --reg(2) <= reg(0);
                --reg(3) <= reg(1);
                --reg(4) <= reg(2);
                --reg(5) <= reg(3);
                --reg(6) <= reg(4);
                --reg(7) <= reg(5);
                --output(1) <= reg(7);
                --output(0) <= reg(6);
            
            when others => -- nel caso sconosciuto facciamo funzionare il registro in modo standard
                reg(7) <= input(0);
                reg(6 downto 0) <= reg(7 downto 1);
                --reg(6) <= reg(7);
                --reg(5) <= reg(6);
                --reg(4) <= reg(5);
                --reg(3) <= reg(4);
                --reg(2) <= reg(3);
                --reg(1) <= reg(2);
                --reg(0) <= reg(1);
                --output(0) <= reg(0);
        end case;
    
    end if;
end if;

end process;

output(0) <=     reg(0) when sel = "00" else 
	             reg(7) when sel = "01" else 
                 reg(0) when sel = "10" else 
                 reg(7) when sel = "11" else
                 reg(0);
                 
output(1) <=     reg(1) when sel = "00" else 
	             reg(6) when sel = "01" else 
                 reg(1) when sel = "10" else 
                 reg(6) when sel = "11" else
                 reg(1);

end Behavioral;

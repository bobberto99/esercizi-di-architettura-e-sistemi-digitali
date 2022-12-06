----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.12.2022 12:56:26
-- Design Name: 
-- Module Name: shift_register_SIPO - Behavioral
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

entity shift_register_SISO is 
generic(
    N       : integer :=8
);
port(
    clk     : in std_logic;
    en      : in std_logic;
    reset   : in std_logic;
    input   : in std_logic;
    output  : out std_logic
);
end shift_register_SISO;


-- Il componente svolge la funzione di un registro a scorrimento con input a sinistra e scorrimento verso destra.
-- L'ingresso e l'uscita sono seriali, in particolare in uscita è presente il dato più a destra del registro.

architecture Behavioral of shift_register_SISO is

signal registri :   std_logic_vector (N-1 downto 0);

begin

process(clk)

begin

if (rising_edge(clk) and en ='1') then

registri (N-1) <= input;
registri (N-2 downto 0) <= registri (N-1 downto 1);

end if;

end process;

output <= registri (0);

end Behavioral;
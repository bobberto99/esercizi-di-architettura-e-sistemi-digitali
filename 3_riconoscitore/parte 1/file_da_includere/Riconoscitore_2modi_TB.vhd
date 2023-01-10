----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.10.2022 17:01:44
-- Design Name: 
-- Module Name: Riconoscitore_2modi_TB - Behavioral
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

entity Riconoscitore_2modi_TB is

end Riconoscitore_2modi_TB;

architecture Behavioral of Riconoscitore_2modi_TB is

component Riconoscitore_2modi
    port (
        i : in std_logic;
        RST: in std_logic;
        CLK: in std_logic;
        M : in std_logic;
        uscita : out std_logic
        );
end component;

signal ingresso : std_logic := '0';
signal reset : std_logic := '0';
signal clock : std_logic := '0';
signal modo : std_logic;
signal usc : std_logic;

begin

riconoscitore : Riconoscitore_2modi 
    port map(
        i => ingresso,
        RST => reset,
        CLK => clock,
        M => modo,
        uscita => usc
    );
    
clock_proc : process
   begin

    clock <= '0';
    wait for 5 ns;
    clock <= '1';
    wait for 5 ns;
    
end process;

stim_proc : process
    begin
    
    --resetto
    
    wait for 100 ns;
    
    modo <= '1';
    reset <= '1';
    wait for 10 ns;
    reset <= '0';
    wait for 10 ns;
    
    -- provo la sequenza di stati S0-S1-S2-S3-S2-S3-S4-S1 con uscita 1
    ingresso <= '1';
    wait for 10 ns;
    ingresso <= '1';
    wait for 10 ns;
    ingresso <= '0';
    wait for 10 ns;
    ingresso <= '1';
    wait for 10 ns;
    ingresso <= '0';
    wait for 10 ns;
    ingresso <= '0';
    wait for 10 ns;
    ingresso <= '1';
    wait for 10 ns;

    assert usc = '1'
    report "error1"
    severity failure;
    
    -- provo la sequenza di stati S1-S2-S3-S4-S1 con uscita 0
    ingresso <= '1';
    wait for 10 ns;
    ingresso <= '0';
    wait for 10 ns;
    ingresso <= '0';
    wait for 10 ns;
    ingresso <= '0';
    wait for 10 ns;

    assert usc = '0'
    report "error1"
    severity failure;
    
    --cambio modo 
    modo <= '0';
    reset <= '1';
    wait for 10 ns;
    reset <= '0';
    wait for 10 ns;
    
    -- provo la sequenza di stati S0-S5-S6-S10-S11-S5 con uscita 0
    ingresso <= '1';
    wait for 10 ns;
    ingresso <= '1';
    wait for 10 ns;
    ingresso <= '0';
    wait for 10 ns;
    ingresso <= '1';
    wait for 10 ns;
    
    assert usc = '0'
    report "error1"
    severity failure;
    
    -- provo la sequenza di stati S5-S6-S7-S8-S5 con uscita 1
    ingresso <= '1';
    wait for 10 ns;
    ingresso <= '0';
    wait for 10 ns;
    ingresso <= '0';
    wait for 10 ns;
    ingresso <= '1';
    wait for 10 ns;
    
    assert usc = '1'
    report "error1"
    severity failure;
    
    wait;
end process;

end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.11.2022 17:38:27
-- Design Name: 
-- Module Name: Shift_reg_tb - Behavioral
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

entity Shift_reg_tb is
--  Port ( );
end Shift_reg_tb;

architecture Behavioral of Shift_reg_tb is

component Shift_reg_struct is port (
    clk     : in std_logic;                   
    en      : in std_logic;                   
    reset   : in std_logic;                   
    input   : in std_logic_vector(1 downto 0);
    sel     : in std_logic_vector(1 downto 0);
    output  : out std_logic_vector(1 downto 0)
);
end component;

signal clk_tb : std_logic;
signal en : std_logic;
signal input  : std_logic_vector(1 downto 0) :="00";
signal output  : std_logic_vector(1 downto 0);
signal rst : std_logic;
signal sel : std_logic_vector(1 downto 0);

constant clk_period : time := 20 ns; 

begin

clk_process : process
begin
    clk_tb <= '0';
    wait for clk_period/2;
    clk_tb <= '1';
    wait for clk_period/2;
end process;

uut : Shift_reg_struct
    port map (
        clk => clk_tb,
        en => en,
        reset => rst,
        sel  => sel,
        input => input,
        output => output
);

stimuli : process
begin
    
    rst <= '1';
    wait for 100ns;  --global reset
   
    rst <='0';
    
    --riempio il registro
    sel <= "10";
    input <= "10";
    en <= '1';
    wait for clk_period;
    input <= "11";
    wait for clk_period;
    input <= "10";
    wait for clk_period;
    input <= "00";
    wait for clk_period;
    en <= '0';
    
    -- shifto a destra di 1
    wait for clk_period;
    sel <= "00";
    input <= "01";
    en <= '1';
    wait for clk_period;
    en <= '0';
    
    -- shifto a sinistra di 1
    wait for clk_period;
    sel <= "01";
    input <= "00";
    en <= '1';
    wait for clk_period;
    en <= '0';
    
    -- shifto a destra di 2
    wait for clk_period;
    sel <= "10";
    input <= "11";
    en <= '1';
    wait for clk_period;
    en <= '0';
    
    -- shifto a sinistra di 2
    wait for clk_period;
    sel <= "11";
    input <= "00";
    en <= '1';
    wait for clk_period;
    en <= '0';
    
    wait;
end process;

end Behavioral;

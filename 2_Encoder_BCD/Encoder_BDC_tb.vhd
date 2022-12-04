----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.10.2022 16:49:08
-- Design Name: 
-- Module Name: Encoder_BDC_tb - Dataflow
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

entity Encoder_BCD_tb is
end Encoder_BCD_tb;

architecture Behavioral of Encoder_BCD_tb is
    
component Encoder_BCD is
    port(
        a : in std_logic_vector(9 downto 0);
        u : out std_logic_vector(3 downto 0)
    );
end component;

signal inputs : std_logic_vector(9 downto 0) := (others => 'U');
signal outputs : std_logic_vector(3 downto 0) := (others => 'U'); 

begin

uut: Encoder_BCD
    port map (
        a => inputs,
        u => outputs
    );

stim_proc: process

begin

wait for 100 ns;

-- a7
wait for 10 ns;
inputs <= "0010000000";
wait for 10 ns;
assert outputs = "0111"
report "errore caso 1"
severity failure;

-- a2
wait for 10 ns;
inputs <= "0000000100";
wait for 10 ns;
assert outputs = "0010"
report "errore caso 2"
severity failure;

-- a5
wait for 10 ns;
inputs <= "0000100000";
wait for 10 ns;
assert outputs = "0101"
report "errore caso 3"
severity failure;

wait;

end process;

end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.11.2022 15:41:20
-- Design Name: 
-- Module Name: unita_di_controllo - Behavioral
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

entity unita_di_controllo is port (
switch  : in std_logic_vector (0 to 15);
button_0  : in std_logic;    -- button [0] per i selettori button [1] per i dati
button_1  : in std_logic;
reset   : in std_logic;
clock   : in std_logic;
reg_inputs   : out std_logic_vector (0 to 15) := (others => '0');
reg_selmux   :out  std_logic_vector (3 downto 0) := "0000";
reg_seldem   : out std_logic_vector (1 downto 0) := "00"
);
end unita_di_controllo;

architecture Behavioral of unita_di_controllo is




begin



main: process (clock)

begin

if (rising_edge(clock)) then
    if (reset = '1') then
        reg_inputs <= (others => '0');
        reg_selmux <= (others => '0');
        reg_seldem <= (others => '0');
     end if;
    if (button_0= '1') then
        reg_selmux (3) <= switch (15);
        reg_selmux (2) <= switch (14);
        reg_selmux (1) <= switch (13);
        reg_selmux (0) <= switch (12);
        reg_seldem (1) <= switch (11);
        reg_seldem (0) <= switch (10);
     end if;
     if (button_1= '1') then
        reg_inputs <= switch (0 to 15);
     end if;
end if;

end process;

end Behavioral;

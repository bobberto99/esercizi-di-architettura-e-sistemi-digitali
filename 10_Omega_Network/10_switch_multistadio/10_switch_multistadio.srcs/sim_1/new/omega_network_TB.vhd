----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.12.2022 12:54:06
-- Design Name: 
-- Module Name: omega_network_TB - Behavioral
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

entity omega_network_TB is
--  Port ( );
end omega_network_TB;

architecture Behavioral of omega_network_TB is

component omega_network_4_4 is port (
    in0, in1, in2, in3          : in std_logic_vector(5 downto 0);
    enable                      : in std_logic_vector(3 downto 0);
    out0, out1, out2, out3      : out std_logic_vector(5 downto 0)
);
end component;

signal in0, in1, in2, in3       : std_logic_vector(5 downto 0);
signal out0, out1, out2, out3   : std_logic_vector(5 downto 0);
signal enable                   : std_logic_vector(3 downto 0);

begin

uut : omega_network_4_4 port map (
    in0 => in0, in1 => in1, in2 => in2, in3 => in3,
    enable => enable,
    out0 => out0, out1 => out1, out2 => out2, out3 => out3
);

stimuli : process 
begin 

wait for 100 ns;

in0 <= "001011";
in1 <= "011000";
in2 <= "101001";
in3 <= "111010";
enable <= "1111";

wait for 20 ns;

in0 <= "001011";
in1 <= "011000";
in2 <= "101001";
in3 <= "111010";
enable <= "1010";

wait;

end process;


end Behavioral;

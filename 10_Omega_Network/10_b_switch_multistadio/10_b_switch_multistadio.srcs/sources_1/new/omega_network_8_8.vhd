----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.12.2022 16:28:16
-- Design Name: 
-- Module Name: omega_network_4_4 - structural
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

entity omega_network_4_4 is port (
    in0, in1, in2, in3          : in std_logic_vector(5 downto 0);
    enable                      : in std_logic_vector(3 downto 0);
    out0, out1, out2, out3      : out std_logic_vector(5 downto 0)
);
end omega_network_4_4;

architecture structural of omega_network_4_4 is

signal sig_src                              : std_logic_vector(1 downto 0);
signal sig_dst                              : std_logic_vector(1 downto 0);
signal sig_in0, sig_in1, sig_in2, sig_in3   : std_logic_vector(5 downto 0);

begin

controllo : entity work.parte_di_controllo port map(
    in0 => in0, in1 => in1, in2 => in2, in3 => in3,
    enable => enable,
    new_in0 => sig_in0, new_in1 => sig_in1, new_in2 => sig_in2, new_in3 => sig_in3,
    src => sig_src, dst => sig_dst
);

operativa : entity work.parte_operativa port map(
    in0 => sig_in0, in1 => sig_in1, in2 => sig_in2, in3 => sig_in3,
    src => sig_src, dst => sig_dst,
    out0 => out0, out1 => out1, out2 => out2, out3 => out3
);

end structural;

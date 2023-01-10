----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.12.2022 16:04:02
-- Design Name: 
-- Module Name: parte_di_controllo - structural
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

entity parte_di_controllo is port (
    in0, in1, in2, in3                  : in std_logic_vector(5 downto 0);
    enable                              : in std_logic_vector(3 downto 0);
    new_in0, new_in1, new_in2, new_in3  : out std_logic_vector(5 downto 0);
    src, dst                            : out std_logic_vector(1 downto 0)
);
end parte_di_controllo;

architecture structural of parte_di_controllo is

signal sig_sel : std_logic_vector(1 downto 0);

begin

arbitro : entity work.arbitro_logico port map(
    enable  => enable,
    sel     => sig_sel
);

new_in0 <= in0 when sig_sel = "00" else (others=>'0');
new_in1 <= in1 when sig_sel = "01" else (others=>'0');
new_in2 <= in2 when sig_sel = "10" else (others=>'0');
new_in3 <= in3 when sig_sel = "11" else (others=>'0');

src <= in0(5 downto 4) when sig_sel="00" else
       in1(5 downto 4) when sig_sel="01" else
       in2(5 downto 4) when sig_sel="10" else
       in3(5 downto 4) when sig_sel="11" else
       "--";

dst <= in0(3 downto 2) when sig_sel="00" else
       in1(3 downto 2) when sig_sel="01" else
       in2(3 downto 2) when sig_sel="10" else
       in3(3 downto 2) when sig_sel="11" else
       "--";

end structural;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.11.2022 17:26:24
-- Design Name: 
-- Module Name: encoder_con_display - Behavioral
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

entity encoder_con_display is port (
        a : in std_logic_vector(9 downto 0);
        u : out std_logic_vector(3 downto 0);
        catodi  :   out std_logic_vector (7 downto 0); -- a partire da: ca a dp
        anodi   :   out std_logic_vector (7 downto 0)  -- a partire da: an7 a an0
);

end encoder_con_display;

architecture structural of encoder_con_display is

component display port (
    punto   :   in  std_logic;                     -- bit da mettere a 0 se si vuole displayare il punto
    u       :   in  std_logic_vector (3 downto 0); -- numero 
    catodi  :   out std_logic_vector (7 downto 0); -- a partire da: ca a dp
    anodi   :   out std_logic_vector (7 downto 0)  -- a partire da: an7 a an0
);
end component;

component Encoder_BCD port (
    a : in std_logic_vector(9 downto 0);
    u : out std_logic_vector(3 downto 0)
);
end component;

signal punto : std_logic := '1';
signal cifra : std_logic_vector (3 downto 0);


begin

display_0 : display PORT MAP(
    punto   => punto, 
    u       => cifra,
    catodi  => catodi,
    anodi   => anodi
);


encoder : Encoder_BCD PORT MAP (
    a => a,
    u => cifra
);
u <= cifra;

end structural;

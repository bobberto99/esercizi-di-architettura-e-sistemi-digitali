----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.11.2022 16:49:33
-- Design Name: 
-- Module Name: display - Behavioral
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

entity display is port (
    punto   :   in  std_logic;                     -- bit da mettere a 0 se si vuole displayare il punto
    u       :   in  std_logic_vector (3 downto 0); -- numero 
    catodi  :   out std_logic_vector (7 downto 0); -- a partire da: ca a dp
    anodi   :   out std_logic_vector (7 downto 0)  -- a partire da: an7 a an0
);
end display;

architecture dataflow of display is

constant zero   : std_logic_vector(6 downto 0) := "1000000"; 
constant one    : std_logic_vector(6 downto 0) := "1111001"; 
constant two    : std_logic_vector(6 downto 0) := "0100100"; 
constant three  : std_logic_vector(6 downto 0) := "0110000"; 
constant four   : std_logic_vector(6 downto 0) := "0011001"; 
constant five   : std_logic_vector(6 downto 0) := "0010010"; 
constant six    : std_logic_vector(6 downto 0) := "0000010"; 
constant seven  : std_logic_vector(6 downto 0) := "1111000"; 
constant eight  : std_logic_vector(6 downto 0) := "0000000"; 
constant nine   : std_logic_vector(6 downto 0) := "0010000"; 
--constant a   	: std_logic_vector(6 downto 0) := "0001000"; 
--constant b      : std_logic_vector(6 downto 0) := "0000011"; 
--constant c      : std_logic_vector(6 downto 0) := "1000110"; 
--constant d      : std_logic_vector(6 downto 0) := "0100001"; 
constant e      : std_logic_vector(6 downto 0) := "0000110"; 
--constant f      : std_logic_vector(6 downto 0) := "0001110";

signal cifra_anodo    : std_logic_vector (7 downto 0) := "01111111";
signal numero   : std_logic_vector (6 downto 0);

begin
    numero <=   zero    when u = "0000" else
                one     when u = "0001" else
                two     when u = "0010" else
                three   when u = "0011" else
                four    when u = "0100" else
                five    when u = "0101" else
                six     when u = "0110" else
                seven   when u = "0111" else
                eight   when u = "1000" else
                nine    when u = "1001" else
                e;
    catodi <= (not punto) & numero;
    anodi  <= cifra_anodo;

end dataflow;

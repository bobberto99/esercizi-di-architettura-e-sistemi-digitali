----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.11.2022 19:17:38
-- Design Name: 
-- Module Name: Counter_mod60 - Structural
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

entity Counter_mod60 is port (
    clk : in  std_logic;
    en : in std_logic;
    reset : in  std_logic;
    set     : in std_logic;
    v_set   : in std_logic_vector(5 downto 0);
    counter : out  std_logic_vector(5 downto 0);
    count : out std_logic
);
end Counter_mod60;

architecture Structural of Counter_mod60 is

component Counter_mod64 is port (
    clk : in  std_logic;
    en : in std_logic;
    reset : in  std_logic;
    set     : in std_logic;
    v_set   : in std_logic_vector(5 downto 0);
    counter : out  std_logic_vector(5 downto 0);
    count : out std_logic
);
end component;

signal rs   : std_logic;
signal conteggio : std_logic_vector(5 downto 0);

begin

rs <= conteggio(5) and conteggio(4) and conteggio(3) and not conteggio(2) and  conteggio(1) and  conteggio(0);

contatore : Counter_mod64
    port map (
        clk => clk,
        en => en or set or reset,
        reset => reset or rs,
        set => set,
        v_set => v_set,
        counter => conteggio
);

counter <= conteggio;
count <= rs;

end Structural;

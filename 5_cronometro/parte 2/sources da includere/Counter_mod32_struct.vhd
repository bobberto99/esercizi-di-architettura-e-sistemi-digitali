----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.11.2022 00:12:46
-- Design Name: 
-- Module Name: Counter_mod24_struct - Structural
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

entity Counter_mod32_struct is port (
    clk : in  std_logic;
    en : in std_logic;
    reset : in  std_logic;
    set     : in std_logic;
    v_set   : in std_logic_vector(4 downto 0);
    counter : out  std_logic_vector(4 downto 0);
    count : out std_logic
);
end Counter_mod32_struct;

architecture Structural of Counter_mod32_struct is

component FF_D is port (
    clk     : in std_logic;
    en      : in std_logic;
    reset   : in std_logic;
    preset  : in std_logic;
    input   : in std_logic;
    output  : out std_logic;
    not_out : out std_logic
);
end component;

signal conteggio : std_logic_vector(4 downto 0) := (others => '0');
signal back : std_logic;

begin

counter_0 : FF_D
    port map (
        clk => clk,
        en => en,
        reset => (set and not v_set(0)) or reset,
        preset => set and v_set(0),
        input => back,
        output => conteggio(0),
        not_out => back
);

counter_1 : FF_D
    port map (
        clk => clk,
        en => en,
        reset => (set and not v_set(1)) or reset,
        preset => set and v_set(1),
        input => conteggio(0) xor conteggio(1),
        output => conteggio(1)
);

counter_2 : FF_D
    port map (
        clk => clk,
        en => en,
        reset => (set and not v_set(2)) or reset,
        preset => set and v_set(2),
        input => (conteggio(1) and conteggio(0)) xor conteggio(2),
        output => conteggio(2)
);

counter_3 : FF_D
    port map (
        clk => clk,
        en => en,
        reset => (set and not v_set(3)) or reset,
        preset => set and v_set(3),
        input => (conteggio(2) and conteggio(1) and conteggio(0)) xor conteggio(3),
        output => conteggio(3)
);

counter_4 : FF_D
    port map (
        clk => clk,
        en => en,
        reset => (set and not v_set(4)) or reset,
        preset => set and v_set(4),
        input => (conteggio(3) and conteggio(2) and conteggio(1) and conteggio(0)) xor conteggio(4),
        output => conteggio(4)
);

counter <= conteggio;
count <= conteggio(4);

end Structural;

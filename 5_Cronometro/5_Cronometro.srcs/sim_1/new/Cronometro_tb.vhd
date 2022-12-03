----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.11.2022 19:56:38
-- Design Name: 
-- Module Name: Cronometro_tb - Behavioral
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

entity Cronometro_tb is
end Cronometro_tb;

architecture Behavioral of Cronometro_tb is

component cronometro_con_display is port(
    clk         : in  std_logic;
    reset       : in  std_logic;
    set         : in std_logic;
    --v_set_s     : in std_logic_vector(5 downto 0);
    --v_set_m     : in std_logic_vector(5 downto 0);
    --v_set_h     : in std_logic_vector(4 downto 0);
    anodi       : out std_logic_vector(7 downto 0);
    catodi      : out std_logic_vector(7 downto 0)
);
end component;

constant clk_period : time := 10 ns;
signal rst : std_logic;
signal clk_tb : std_logic;
signal    set         :  std_logic :='0';
    --v_set_s     : in std_logic_vector(5 downto 0);
    --v_set_m     : in std_logic_vector(5 downto 0);
    --v_set_h     : in std_logic_vector(4 downto 0);
signal    anodi       :  std_logic_vector(7 downto 0);
signal    catodi      :  std_logic_vector(7 downto 0);

begin

clk_process : process
begin
    clk_tb <= '0';
    wait for clk_period/2;
    clk_tb <= '1';
    wait for clk_period/2;
end process;
   
   
   
uut : cronometro_con_display
    port map (
        clk => clk_tb,
        reset => rst,
        set => set,
        anodi => anodi,
        catodi =>catodi
);
          

stimuli : process
begin
    
    rst <= '1';
    wait for 100ns;  --global reset
   
    rst <='0';
    wait for clk_period;
    wait for clk_period;
    wait for clk_period*60000000;
    wait for clk_period;
    set <='1';
    -- EDIT Add stimuli here
    --wait for 100 * TbPeriod;

    -- Stop the clock and hence terminate the simulation
   -- TbSimEnded <= '1';
    wait;
    end process;
    
end Behavioral;

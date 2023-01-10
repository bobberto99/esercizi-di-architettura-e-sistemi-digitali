----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.12.2022 19:17:49
-- Design Name: 
-- Module Name: hidden_layer - structural
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

library work;
use work.type_package.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity hidden_layer is port (
    clock   : in std_logic;
    reset   : in std_logic;
    start   : in std_logic;
    input0  : in std_logic_vector(8 downto 0);
    input1  : in std_logic_vector(8 downto 0);
    input2  : in std_logic_vector(8 downto 0);
    input3  : in std_logic_vector(8 downto 0);
    input4  : in std_logic_vector(8 downto 0);
    input5  : in std_logic_vector(8 downto 0);
    input6  : in std_logic_vector(8 downto 0);
    input7  : in std_logic_vector(8 downto 0);
    input8  : in std_logic_vector(8 downto 0);
    
    output  : out hidden_output;
    
    end_op  : out std_logic_vector(9 downto 0)
);    
end hidden_layer;

architecture structural of hidden_layer is

component hidden_neuron is
generic (
    weights : rom_type;
    bias    : std_logic_vector(31 downto 0)
);
port (
    clock   : in std_logic;
    reset   : in std_logic;
    start   : in std_logic;
    input0  : in std_logic_vector(8 downto 0);
    input1  : in std_logic_vector(8 downto 0);
    input2  : in std_logic_vector(8 downto 0);
    input3  : in std_logic_vector(8 downto 0);
    input4  : in std_logic_vector(8 downto 0);
    input5  : in std_logic_vector(8 downto 0);
    input6  : in std_logic_vector(8 downto 0);
    input7  : in std_logic_vector(8 downto 0);
    input8  : in std_logic_vector(8 downto 0);
    end_op  : out std_logic;
    value   : out std_logic_vector(31 downto 0)
);    
end component;

begin

neuroni0to9: for i in 0 to 9 generate
    neurone : hidden_neuron 
    generic map (
        weights => array_hidden(i),
        bias    => value_hidden_bias(i)
    )
    port map (
        clock   => clock,
        reset   => reset,
        start   => start,
        input0  => input0,
        input1  => input1,
        input2  => input2,
        input3  => input3,
        input4  => input4,
        input5  => input5,
        input6  => input6,
        input7  => input7,
        input8  => input8,
        end_op  => end_op(i),
        value   => output(i)
    );
end generate neuroni0to9;

end structural;

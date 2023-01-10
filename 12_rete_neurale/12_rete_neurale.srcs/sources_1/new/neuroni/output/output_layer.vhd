----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.12.2022 10:56:58
-- Design Name: 
-- Module Name: output_layer - structural
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

library work;
use work.type_package_output.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity output_layer is port (
    clock   : in std_logic;
    reset   : in std_logic;
    inputs  : in hidden_output;
    start   : in std_logic_vector(9 downto 0);
    
    output  : out uscite;
    end_op  : out std_logic_vector(6 downto 0)
);
end output_layer;

architecture structural of output_layer is

component output_neuron is 
generic (
    weights : rom_type_output;
    bias    : std_logic_vector(6 downto 0)
);
port (
    clock   : in std_logic;
    reset   : in std_logic;
    start   : in std_logic_vector(9 downto 0);
    inputs  : in hidden_output;
    end_op  : out std_logic;
    value   : out std_logic_vector(63 downto 0)
);
end component;

begin

neuroni0to6: for i in 0 to 6 generate
    neurone : output_neuron 
    generic map (
        weights => array_output(i),
        bias    => value_output_bias(i)
    )
    port map (
        clock   => clock,
        reset   => reset,
        start   => start,
        inputs  => inputs,
        end_op  => end_op(i),
        value   => output(i)
    );
end generate neuroni0to6;

end structural;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.12.2022 15:47:56
-- Design Name: 
-- Module Name: rete_neurale - structural
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
use work.type_package_output.all;

library work;
use work.type_package.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity rete_neurale is port (
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
    
    output  : out uscite
);
end rete_neurale;

architecture structural of rete_neurale is

signal conn_data        : hidden_output;
signal conn_end_op_h    : std_logic_vector(9 downto 0); 
signal conn_end_op_o    : std_logic_vector(6 downto 0);
signal sig_output       : uscite; 

begin

layer_nascosto : entity work.hidden_layer port map (
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
    output  => conn_data,
    end_op  => conn_end_op_h
);

layer_output : entity work.output_layer port map (
    clock   => clock,
    reset   => reset or start,
    inputs  => conn_data,
    start   => conn_end_op_h,
    output  => sig_output,
    end_op  => conn_end_op_o
);

output <=   sig_output when conn_end_op_o = "1111111" else
            (others => x"0000000000000000");

end structural;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.12.2022 19:52:28
-- Design Name: 
-- Module Name: ReLU - dataflow
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

entity ReLU_output is port (
    out_neuron  : in std_logic_vector(63 downto 0);
    rectified   : out std_logic_vector(63 downto 0)
);
end ReLU_output;

architecture dataflow of ReLU_output is

begin

rectified   <= (others => '0') when out_neuron(63) = '1' else
               out_neuron when out_neuron(63) = '0' else
               out_neuron; 

end dataflow;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.10.2022 16:57:09
-- Design Name: 
-- Module Name: mux_2_1 - Structural
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

entity mux_2_1 is 
    port (
        input0 : in std_logic;
        input1 : in std_logic;
        s  : in std_logic;
        output  : out std_logic
    );  
end mux_2_1;

architecture dataflow of mux_2_1 is

begin
    
    output <= ((not s) and input0) or (s and input1);

end dataflow;

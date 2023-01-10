----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.12.2022 18:02:50
-- Design Name: 
-- Module Name: HS_omega_network - structural
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity HS_omega_network is port (
    clock   : in std_logic;
    reset   : in std_logic;
    start   : in std_logic_vector(7 downto 0);
    mess    : in input_message;
    dest    : in input_destination;
    output  : out input_array
);
end HS_omega_network;

architecture structural of HS_omega_network is

signal node_in_sender       : input_array;
signal node_in_receiver     : input_array;
signal node_out_sender      : input_array;
signal node_out_receiver    : input_array;

begin

output <= node_out_sender;

senders : for i in 0 to 7 generate
sender : entity work.sender_node 
    generic map ( address => std_logic_vector(to_unsigned(i, 3)))
    port map(
    clock   => clock,
    reset   => reset,
    start   => start(i),
    ack     => node_out_receiver(i),
    dest    => dest(i),
    mess    => mess(i),
    output  => node_in_sender(i)
);
end generate;

receivers : for i in 0 to 7 generate
receiver : entity work.receiver_node 
    generic map ( address => std_logic_vector(to_unsigned(i, 3)))
    port map(
    clk     => clock,
    reset   => reset,
    input   => node_out_sender(i),
    ack     => node_in_receiver(i)
);
end generate;

omega_sender : entity work.smart_omega_network port map(
    clock       => clock,
    reset       => reset,
    nodes_in    => node_in_sender,
    nodes_out   => node_out_sender
);

omega_receiver : entity work.smart_omega_network port map(
    clock       => clock,
    reset       => reset,
    nodes_in    => node_in_receiver,
    nodes_out   => node_out_receiver
);

end structural;

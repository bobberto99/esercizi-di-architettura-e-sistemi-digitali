----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.12.2022 16:46:04
-- Design Name: 
-- Module Name: Receiver - Behavioral
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

entity ricevitore is port (
    CLK         :   in  std_logic;
    RST         :   in  std_logic;
    UART_RXD    :   in  std_logic;
    LEDS        :   out std_logic_vector (7 downto 0);
    errors      :   out std_logic_vector (2 downto 0)
);
end ricevitore;

architecture Behavioral of ricevitore is

component cu_ricevitore is port(
    CLK         :   in  std_logic;
    RESET       :   in  std_logic;
    RDA         :   in  std_logic;
    UART_OUTPUT :   in  std_logic_vector (7 downto 0);
    uart_reset  :   out std_logic;
    leds        :   out std_logic_vector (7 downto 0)
);
end component;


component UARTcomponent is
	Generic (
		--@48MHz
--		BAUD_DIVIDE_G : integer := 26; 	--115200 baud
--		BAUD_RATE_G   : integer := 417

		--@26.6MHz
		BAUD_DIVIDE_G : integer := 14; 	--115200 baud
		BAUD_RATE_G   : integer := 231
	);
	Port (	
		TXD 	: out 	std_logic  	:= '1';					-- Transmitted serial data output
		RXD 	: in  	std_logic;							-- Received serial data input
		CLK 	: in  	std_logic;							-- Clock signal
		DBIN 	: in  	std_logic_vector (7 downto 0);		-- Input parallel data to be transmitted
		DBOUT 	: out 	std_logic_vector (7 downto 0);		-- Recevived parallel data output
		RDA		: inout  std_logic;							-- Read Data Available
		TBE		: out 	std_logic 	:= '1';					-- Transfer Buffer Emty
		RD		: in  	std_logic;							-- Read Strobe
		WR		: in  	std_logic;							-- Write Strobe
		PE		: out 	std_logic;							-- Parity error		
		FE		: out 	std_logic;							-- Frame error
		OE		: out 	std_logic;							-- Overwrite error
		RST		: in  	std_logic	:= '0');				-- Reset signal
						
end component;


signal uart_reset      :   std_logic;
signal uart_rda     :   std_logic;
signal leds_conn    :   std_logic_vector (7 downto 0);

begin

UART_R  :   UARTcomponent port map(
        RDA     => uart_rda,
        RXD     => UART_RXD,
        RST     => uart_reset,
        CLK     => CLK,
        RD      => '0',
        DBOUT   => leds_conn,
        DBIN    => (others =>'0'),
        WR      => '0',
        PE      => errors(0),
        FE      => errors(1),
        OE      => errors(2)
);


cu      :   cu_ricevitore port map(
    CLK             => CLK,
    RESET           => RST,
    RDA             => uart_rda,
    UART_OUTPUT     => leds_conn,
    uart_reset      => uart_reset,
    leds            => LEDS
);




end Behavioral;

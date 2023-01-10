----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.12.2022 16:48:27
-- Design Name: 
-- Module Name: Trasmettitore - Behavioral
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

entity trasmettitore is port (
    reset           :   in  std_logic;                          -- reset
    clk             :   in  std_logic;                          -- clock    
    wr_button       :   in  std_logic;                          -- bottone di avvio trasmissione
    output          :   out std_logic   := '1'                  -- segnale di uscita dell'uart    
);
end trasmettitore;

architecture structural of trasmettitore is

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

-- COMPONENTE UTILIZZATO PER POTER GESTIRE LA DISPONIBILITÁ AD INVIARE UN NUOVO DATO TRAMITE PORTA UART
component uc_A is port (
    reset          :   in  std_logic; 
    wr_cleared     :   in  std_logic; 
    clk            :   in  std_logic;
    TBE		       :   in  std_logic;
    WR             :   out std_logic;
    uart_reset     :   out std_logic;
    cont_en        :   out std_logic
);
end component;

component counter_mod16 is port ( 
    clock   : in  STD_LOGIC;
    reset   : in  STD_LOGIC;
    enable  : in STD_LOGIC;
    counter : out  STD_LOGIC_VECTOR (3 downto 0)
);
end component;

component ROM is port(
    clk : in std_logic; 
    addr : in std_logic_vector(3 downto 0);                                   
    data : out std_logic_vector(7 downto 0)
);
end component;

--signal sig_dbin     :   std_logic_vector(7 downto 0) := (others => '1');
signal sig_tbe      :   std_logic;
signal sig_rd       :   std_logic;
signal sig_wr       :   std_logic;
signal sig_reset    :   std_logic;
signal cont_en      :   std_logic := '0';
signal addr         :   std_logic_vector(3 downto 0) := (others => '0');
signal input        :   std_logic_vector(7 downto 0);

begin

UART    :   UARTcomponent   port map(
            CLK     => clk,
		RST     => reset,
            TXD     => output,
            RXD     => '1',
		DBIN 	  => input,
		TBE	  => sig_tbe,
		RD	  => '1',
		WR	  => sig_wr
);

controllo   : uc_A port map(
    reset       => reset, 
    wr_cleared  => wr_button,
    clk         => clk,
    TBE         => sig_tbe,
    WR          => sig_wr,
    uart_reset  => sig_reset,
    cont_en     => cont_en
);

contatore   : counter_mod16 port map (
    clock   => clk,
    reset   => reset,
    enable  => cont_en,
    counter => addr
);

memoria_rom : ROM port map (
    clk     => clk,
    addr    => addr,                                 
    data    => input
);

end structural;

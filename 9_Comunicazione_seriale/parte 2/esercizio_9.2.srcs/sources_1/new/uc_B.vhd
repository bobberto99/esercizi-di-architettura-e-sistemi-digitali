library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cu_ricevitore is port(
    CLK         :   in  std_logic;
    RESET       :   in  std_logic;
    RDA         :   in  std_logic;
    UART_OUTPUT :   in  std_logic_vector (7 downto 0);
    uart_reset  :   out std_logic;
    data        :   out std_logic_vector (7 downto 0);
    cont_en     :   out std_logic;
    memorize    :   out std_logic;
    read        :   out std_logic
);
end cu_ricevitore;

architecture Behavioral of cu_ricevitore is

type stato is (reset_state, idle, lettura_dati, conferma_lettura, incremento);
signal  data_temp    :   std_logic_vector (7 downto 0) := (OTHERS=>'0');
signal  reset_temp   :   std_logic   :='0';
signal  curr_state   :   stato       := idle;
signal  next_state   :   stato       := idle;

begin

registri      : process (clk)
begin
if rising_edge(clk) then

    if reset='1' then
        curr_state <= reset_state;
    else
        curr_state  <= next_state;
        data        <= data_temp;
        uart_reset  <= reset_temp;
    end if;
    
end if;
end process;


calcolo_stato : process(curr_state, next_state, RDA)
begin
case curr_state is 
            when reset_state => 
                                memorize <= '0';
                                read <= '1';
                                cont_en <='0';  
                                data_temp <= (others=>'0');
                                reset_temp   <= '0';
                                next_state <= idle;        
            when idle =>
                                
                                memorize <= '0';
                                read <= '0';
                                cont_en <='0';  
                                reset_temp <= '0';
                                if RDA = '1' then
                                    next_state<=lettura_dati;
                                elsif RDA = '0' then
                                    next_state<= idle;
                                end if;
                                
            when lettura_dati => 
                                
                                read <= '0';
                                cont_en <='0';   
                                reset_temp <= '0';
                                data_temp <= UART_OUTPUT;
                                memorize <= '0';
                                next_state<=conferma_lettura;
                                
            when conferma_lettura => 
                
                                memorize <= '1';
                                cont_en <='0';
                                reset_temp <= '1';
                                read <= '1';
                                if RDA = '1' then
                                    next_state<=conferma_lettura;
                                elsif RDA = '0' then
                                    next_state<= incremento;
                                end if;
            when incremento       => 
                        
                                read <= '0';
                                memorize <= '0';
                                cont_en <='1';
                                reset_temp <= '0';
                                next_state <= idle;
                                
end case;
end process;



end Behavioral;
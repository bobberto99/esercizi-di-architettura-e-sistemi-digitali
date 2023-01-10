library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder_sub_32 is
	port( X, Y: in std_logic_vector(31 downto 0);
		  cin: in std_logic;
		  Z: out std_logic_vector(31 downto 0);
		  cout: out std_logic);		  
end adder_sub_32;

architecture structural of adder_sub_32 is
	component ripple_carry_32 is
	port( X, Y: in std_logic_vector(31 downto 0);
		  c_in: in std_logic;
		  c_out: out std_logic;
		  Z: out std_logic_vector(31 downto 0));
	end component;
	
	signal complementoy: std_logic_vector(31 downto 0);
	
	begin
	
	complemento_y: FOR i IN 0 TO 31 GENERATE
				   complementoy(i)<=Y(i) xor cin;
				   END GENERATE;
				   
	RA: ripple_carry_32 port map(X, complementoy, cin, cout, Z);
	
	end structural;
	
	
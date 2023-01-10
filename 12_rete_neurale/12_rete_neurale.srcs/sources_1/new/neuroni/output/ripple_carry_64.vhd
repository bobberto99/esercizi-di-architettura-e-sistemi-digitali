library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ripple_carry_64 is
	port( X, Y: in std_logic_vector(63 downto 0);
		  c_in: in std_logic;
		  c_out: out std_logic;
		  Z: out std_logic_vector(63 downto 0));
end ripple_carry_64 ;

architecture structural of ripple_carry_64  is
	component full_adder is 
	port(
	a,b: in std_logic; 
	cin: in std_logic;
	cout, s: out std_logic);
	end component;
	
	signal temp: std_logic_vector(63 downto 0);
	
	begin
	
	RA0: full_adder port map(X(0), Y(0), c_in, temp(0), Z(0));
	
	RA1to62: FOR i IN 1 TO 62 GENERATE
	   RA: full_adder port map(X(i), Y(i), temp(i-1), temp(i), Z(i));
	END GENERATE;
			
	RA63: full_adder port map(X(63), Y(63), temp(62), c_out, Z(63));
	
	end structural;
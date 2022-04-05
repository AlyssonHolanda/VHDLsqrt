
library IEEE;
use IEEE.std_logic_1164.all;

-- comparador de 8 bits
entity comp_8bits is port 
( 	
		a, b : in std_logic_vector (7 downto 0);
		equals: out std_logic
 );
end comp_8bits ;
architecture hardware of comp_8bits   is
begin
	comp: process (a,b) -- lista de sensibilidade
	begin
		if a > b then
		equals <= '1';
		else
		equals <= '0';
		end if;
 end process comp;
end hardware;
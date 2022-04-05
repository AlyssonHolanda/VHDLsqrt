



library IEEE;
use IEEE.std_logic_1164.all;


entity mux2x1 is port
(

	sel : in std_logic;
	A, B: in std_logic_vector (7 downto 0);
	O 	 : out std_logic_vector (7 downto 0)
);
end mux2x1;

architecture hardware of mux2x1 is
begin
	with sel select
		O <= A when '0',
			  B when '1',
			 "00000000" when others;
	
end hardware;

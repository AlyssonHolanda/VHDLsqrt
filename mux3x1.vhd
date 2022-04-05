



library IEEE;
use IEEE.std_logic_1164.all;



entity mux3x1 is port
(

	sel : in std_logic_vector (1 downto 0);
	A, B, C	 : in std_logic_vector (7 downto 0);
	O 	 : out std_logic_vector (7 downto 0)
);
end mux3x1;

architecture hardware of mux3x1 is
begin
	with sel select
		O <= A when "00",
			  B when "01",
			  C when "10",
			 "00000000" when others;
end hardware;

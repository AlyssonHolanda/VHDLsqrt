




library IEEE;
use IEEE.std_logic_1164.all;

entity reg_8bits is port
(
	clk: in std_logic;
	wr: in std_logic;
	rst: in std_logic;
	d	: in std_logic_vector (7 downto 0);
	q  : out std_logic_vector(7 downto 0) 

);

end reg_8bits;


architecture hardware of reg_8bits is

begin 
	process (clk, rst, wr)
	begin
		if rising_edge(clk) then
			if(rst = '1') then q <= "00000000";		
			elsif(wr = '1') then q <= d;
			end if;			
		end if; -- clk event 
	end process;
end hardware; 
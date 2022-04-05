

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;



entity som_8bits is port
(
	in1 : in std_logic_vector(7 downto 0);
	in2 : in std_logic_vector(7 downto 0);
	result : out std_logic_vector(7 downto 0)  

);
end som_8bits;


architecture hardware of som_8bits is
begin

	result <= (in1) + (in2);

end hardware; 
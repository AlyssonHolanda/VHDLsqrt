

library IEEE;
use IEEE.std_logic_1164.all;



entity controleSqrt is
port(
	rstsystem, c1out,clk : in std_logic;
	m1ctrl, m2ctrl, m3ctrl, m4ctrl : out std_logic;  
	m5ctrl : out std_logic_vector (1 downto 0);
	r5wr, r5rst, r6wr, r6rst, r7wr, r7rst : out std_logic

); end controleSqrt;


architecture hardware of controleSqrt is 


	type st is (estado1, estado2, estado3, estado4, estado5, estado6);
	signal estado_atual, proximo_estado : st;
	
begin
	
	mudanca_estado : process (clk,rstsystem)
	begin
		 if rstsystem = '1' then estado_atual <= estado1;
		elsif(clk'event and clk = '1') then
			estado_atual <= proximo_estado;
		end if;
	end process;

	maquina_estados : process (estado_atual, c1out)
	begin
		case (estado_atual) is
			when estado1 =>					
				r5rst <= '1';		
				r6rst <= '1';		
				r7rst <= '1';
				r5wr  <= '0';		
				r6wr  <= '0';		
				r7wr  <= '0';
				
				m1ctrl <= '0';
				m2ctrl <= '0';
				m3ctrl <= '0';
				m4ctrl <= '0';
				m5ctrl <= "00";
				
		      proximo_estado <= estado2; 
						
			when estado2 =>	
				r5wr   <= '0';
				r5rst  <= '0';		
			 	r6wr   <= '1';
				r6rst  <= '0';		
				r7wr   <= '0';
				r7rst  <= '0';		
				m1ctrl <= '0';
				m2ctrl <= '1';
				m3ctrl <= '0';
				m4ctrl <= '0';
				m5ctrl <= "10"; 
			
				proximo_estado <= estado3; 
								
			
			when estado3 =>
				r5wr   <= '0';
				r5rst  <= '0';		
			 	r6wr   <= '0';
				r6rst  <= '0';		
				r7wr   <= '1';
				r7rst  <= '0';		
				m1ctrl <= '0';
				m2ctrl <= '0';
				m3ctrl <= '1';
				m4ctrl <= '1';
				m5ctrl <= "01"; 
		
		      proximo_estado <= estado4; 
							
				
				when estado4 =>
				r5wr   <= '1';
				r5rst  <= '0';		
			 	r6wr   <= '0';
				r6rst  <= '0';		
				r7wr   <= '0';
				r7rst  <= '0';		
				m1ctrl <= '1';
				m2ctrl <= '0';
				m3ctrl <= '0';
				m4ctrl <= '1';
				m5ctrl <= "00"; 
						
				proximo_estado <= estado5; 
				
				
			when estado5 =>
			
				r5wr   <= '1';
				r5rst  <= '0';		
			 	r6wr   <= '0';
				r6rst  <= '0';		
				r7wr   <= '0';
				r7rst  <= '0';		
				m1ctrl <= '1';
				m2ctrl <= '0';
				m3ctrl <= '0';
				m4ctrl <= '0';
				m5ctrl <= "00"; 
				
			
				if (c1out ='1') then proximo_estado <= estado6;
				else proximo_estado <= estado2;
				end if;
			
			when estado6 =>
			
				r5wr   <= '0';
				r5rst  <= '0';		
			 	r6wr   <= '0';
				r6rst  <= '0';		
				r7wr   <= '0';
				r7rst  <= '0';		
				m1ctrl <= '0';
				m2ctrl <= '0';
				m3ctrl <= '0';
				m4ctrl <= '0';
				m5ctrl <= "00"; 
				proximo_estado <= estado6;
		end case;
	end process; 
end hardware;

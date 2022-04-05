
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;


entity raiz is port 
(

	entrada            		 : in std_logic_vector(7 downto 0);
	clk, rstsystem				 : in std_logic;
	resultado       			 : out std_logic_vector(7 downto 0)

);
end raiz;

architecture hardware of raiz is 

	component controleSqrt port
	(
		rstsystem, c1out,clk : in std_logic;
		m1ctrl, m2ctrl, m3ctrl, m4ctrl : out std_logic;  
		m5ctrl : out std_logic_vector (1 downto 0);
		r5wr, r5rst, r6wr, r6rst, r7wr, r7rst : out std_logic
	); 
	end component; 

	component som_8bits port
	(
		in1 : in std_logic_vector(7 downto 0);
	   in2 : in std_logic_vector(7 downto 0);
	   result : out std_logic_vector(7 downto 0)  
	
	);
	end component;
	
		
	component reg_8bits port
	(
		clk: in std_logic;
		wr : in std_logic;
		rst : in std_logic;
		d	: in std_logic_vector (7 downto 0);
		q  : out std_logic_vector(7 downto 0) 

	);
	end component;
	
	
	component comp_8bits port 
	( 	
		a, b : in std_logic_vector (7 downto 0);
		equals: out std_logic
	); 
	end component;
	
	
	component mux3x1 port
	(
		sel : in std_logic_vector (1 downto 0);
		A, B, C	 : in std_logic_vector (7 downto 0);
		O 	 : out std_logic_vector (7 downto 0)
	);
	end component;
	
	component mux2x1 port
	(
		sel : in std_logic;
		A, B: in std_logic_vector (7 downto 0);
		O 	 : out std_logic_vector (7 downto 0)
	);
	end component;
	
		signal s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13: std_logic_vector(7 downto 0);
		signal c1out : std_logic; 
		signal sr5wr, sr5rst, sr6wr, sr6rst, sr7wr, sr7rst, selm1, selm2, selm3, selm4: std_logic; 
		signal selm5 : std_logic_vector(1 downto 0);

	begin 
	
	R2: reg_8bits PORT MAP(clk, '1', '0', "00000100", s13);
	R3: reg_8bits PORT MAP(clk, '1', '0', "00000010", s4);
	R4: reg_8bits PORT MAP(clk, '1', '0', "00000001", s7);
	R5: reg_8bits PORT MAP(clk, sr5wr, sr5rst, s3, s2);
	R6: reg_8bits PORT MAP(clk, sr6wr, sr6rst, s6, s5);
	R7: reg_8bits PORT MAP(clk, sr7wr, sr7rst, s9, s8);
	
	
	m1: mux2x1 PORT MAP(selm1, s13, s12,s3);
	m2: mux2x1 PORT MAP(selm2, s7, s12,s6);
	m3: mux2x1 PORT MAP(selm3, s4, s12,s9);
	m4: mux2x1 PORT MAP(selm4, s7, s8,s11);
	m5: mux3x1 PORT MAP(selm5, s2, s4,s5, s10);
	
	som1: som_8bits PORT MAP(s10, s11, s12);
	
	c1: comp_8bits PORT MAP(s2, entrada, c1out);
	
	maquina_estado : controleSqrt PORT MAP (rstsystem, c1out, clk, selm1, selm2, selm3, selm4, selm5, sr5wr, sr5rst, sr6wr, sr6rst, sr7wr, sr7rst); 
	resultado <= s5; 
	
	end hardware; 
	
	
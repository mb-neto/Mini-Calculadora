entity Calculadora is
	port(x1, x2: in bit_vector(3 downto 0);
			s2,s1,s0: in bit;
			ld: in bit;
			ctrl: out bit_vector(1 downto 0);
			c0: out bit;
			y: out bit_vector(3 downto 0));
end Calculadora;

architecture comportamento of Calculadora is

component inversor is
	port(x: in bit_vector(3 downto 0);
			y: out bit_vector(3 downto 0));
end component;

component maiorQue is
	port(a,b : in bit_vector(3 downto 0);
			s : out bit);
end component;

component menorQue is
	port(c,d : in bit_vector(3 downto 0);
			y : out bit);
end component;

component somador is
	port(a,b: in bit_vector(3 downto 0);
			C_in: in bit;
			s: out bit_vector(3 downto 0);
			c_out: out bit);
end component;

component subtrador is
	port(a,b: in bit_vector(3 downto 0);
			b_in: in bit;
			s: out bit_vector(3 downto 0);
			b_out: out bit);
end component;

component multiplexador is
	port(a,b,c,d,e,s0,s1,s2: in bit;
			y: out bit);
end component;

component ConversorDisplay is
	port(y: in bit_vector(3 downto 0);
			ctrl: in bit_vector(1 downto 0);
			disp: out bit_vector(6 downto 0));
end component;

signal sig_somador, sig_subtrador, sig_maior, sig_menor: bit;

signal vsomador, vsubtrador, vinversor: bit_vector(3 downto 0);

begin
	usomador: somador port map (a => x1,b => x2,C_in => '0',s => vsomador,c_out => sig_somador);
	usubtrador: subtrador port map (a => x1,b => x2,b_in => '0',s => vsubtrador,b_out => sig_subtrador);
	uinversor: inversor port map (x => x1,y => vinversor);
	umaior: maiorQue port map (a => x1,b => x2,s => sig_maior);
	umenor: menorQue port map (c => x1,d => x2,y => sig_menor);
	
	c0 <= '1' when 
					(sig_menor = '1' and s0 = '0' and s1 = '1' and s2 = '1')
					or (sig_maior = '1' and s0 = '0' and s1 = '1' and s2 = '0')
					or (sig_somador = '1' and s0 = '0' and s1 = '0' and s2 = '0')
			else '0';
	
	uf: for i in 0 to 3 generate
 		    umult: multiplexador port map (vsomador(i), vsubtrador(i),'0','0', vinversor(i), s0, s1, s2, y(i));
 	    end generate;
		 
	ctrl(0) <= '1' when (sig_menor = '1' and s0 = '0' and s1 = '0' and s2 = '1') else '0';
	ctrl(1) <= ld;
	
end comportamento;
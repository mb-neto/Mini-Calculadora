entity Projeto is
	port(x1, x2: in bit_vector(3 downto 0);
			s2,s1,s0: in bit;
			ld: in bit;
			c0: out bit;
			disp: out bit_vector(6 downto 0));
end Projeto;

architecture comportamento of Projeto is

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

component Calculadora is
	port(x1, x2: in bit_vector(3 downto 0);
			s2,s1,s0: in bit;
			ld: in bit;
			ctrl: out bit_vector(1 downto 0);
			c0: out bit;
			y: out bit_vector(3 downto 0));
end component;

signal auxctrl: bit_vector(1 downto 0);

signal auxy: bit_vector(3 downto 0);

begin
		uc: Calculadora port map (x1,x2,s0,s1,s2,ld,auxctrl,c0,auxy);
		udisp: ConversorDisplay port map (auxy,auxctrl,disp);
end comportamento;
entity display is 
	port(x: in bit_vector(3 downto 0);
			ctrl: in bit_vector(1 downto 0);
			aux: in bit;
			y: out bit_vector(6 downto 0));
end display;

architecture comportamento of display is

component visor7seguimentos is
	port(w,x,y,z : in bit;
			a,b,c,d,e,f,g: out bit);
end component;

begin
	uv: visor7seguimentos port map (x(0),x(1),x(2),x(3),y(0),y(1),y(2),y(3),y(4),y(5),y(6));
end comportamento;
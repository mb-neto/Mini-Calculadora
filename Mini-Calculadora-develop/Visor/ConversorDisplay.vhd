entity ConversorDisplay is 
	port(y: in bit_vector(3 downto 0);
			ctrl: in bit_vector(1 downto 0);
			disp: out bit_vector(6 downto 0));
end ConversorDisplay;

architecture comportamento of ConversorDisplay is

component visor7seguimentos is
	port(w,x,y,z : in bit;
			a,b,c,d,e,f,g: out bit);
end component;

signal erro, desl, visor: bit_vector(6 downto 0);
signal a,b,c,d,e,f,g: bit;

begin
	uvisor: visor7seguimentos port map(y(3),y(2),y(1),y(0), a,b,c,d,e,f,g);
	visor <= not( a & b & c & d & e & f & g);
	desl <= "1111111";
	erro <= "0110111";
	
	disp <= visor when ctrl = "00" else
				erro when ctrl = "01" else
				desl;

end comportamento;
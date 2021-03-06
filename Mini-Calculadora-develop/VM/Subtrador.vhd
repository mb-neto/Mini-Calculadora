entity Subtrador is
	port(a,b: in bit_vector(3 downto 0);
			b_in: in bit;
			s: out bit_vector(3 downto 0);
			b_out: out bit);
end Subtrador;

architecture Subtrador4bits of Subtrador is
signal sig: bit_vector(2 downto 0) ;
begin

	s(0)<= (a(0) xor b(0) xor b_in);
	sig(0) <= (b(0) and b_in)or(not a(0) and b_in) or (not a(0) and b(0));
	
	s(1) <= (a(1) xor b(1) xor sig(0));
	sig(1) <= (b(1) and sig(0))or(not a(1) and sig(0))or(not a(1) and b(1));
	
	s(2) <= (a(2) xor b(2) xor sig(1));
	sig(2) <= (b(2) and sig(1))or(not a(2) and sig(1))or(not a(2) and b(2));
	
	s(3) <= (a(3) xor b(3) xor sig(2));
	b_out <= (b(3) and sig(2))or(not a(3) and sig(2))or(not a(3) and b(3));
	
end Subtrador4bits;
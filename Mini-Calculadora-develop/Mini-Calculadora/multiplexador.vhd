entity multiplexador is 
	port(a,b,c,d,e,s0,s1,s2: in bit;
			y: out bit);
end multiplexador;

architecture multiplexa of multiplexador is
signal sigA, sigB, sigC, sigD, sigE: bit;
begin
	sigA <= a and not s0 and not s1 and not s2;
	sigB <= b and not s0 and not s1 and s2;
	sigC <= c and not s0 and s1 and not s2;
	sigD <= d and not s0 and s1 and s2;
	sigE <= e and s0 and not s1 and not s2;
	y <= sigA or sigB or sigC or sigD or sigE;
end multiplexa;
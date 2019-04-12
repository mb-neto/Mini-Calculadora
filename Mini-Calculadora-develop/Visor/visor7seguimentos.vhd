entity visor7seguimentos is

	port(w,x,y,z : in bit;
			a,b,c,d,e,f,g: out bit);
			
end visor7seguimentos;

architecture visor of visor7seguimentos is
begin
	
	a <= (not(w) and y) or (w and not(x) and not(y)) or (not(x) and not(y) and not(z)) or (not(w) and x and y);
	b <= (not(w) and not(x)) or (not(x) and not(y)) or (not(w) and not(y) and not(z)) or (not(w) and y and z);
	c <= (not(w) and x) or (not(w) and not(y)) or (not(w) and z) or (not(x) and not(y));
	d <= (w and not(x) and not(y)) or (not(w) and y and not(z)) or (not(w) and not(x) and y) or (not(x) and not(y) and not(z)) or (not(w) and x and not(y) and z);
	e <= (not(w) and y and not(z)) or (not(x) and not(y) and not(z));
	f <= (w and not(x) and not(y)) or (not(w) and x and not(y)) or (not(x) and not(y) and not(z)) or (not(w) and x and not(z));
	g <= (w and not(x) and not(y)) or (not(w) and not(x) and y) or (not(w) and x and not(y)) or (not(w) and y and not(z));
	
end visor;
	
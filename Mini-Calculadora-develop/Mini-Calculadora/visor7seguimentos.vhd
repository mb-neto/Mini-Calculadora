entity visor7seguimentos is

	port(w,x,y,z : in bit;
			a,b,c,d,e,f,g: out bit);
			
end visor7seguimentos;

architecture visor of visor7seguimentos is
begin
	
	a <= y or w or (x and z) or (not x and not z);
	b <= (not x) or (not w and not y and not z) or (not w and y and z) or (w and not y and z);
	c <= (not w and x) or (w and not x) or (not y and z) or (not w and not y) or (not w and z);
	d <= (w and not y) or (x and y and not z) or (not x and y and z) or (not w and not x and not z) or (x and not y and z);
	e <= (w and x) or (y and not z) or (w and y) or (w and not z) or (not x and not z);
	f <= w or (not y and not z) or (x and not y) or (x and not z); 
	g <= (w and not x) or (y and not z) or (w and y) or (not x and y) or (not w and x and not y);
	
end visor;
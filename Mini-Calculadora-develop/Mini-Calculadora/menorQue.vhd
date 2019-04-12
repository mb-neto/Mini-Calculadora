 entity menorQue is

	port(c,d : in bit_vector(3 downto 0);
			y : out bit);
	
end menorQue;

architecture menor of menorQue is
begin
	
	y <= '1' when c < d else '0';
	
end menor;
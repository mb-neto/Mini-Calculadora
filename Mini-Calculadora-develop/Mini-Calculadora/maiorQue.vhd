entity maiorQue is
	
	port(a,b : in bit_vector(3 downto 0);
			s : out bit);

end maiorQue;

architecture maior of maiorQue is
begin
	
	s <= '1' when a > b else '0';
	
end maior;
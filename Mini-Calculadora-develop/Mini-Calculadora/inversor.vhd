ENTITY inversor IS
	PORT(x: in bit_vector(3 downto 0);
			y: out bit_vector(3 downto 0));
END inversor;

ARCHITECTURE inv OF inversor IS
BEGIN
	y <= NOT x;
end inv;
	
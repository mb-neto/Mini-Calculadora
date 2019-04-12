ENTITY inversor IS
	PORT(x1: IN BIT;
			Y: OUT BIT);
END inversor;

ARCHITECTURE inv OF inversor IS
BEGIN
	y <= NOT x1;
end inv;	
	
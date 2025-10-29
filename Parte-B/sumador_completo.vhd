Library IEEE;
Use IEEE.STD_LOGIC_1164.ALL;

Entity sumador_completo is
    Port (
	    A : in STD_LOGIC;
		 B : in STD_LOGIC;
		 Cin : in STD_LOGIC;
		 S : out STD_LOGIC;
		 Cout : out STD_LOGIC);
End sumador_completo;

Architecture Behavioral of sumador_completo is
Begin 
S <= (B xor Cin)xor A;
Cout <= (B and Cin)or(A and B)or(A and Cin);
end Behavioral;

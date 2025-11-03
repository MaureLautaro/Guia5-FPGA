-- ===========================================================
-- Descripción: Sumador completo de 1 bit (Full Adder)
-- Autor: Maure Lautaro
-- ===========================================================

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Full_Adder is
    Port (
        A    : in  STD_LOGIC;   -- Primer bit de entrada
        B    : in  STD_LOGIC;   -- Segundo bit de entrada
        Cin  : in  STD_LOGIC;   -- Carry de entrada
        S    : out STD_LOGIC;   -- Suma (resultado)
        Cout : out STD_LOGIC    -- Carry de salida
    );
end Full_Adder;

architecture Behavioral of Full_Adder is
begin
    -- Ecuaciones lógicas del sumador completo:
    -- S = A ⊕ B ⊕ Cin
    -- Cout = (A AND B) OR (A AND Cin) OR (B AND Cin)

    S    <= (A XOR B) XOR Cin;
    Cout <= (A AND B) OR (A AND Cin) OR (B AND Cin);

end Behavioral;

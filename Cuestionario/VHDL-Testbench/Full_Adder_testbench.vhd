--- ===========================================================
-- Testbench para el Sumador Completo de 1 bit
-- No tiene entradas ni salidas externas
-- ===========================================================

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Full_Adder_testbench is
end Full_Adder_testbench;

architecture test of Full_Adder_testbench is

    -- Declaración del componente a probar
    component Full_Adder
        Port (
            A    : in  STD_LOGIC;
            B    : in  STD_LOGIC;
            Cin  : in  STD_LOGIC;
            S    : out STD_LOGIC;
            Cout : out STD_LOGIC
        );
    end component;

    -- Señales internas para conectar al DUT (Device Under Test)
    signal A, B, Cin, S, Cout : STD_LOGIC;

begin

    -- Instanciación del sumador
    DUT: Full_Adder
        port map (
            A => A,
            B => B,
            Cin => Cin,
            S => S,
            Cout => Cout
        );

    -- Proceso de estímulo
    process
    begin
        -- Prueba 1
        A <= '0'; B <= '0'; Cin <= '0';
        wait for 10 ns;

        -- Prueba 2
        A <= '0'; B <= '0'; Cin <= '1';
        wait for 10 ns;

        -- Prueba 3
        A <= '0'; B <= '1'; Cin <= '0';
        wait for 10 ns;

        -- Prueba 4
        A <= '0'; B <= '1'; Cin <= '1';
        wait for 10 ns;

        -- Prueba 5
        A <= '1'; B <= '0'; Cin <= '0';
        wait for 10 ns;

        -- Prueba 6
        A <= '1'; B <= '0'; Cin <= '1';
        wait for 10 ns;

        -- Prueba 7
        A <= '1'; B <= '1'; Cin <= '0';
        wait for 10 ns;

        -- Prueba 8
        A <= '1'; B <= '1'; Cin <= '1';
        wait for 10 ns;

        -- Fin de simulación
        wait;
    end process;

end test;

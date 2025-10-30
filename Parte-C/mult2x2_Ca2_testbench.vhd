-- ============================================================
-- Testbench para: mult2x2_Ca2
-- Autor: Lautaro Tomas Maure
-- Descripción: Prueba funcional del multiplicador 2x2 bits en CA2 con reloj
-- ============================================================

library ieee;
use ieee.std_logic_1164.all;

entity mult2x2_Ca2_testbench is
end mult2x2_Ca2_testbench;

architecture test of mult2x2_Ca2_testbench is

    -- Declaración del componente a testear (DUT)
    component mult2x2_Ca2
        port(
            A1  : in  std_logic;
            A0  : in  std_logic;
            B0  : in  std_logic;
            B1  : in  std_logic;
            clk : in  std_logic;
            V   : out std_logic;
            r0  : out std_logic;
            r1  : out std_logic;
            r2  : out std_logic;
            r3  : out std_logic
        );
    end component;

    -- ===========================
    -- Señales internas del testbench
    -- ===========================
    signal A1, A0 : std_logic := '0';
    signal B1, B0 : std_logic := '0';
    signal clk    : std_logic := '0';
    signal V      : std_logic;
    signal r0, r1, r2, r3 : std_logic;

    -- Período del reloj
    constant Tclk : time := 20 ns;

begin

    -- ===========================
    -- Instanciación del DUT
    -- ===========================
    DUT: mult2x2_Ca2
        port map(
            A1 => A1,
            A0 => A0,
            B0 => B0,
            B1 => B1,
            clk => clk,
            V => V,
            r0 => r0,
            r1 => r1,
            r2 => r2,
            r3 => r3
        );

    -- ===========================
    -- Generador de reloj
    -- ===========================
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for Tclk / 2;
            clk <= '1';
            wait for Tclk / 2;
        end loop;
    end process;

    -- ===========================
    -- Estímulos de prueba
    -- ===========================
    stim_proc : process
    begin
        -- Esperar al inicio
        wait for 30 ns;

        -- Caso 1: +1 x +1 = +1 → (01 × 01 = 0001)
        A1 <= '0'; A0 <= '1';
        B1 <= '0'; B0 <= '1';
        wait for Tclk;

        -- Caso 2: +1 x -2 = -2 → (01 × 10 = 1110)
        A1 <= '0'; A0 <= '1';
        B1 <= '1'; B0 <= '0';
        wait for Tclk;

        -- Caso 3: -1 x +2 = -2 → (11 × 10 = 1110)
        A1 <= '1'; A0 <= '1';
        B1 <= '1'; B0 <= '0';
        wait for Tclk;

        -- Caso 4: -2 x -2 = +4 → (10 × 10 = 0100)
        A1 <= '1'; A0 <= '0';
        B1 <= '1'; B0 <= '0';
        wait for Tclk;

        -- Caso 5: +3 x -1 = -3 → (11 × 11 = 1101)
        A1 <= '0'; A0 <= '1';
        B1 <= '1'; B0 <= '1';
        wait for Tclk;

        -- Finalizar simulación
        wait for 50 ns;
        assert false report "Fin de simulación" severity failure;
    end process;

end test;

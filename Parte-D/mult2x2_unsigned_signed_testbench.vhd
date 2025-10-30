library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mult2x2_unsigned_signed_testbench is
end entity;

architecture sim of mult2x2_unsigned_signed_testbench is
    signal A_unsigned, B_unsigned : unsigned(1 downto 0);
    signal A_signed, B_signed     : signed(1 downto 0);
    signal P_unsigned             : unsigned(3 downto 0);
    signal P_signed               : signed(3 downto 0);
begin

    -- Instancia del diseño
    DUT: entity work.mult2x2_unsigned_signed
        port map (
            A_unsigned => A_unsigned,
            B_unsigned => B_unsigned,
            A_signed   => A_signed,
            B_signed   => B_signed,
            P_unsigned => P_unsigned,
            P_signed   => P_signed
        );

    -- Proceso de prueba
    process
    begin
        -- Caso 1: 2 * 3
        A_unsigned <= "10";  -- 2
        B_unsigned <= "11";  -- 3
        A_signed   <= "10";  -- -2 en CA2
        B_signed   <= "11";  -- -1 en CA2
        wait for 10 ns;

        -- Caso 2: 1 * 2
        A_unsigned <= "01";
        B_unsigned <= "10";
        A_signed   <= "01";
        B_signed   <= "10";  -- +1 * -2
        wait for 10 ns;

        -- Caso 3: -1 * -2
        A_unsigned <= "00";
        B_unsigned <= "01";
        A_signed   <= "11";  -- -1
        B_signed   <= "10";  -- -2
        wait for 10 ns;

        -- Fin de simulación
        wait;
    end process;
end architecture;

-- ===========================================================
-- Maquina de Estados - Secuencia de Luces (versión por template)
-- Tipo: Moore
-- Autor: Lautaro
-- ===========================================================

library ieee;
use ieee.std_logic_1164.all;

entity MaquinaEstado is
    port(
        clk   : in std_logic;
        reset : in std_logic;
        x     : in std_logic;
        Z     : out std_logic_vector(3 downto 0)
    );
end entity;

architecture rtl of MaquinaEstado is

    -- Declaración del tipo de estados
    type state_type is (state1, state2, state3, state4, state5, state6, state7);

    -- Registro que guarda el estado actual
    signal state : state_type;

begin

    -----------------------------------------------------------
    -- PROCESO 1: CAMBIO DE ESTADO (sincrónico con reloj)
    -----------------------------------------------------------
    process(clk, reset)
    begin
        if reset = '1' then
            state <= state1;  -- Estado inicial
        elsif rising_edge(clk) then
            case state is
                when state1 =>
                    if x = '0' then
                        state <= state2;
                    else
                        state <= state5;
                    end if;

                when state2 =>
                    state <= state3;

                when state3 =>
                    if x = '0' then
                        state <= state4;
                    else
                        state <= state7;
                    end if;

                when state4 =>
                    state <= state1;

                when state5 =>
                    state <= state6;

                when state6 =>
                    state <= state3;

                when state7 =>
                    state <= state1;

                when others =>
                    state <= state1;
            end case;
        end if;
    end process;

    -----------------------------------------------------------
    -- PROCESO 2: SALIDAS (Moore - dependen solo del estado)
    -----------------------------------------------------------
    process(state)
    begin
        case state is
            when state1 => Z <= "0000";
            when state2 => Z <= "0001";
            when state3 => Z <= "0010";
            when state4 => Z <= "0011";
            when state5 => Z <= "0100";
            when state6 => Z <= "0110";
            when state7 => Z <= "0111";
            when others => Z <= "XXXX";  -- Estado indefinido
        end case;
    end process;

end rtl;

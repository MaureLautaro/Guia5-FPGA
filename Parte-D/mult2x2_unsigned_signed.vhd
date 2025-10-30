library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mult2x2_unsigned_signed is
    port (
        A_unsigned : in  unsigned(1 downto 0);
        B_unsigned : in  unsigned(1 downto 0);
        A_signed   : in  signed(1 downto 0);
        B_signed   : in  signed(1 downto 0);
        P_unsigned : out unsigned(3 downto 0);
        P_signed   : out signed(3 downto 0)
    );
end entity;

architecture behavioral of mult2x2_unsigned_signed is
begin

    -- Multiplicación en módulo (sin signo)
    P_unsigned <= A_unsigned * B_unsigned;

    -- Multiplicación en complemento a 2 (con signo)
    P_signed <= A_signed * B_signed;

end architecture;

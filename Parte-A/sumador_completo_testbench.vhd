library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sumador_completo_testbench is
end sumador_completo_testbench;

architecture Behavioral of sumador_completo_testbench is

   -- Componente a probar
   component sumador_completo
      port (
         A    : in  STD_LOGIC;
         B    : in  STD_LOGIC;
         Cin  : in  STD_LOGIC;
         S    : out STD_LOGIC;
         Cout : out STD_LOGIC
      );
   end component;
	
   -- Entradas
   signal A    : std_logic := '0';
   signal B    : std_logic := '0';
   signal Cin  : std_logic := '0';

   -- Salidas
   signal S    : std_logic;
   signal Cout : std_logic;
	
begin

   -- Instancia del componente (UUT = Unit Under Test)
   uut: sumador_completo port map (
      A => A,
      B => B,
      Cin => Cin,
      S => S,
      Cout => Cout
   );
	
   -- Proceso de estímulo
   stim_proc : process 
   begin 
      A <= '0'; B <= '0'; Cin <= '0'; wait for 10 ns;
      A <= '0'; B <= '0'; Cin <= '1'; wait for 10 ns;
      A <= '0'; B <= '1'; Cin <= '0'; wait for 10 ns;
      A <= '0'; B <= '1'; Cin <= '1'; wait for 10 ns;
      A <= '1'; B <= '0'; Cin <= '0'; wait for 10 ns;
      A <= '1'; B <= '0'; Cin <= '1'; wait for 10 ns;
      A <= '1'; B <= '1'; Cin <= '0'; wait for 10 ns;
      A <= '1'; B <= '1'; Cin <= '1'; wait for 10 ns;
      wait;
   end process;

end Behavioral;


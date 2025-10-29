library ieee;
use ieee.std_logic_1164.all;

entity mult2x2_testbench is 
end mult2x2_testbench;

architecture behavioral of mult2x2_testbench is

   component mult2x2
      port (  
         A1 : IN  std_logic;
         A0 : IN  std_logic;
         B0 : IN  std_logic;
         B1 : IN  std_logic;
         P0 : OUT std_logic;
         P1 : OUT std_logic;
         P2 : OUT std_logic;
         P3 : OUT std_logic
      );
   end component;
	
   -- Inputs
   signal A1 : std_logic := '0';
   signal A0 : std_logic := '0';
   signal B1 : std_logic := '0';
   signal B0 : std_logic := '0';
	
   -- Outputs
   signal P0 : std_logic;
   signal P1 : std_logic;
   signal P2 : std_logic;
   signal P3 : std_logic;

begin

   -- Instancia del multiplicador
   uut : mult2x2 port map (
      A0 => A0,
      A1 => A1,
      B0 => B0,
      B1 => B1,
      P0 => P0,
      P1 => P1,
      P2 => P2,
      P3 => P3
   );

   -- Estímulos de prueba
   stim_proc: process
   begin
      A1 <= '0'; A0 <= '0'; B1 <= '0'; B0 <= '0'; wait for 30 ns;
      A1 <= '0'; A0 <= '0'; B1 <= '0'; B0 <= '1'; wait for 30 ns;
      A1 <= '0'; A0 <= '0'; B1 <= '1'; B0 <= '0'; wait for 30 ns;
      A1 <= '0'; A0 <= '0'; B1 <= '1'; B0 <= '1'; wait for 30 ns;
      A1 <= '0'; A0 <= '1'; B1 <= '0'; B0 <= '0'; wait for 30 ns;
      A1 <= '0'; A0 <= '1'; B1 <= '0'; B0 <= '1'; wait for 30 ns;
      A1 <= '0'; A0 <= '1'; B1 <= '1'; B0 <= '0'; wait for 30 ns;
      A1 <= '0'; A0 <= '1'; B1 <= '1'; B0 <= '1'; wait for 30 ns;
      A1 <= '1'; A0 <= '0'; B1 <= '0'; B0 <= '0'; wait for 30 ns;
      A1 <= '1'; A0 <= '0'; B1 <= '0'; B0 <= '1'; wait for 30 ns;
      A1 <= '1'; A0 <= '0'; B1 <= '1'; B0 <= '0'; wait for 30 ns;
      A1 <= '1'; A0 <= '0'; B1 <= '1'; B0 <= '1'; wait for 30 ns;
      A1 <= '1'; A0 <= '1'; B1 <= '0'; B0 <= '0'; wait for 30 ns;
      A1 <= '1'; A0 <= '1'; B1 <= '0'; B0 <= '1'; wait for 30 ns;
      A1 <= '1'; A0 <= '1'; B1 <= '1'; B0 <= '0'; wait for 30 ns;
      A1 <= '1'; A0 <= '1'; B1 <= '1'; B0 <= '1'; wait for 30 ns;
      wait;
   end process;

end behavioral;
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bloque_b IS 
	PORT (
		SCL       : IN  STD_LOGIC;
		Hab_Dato  : IN  STD_LOGIC;
		fin_dato  : OUT STD_LOGIC
	);
END bloque_b;

ARCHITECTURE bdf_type OF bloque_b IS 

	COMPONENT lpm_counter1
		PORT (
			clock : IN  STD_LOGIC;
			cout  : OUT STD_LOGIC;
			q     : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT lpm_shiftreg1
		PORT (
			clock   : IN  STD_LOGIC;
			shiftin : IN  STD_LOGIC;
			q       : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	END COMPONENT;

	SIGNAL clk_habilitado : STD_LOGIC;

BEGIN

	clk_habilitado <= Hab_Dato AND SCL;

	b2v_CONT_MOD8 : lpm_counter1
		PORT MAP(
			clock => clk_habilitado,
			cout  => fin_dato,
			q     => OPEN
		);

	b2v_REG8BITS : lpm_shiftreg1
		PORT MAP(
			clock   => clk_habilitado,
			shiftin => '0',   -- o SDA si corresponde
			q       => OPEN
		);

END bdf_type;

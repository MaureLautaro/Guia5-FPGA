-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Mon Nov 03 21:18:01 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY bloque_a IS 
	PORT
	(
		SCL :  IN  STD_LOGIC;
		SDA :  IN  STD_LOGIC;
		Hab_Dir :  IN  STD_LOGIC;
		soy :  OUT  STD_LOGIC;
		fin_dir :  OUT  STD_LOGIC
	);
END bloque_a;

ARCHITECTURE bdf_type OF bloque_a IS 

COMPONENT lpm_compare0
	PORT(dataa : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 aeb : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT lpm_constant0
	PORT(		 result : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_counter0
	PORT(clock : IN STD_LOGIC;
		 cout : OUT STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_shiftreg0
	PORT(clock : IN STD_LOGIC;
		 shiftin : IN STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_4 <= Hab_Dir AND SCL;


b2v_comparador : lpm_compare0
PORT MAP(dataa => SYNTHESIZED_WIRE_0,
		 datab => SYNTHESIZED_WIRE_1,
		 aeb => soy);


b2v_constante : lpm_constant0
PORT MAP(		 result => SYNTHESIZED_WIRE_1);


b2v_CONT_MOD7 : lpm_counter0
PORT MAP(clock => SYNTHESIZED_WIRE_4,
		 cout => fin_dir);


b2v_REG7BITS : lpm_shiftreg0
PORT MAP(clock => SYNTHESIZED_WIRE_4,
		 shiftin => SDA,
		 q => SYNTHESIZED_WIRE_0);


END bdf_type;
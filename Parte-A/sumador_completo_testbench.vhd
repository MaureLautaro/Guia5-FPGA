Architecture Behavioral of sumador_completo_testbench is

   Component sumador_completo
Port (
	    A : in STD_LOGIC;
		 B : in STD_LOGIC;
		 Cin : in STD_LOGIC;
		 S : out STD_LOGIC;
		 Cout : out STD_LOGIC);
	End component;
	
	--Imputs
	signal A : std_logic :='0';
	signal B : std_logic :='0';
	signal Cin : std_logic :='0';
	--Ouputs
	signal S : std_logic;
	signal Cout : std_logic;
	
BEGin
   uut: sumador_completo port map (
	   A => A,
		B => B,
		Cin => Cin,
		S => S,
		Cout => Cout
	);
	
	stim_proc : process 
	begin 
	   A <= '0'; B <= '0'; Cin <= '0'; wait for 10ns;
		A <= '0'; B <= '0'; Cin <= '1'; wait for 10ns;
		A <= '0'; B <= '1'; Cin <= '0'; wait for 10ns;
		A <= '0'; B <= '1'; Cin <= '1'; wait for 10ns;
		A <= '1'; B <= '0'; Cin <= '0'; wait for 10ns;
		A <= '1'; B <= '0'; Cin <= '1'; wait for 10ns;
		A <= '1'; B <= '1'; Cin <= '0'; wait for 10ns;
		A <= '1'; B <= '1'; Cin <= '1'; wait for 10ns;
		wait;
	end process;
END;

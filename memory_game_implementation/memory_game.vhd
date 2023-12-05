LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY memory_game IS
	port(
		BTN_IN : in STD_LOGIC_VECTOR (2 DOWNTO 0);
		CLK : in STD_LOGIC;
		carta1 : out STD_LOGIC_VECTOR(6 downto 0);
		carta2 : out STD_LOGIC_VECTOR(6 downto 0);
		carta3 : out STD_LOGIC_VECTOR(6 downto 0);
		carta4 : out STD_LOGIC_VECTOR(6 downto 0);
		carta5 : out STD_LOGIC_VECTOR(6 downto 0);
		carta6 : out STD_LOGIC_VECTOR(6 downto 0);
		carta7 : out STD_LOGIC_VECTOR(6 downto 0);
		carta8 : out STD_LOGIC_VECTOR(6 downto 0);
	);
END memory_game;

ARCHITECTURE arch_2 OF memory_game IS
	component registrador3bits is
        generic(W : NATURAL := 3);
        port (
            d : in STD_LOGIC_VECTOR(W-1 DOWNTO 0);
            clk : in STD_LOGIC;
            clrn : in STD_LOGIC;
            ena : in STD_LOGIC;
            q : out STD_LOGIC_VECTOR(W-1 DOWNTO 0)
        );
    end component;
	 
	 component tecladoNumerico is
        Port (
            CLK : in STD_LOGIC;
            BTN : in STD_LOGIC_VECTOR(3 downto 0);
				ENABLE : in STD_LOGIC;
            OUTPUT : out STD_LOGIC_VECTOR(3 downto 0)
        );
    end component;
	 
	 component comparador is
        generic (W : NATURAL := 3);
        port (
            a, b : in STD_LOGIC_VECTOR(W-1 DOWNTO 0);
            eq : out STD_LOGIC;
            gt : out STD_LOGIC;
            lt : out STD_LOGIC
        );
    end component;
	 
	 component contador is
        generic (W : NATURAL := 3);
        port (
            d : in STD_LOGIC_VECTOR(W-1 DOWNTO 0);
            clk : in STD_LOGIC;
            clrn : in STD_LOGIC;
            ena : in STD_LOGIC;
            q : out STD_LOGIC_VECTOR(W-1 DOWNTO 0)
        );
    end component;
	 
	 component carta is
		port(
			INPUT : in STD_LOGIC_VECTOR (2 DOWNTO 0);
			DATA : in STD_LOGIC_VECTOR (2 DOWNTO 0);
			CLK : in STD_LOGIC;
			CLRN : in STD_LOGIC;
			V_CARTA : out STD_LOGIC_VECTOR(6 downto 0)
		);
	  end component;
	 
BEGIN
		d_carta1 : carta 
		port map(
			INPUT => ,
			DATA => "011",
			CLK => CLK,
			CLRN : "1",
			V_CARTA : carta1
		);
		
		d_carta2 : carta 
		port map(
			INPUT => ,
			DATA => "001",
			CLK => CLK,
			CLRN : "1",
			V_CARTA : carta2
		);
		
		d_carta3 : carta 
		port map(
			INPUT => ,
			DATA => "100",
			CLK => CLK,
			CLRN : "1",
			V_CARTA : carta3
		);
		
		d_carta4 : carta 
		port map(
			INPUT => ,
			DATA => "100",
			CLK => CLK,
			CLRN : "1",
			V_CARTA : carta4
		);
		
		d_carta5 : carta 
		port map(
			INPUT => ,
			DATA => "011",
			CLK => CLK,
			CLRN : "1",
			V_CARTA : carta5
		);
		
		d_carta6 : carta 
		port map(
			INPUT => ,
			DATA => "001",
			CLK => CLK,
			CLRN : "1",
			V_CARTA : carta6
		);
		
		d_carta7 : carta 
		port map(
			INPUT => ,
			DATA => "010",
			CLK => CLK,
			CLRN : "1",
			V_CARTA : carta7
		);
		
		d_carta8 : carta 
		port map(
			INPUT => ,
			DATA => "010",
			CLK => CLK,
			CLRN : "1",
			V_CARTA : carta8
		);
		
		teclado : tecladoNumerico
		port map (
            CLK => CLK,
            BTN => BTN_IN,
				ENABLE => ,
            OUTPUT => 
      );
		
		comparador : comparador
		port map (
			a => ,
			b => ,
			eq => ,
			gt => ,
			lt => 
	   );
		
		contadorCartasViradas : registrador3bits
		port map(
            d => ,
            clk => ,
            clrn => , 
            ena => 
            q : 
       );


END arch_2;
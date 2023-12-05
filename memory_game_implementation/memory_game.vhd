LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY memory_game IS
	port(
		a,b : out std_logic
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
	 
	component display is
		  GENERIC(W : NATURAL := 3);
        Port (
            Data : in STD_LOGIC_VECTOR(W-1 downto 0);
            SegmentDisplay : out STD_LOGIC_VECTOR(6 downto 0)
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
	 
	 -- Máquina de estados
	 
	 -- Conectar os componentes
	 
BEGIN

		carta1 : registrador3bits
		port map(
			d => "100",
         clk => CLK,
			clrn => "1",
			ena => "1",
         q => 
		);
		
	 carta2 : registrador3bits
		port map(
			d => "001",
         clk => CLK,
			clrn => "1",
			ena => "1",
         q => 
		);
		
		carta3 : registrador3bits
		port map(
			d => "011",
         clk => CLK,
			clrn => "1",
			ena => "1",
         q => 
		);
		
		carta4 : registrador3bits
		port map(
			d => "010",
         clk => CLK,
			clrn => "1",
			ena => "1",
         q => 
		);
		
		carta5 : registrador3bits
		port map(
			d => "010",
         clk => CLK,
			clrn => "1",
			ena => "1",
         q => 
		);
		
		carta6 : registrador3bits
		port map(
			d => "100",
         clk => CLK,
			clrn => "1",
			ena => "1",
         q => 
		);
		
		carta7 : registrador3bits
		port map(
			d => "001",
         clk => CLK,
			clrn => "1",
			ena => "1",
         q => 
		);
		
		carta8 : registrador3bits
		port map(
			d => "011",
         clk => CLK,
			clrn => "1",
			ena => "1",
         q => 
		);
		
		estadoCarta1 : registrador3bits
		port map(
			d => ,
         clk => CLK,
			clrn => "1",
			ena => "1",
         q => 
		);
		
		estadoCarta2 : registrador3bits
		port map(
			d => ,
         clk => CLK,
			clrn => "1",
			ena => "1",
         q => 
		);
		
		estadoCarta3 : registrador3bits
		port map(
			d => ,
         clk => CLK,
			clrn => "1",
			ena => "1",
         q => 
		);
		
		estadoCarta4 : registrador3bits
		port map(
			d => ,
         clk => CLK,
			clrn => "1",
			ena => "1",
         q => 
		);
		
		estadoCarta5 : registrador3bits
		port map(
			d => ,
         clk => CLK,
			clrn => "1",
			ena => "1",
         q => 
		);
		
		estadoCarta6 : registrador3bits
		port map(
			d => ,
         clk => CLK,
			clrn => "1",
			ena => "1",
         q => 
		);
		
		estadoCarta7 : registrador3bits
		port map(
			d => ,
         clk => CLK,
			clrn => "1",
			ena => "1",
         q => 
		);
		
		estadoCarta8 : registrador3bits
		port map(
			d => ,
         clk => CLK,
			clrn => "1",
			ena => "1",
         q => 
		);
		


END arch_2;
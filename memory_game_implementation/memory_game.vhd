LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY memory_game IS
	port(
		BTN_IN : in STD_LOGIC_VECTOR (2 DOWNTO 0);
		CLK : in STD_LOGIC;
		CLRN : in STD_LOGIC;
		carta1 : out STD_LOGIC_VECTOR(6 downto 0);
		carta2 : out STD_LOGIC_VECTOR(6 downto 0);
		carta3 : out STD_LOGIC_VECTOR(6 downto 0);
		carta4 : out STD_LOGIC_VECTOR(6 downto 0);
		carta5 : out STD_LOGIC_VECTOR(6 downto 0);
		carta6 : out STD_LOGIC_VECTOR(6 downto 0);
		carta7 : out STD_LOGIC_VECTOR(6 downto 0);
		carta8 : out STD_LOGIC_VECTOR(6 downto 0)
	);
END memory_game;

ARCHITECTURE arch_2 OF memory_game IS
	signal s_carta1, s_carta2, s_carta3, s_carta4, s_carta5, s_carta6, s_carta7, s_carta8 : STD_LOGIC_VECTOR (2 DOWNTO 0);
	signal f_carta1, f_carta2, f_carta3, f_carta4, f_carta5, f_carta6, f_carta7, f_carta8 : STD_LOGIC_VECTOR (6 DOWNTO 0);
	signal BTN_OUT : STD_LOGIC_VECTOR (2 DOWNTO 0);
	signal keyboardEnable : STD_LOGIC;
	signal isEqual : STD_LOGIC;
	signal filter : STD_LOGIC;
	signal compCarta1, compCarta2 : STD_LOGIC_VECTOR (6 DOWNTO 0);
	signal dm_carta1, dm_carta2, dm_carta3, dm_carta4, dm_carta5, dm_carta6, dm_carta7, dm_carta8 : STD_LOGIC_VECTOR (2 DOWNTO 0);
	signal compEna : STD_LOGIC;
	signal tw_carta1, tw_carta2, tw_carta3, tw_carta4, tw_carta5, tw_carta6, tw_carta7, tw_carta8 : STD_LOGIC;
	signal contadorCartas : STD_LOGIC_VECTOR (2 DOWNTO 0) := "000";

	component registrador is
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
            BTN : in STD_LOGIC_VECTOR(2 downto 0);
				ENA : in STD_LOGIC;
            OUTPUT : out STD_LOGIC_VECTOR(2 downto 0)
        );
    end component;
	 
	 component comparador is
        generic (W : NATURAL := 7);
        port (
            a, b : in STD_LOGIC_VECTOR(W-1 DOWNTO 0);
				ENA : IN STD_LOGIC;
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
			TWI_CARD : in STD_LOGIC;
			CLK : in STD_LOGIC;
			CLRN : in STD_LOGIC;
			STATE_CARD : out STD_LOGIC_VECTOR (2 DOWNTO 0);
			V_CARTA : out STD_LOGIC_VECTOR(6 downto 0)
		);
	  end component;
	  
	  component filtroCartasAtivadas is
		 port(
			INPUT_C1 : in STD_LOGIC_VECTOR (6 DOWNTO 0);
			INPUT_C2 : in STD_LOGIC_VECTOR (6 DOWNTO 0);
			INPUT_C3 : in STD_LOGIC_VECTOR (6 DOWNTO 0);
			INPUT_C4 : in STD_LOGIC_VECTOR (6 DOWNTO 0);
			INPUT_C5 : in STD_LOGIC_VECTOR (6 DOWNTO 0);
			INPUT_C6 : in STD_LOGIC_VECTOR (6 DOWNTO 0);
			INPUT_C7 : in STD_LOGIC_VECTOR (6 DOWNTO 0);
			INPUT_C8 : in STD_LOGIC_VECTOR (6 DOWNTO 0);
			enableCards : in STD_LOGIC;
			x : out STD_LOGIC_VECTOR (6 DOWNTO 0);
			y : out STD_LOGIC_VECTOR (6 DOWNTO 0)
		);
		end component;
	  
	 component maquinaEstados is
		port(
				stateCard_1: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
				stateCard_2: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
				stateCard_3: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
				stateCard_4: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
				stateCard_5: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
				stateCard_6: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
				stateCard_7: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
				stateCard_8: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
				numericKey: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
				isEqual: IN STD_LOGIC;
				cntTwistedCards : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
				clk : IN STD_LOGIC;
				clear : IN STD_LOGIC;
				enableCard_1: OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
				enableCard_2: OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
				enableCard_3: OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
				enableCard_4: OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
				enableCard_5: OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
				enableCard_6: OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
				enableCard_7: OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
				enableCard_8: OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
				demuxEnable: OUT STD_LOGIC;
				updateDisplayTwiCard_1 : OUT STD_LOGIC;
				updateDisplayTwiCard_2 : OUT STD_LOGIC;
				updateDisplayTwiCard_3 : OUT STD_LOGIC;
				updateDisplayTwiCard_4 : OUT STD_LOGIC;
				updateDisplayTwiCard_5 : OUT STD_LOGIC;
				updateDisplayTwiCard_6 : OUT STD_LOGIC;
				updateDisplayTwiCard_7 : OUT STD_LOGIC;
				updateDisplayTwiCard_8 : OUT STD_LOGIC;
				keyboardEnable : OUT STD_LOGIC;
				filterEnable : OUT STD_LOGIC;
				counterEnable: OUT STD_LOGIC;
				compEnable: OUT STD_LOGIC;
				newCounterTwiCards : OUT STD_LOGIC_VECTOR (2 DOWNTO 0)
		);
	 end component;
	 
BEGIN
		d_carta1 : carta 
		port map(
			INPUT => dm_carta1,
			DATA => "011",
			TWI_CARD => tw_carta1,
			CLK => CLK,
			CLRN => '1',
			STATE_CARD => s_carta1,
			V_CARTA => f_carta1
		);
		
		carta1 <= f_carta1;
		
		d_carta2 : carta 
		port map(
			INPUT => dm_carta2,
			DATA => "001",
			TWI_CARD => tw_carta2,
			CLK => CLK,
			CLRN => '1',
			STATE_CARD => s_carta2,
			V_CARTA => f_carta2
		);
		
		carta2 <= f_carta2;
		
		d_carta3 : carta 
		port map(
			INPUT => dm_carta3,
			DATA => "100",
			TWI_CARD => tw_carta3,
			CLK => CLK,
			CLRN => '1',
			STATE_CARD => s_carta3,
			V_CARTA => f_carta3
		);
		
		carta3 <= f_carta3;
		
		d_carta4 : carta 
		port map(
			INPUT => dm_carta4,
			DATA => "100",
			TWI_CARD => tw_carta4,
			CLK => CLK,
			CLRN => '1',
			STATE_CARD => s_carta4,
			V_CARTA => f_carta4
		);
		
		carta4 <= f_carta4;
		
		d_carta5 : carta 
		port map(
			INPUT => dm_carta5,
			DATA => "011",
			TWI_CARD => tw_carta5,
			CLK => CLK,
			CLRN => '1',
			STATE_CARD => s_carta5,
			V_CARTA => f_carta5
		);
		
		carta5 <= f_carta5;
		
		d_carta6 : carta 
		port map(
			INPUT => dm_carta6,
			DATA => "001",
			TWI_CARD => tw_carta6,
			CLK => CLK,
			CLRN => '1',
			STATE_CARD => s_carta6,
			V_CARTA => f_carta6
		);
		
		carta6 <= f_carta6;
		
		d_carta7 : carta 
		port map(
			INPUT => dm_carta7,
			DATA => "010",
			TWI_CARD => tw_carta7,
			CLK => CLK,
			CLRN => '1',
			STATE_CARD => s_carta7,
			V_CARTA => f_carta7
		);
		
		carta7 <= f_carta7;
		
		d_carta8 : carta 
		port map(
			INPUT => dm_carta8,
			DATA => "010",
			TWI_CARD => tw_carta8,
			CLK => CLK,
			CLRN => '1',
			STATE_CARD => s_carta8,
			V_CARTA => f_carta8
		);
		
		carta8 <= f_carta8;
		
		teclado : tecladoNumerico
		port map (
            CLK => CLK,
            BTN => BTN_IN,
				ENA => keyboardEnable,
            OUTPUT => BTN_OUT
      );
		
		comparadorDeCartasD : comparador
		port map (
			a => compCarta1,
			b => compCarta2,
			ENA => compEna,
			eq => isEqual,
			gt => open,
			lt => open
	   );
		
		 
		filtroCartasAtivadass : filtroCartasAtivadas
			port map(
				INPUT_C1 => f_carta1,
				INPUT_C2 => f_carta2,
				INPUT_C3 => f_carta3,
				INPUT_C4 => f_carta4,
				INPUT_C5 => f_carta5,
				INPUT_C6 => f_carta6,
				INPUT_C7 => f_carta7,
				INPUT_C8 => f_carta8,
				enableCards => filter,
				x => compCarta1,
				y => compCarta2
			);
		 
		maquinaEstadoss : maquinaEstados
		port map(
			stateCard_1 => s_carta1,
			stateCard_2 => s_carta2,
			stateCard_3 => s_carta3,
			stateCard_4 => s_carta4,
			stateCard_5 => s_carta5,
			stateCard_6 => s_carta6,
			stateCard_7 => s_carta7,
			stateCard_8 => s_carta8,
			numericKey => BTN_OUT,
			isEqual => isEqual,
			cntTwistedCards => contadorCartas,
			clk => CLK,
			clear => CLRN,
			enableCard_1 => dm_carta1,
			enableCard_2 => dm_carta2,
			enableCard_3 => dm_carta3,
			enableCard_4 => dm_carta4,
			enableCard_5 => dm_carta5,
			enableCard_6 => dm_carta6,
			enableCard_7 => dm_carta7,
			enableCard_8 => dm_carta8,
			demuxEnable => open,
			updateDisplayTwiCard_1 => tw_carta1,
			updateDisplayTwiCard_2 => tw_carta2,
			updateDisplayTwiCard_3 => tw_carta3,
			updateDisplayTwiCard_4 => tw_carta4,
			updateDisplayTwiCard_5 => tw_carta5,
			updateDisplayTwiCard_6 => tw_carta6,
			updateDisplayTwiCard_7 => tw_carta7,
			updateDisplayTwiCard_8 => tw_carta8,
			keyboardEnable => keyboardEnable,
			filterEnable => filter,
			counterEnable => open,
			compEnable => compEna,
			newCounterTwiCards => open
		);

END arch_2;
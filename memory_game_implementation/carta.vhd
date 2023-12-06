LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY carta IS
	port(
		INPUT : in STD_LOGIC_VECTOR (2 DOWNTO 0);
		DATA : in STD_LOGIC_VECTOR (2 DOWNTO 0);
		TWI_CARD : in STD_LOGIC;
		CLK : in STD_LOGIC;
		CLRN : in STD_LOGIC;
		STATE_CARD : out STD_LOGIC_VECTOR (2 DOWNTO 0);
		V_CARTA : out STD_LOGIC_VECTOR(6 downto 0)
	);
END carta;


ARCHITECTURE arch_2 OF carta IS
	signal s_carta : STD_LOGIC_VECTOR (2 DOWNTO 0);
	signal r_carta : STD_LOGIC_VECTOR (2 DOWNTO 0);
	signal new_data : STD_LOGIC_VECTOR (2 DOWNTO 0);
	signal disCarta : STD_LOGIC_VECTOR(6 downto 0);
	
	component registrador is
        generic(W : NATURAL := 3);
        port (
            d : in STD_LOGIC_VECTOR(W-1 DOWNTO 0);
            clk : in STD_LOGIC;
            clear : in STD_LOGIC;
            ena : in STD_LOGIC;
            q : out STD_LOGIC_VECTOR(W-1 DOWNTO 0)
        );
    end component;
	 
	 component display is
		  GENERIC(W : NATURAL := 3);
        Port (
            Data : in STD_LOGIC_VECTOR(W-1 downto 0);
            SegmentDisplay : out STD_LOGIC_VECTOR(6 downto 0)
        );
    end component;
	 
BEGIN

	mem_carta : registrador
		port map(
			d => DATA,
         clk => CLK,
			clear => '1',
			ena => '1',
         q => s_carta
		);
		
	estadoCarta : registrador
		port map(
			d => INPUT,
         clk => CLK,
			clear => CLRN,
			ena => '1',
         q => r_carta
		);
		
	disp_carta : display
		port map(
			Data => new_data,
         SegmentDisplay => disCarta
		);
		
	V_CARTA <= disCarta;	
		
	PROCESS(TWI_CARD)
		BEGIN 
			IF (TWI_CARD = '0') THEN
				new_data <= s_carta AND r_carta;
			ELSE
				new_data <= s_carta OR r_carta;
			END IF;		
	END PROCESS;
	
	PROCESS(new_data)
		BEGIN 
			IF (disCarta = "0000000") THEN
				STATE_CARD <= "000";
			ELSIF (disCarta = "1111111") THEN
				STATE_CARD <= "111";
			ELSE
				STATE_CARD <= s_carta;
			END IF;		
	END PROCESS;
		

END arch_2;
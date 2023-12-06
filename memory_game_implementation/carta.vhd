LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY carta IS
	port(
		INPUT : in STD_LOGIC_VECTOR (2 DOWNTO 0);
		DATA : in STD_LOGIC_VECTOR (2 DOWNTO 0);
		TWI_CARD : in BIT;
		CLK : in STD_LOGIC;
		CLRN : in STD_LOGIC;
		ENABLE : in BIT;
		STATE_CARD : out STD_LOGIC_VECTOR (2 DOWNTO 0);
		V_CARTA : out STD_LOGIC_VECTOR(6 downto 0)
	);
END carta;


ARCHITECTURE arch_2 OF carta IS
	signal s_carta : STD_LOGIC (2 DOWNTO 0);
	signal r_carta : STD_LOGIC (2 DOWNTO 0);
	signal new_data : BIT;
	
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
	 
	 component display is
		  GENERIC(W : NATURAL := 3);
        Port (
            Data : in STD_LOGIC_VECTOR(W-1 downto 0);
            SegmentDisplay : out STD_LOGIC_VECTOR(6 downto 0)
        );
    end component;
	 
BEGIN

	mem_carta : registrador3bits
		port map(
			d => DATA,
         clk => CLK,
			clrn => "1",
			ena => "1",
         q => s_carta
		);
		
	estadoCarta : registrador3bits
		port map(
			d => INPUT,
         clk => CLK,
			clrn => CLRN,
			ena => ENABLE,
         q => r_carta
		);
		
	disp_carta : display
		port map(
			Data => new_data,
         SegmentDisplay => V_CARTA
		);
		
	PROCESS(ena)
		BEGIN 
			IF (TWI_CARD = 0) WHEN
				new_data <= s_carta AND r_carta;
			ELSE
				new_data <= s_carta OR r_carta;
			END IF;		
	END PROCESS;
	
		

END arch_2;
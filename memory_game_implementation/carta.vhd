LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY carta IS
	port(
		INPUT : in STD_LOGIC_VECTOR (2 DOWNTO 0);
		DATA : in STD_LOGIC_VECTOR (2 DOWNTO 0);
		CLK : in STD_LOGIC;
		CLRN : in STD_LOGIC;
		V_CARTA : out STD_LOGIC_VECTOR(6 downto 0)
	);
END carta;


ARCHITECTURE arch_2 OF carta IS
	signal s_carta : STD_LOGIC (2 DOWNTO 0);
	signal r_carta : STD_LOGIC (2 DOWNTO 0);
	
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
			ena => "1",
         q => r_carta
		);
		
	disp_carta : display
		port map(
			Data => s_carta AND r_carta,
         SegmentDisplay => V_CARTA
		);
		
	
		

END arch_2;
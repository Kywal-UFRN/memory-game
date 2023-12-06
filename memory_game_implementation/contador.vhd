LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY contador IS
    GENERIC (W : NATURAL := 3);
    PORT (
        d : IN STD_LOGIC_VECTOR(W-1 DOWNTO 0); -- data input
		  CLK : IN STD_LOGIC;
        ena : IN BIT; -- enable
        q : OUT STD_LOGIC_VECTOR(W-1 DOWNTO 0) -- data output
    );
END contador;

ARCHITECTURE arch_1 OF contador IS

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

signal saida : STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN
		cont : registrador3bits
		port map(
			d => d,
         clk => CLK,
			clrn => '1',
			ena => '1',
         q => saida
		);

    PROCESS (ena)
    BEGIN
		IF (ena = '1') THEN
			saida <= saida + 1;
			q <= saida;
		END IF;
    END PROCESS;
END arch_1;

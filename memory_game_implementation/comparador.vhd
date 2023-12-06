LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY comparador IS
GENERIC(W : NATURAL := 7);
PORT (a, b : IN STD_LOGIC_VECTOR(W-1 DOWNTO 0); -- data inputs
		ENA : IN STD_LOGIC;
		eq : OUT STD_LOGIC; -- a = b
		gt : OUT STD_LOGIC; -- a > b
		lt : OUT STD_LOGIC
		); -- a < b
END comparador;

ARCHITECTURE behavior OF comparador IS
BEGIN
	Process (ENA)
	BEGIN
		if (ENA = '1') THEN
			if( a < b ) then
				lt <= '1';
			else
				lt <= '0';
			END IF;
			if( a = b ) then
				eq <= '1';
			else
				eq <= '0';
			END IF;
			if( a > b ) then
				gt <= '1';
			else
				gt <= '0';
			END IF;
		END IF;
	END PROCESS;
END behavior;
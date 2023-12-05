library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY registradorEstadoCarta IS
PORT (d : IN STD_LOGIC;-- data input
		clk : IN STD_LOGIC; -- clock
		clrn: IN STD_LOGIC; -- clear
		ena : IN STD_LOGIC; -- enable
		q : OUT STD_LOGIC -- data output
		);
END registradorEstadoCarta;

ARCHITECTURE arch_1 OF registradorEstadoCarta IS
BEGIN
	PROCESS(clk,clrn)
	BEGIN
		IF (clrn='0') THEN
			q <= '0';
		ELSIF (clk'EVENT AND clk='1') THEN
			IF (ena='1') THEN
				q <= d;
			END IF;
		END IF;
	END PROCESS;
END arch_1;
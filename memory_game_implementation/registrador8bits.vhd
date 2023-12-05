library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY registrador8bits IS
GENERIC(W : NATURAL := 3);
PORT (d : IN STD_LOGIC_VECTOR(W-1 DOWNTO 0);-- data input
		clk : IN STD_LOGIC; -- clock
		ena : IN STD_LOGIC; -- enable
		q : OUT STD_LOGIC_VECTOR(W-1 DOWNTO 0));-- data output
END registrador8bits;

ARCHITECTURE arch_1 OF registrador8bits IS
BEGIN
PROCESS(clk,clrn)
BEGIN
	IF (clrn='0') THEN
		q <= (OTHERS => '0');
	ELSIF (clk'EVENT AND clk='1') THEN
		IF (ena='1') THEN
			q <= d;
		END IF;
	END IF;
END PROCESS;
END arch_1;
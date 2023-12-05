LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY contador IS
    GENERIC (W : NATURAL := 3);
    PORT (
        d : IN STD_LOGIC_VECTOR(W-1 DOWNTO 0); -- data input
        clk : IN BIT; -- clock
        clrn : IN BIT; -- clear
        ena : IN BIT; -- enable
        load : IN BIT; -- load
        q : OUT STD_LOGIC_VECTOR(W-1 DOWNTO 0) -- data output
    );
END contador;

ARCHITECTURE arch_1 OF contador IS

signal saida : STD_LOGIC_VECTOR(3 DOWNTO 0) := "000";

BEGIN
    PROCESS (clk, clrn)
    BEGIN
        IF (clrn = '0') THEN
            saida <= (OTHERS => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (ena = '1') THEN
					saida <= saida + 1;
					q <= saida;
            END IF;
        END IF;
    END PROCESS;
END arch_1;

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY filtroCartasAtivadas IS
	port(
		INPUT_C1 : in STD_LOGIC_VECTOR (2 DOWNTO 0);
		INPUT_C2 : in STD_LOGIC_VECTOR (2 DOWNTO 0);
		INPUT_C3 : in STD_LOGIC_VECTOR (2 DOWNTO 0);
		INPUT_C4 : in STD_LOGIC_VECTOR (2 DOWNTO 0);
		INPUT_C5 : in STD_LOGIC_VECTOR (2 DOWNTO 0);
		INPUT_C6 : in STD_LOGIC_VECTOR (2 DOWNTO 0);
		INPUT_C7 : in STD_LOGIC_VECTOR (2 DOWNTO 0);
		INPUT_C8 : in STD_LOGIC_VECTOR (2 DOWNTO 0);
		enableCards : in STD_LOGIC;
		x : out STD_LOGIC (2 DOWNTO 0);
		y : out STD_LOGIC (2 DOWNTO 0);
	);
END filtroCartasAtivadas;

ARCHITECTURE arch_2 OF filtroCartasAtivadas IS
BEGIN
	Process (enableCards)
	Begin
		if (enableCards == "0") then
			if (INPUT_C1 != "000") then
				x <= INPUT_C1;
			Elsif (INPUT_C2 != "000") then
				x <= INPUT_C2;
			Elsif (INPUT_C3 != "000") then
				x <= INPUT_C3;
			Elsif (INPUT_C4 != "000") then
				x <= INPUT_C4;
			Elsif (INPUT_C5 != "000") then
				x <= INPUT_C5;
			Elsif (INPUT_C6 != "000") then
				x <= INPUT_C6;
			Elsif (INPUT_C7 != "000") then
				x <= INPUT_C7;
			Elsif (INPUT_C8 != "000") then
				x <= INPUT_C8;
			End if;
		Else 
			if (INPUT_C1 != "000" and INPUT_C1 != x) then
				y <= INPUT_C1;
			Elsif (INPUT_C2 != "000" and INPUT_C2 != x) then
				y <= INPUT_C2;
			Elsif (INPUT_C3 != "000" and INPUT_C3 != x) then
				y <= INPUT_C3;
			Elsif (INPUT_C4 != "000" and INPUT_C4 != x) then
				y <= INPUT_C4;
			Elsif (INPUT_C5 != "000" and INPUT_C5 != x) then
				y <= INPUT_C5;
			Elsif (INPUT_C6 != "000" and INPUT_C6 != x) then
				y <= INPUT_C6;
			Elsif (INPUT_C7 != "000" and INPUT_C7 != x) then
				y <= INPUT_C7;
			Elsif (INPUT_C8 != "000" and INPUT_C8 != x) then
				y <= INPUT_C8;
		End if;
	End process;
END arch_2;
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY filtroCartasAtivadas IS
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
END filtroCartasAtivadas;

ARCHITECTURE arch_2 OF filtroCartasAtivadas IS
	signal aux : STD_LOGIC_VECTOR (6 DOWNTO 0);
BEGIN
	Process (enableCards)
	Begin
		if (enableCards = '0') then
			if (INPUT_C1 /= "0000000") then
				x <= INPUT_C1;
				aux <= INPUT_C1;
			Elsif (INPUT_C2 /= "0000000") then
				x <= INPUT_C2;
				aux <= INPUT_C2;
			Elsif (INPUT_C3 /= "0000000") then
				x <= INPUT_C3;
				aux <= INPUT_C3;
			Elsif (INPUT_C4 /= "0000000") then
				x <= INPUT_C4;
				aux <= INPUT_C4;
			Elsif (INPUT_C5 /= "0000000") then
				x <= INPUT_C5;
				aux <= INPUT_C5;
			Elsif (INPUT_C6 /= "0000000") then
				x <= INPUT_C6;
				aux <= INPUT_C6;
			Elsif (INPUT_C7 /= "0000000") then
				x <= INPUT_C7;
				aux <= INPUT_C7;
			Elsif (INPUT_C8 /= "0000000") then
				x <= INPUT_C8;
				aux <= INPUT_C8;
			End if;
		Else 
			if (INPUT_C1 /= "0000000" and INPUT_C1 /= aux) then
				y <= INPUT_C1;
			Elsif (INPUT_C2 /= "0000000" and INPUT_C2 /= aux) then
				y <= INPUT_C2;
			Elsif (INPUT_C3 /= "0000000" and INPUT_C3 /= aux) then
				y <= INPUT_C3;
			Elsif (INPUT_C4 /= "0000000" and INPUT_C4 /= aux) then
				y <= INPUT_C4;
			Elsif (INPUT_C5 /= "0000000" and INPUT_C5 /= aux) then
				y <= INPUT_C5;
			Elsif (INPUT_C6 /= "0000000" and INPUT_C6 /= aux) then
				y <= INPUT_C6;
			Elsif (INPUT_C7 /= "0000000" and INPUT_C7 /= aux) then
				y <= INPUT_C7;
			Elsif (INPUT_C8 /= "0000000" and INPUT_C8 /= aux) then
				y <= INPUT_C8;
			End if;
		End if;
	End process;
END arch_2;
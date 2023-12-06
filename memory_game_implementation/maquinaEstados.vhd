LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY maquinaEstados IS
 
PORT (
	stateCard_1: IN STD_LOGIC_VECTOR (2 DOWNTO 0); -- Usado para saber como a carta está no jogo
	stateCard_2: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
	stateCard_3: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
	stateCard_4: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
	stateCard_5: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
	stateCard_6: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
	stateCard_7: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
	stateCard_8: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
	numericKey: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
	isEqual: IN STD_LOGIC;
	cntTwistedCards : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
	clk : IN STD_LOGIC;
	clear : IN STD_LOGIC;
	enableCard_1: OUT STD_LOGIC_VECTOR (2 DOWNTO 0); -- Usado para mudar o valor da carta em registrador estado da carta
	enableCard_2: OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
	enableCard_3: OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
	enableCard_4: OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
	enableCard_5: OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
	enableCard_6: OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
	enableCard_7: OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
	enableCard_8: OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
	demuxEnable: OUT STD_LOGIC;
	updateDisplayTwiCard_1 : OUT STD_LOGIC; -- Usado para informar se a carta será virada usando uma lógica and ou or
	updateDisplayTwiCard_2 : OUT STD_LOGIC;
	updateDisplayTwiCard_3 : OUT STD_LOGIC;
	updateDisplayTwiCard_4 : OUT STD_LOGIC;
	updateDisplayTwiCard_5 : OUT STD_LOGIC;
	updateDisplayTwiCard_6 : OUT STD_LOGIC;
	updateDisplayTwiCard_7 : OUT STD_LOGIC;
	updateDisplayTwiCard_8 : OUT STD_LOGIC;
	keyboardEnable : OUT STD_LOGIC;
	filterEnable : OUT STD_LOGIC;
	counterEnable: OUT STD_LOGIC;
	compEnable: OUT STD_LOGIC;
	newCounterTwiCards : OUT STD_LOGIC_VECTOR (2 DOWNTO 0)
	);
END maquinaEstados;

ARCHITECTURE behavioral OF maquinaEstados IS
	TYPE state_type IS (s0,s1,s2,s3,s4,s5,s6,s7);
	SIGNAL state_reg : state_type;
	SIGNAL next_state: state_type;
BEGIN

p_state_reg: PROCESS(clk,clear)
	BEGIN
		 IF (clear='0') THEN
			state_reg <= s0;
		 ELSIF (clk'EVENT AND clk='1') THEN
			state_reg <= next_state;
		 END IF;
END PROCESS;
 
p_next_state: PROCESS(state_reg, stateCard_1, stateCard_2, stateCard_3, 
								stateCard_4, stateCard_5, stateCard_6, stateCard_7,
								stateCard_8, numericKey, isEqual, cntTwistedCards)
 BEGIN
	 CASE (state_reg) IS
		 WHEN s0 => -- Verificar se todas as cartas já sairam do jogo
			IF (cntTwistedCards < "111") THEN
				next_state <= s1;
			ELSIF(cntTwistedCards = "111") THEN
				next_state <= s6;
			END IF;
		 WHEN s1 => -- Aguardando primeira entrada
			keyboardEnable <= '1';
			CASE (NumericKey) IS
				WHEN "001" =>
					IF (stateCard_1 = "000") THEN
						enableCard_1 <= "011";
						updateDisplayTwiCard_1 <= '0';
						filterEnable <= '0';
						next_state <= s2;
					ELSE
						next_state <= s1;
					END IF;
				WHEN "010" =>
					IF (stateCard_2 = "000") THEN
						enableCard_2 <= "001";
						updateDisplayTwiCard_2 <= '0';
						filterEnable <= '0';
						next_state <= s2;
					ELSE
						next_state <= s1;
					END IF;
				WHEN "011" =>
					IF (stateCard_3 = "000") THEN
						enableCard_3 <= "100";
						updateDisplayTwiCard_3 <= '0';
						filterEnable <= '0';
						next_state <= s2;
					ELSE
						next_state <= s1;
					END IF;
				WHEN "100" =>
					IF (stateCard_4 = "000") THEN
						enableCard_4 <= "100";
						updateDisplayTwiCard_4 <= '0';
						filterEnable <= '0';
						next_state <= s2;
					ELSE
						next_state <= s1;
					END IF;
				WHEN "101" =>
					IF (stateCard_5 = "000") THEN
						enableCard_5 <= "011";
						updateDisplayTwiCard_5 <= '0';
						filterEnable <= '0';
						next_state <= s2;
					ELSE
						next_state <= s1;
					END IF;
				WHEN "110" =>
					IF (stateCard_6 = "000") THEN
						enableCard_6 <= "001";
						updateDisplayTwiCard_6 <= '0';
						filterEnable <= '0';
						next_state <= s2;
					ELSE
						next_state <= s1;
					END IF;
				WHEN "111" =>
					IF (stateCard_7 = "000") THEN
						enableCard_7 <= "010";
						updateDisplayTwiCard_7 <= '0';
						filterEnable <= '0';
						next_state <= s2;
					ELSE
						next_state <= s1;
					END IF;
				WHEN "000" =>
					IF (stateCard_8 = "000") THEN
						enableCard_8 <= "010";
						updateDisplayTwiCard_8 <= '0';
						filterEnable <= '0';
						next_state <= s2;
					ELSE
						next_state <= s1;
					END IF;
				END CASE;
		 WHEN s2 => -- Aguardando segunda entrada
			CASE (NumericKey) IS
				WHEN "001" =>
					IF (stateCard_1 = "000") THEN
						enableCard_1 <= "011";
						updateDisplayTwiCard_1 <= '0';
						filterEnable <= '1';
						next_state <= s3;
					ELSE
						next_state <= s2;
					END IF;
				WHEN "010" =>
					IF (stateCard_2 = "000") THEN
						enableCard_2 <= "001";
						updateDisplayTwiCard_2 <= '0';
						filterEnable <= '1';
						next_state <= s3;
					ELSE
						next_state <= s2;
					END IF;
				WHEN "011" =>
					IF (stateCard_3 = "000") THEN
						enableCard_3 <= "100";
						updateDisplayTwiCard_3 <= '0';
						filterEnable <= '1';
						next_state <= s3;
					ELSE
						next_state <= s2;
					END IF;
				WHEN "100" =>
					IF (stateCard_4 = "000") THEN
						enableCard_4 <= "100";
						updateDisplayTwiCard_4 <= '0';
						filterEnable <= '1';
						next_state <= s3;
					ELSE
						next_state <= s2;
					END IF;
				WHEN "101" =>
					IF (stateCard_5 = "000") THEN
						enableCard_5 <= "011";
						updateDisplayTwiCard_5 <= '0';
						filterEnable <= '1';
						next_state <= s3;
					ELSE
						next_state <= s2;
					END IF;
				WHEN "110" =>
					IF (stateCard_6 = "000") THEN
						enableCard_6 <= "001";
						updateDisplayTwiCard_6 <= '0';
						filterEnable <= '1';
						next_state <= s3;
					ELSE
						next_state <= s2;
					END IF;
				WHEN "111" =>
					IF (stateCard_7 = "000") THEN
						enableCard_7 <= "010";
						updateDisplayTwiCard_7 <= '0';
						filterEnable <= '1';
						next_state <= s3;
					ELSE
						next_state <= s2;
					END IF;
				WHEN "000" =>
					IF (stateCard_8 = "000") THEN
						enableCard_8 <= "010";
						updateDisplayTwiCard_8 <= '0';
						filterEnable <= '1';
						next_state <= s3;
					ELSE
						next_state <= s2;
					END IF;
				END CASE;
			WHEN s3 => -- Comparar cartas
				compEnable <= '1';
				IF (isEqual = '1') THEN
					next_state <= s5;
				ELSE
					next_state <= s4;
				END IF;
			WHEN s4 =>
				enableCard_1 <= "000";
				enableCard_2 <= "000";
				enableCard_3 <= "000";
				enableCard_4 <= "000";
				enableCard_5 <= "000";
				enableCard_6 <= "000";
				enableCard_7 <= "000";
				enableCard_8 <= "000";
				updateDisplayTwiCard_1 <= '0';
				updateDisplayTwiCard_2 <= '0';
				updateDisplayTwiCard_3 <= '0';
				updateDisplayTwiCard_4 <= '0';
				updateDisplayTwiCard_5 <= '0';
				updateDisplayTwiCard_6 <= '0';
				updateDisplayTwiCard_7 <= '0';
				updateDisplayTwiCard_8 <= '0';
			WHEN s5 =>
				newCounterTwiCards <= cntTwistedCards; 
				if (stateCard_1 /= "000") then
					updateDisplayTwiCard_1 <= '1';
					enableCard_1 <= "111";
				ELSIF (stateCard_2 /= "000") then
					updateDisplayTwiCard_2 <= '1';
					enableCard_2 <= "111";
				ELSIF (stateCard_3 /= "000") then
					updateDisplayTwiCard_3 <= '1';
					enableCard_3 <= "111";
				ELSIF (stateCard_4 /= "000") then
					updateDisplayTwiCard_4 <= '1';
					enableCard_4 <= "111";
				ELSIF (stateCard_5 /= "000") then
					updateDisplayTwiCard_5 <= '1';
					enableCard_5 <= "111";
				ELSIF (stateCard_6 /= "000") then
					updateDisplayTwiCard_6 <= '1';
					enableCard_6 <= "111";
				ELSIF (stateCard_7 /= "000") then
					updateDisplayTwiCard_7 <= '1';
					enableCard_7 <= "111";
				ELSIF (stateCard_8 /= "000") then
					updateDisplayTwiCard_8 <= '1';
					enableCard_8 <= "111";
				END IF;
			WHEN s6 =>
				keyboardEnable <= '0';
			WHEN OTHERS=> next_state <= s0;
	 END CASE;
 END PROCESS;

END behavioral;
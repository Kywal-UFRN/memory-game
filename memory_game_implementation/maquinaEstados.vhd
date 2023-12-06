ENTITY maquinaEstados IS
 
PORT (
	stateCard_1: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
	stateCard_2: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
	stateCard_3: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
	stateCard_4: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
	stateCard_5: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
	stateCard_6: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
	stateCard_7: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
	stateCard_8: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
	numericKey: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
	isEqual: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
	cntTwistedCards : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
	clk : IN BIT;
	clear : IN BIT;
	enableCard_1: OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
	enableCard_2: OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
	enableCard_3: OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
	enableCard_4: OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
	enableCard_5: OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
	enableCard_6: OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
	enableCard_7: OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
	enableCard_8: OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
	demuxEnable: OUT BIT;
	updateDisplayTwiCard_1 : OUT BIT;
	updateDisplayTwiCard_2 : OUT BIT;
	updateDisplayTwiCard_3 : OUT BIT;
	updateDisplayTwiCard_4 : OUT BIT;
	updateDisplayTwiCard_5 : OUT BIT;
	updateDisplayTwiCard_6 : OUT BIT;
	updateDisplayTwiCard_7 : OUT BIT;
	updateDisplayTwiCard_8 : OUT BIT;
	keyboardEnable : OUT BIT;
	filterEnable : OUT BIT;
	counterEnable: OUT BIT;
	compEnable: OUT BIT;
	newCounterTwiCards : OUT STD_LOGIC_VECTOR (2 DOWNTO 0)
	);
END maquinaEstados;

ARCHITECTURE behavioral OF maquinaEstados IS
	TYPE state_type IS (s0,s1,s2,s3,s4,s5,s6,s7);
	SIGNAL state_reg : state_type;
	SIGNAL next_state: state_type;
	SIGNAL cardCounter : BIT;
BEGIN

p_state_reg: PROCESS(clk,clear)
	BEGIN
		 IF (clrn='0') THEN
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
		 WHEN s0 => 
			IF (cntTwistedCards < '111') THEN
				next_state <= s1;
			ELSE IF(cntTwistedCards = '111')
				next_state <= s6;
			END IF;
		 WHEN s1 =>   
			compEnable <= '1';
			
			CASE (NumericKey) IS
				WHEN '0001' =>
					IF (stateCard_1 = '00') THEN
						filterEnable <= '0';
						next_state <= s2;
					ELSE
						next_state <= s1;
					END IF;
				WHEN '0010' =>
					IF (stateCard_2 = '00') THEN
						filterEnable <= '0';
						next_state <= s2;
					ELSE
						next_state <= s1;
					END IF;
				WHEN '0011' =>
					IF (stateCard_3 = '00') THEN
						filterEnable <= '0';
						next_state <= s2;
					ELSE
						next_state <= s1;
					END IF;
				WHEN '0100' =>
					IF (stateCard_4 = '00') THEN
						filterEnable <= '0';
						next_state <= s2;
					ELSE
						next_state <= s1;
					END IF;
				WHEN '0101' =>
					IF (stateCard_5 = '00') THEN
						filterEnable <= '0';
						next_state <= s2;
					ELSE
						next_state <= s1;
					END IF;
				WHEN '0110' =>
					IF (stateCard_6 = '00') THEN
						filterEnable <= '0';
						next_state <= s2;
					ELSE
						next_state <= s1;
					END IF;
				WHEN '0111' =>
					IF (stateCard_7 = '00') THEN
						filterEnable <= '0';
						next_state <= s2;
					ELSE
						next_state <= s1;
					END IF;
				WHEN '1000' =>
					IF (stateCard_8 = '00') THEN
						filterEnable <= '0';
						next_state <= s2;
					ELSE
						next_state <= s1;
					END IF;
		 WHEN s2 =>
			CASE (NumericKey) IS
				WHEN '0001' =>
					IF (stateCard_1 = '00') THEN
						filterEnable <= '1';
						next_state <= s3;
					ELSE
						next_state <= s2;
					END IF;
				WHEN '0010' =>
					IF (stateCard_2 = '00') THEN
						filterEnable <= '1';
						next_state <= s3;
					ELSE
						next_state <= s2;
					END IF;
				WHEN '0011' =>
					IF (stateCard_3 = '00') THEN
						filterEnable <= '1';
						next_state <= s3;
					ELSE
						next_state <= s2;
					END IF;
				WHEN '0100' =>
					IF (stateCard_4 = '00') THEN
						filterEnable <= '1';
						next_state <= s3;
					ELSE
						next_state <= s2;
					END IF;
				WHEN '0101' =>
					IF (stateCard_5 = '00') THEN
						filterEnable <= '1';
						next_state <= s3;
					ELSE
						next_state <= s2;
					END IF;
				WHEN '0110' =>
					IF (stateCard_6 = '00') THEN
						filterEnable <= '1';
						next_state <= s3;
					ELSE
						next_state <= s2;
					END IF;
				WHEN '0111' =>
					IF (stateCard_7 = '00') THEN
						filterEnable <= '1';
						next_state <= s3;
					ELSE
						next_state <= s2;
					END IF;
				WHEN '1000' =>
					IF (stateCard_8 = '00') THEN
						filterEnable <= '1';
						next_state <= s3;
					ELSE
						next_state <= s2;
					END IF;
			WHEN s3 =>
				IF (isEqual = '1') THEN
					next_state <= s5;
				ELSE
					next_state <= s4;
				END IF;
			WHEN s4 =>
				enableCard_1 <= '0';
				enableCard_2 <= '0';
				enableCard_3 <= '0';
				enableCard_4 <= '0';
				enableCard_5 <= '0';
				enableCard_6 <= '0';
				enableCard_7 <= '0';
				enableCard_8 <= '0';
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
				updateDisplayTwiCard_1 <= '1';
				updateDisplayTwiCard_2 <= '1';
				updateDisplayTwiCard_3 <= '1';
				updateDisplayTwiCard_4 <= '1';
				updateDisplayTwiCard_5 <= '1';
				updateDisplayTwiCard_6 <= '1';
				updateDisplayTwiCard_7 <= '1';
				updateDisplayTwiCard_8 <= '1';
			WHEN s6 =>
				keyboardEnable <= 0;
	 END CASE;
 END PROCESS;

END behavioral;
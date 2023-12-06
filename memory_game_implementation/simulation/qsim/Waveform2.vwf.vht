-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/06/2023 09:27:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          maquinaEstados
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY maquinaEstados_vhd_vec_tst IS
END maquinaEstados_vhd_vec_tst;
ARCHITECTURE maquinaEstados_arch OF maquinaEstados_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clear : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL cntTwistedCards : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL compEnable : STD_LOGIC;
SIGNAL counterEnable : STD_LOGIC;
SIGNAL demuxEnable : STD_LOGIC;
SIGNAL enableCard_1 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL enableCard_2 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL enableCard_3 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL enableCard_4 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL enableCard_5 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL enableCard_6 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL enableCard_7 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL enableCard_8 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL filterEnable : STD_LOGIC;
SIGNAL isEqual : STD_LOGIC;
SIGNAL keyboardEnable : STD_LOGIC;
SIGNAL newCounterTwiCards : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL numericKey : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL stateCard_1 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL stateCard_2 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL stateCard_3 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL stateCard_4 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL stateCard_5 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL stateCard_6 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL stateCard_7 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL stateCard_8 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL updateDisplayTwiCard_1 : STD_LOGIC;
SIGNAL updateDisplayTwiCard_2 : STD_LOGIC;
SIGNAL updateDisplayTwiCard_3 : STD_LOGIC;
SIGNAL updateDisplayTwiCard_4 : STD_LOGIC;
SIGNAL updateDisplayTwiCard_5 : STD_LOGIC;
SIGNAL updateDisplayTwiCard_6 : STD_LOGIC;
SIGNAL updateDisplayTwiCard_7 : STD_LOGIC;
SIGNAL updateDisplayTwiCard_8 : STD_LOGIC;
COMPONENT maquinaEstados
	PORT (
	clear : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	cntTwistedCards : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	compEnable : OUT STD_LOGIC;
	counterEnable : OUT STD_LOGIC;
	demuxEnable : OUT STD_LOGIC;
	enableCard_1 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	enableCard_2 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	enableCard_3 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	enableCard_4 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	enableCard_5 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	enableCard_6 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	enableCard_7 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	enableCard_8 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	filterEnable : OUT STD_LOGIC;
	isEqual : IN STD_LOGIC;
	keyboardEnable : OUT STD_LOGIC;
	newCounterTwiCards : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	numericKey : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	stateCard_1 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	stateCard_2 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	stateCard_3 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	stateCard_4 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	stateCard_5 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	stateCard_6 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	stateCard_7 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	stateCard_8 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	updateDisplayTwiCard_1 : OUT STD_LOGIC;
	updateDisplayTwiCard_2 : OUT STD_LOGIC;
	updateDisplayTwiCard_3 : OUT STD_LOGIC;
	updateDisplayTwiCard_4 : OUT STD_LOGIC;
	updateDisplayTwiCard_5 : OUT STD_LOGIC;
	updateDisplayTwiCard_6 : OUT STD_LOGIC;
	updateDisplayTwiCard_7 : OUT STD_LOGIC;
	updateDisplayTwiCard_8 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : maquinaEstados
	PORT MAP (
-- list connections between master ports and signals
	clear => clear,
	clk => clk,
	cntTwistedCards => cntTwistedCards,
	compEnable => compEnable,
	counterEnable => counterEnable,
	demuxEnable => demuxEnable,
	enableCard_1 => enableCard_1,
	enableCard_2 => enableCard_2,
	enableCard_3 => enableCard_3,
	enableCard_4 => enableCard_4,
	enableCard_5 => enableCard_5,
	enableCard_6 => enableCard_6,
	enableCard_7 => enableCard_7,
	enableCard_8 => enableCard_8,
	filterEnable => filterEnable,
	isEqual => isEqual,
	keyboardEnable => keyboardEnable,
	newCounterTwiCards => newCounterTwiCards,
	numericKey => numericKey,
	stateCard_1 => stateCard_1,
	stateCard_2 => stateCard_2,
	stateCard_3 => stateCard_3,
	stateCard_4 => stateCard_4,
	stateCard_5 => stateCard_5,
	stateCard_6 => stateCard_6,
	stateCard_7 => stateCard_7,
	stateCard_8 => stateCard_8,
	updateDisplayTwiCard_1 => updateDisplayTwiCard_1,
	updateDisplayTwiCard_2 => updateDisplayTwiCard_2,
	updateDisplayTwiCard_3 => updateDisplayTwiCard_3,
	updateDisplayTwiCard_4 => updateDisplayTwiCard_4,
	updateDisplayTwiCard_5 => updateDisplayTwiCard_5,
	updateDisplayTwiCard_6 => updateDisplayTwiCard_6,
	updateDisplayTwiCard_7 => updateDisplayTwiCard_7,
	updateDisplayTwiCard_8 => updateDisplayTwiCard_8
	);

-- clear
t_prcs_clear: PROCESS
BEGIN
	clear <= '0';
	WAIT FOR 30000 ps;
	clear <= '1';
WAIT;
END PROCESS t_prcs_clear;

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 33
	LOOP
		clk <= '0';
		WAIT FOR 15000 ps;
		clk <= '1';
		WAIT FOR 15000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;
-- cntTwistedCards[2]
t_prcs_cntTwistedCards_2: PROCESS
BEGIN
	cntTwistedCards(2) <= '0';
WAIT;
END PROCESS t_prcs_cntTwistedCards_2;
-- cntTwistedCards[1]
t_prcs_cntTwistedCards_1: PROCESS
BEGIN
	cntTwistedCards(1) <= '0';
WAIT;
END PROCESS t_prcs_cntTwistedCards_1;
-- cntTwistedCards[0]
t_prcs_cntTwistedCards_0: PROCESS
BEGIN
	cntTwistedCards(0) <= '0';
WAIT;
END PROCESS t_prcs_cntTwistedCards_0;

-- isEqual
t_prcs_isEqual: PROCESS
BEGIN
	isEqual <= '0';
	WAIT FOR 210000 ps;
	isEqual <= '1';
	WAIT FOR 120000 ps;
	isEqual <= '0';
WAIT;
END PROCESS t_prcs_isEqual;
-- numericKey[2]
t_prcs_numericKey_2: PROCESS
BEGIN
	numericKey(2) <= '0';
	WAIT FOR 180000 ps;
	numericKey(2) <= '1';
	WAIT FOR 90000 ps;
	numericKey(2) <= '0';
WAIT;
END PROCESS t_prcs_numericKey_2;
-- numericKey[1]
t_prcs_numericKey_1: PROCESS
BEGIN
	numericKey(1) <= '0';
	WAIT FOR 90000 ps;
	numericKey(1) <= '1';
	WAIT FOR 90000 ps;
	numericKey(1) <= '0';
WAIT;
END PROCESS t_prcs_numericKey_1;
-- numericKey[0]
t_prcs_numericKey_0: PROCESS
BEGIN
	numericKey(0) <= '0';
	WAIT FOR 90000 ps;
	numericKey(0) <= '1';
	WAIT FOR 90000 ps;
	numericKey(0) <= '0';
WAIT;
END PROCESS t_prcs_numericKey_0;
-- stateCard_1[2]
t_prcs_stateCard_1_2: PROCESS
BEGIN
	stateCard_1(2) <= '0';
WAIT;
END PROCESS t_prcs_stateCard_1_2;
-- stateCard_1[1]
t_prcs_stateCard_1_1: PROCESS
BEGIN
	stateCard_1(1) <= '0';
WAIT;
END PROCESS t_prcs_stateCard_1_1;
-- stateCard_1[0]
t_prcs_stateCard_1_0: PROCESS
BEGIN
	stateCard_1(0) <= '0';
WAIT;
END PROCESS t_prcs_stateCard_1_0;
-- stateCard_2[2]
t_prcs_stateCard_2_2: PROCESS
BEGIN
	stateCard_2(2) <= '0';
WAIT;
END PROCESS t_prcs_stateCard_2_2;
-- stateCard_2[1]
t_prcs_stateCard_2_1: PROCESS
BEGIN
	stateCard_2(1) <= '0';
WAIT;
END PROCESS t_prcs_stateCard_2_1;
-- stateCard_2[0]
t_prcs_stateCard_2_0: PROCESS
BEGIN
	stateCard_2(0) <= '0';
WAIT;
END PROCESS t_prcs_stateCard_2_0;
-- stateCard_3[2]
t_prcs_stateCard_3_2: PROCESS
BEGIN
	stateCard_3(2) <= '0';
	WAIT FOR 120000 ps;
	stateCard_3(2) <= '1';
	WAIT FOR 150000 ps;
	stateCard_3(2) <= '0';
WAIT;
END PROCESS t_prcs_stateCard_3_2;
-- stateCard_3[1]
t_prcs_stateCard_3_1: PROCESS
BEGIN
	stateCard_3(1) <= '0';
WAIT;
END PROCESS t_prcs_stateCard_3_1;
-- stateCard_3[0]
t_prcs_stateCard_3_0: PROCESS
BEGIN
	stateCard_3(0) <= '0';
WAIT;
END PROCESS t_prcs_stateCard_3_0;
-- stateCard_4[2]
t_prcs_stateCard_4_2: PROCESS
BEGIN
	stateCard_4(2) <= '0';
	WAIT FOR 210000 ps;
	stateCard_4(2) <= '1';
	WAIT FOR 120000 ps;
	stateCard_4(2) <= '0';
WAIT;
END PROCESS t_prcs_stateCard_4_2;
-- stateCard_4[1]
t_prcs_stateCard_4_1: PROCESS
BEGIN
	stateCard_4(1) <= '0';
WAIT;
END PROCESS t_prcs_stateCard_4_1;
-- stateCard_4[0]
t_prcs_stateCard_4_0: PROCESS
BEGIN
	stateCard_4(0) <= '0';
WAIT;
END PROCESS t_prcs_stateCard_4_0;
-- stateCard_5[2]
t_prcs_stateCard_5_2: PROCESS
BEGIN
	stateCard_5(2) <= '0';
WAIT;
END PROCESS t_prcs_stateCard_5_2;
-- stateCard_5[1]
t_prcs_stateCard_5_1: PROCESS
BEGIN
	stateCard_5(1) <= '0';
WAIT;
END PROCESS t_prcs_stateCard_5_1;
-- stateCard_5[0]
t_prcs_stateCard_5_0: PROCESS
BEGIN
	stateCard_5(0) <= '0';
WAIT;
END PROCESS t_prcs_stateCard_5_0;
-- stateCard_6[2]
t_prcs_stateCard_6_2: PROCESS
BEGIN
	stateCard_6(2) <= '0';
WAIT;
END PROCESS t_prcs_stateCard_6_2;
-- stateCard_6[1]
t_prcs_stateCard_6_1: PROCESS
BEGIN
	stateCard_6(1) <= '0';
WAIT;
END PROCESS t_prcs_stateCard_6_1;
-- stateCard_6[0]
t_prcs_stateCard_6_0: PROCESS
BEGIN
	stateCard_6(0) <= '0';
WAIT;
END PROCESS t_prcs_stateCard_6_0;
-- stateCard_7[2]
t_prcs_stateCard_7_2: PROCESS
BEGIN
	stateCard_7(2) <= '0';
WAIT;
END PROCESS t_prcs_stateCard_7_2;
-- stateCard_7[1]
t_prcs_stateCard_7_1: PROCESS
BEGIN
	stateCard_7(1) <= '0';
WAIT;
END PROCESS t_prcs_stateCard_7_1;
-- stateCard_7[0]
t_prcs_stateCard_7_0: PROCESS
BEGIN
	stateCard_7(0) <= '0';
WAIT;
END PROCESS t_prcs_stateCard_7_0;
-- stateCard_8[2]
t_prcs_stateCard_8_2: PROCESS
BEGIN
	stateCard_8(2) <= '0';
WAIT;
END PROCESS t_prcs_stateCard_8_2;
-- stateCard_8[1]
t_prcs_stateCard_8_1: PROCESS
BEGIN
	stateCard_8(1) <= '0';
WAIT;
END PROCESS t_prcs_stateCard_8_1;
-- stateCard_8[0]
t_prcs_stateCard_8_0: PROCESS
BEGIN
	stateCard_8(0) <= '0';
WAIT;
END PROCESS t_prcs_stateCard_8_0;
END maquinaEstados_arch;

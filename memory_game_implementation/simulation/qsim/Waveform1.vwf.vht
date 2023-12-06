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
-- Generated on "12/06/2023 09:29:30"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          carta
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY carta_vhd_vec_tst IS
END carta_vhd_vec_tst;
ARCHITECTURE carta_arch OF carta_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL CLRN : STD_LOGIC;
SIGNAL DATA : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL INPUT : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL STATE_CARD : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL TWI_CARD : STD_LOGIC;
SIGNAL V_CARTA : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT carta
	PORT (
	CLK : IN STD_LOGIC;
	CLRN : IN STD_LOGIC;
	DATA : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	INPUT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	STATE_CARD : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	TWI_CARD : IN STD_LOGIC;
	V_CARTA : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : carta
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	CLRN => CLRN,
	DATA => DATA,
	INPUT => INPUT,
	STATE_CARD => STATE_CARD,
	TWI_CARD => TWI_CARD,
	V_CARTA => V_CARTA
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
	FOR i IN 1 TO 33
	LOOP
		CLK <= '0';
		WAIT FOR 15000 ps;
		CLK <= '1';
		WAIT FOR 15000 ps;
	END LOOP;
	CLK <= '0';
WAIT;
END PROCESS t_prcs_CLK;

-- CLRN
t_prcs_CLRN: PROCESS
BEGIN
	CLRN <= '1';
WAIT;
END PROCESS t_prcs_CLRN;
-- DATA[2]
t_prcs_DATA_2: PROCESS
BEGIN
	DATA(2) <= '0';
WAIT;
END PROCESS t_prcs_DATA_2;
-- DATA[1]
t_prcs_DATA_1: PROCESS
BEGIN
	DATA(1) <= '1';
WAIT;
END PROCESS t_prcs_DATA_1;
-- DATA[0]
t_prcs_DATA_0: PROCESS
BEGIN
	DATA(0) <= '1';
WAIT;
END PROCESS t_prcs_DATA_0;
-- INPUT[2]
t_prcs_INPUT_2: PROCESS
BEGIN
	INPUT(2) <= '0';
	WAIT FOR 340000 ps;
	INPUT(2) <= '1';
WAIT;
END PROCESS t_prcs_INPUT_2;
-- INPUT[1]
t_prcs_INPUT_1: PROCESS
BEGIN
	INPUT(1) <= '0';
	WAIT FOR 240000 ps;
	INPUT(1) <= '1';
WAIT;
END PROCESS t_prcs_INPUT_1;
-- INPUT[0]
t_prcs_INPUT_0: PROCESS
BEGIN
	INPUT(0) <= '0';
	WAIT FOR 240000 ps;
	INPUT(0) <= '1';
WAIT;
END PROCESS t_prcs_INPUT_0;

-- TWI_CARD
t_prcs_TWI_CARD: PROCESS
BEGIN
	TWI_CARD <= '0';
	WAIT FOR 340000 ps;
	TWI_CARD <= '1';
WAIT;
END PROCESS t_prcs_TWI_CARD;
END carta_arch;

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
-- Generated on "12/06/2023 09:32:32"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          memory_game
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY memory_game_vhd_vec_tst IS
END memory_game_vhd_vec_tst;
ARCHITECTURE memory_game_arch OF memory_game_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL BTN_IN : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL carta1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL carta2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL carta3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL carta4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL carta5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL carta6 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL carta7 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL carta8 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL CLK : STD_LOGIC;
SIGNAL CLRN : STD_LOGIC;
COMPONENT memory_game
	PORT (
	BTN_IN : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	carta1 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	carta2 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	carta3 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	carta4 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	carta5 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	carta6 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	carta7 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	carta8 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	CLK : IN STD_LOGIC;
	CLRN : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : memory_game
	PORT MAP (
-- list connections between master ports and signals
	BTN_IN => BTN_IN,
	carta1 => carta1,
	carta2 => carta2,
	carta3 => carta3,
	carta4 => carta4,
	carta5 => carta5,
	carta6 => carta6,
	carta7 => carta7,
	carta8 => carta8,
	CLK => CLK,
	CLRN => CLRN
	);
-- BTN_IN[2]
t_prcs_BTN_IN_2: PROCESS
BEGIN
	BTN_IN(2) <= '0';
	WAIT FOR 240000 ps;
	BTN_IN(2) <= '1';
	WAIT FOR 160000 ps;
	BTN_IN(2) <= '0';
WAIT;
END PROCESS t_prcs_BTN_IN_2;
-- BTN_IN[1]
t_prcs_BTN_IN_1: PROCESS
BEGIN
	BTN_IN(1) <= '0';
	WAIT FOR 100000 ps;
	BTN_IN(1) <= '1';
	WAIT FOR 60000 ps;
	BTN_IN(1) <= '0';
WAIT;
END PROCESS t_prcs_BTN_IN_1;
-- BTN_IN[0]
t_prcs_BTN_IN_0: PROCESS
BEGIN
	BTN_IN(0) <= '0';
	WAIT FOR 100000 ps;
	BTN_IN(0) <= '1';
	WAIT FOR 60000 ps;
	BTN_IN(0) <= '0';
WAIT;
END PROCESS t_prcs_BTN_IN_0;

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
	CLRN <= '0';
	WAIT FOR 10000 ps;
	CLRN <= '1';
WAIT;
END PROCESS t_prcs_CLRN;
END memory_game_arch;

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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

-- DATE "12/06/2023 09:32:33"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	memory_game IS
    PORT (
	BTN_IN : IN std_logic_vector(2 DOWNTO 0);
	CLK : IN std_logic;
	CLRN : IN std_logic;
	carta1 : BUFFER std_logic_vector(6 DOWNTO 0);
	carta2 : BUFFER std_logic_vector(6 DOWNTO 0);
	carta3 : BUFFER std_logic_vector(6 DOWNTO 0);
	carta4 : BUFFER std_logic_vector(6 DOWNTO 0);
	carta5 : BUFFER std_logic_vector(6 DOWNTO 0);
	carta6 : BUFFER std_logic_vector(6 DOWNTO 0);
	carta7 : BUFFER std_logic_vector(6 DOWNTO 0);
	carta8 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END memory_game;

ARCHITECTURE structure OF memory_game IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_BTN_IN : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_CLRN : std_logic;
SIGNAL ww_carta1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_carta2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_carta3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_carta4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_carta5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_carta6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_carta7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_carta8 : std_logic_vector(6 DOWNTO 0);
SIGNAL \carta1[0]~output_o\ : std_logic;
SIGNAL \carta1[1]~output_o\ : std_logic;
SIGNAL \carta1[2]~output_o\ : std_logic;
SIGNAL \carta1[3]~output_o\ : std_logic;
SIGNAL \carta1[4]~output_o\ : std_logic;
SIGNAL \carta1[5]~output_o\ : std_logic;
SIGNAL \carta1[6]~output_o\ : std_logic;
SIGNAL \carta2[0]~output_o\ : std_logic;
SIGNAL \carta2[1]~output_o\ : std_logic;
SIGNAL \carta2[2]~output_o\ : std_logic;
SIGNAL \carta2[3]~output_o\ : std_logic;
SIGNAL \carta2[4]~output_o\ : std_logic;
SIGNAL \carta2[5]~output_o\ : std_logic;
SIGNAL \carta2[6]~output_o\ : std_logic;
SIGNAL \carta3[0]~output_o\ : std_logic;
SIGNAL \carta3[1]~output_o\ : std_logic;
SIGNAL \carta3[2]~output_o\ : std_logic;
SIGNAL \carta3[3]~output_o\ : std_logic;
SIGNAL \carta3[4]~output_o\ : std_logic;
SIGNAL \carta3[5]~output_o\ : std_logic;
SIGNAL \carta3[6]~output_o\ : std_logic;
SIGNAL \carta4[0]~output_o\ : std_logic;
SIGNAL \carta4[1]~output_o\ : std_logic;
SIGNAL \carta4[2]~output_o\ : std_logic;
SIGNAL \carta4[3]~output_o\ : std_logic;
SIGNAL \carta4[4]~output_o\ : std_logic;
SIGNAL \carta4[5]~output_o\ : std_logic;
SIGNAL \carta4[6]~output_o\ : std_logic;
SIGNAL \carta5[0]~output_o\ : std_logic;
SIGNAL \carta5[1]~output_o\ : std_logic;
SIGNAL \carta5[2]~output_o\ : std_logic;
SIGNAL \carta5[3]~output_o\ : std_logic;
SIGNAL \carta5[4]~output_o\ : std_logic;
SIGNAL \carta5[5]~output_o\ : std_logic;
SIGNAL \carta5[6]~output_o\ : std_logic;
SIGNAL \carta6[0]~output_o\ : std_logic;
SIGNAL \carta6[1]~output_o\ : std_logic;
SIGNAL \carta6[2]~output_o\ : std_logic;
SIGNAL \carta6[3]~output_o\ : std_logic;
SIGNAL \carta6[4]~output_o\ : std_logic;
SIGNAL \carta6[5]~output_o\ : std_logic;
SIGNAL \carta6[6]~output_o\ : std_logic;
SIGNAL \carta7[0]~output_o\ : std_logic;
SIGNAL \carta7[1]~output_o\ : std_logic;
SIGNAL \carta7[2]~output_o\ : std_logic;
SIGNAL \carta7[3]~output_o\ : std_logic;
SIGNAL \carta7[4]~output_o\ : std_logic;
SIGNAL \carta7[5]~output_o\ : std_logic;
SIGNAL \carta7[6]~output_o\ : std_logic;
SIGNAL \carta8[0]~output_o\ : std_logic;
SIGNAL \carta8[1]~output_o\ : std_logic;
SIGNAL \carta8[2]~output_o\ : std_logic;
SIGNAL \carta8[3]~output_o\ : std_logic;
SIGNAL \carta8[4]~output_o\ : std_logic;
SIGNAL \carta8[5]~output_o\ : std_logic;
SIGNAL \carta8[6]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \BTN_IN[0]~input_o\ : std_logic;
SIGNAL \CLRN~input_o\ : std_logic;
SIGNAL \maquinaEstadoss|state_reg.s0~q\ : std_logic;
SIGNAL \maquinaEstadoss|Selector30~0_combout\ : std_logic;
SIGNAL \maquinaEstadoss|Selector33~0_combout\ : std_logic;
SIGNAL \BTN_IN[2]~input_o\ : std_logic;
SIGNAL \BTN_IN[1]~input_o\ : std_logic;
SIGNAL \maquinaEstadoss|Selector30~1_combout\ : std_logic;
SIGNAL \maquinaEstadoss|Equal5~0_combout\ : std_logic;
SIGNAL \maquinaEstadoss|Selector28~0_combout\ : std_logic;
SIGNAL \maquinaEstadoss|Selector4~0_combout\ : std_logic;
SIGNAL \maquinaEstadoss|Selector35~0_combout\ : std_logic;
SIGNAL \maquinaEstadoss|Selector29~0_combout\ : std_logic;
SIGNAL \maquinaEstadoss|Equal1~0_combout\ : std_logic;
SIGNAL \maquinaEstadoss|Selector33~1_combout\ : std_logic;
SIGNAL \maquinaEstadoss|Selector35~1_combout\ : std_logic;
SIGNAL \maquinaEstadoss|Selector27~0_combout\ : std_logic;
SIGNAL \maquinaEstadoss|Mux1~4_combout\ : std_logic;
SIGNAL \maquinaEstadoss|Selector31~0_combout\ : std_logic;
SIGNAL \maquinaEstadoss|Mux1~0_combout\ : std_logic;
SIGNAL \maquinaEstadoss|Selector50~0_combout\ : std_logic;
SIGNAL \maquinaEstadoss|next_state.s1_1479~combout\ : std_logic;
SIGNAL \maquinaEstadoss|state_reg.s1~q\ : std_logic;
SIGNAL \maquinaEstadoss|Selector48~0_combout\ : std_logic;
SIGNAL \maquinaEstadoss|next_state.s2_1468~combout\ : std_logic;
SIGNAL \maquinaEstadoss|state_reg.s2~q\ : std_logic;
SIGNAL \maquinaEstadoss|Selector46~0_combout\ : std_logic;
SIGNAL \maquinaEstadoss|next_state.s3_1457~combout\ : std_logic;
SIGNAL \maquinaEstadoss|state_reg.s3~q\ : std_logic;
SIGNAL \maquinaEstadoss|next_state.s4_1446~combout\ : std_logic;
SIGNAL \maquinaEstadoss|state_reg.s4~q\ : std_logic;
SIGNAL \maquinaEstadoss|Selector3~0_combout\ : std_logic;
SIGNAL \maquinaEstadoss|Selector38~0_combout\ : std_logic;
SIGNAL \maquinaEstadoss|Selector38~1_combout\ : std_logic;
SIGNAL \d_carta1|disp_carta|Mux4~0_combout\ : std_logic;
SIGNAL \d_carta5|disp_carta|Mux4~0_combout\ : std_logic;
SIGNAL \d_carta8|estadoCarta|q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \d_carta1|estadoCarta|q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \d_carta2|estadoCarta|q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \teclado|Reg|q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \d_carta6|estadoCarta|q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \d_carta3|estadoCarta|q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \d_carta7|estadoCarta|q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \d_carta4|estadoCarta|q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \d_carta5|estadoCarta|q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \maquinaEstadoss|enableCard_1\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \maquinaEstadoss|enableCard_2\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \maquinaEstadoss|enableCard_3\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \maquinaEstadoss|enableCard_4\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \maquinaEstadoss|enableCard_5\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \maquinaEstadoss|enableCard_6\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \maquinaEstadoss|enableCard_7\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \maquinaEstadoss|enableCard_8\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \maquinaEstadoss|ALT_INV_next_state.s3_1457~combout\ : std_logic;
SIGNAL \maquinaEstadoss|ALT_INV_next_state.s2_1468~combout\ : std_logic;
SIGNAL \maquinaEstadoss|ALT_INV_next_state.s1_1479~combout\ : std_logic;
SIGNAL \maquinaEstadoss|ALT_INV_next_state.s4_1446~combout\ : std_logic;
SIGNAL \maquinaEstadoss|ALT_INV_enableCard_8\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \maquinaEstadoss|ALT_INV_enableCard_7\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \maquinaEstadoss|ALT_INV_enableCard_6\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \maquinaEstadoss|ALT_INV_enableCard_5\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \maquinaEstadoss|ALT_INV_enableCard_4\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \maquinaEstadoss|ALT_INV_enableCard_3\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \maquinaEstadoss|ALT_INV_enableCard_2\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \maquinaEstadoss|ALT_INV_enableCard_1\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \maquinaEstadoss|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \maquinaEstadoss|ALT_INV_Selector46~0_combout\ : std_logic;
SIGNAL \maquinaEstadoss|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \maquinaEstadoss|ALT_INV_Selector48~0_combout\ : std_logic;
SIGNAL \maquinaEstadoss|ALT_INV_Selector50~0_combout\ : std_logic;
SIGNAL \maquinaEstadoss|ALT_INV_state_reg.s0~q\ : std_logic;
SIGNAL \maquinaEstadoss|ALT_INV_state_reg.s3~q\ : std_logic;
SIGNAL \maquinaEstadoss|ALT_INV_Selector27~0_combout\ : std_logic;
SIGNAL \maquinaEstadoss|ALT_INV_Selector28~0_combout\ : std_logic;
SIGNAL \maquinaEstadoss|ALT_INV_Selector29~0_combout\ : std_logic;
SIGNAL \maquinaEstadoss|ALT_INV_Selector30~1_combout\ : std_logic;
SIGNAL \maquinaEstadoss|ALT_INV_Selector31~0_combout\ : std_logic;
SIGNAL \maquinaEstadoss|ALT_INV_Selector33~1_combout\ : std_logic;
SIGNAL \maquinaEstadoss|ALT_INV_Selector35~1_combout\ : std_logic;
SIGNAL \maquinaEstadoss|ALT_INV_Selector35~0_combout\ : std_logic;
SIGNAL \maquinaEstadoss|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \maquinaEstadoss|ALT_INV_Selector38~1_combout\ : std_logic;
SIGNAL \teclado|Reg|ALT_INV_q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \maquinaEstadoss|ALT_INV_Selector33~0_combout\ : std_logic;
SIGNAL \maquinaEstadoss|ALT_INV_state_reg.s2~q\ : std_logic;
SIGNAL \maquinaEstadoss|ALT_INV_state_reg.s1~q\ : std_logic;
SIGNAL \maquinaEstadoss|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \maquinaEstadoss|ALT_INV_state_reg.s4~q\ : std_logic;
SIGNAL \d_carta8|estadoCarta|ALT_INV_q\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \d_carta7|estadoCarta|ALT_INV_q\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \d_carta6|estadoCarta|ALT_INV_q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \maquinaEstadoss|ALT_INV_Selector30~0_combout\ : std_logic;
SIGNAL \d_carta5|estadoCarta|ALT_INV_q\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \d_carta4|estadoCarta|ALT_INV_q\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \d_carta3|estadoCarta|ALT_INV_q\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \d_carta2|estadoCarta|ALT_INV_q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \maquinaEstadoss|ALT_INV_Selector38~0_combout\ : std_logic;
SIGNAL \d_carta1|estadoCarta|ALT_INV_q\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \maquinaEstadoss|ALT_INV_Mux1~4_combout\ : std_logic;
SIGNAL \maquinaEstadoss|ALT_INV_Mux1~0_combout\ : std_logic;

BEGIN

ww_BTN_IN <= BTN_IN;
ww_CLK <= CLK;
ww_CLRN <= CLRN;
carta1 <= ww_carta1;
carta2 <= ww_carta2;
carta3 <= ww_carta3;
carta4 <= ww_carta4;
carta5 <= ww_carta5;
carta6 <= ww_carta6;
carta7 <= ww_carta7;
carta8 <= ww_carta8;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\maquinaEstadoss|ALT_INV_next_state.s3_1457~combout\ <= NOT \maquinaEstadoss|next_state.s3_1457~combout\;
\maquinaEstadoss|ALT_INV_next_state.s2_1468~combout\ <= NOT \maquinaEstadoss|next_state.s2_1468~combout\;
\maquinaEstadoss|ALT_INV_next_state.s1_1479~combout\ <= NOT \maquinaEstadoss|next_state.s1_1479~combout\;
\maquinaEstadoss|ALT_INV_next_state.s4_1446~combout\ <= NOT \maquinaEstadoss|next_state.s4_1446~combout\;
\maquinaEstadoss|ALT_INV_enableCard_8\(1) <= NOT \maquinaEstadoss|enableCard_8\(1);
\maquinaEstadoss|ALT_INV_enableCard_7\(1) <= NOT \maquinaEstadoss|enableCard_7\(1);
\maquinaEstadoss|ALT_INV_enableCard_6\(0) <= NOT \maquinaEstadoss|enableCard_6\(0);
\maquinaEstadoss|ALT_INV_enableCard_5\(1) <= NOT \maquinaEstadoss|enableCard_5\(1);
\maquinaEstadoss|ALT_INV_enableCard_4\(2) <= NOT \maquinaEstadoss|enableCard_4\(2);
\maquinaEstadoss|ALT_INV_enableCard_3\(2) <= NOT \maquinaEstadoss|enableCard_3\(2);
\maquinaEstadoss|ALT_INV_enableCard_2\(0) <= NOT \maquinaEstadoss|enableCard_2\(0);
\maquinaEstadoss|ALT_INV_enableCard_1\(1) <= NOT \maquinaEstadoss|enableCard_1\(1);
\maquinaEstadoss|ALT_INV_Equal1~0_combout\ <= NOT \maquinaEstadoss|Equal1~0_combout\;
\maquinaEstadoss|ALT_INV_Selector46~0_combout\ <= NOT \maquinaEstadoss|Selector46~0_combout\;
\maquinaEstadoss|ALT_INV_Equal5~0_combout\ <= NOT \maquinaEstadoss|Equal5~0_combout\;
\maquinaEstadoss|ALT_INV_Selector48~0_combout\ <= NOT \maquinaEstadoss|Selector48~0_combout\;
\maquinaEstadoss|ALT_INV_Selector50~0_combout\ <= NOT \maquinaEstadoss|Selector50~0_combout\;
\maquinaEstadoss|ALT_INV_state_reg.s0~q\ <= NOT \maquinaEstadoss|state_reg.s0~q\;
\maquinaEstadoss|ALT_INV_state_reg.s3~q\ <= NOT \maquinaEstadoss|state_reg.s3~q\;
\maquinaEstadoss|ALT_INV_Selector27~0_combout\ <= NOT \maquinaEstadoss|Selector27~0_combout\;
\maquinaEstadoss|ALT_INV_Selector28~0_combout\ <= NOT \maquinaEstadoss|Selector28~0_combout\;
\maquinaEstadoss|ALT_INV_Selector29~0_combout\ <= NOT \maquinaEstadoss|Selector29~0_combout\;
\maquinaEstadoss|ALT_INV_Selector30~1_combout\ <= NOT \maquinaEstadoss|Selector30~1_combout\;
\maquinaEstadoss|ALT_INV_Selector31~0_combout\ <= NOT \maquinaEstadoss|Selector31~0_combout\;
\maquinaEstadoss|ALT_INV_Selector33~1_combout\ <= NOT \maquinaEstadoss|Selector33~1_combout\;
\maquinaEstadoss|ALT_INV_Selector35~1_combout\ <= NOT \maquinaEstadoss|Selector35~1_combout\;
\maquinaEstadoss|ALT_INV_Selector35~0_combout\ <= NOT \maquinaEstadoss|Selector35~0_combout\;
\maquinaEstadoss|ALT_INV_Selector4~0_combout\ <= NOT \maquinaEstadoss|Selector4~0_combout\;
\maquinaEstadoss|ALT_INV_Selector38~1_combout\ <= NOT \maquinaEstadoss|Selector38~1_combout\;
\teclado|Reg|ALT_INV_q\(1) <= NOT \teclado|Reg|q\(1);
\teclado|Reg|ALT_INV_q\(2) <= NOT \teclado|Reg|q\(2);
\maquinaEstadoss|ALT_INV_Selector33~0_combout\ <= NOT \maquinaEstadoss|Selector33~0_combout\;
\maquinaEstadoss|ALT_INV_state_reg.s2~q\ <= NOT \maquinaEstadoss|state_reg.s2~q\;
\maquinaEstadoss|ALT_INV_state_reg.s1~q\ <= NOT \maquinaEstadoss|state_reg.s1~q\;
\maquinaEstadoss|ALT_INV_Selector3~0_combout\ <= NOT \maquinaEstadoss|Selector3~0_combout\;
\maquinaEstadoss|ALT_INV_state_reg.s4~q\ <= NOT \maquinaEstadoss|state_reg.s4~q\;
\teclado|Reg|ALT_INV_q\(0) <= NOT \teclado|Reg|q\(0);
\d_carta8|estadoCarta|ALT_INV_q\(1) <= NOT \d_carta8|estadoCarta|q\(1);
\d_carta7|estadoCarta|ALT_INV_q\(1) <= NOT \d_carta7|estadoCarta|q\(1);
\d_carta6|estadoCarta|ALT_INV_q\(0) <= NOT \d_carta6|estadoCarta|q\(0);
\maquinaEstadoss|ALT_INV_Selector30~0_combout\ <= NOT \maquinaEstadoss|Selector30~0_combout\;
\d_carta5|estadoCarta|ALT_INV_q\(0) <= NOT \d_carta5|estadoCarta|q\(0);
\d_carta5|estadoCarta|ALT_INV_q\(1) <= NOT \d_carta5|estadoCarta|q\(1);
\d_carta4|estadoCarta|ALT_INV_q\(2) <= NOT \d_carta4|estadoCarta|q\(2);
\d_carta3|estadoCarta|ALT_INV_q\(2) <= NOT \d_carta3|estadoCarta|q\(2);
\d_carta2|estadoCarta|ALT_INV_q\(0) <= NOT \d_carta2|estadoCarta|q\(0);
\maquinaEstadoss|ALT_INV_Selector38~0_combout\ <= NOT \maquinaEstadoss|Selector38~0_combout\;
\d_carta1|estadoCarta|ALT_INV_q\(0) <= NOT \d_carta1|estadoCarta|q\(0);
\d_carta1|estadoCarta|ALT_INV_q\(1) <= NOT \d_carta1|estadoCarta|q\(1);
\maquinaEstadoss|ALT_INV_Mux1~4_combout\ <= NOT \maquinaEstadoss|Mux1~4_combout\;
\maquinaEstadoss|ALT_INV_Mux1~0_combout\ <= NOT \maquinaEstadoss|Mux1~0_combout\;

\carta1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d_carta1|estadoCarta|q\(1),
	devoe => ww_devoe,
	o => \carta1[0]~output_o\);

\carta1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \carta1[1]~output_o\);

\carta1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d_carta1|disp_carta|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \carta1[2]~output_o\);

\carta1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d_carta1|estadoCarta|q\(1),
	devoe => ww_devoe,
	o => \carta1[3]~output_o\);

\carta1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d_carta1|estadoCarta|q\(0),
	devoe => ww_devoe,
	o => \carta1[4]~output_o\);

\carta1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \maquinaEstadoss|ALT_INV_Selector38~0_combout\,
	devoe => ww_devoe,
	o => \carta1[5]~output_o\);

\carta1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d_carta1|estadoCarta|q\(1),
	devoe => ww_devoe,
	o => \carta1[6]~output_o\);

\carta2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \carta2[0]~output_o\);

\carta2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \carta2[1]~output_o\);

\carta2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \carta2[2]~output_o\);

\carta2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \carta2[3]~output_o\);

\carta2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d_carta2|estadoCarta|q\(0),
	devoe => ww_devoe,
	o => \carta2[4]~output_o\);

\carta2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d_carta2|estadoCarta|q\(0),
	devoe => ww_devoe,
	o => \carta2[5]~output_o\);

\carta2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \carta2[6]~output_o\);

\carta3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d_carta3|estadoCarta|q\(2),
	devoe => ww_devoe,
	o => \carta3[0]~output_o\);

\carta3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d_carta3|estadoCarta|q\(2),
	devoe => ww_devoe,
	o => \carta3[1]~output_o\);

\carta3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \carta3[2]~output_o\);

\carta3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \carta3[3]~output_o\);

\carta3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d_carta3|estadoCarta|q\(2),
	devoe => ww_devoe,
	o => \carta3[4]~output_o\);

\carta3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d_carta3|estadoCarta|q\(2),
	devoe => ww_devoe,
	o => \carta3[5]~output_o\);

\carta3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \carta3[6]~output_o\);

\carta4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d_carta4|estadoCarta|q\(2),
	devoe => ww_devoe,
	o => \carta4[0]~output_o\);

\carta4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d_carta4|estadoCarta|q\(2),
	devoe => ww_devoe,
	o => \carta4[1]~output_o\);

\carta4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \carta4[2]~output_o\);

\carta4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \carta4[3]~output_o\);

\carta4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d_carta4|estadoCarta|q\(2),
	devoe => ww_devoe,
	o => \carta4[4]~output_o\);

\carta4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d_carta4|estadoCarta|q\(2),
	devoe => ww_devoe,
	o => \carta4[5]~output_o\);

\carta4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \carta4[6]~output_o\);

\carta5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d_carta5|estadoCarta|q\(1),
	devoe => ww_devoe,
	o => \carta5[0]~output_o\);

\carta5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \carta5[1]~output_o\);

\carta5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d_carta5|disp_carta|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \carta5[2]~output_o\);

\carta5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d_carta5|estadoCarta|q\(1),
	devoe => ww_devoe,
	o => \carta5[3]~output_o\);

\carta5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d_carta5|estadoCarta|q\(0),
	devoe => ww_devoe,
	o => \carta5[4]~output_o\);

\carta5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \maquinaEstadoss|ALT_INV_Selector30~0_combout\,
	devoe => ww_devoe,
	o => \carta5[5]~output_o\);

\carta5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d_carta5|estadoCarta|q\(1),
	devoe => ww_devoe,
	o => \carta5[6]~output_o\);

\carta6[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \carta6[0]~output_o\);

\carta6[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \carta6[1]~output_o\);

\carta6[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \carta6[2]~output_o\);

\carta6[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \carta6[3]~output_o\);

\carta6[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d_carta6|estadoCarta|q\(0),
	devoe => ww_devoe,
	o => \carta6[4]~output_o\);

\carta6[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d_carta6|estadoCarta|q\(0),
	devoe => ww_devoe,
	o => \carta6[5]~output_o\);

\carta6[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \carta6[6]~output_o\);

\carta7[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d_carta7|estadoCarta|q\(1),
	devoe => ww_devoe,
	o => \carta7[0]~output_o\);

\carta7[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \carta7[1]~output_o\);

\carta7[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d_carta7|estadoCarta|q\(1),
	devoe => ww_devoe,
	o => \carta7[2]~output_o\);

\carta7[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d_carta7|estadoCarta|q\(1),
	devoe => ww_devoe,
	o => \carta7[3]~output_o\);

\carta7[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \carta7[4]~output_o\);

\carta7[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d_carta7|estadoCarta|q\(1),
	devoe => ww_devoe,
	o => \carta7[5]~output_o\);

\carta7[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d_carta7|estadoCarta|q\(1),
	devoe => ww_devoe,
	o => \carta7[6]~output_o\);

\carta8[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d_carta8|estadoCarta|q\(1),
	devoe => ww_devoe,
	o => \carta8[0]~output_o\);

\carta8[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \carta8[1]~output_o\);

\carta8[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d_carta8|estadoCarta|q\(1),
	devoe => ww_devoe,
	o => \carta8[2]~output_o\);

\carta8[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d_carta8|estadoCarta|q\(1),
	devoe => ww_devoe,
	o => \carta8[3]~output_o\);

\carta8[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \carta8[4]~output_o\);

\carta8[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d_carta8|estadoCarta|q\(1),
	devoe => ww_devoe,
	o => \carta8[5]~output_o\);

\carta8[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d_carta8|estadoCarta|q\(1),
	devoe => ww_devoe,
	o => \carta8[6]~output_o\);

\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

\BTN_IN[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTN_IN(0),
	o => \BTN_IN[0]~input_o\);

\teclado|Reg|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \BTN_IN[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \teclado|Reg|q\(0));

\CLRN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLRN,
	o => \CLRN~input_o\);

\maquinaEstadoss|state_reg.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => VCC,
	clrn => \CLRN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquinaEstadoss|state_reg.s0~q\);

\d_carta5|estadoCarta|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \maquinaEstadoss|enableCard_5\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_carta5|estadoCarta|q\(0));

\maquinaEstadoss|Selector30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \maquinaEstadoss|Selector30~0_combout\ = (!\d_carta5|estadoCarta|q\(1) & !\d_carta5|estadoCarta|q\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d_carta5|estadoCarta|ALT_INV_q\(1),
	datab => \d_carta5|estadoCarta|ALT_INV_q\(0),
	combout => \maquinaEstadoss|Selector30~0_combout\);

\maquinaEstadoss|Selector33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \maquinaEstadoss|Selector33~0_combout\ = (\teclado|Reg|q\(0) & ((\maquinaEstadoss|state_reg.s2~q\) # (\maquinaEstadoss|state_reg.s1~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \teclado|Reg|ALT_INV_q\(0),
	datab => \maquinaEstadoss|ALT_INV_state_reg.s1~q\,
	datac => \maquinaEstadoss|ALT_INV_state_reg.s2~q\,
	combout => \maquinaEstadoss|Selector33~0_combout\);

\BTN_IN[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTN_IN(2),
	o => \BTN_IN[2]~input_o\);

\teclado|Reg|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \BTN_IN[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \teclado|Reg|q\(2));

\BTN_IN[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTN_IN(1),
	o => \BTN_IN[1]~input_o\);

\teclado|Reg|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \BTN_IN[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \teclado|Reg|q\(1));

\maquinaEstadoss|Selector30~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \maquinaEstadoss|Selector30~1_combout\ = ( \teclado|Reg|q\(1) & ( \maquinaEstadoss|state_reg.s4~q\ ) ) # ( !\teclado|Reg|q\(1) & ( ((\maquinaEstadoss|Selector30~0_combout\ & (\maquinaEstadoss|Selector33~0_combout\ & \teclado|Reg|q\(2)))) # 
-- (\maquinaEstadoss|state_reg.s4~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110111001100110011001100110011001101110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \maquinaEstadoss|ALT_INV_Selector30~0_combout\,
	datab => \maquinaEstadoss|ALT_INV_state_reg.s4~q\,
	datac => \maquinaEstadoss|ALT_INV_Selector33~0_combout\,
	datad => \teclado|Reg|ALT_INV_q\(2),
	datae => \teclado|Reg|ALT_INV_q\(1),
	combout => \maquinaEstadoss|Selector30~1_combout\);

\maquinaEstadoss|enableCard_5[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \maquinaEstadoss|enableCard_5\(1) = ( \maquinaEstadoss|enableCard_5\(1) & ( \maquinaEstadoss|Selector30~1_combout\ & ( \maquinaEstadoss|Selector3~0_combout\ ) ) ) # ( !\maquinaEstadoss|enableCard_5\(1) & ( \maquinaEstadoss|Selector30~1_combout\ & ( 
-- \maquinaEstadoss|Selector3~0_combout\ ) ) ) # ( \maquinaEstadoss|enableCard_5\(1) & ( !\maquinaEstadoss|Selector30~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \maquinaEstadoss|ALT_INV_Selector3~0_combout\,
	datae => \maquinaEstadoss|ALT_INV_enableCard_5\(1),
	dataf => \maquinaEstadoss|ALT_INV_Selector30~1_combout\,
	combout => \maquinaEstadoss|enableCard_5\(1));

\d_carta5|estadoCarta|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \maquinaEstadoss|enableCard_5\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_carta5|estadoCarta|q\(1));

\maquinaEstadoss|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \maquinaEstadoss|Equal5~0_combout\ = (\d_carta5|estadoCarta|q\(0)) # (\d_carta5|estadoCarta|q\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d_carta5|estadoCarta|ALT_INV_q\(1),
	datab => \d_carta5|estadoCarta|ALT_INV_q\(0),
	combout => \maquinaEstadoss|Equal5~0_combout\);

\maquinaEstadoss|Selector28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \maquinaEstadoss|Selector28~0_combout\ = ( \teclado|Reg|q\(1) & ( ((!\d_carta7|estadoCarta|q\(1) & (\maquinaEstadoss|Selector33~0_combout\ & \teclado|Reg|q\(2)))) # (\maquinaEstadoss|state_reg.s4~q\) ) ) # ( !\teclado|Reg|q\(1) & ( 
-- \maquinaEstadoss|state_reg.s4~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011101100110011001100110011001100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d_carta7|estadoCarta|ALT_INV_q\(1),
	datab => \maquinaEstadoss|ALT_INV_state_reg.s4~q\,
	datac => \maquinaEstadoss|ALT_INV_Selector33~0_combout\,
	datad => \teclado|Reg|ALT_INV_q\(2),
	datae => \teclado|Reg|ALT_INV_q\(1),
	combout => \maquinaEstadoss|Selector28~0_combout\);

\maquinaEstadoss|enableCard_7[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \maquinaEstadoss|enableCard_7\(1) = ( \maquinaEstadoss|enableCard_7\(1) & ( \maquinaEstadoss|Selector28~0_combout\ & ( \maquinaEstadoss|Selector3~0_combout\ ) ) ) # ( !\maquinaEstadoss|enableCard_7\(1) & ( \maquinaEstadoss|Selector28~0_combout\ & ( 
-- \maquinaEstadoss|Selector3~0_combout\ ) ) ) # ( \maquinaEstadoss|enableCard_7\(1) & ( !\maquinaEstadoss|Selector28~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \maquinaEstadoss|ALT_INV_Selector3~0_combout\,
	datae => \maquinaEstadoss|ALT_INV_enableCard_7\(1),
	dataf => \maquinaEstadoss|ALT_INV_Selector28~0_combout\,
	combout => \maquinaEstadoss|enableCard_7\(1));

\d_carta7|estadoCarta|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \maquinaEstadoss|enableCard_7\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_carta7|estadoCarta|q\(1));

\maquinaEstadoss|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \maquinaEstadoss|Selector4~0_combout\ = (\maquinaEstadoss|state_reg.s4~q\) # (\teclado|Reg|q\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \teclado|Reg|ALT_INV_q\(0),
	datab => \maquinaEstadoss|ALT_INV_state_reg.s4~q\,
	combout => \maquinaEstadoss|Selector4~0_combout\);

\maquinaEstadoss|Selector35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \maquinaEstadoss|Selector35~0_combout\ = (!\teclado|Reg|q\(0) & ((\maquinaEstadoss|state_reg.s2~q\) # (\maquinaEstadoss|state_reg.s1~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101010001010100010101000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \teclado|Reg|ALT_INV_q\(0),
	datab => \maquinaEstadoss|ALT_INV_state_reg.s1~q\,
	datac => \maquinaEstadoss|ALT_INV_state_reg.s2~q\,
	combout => \maquinaEstadoss|Selector35~0_combout\);

\maquinaEstadoss|Selector29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \maquinaEstadoss|Selector29~0_combout\ = ( \maquinaEstadoss|Selector35~0_combout\ & ( ((!\d_carta6|estadoCarta|q\(0) & (\teclado|Reg|q\(2) & \teclado|Reg|q\(1)))) # (\maquinaEstadoss|state_reg.s4~q\) ) ) # ( !\maquinaEstadoss|Selector35~0_combout\ & ( 
-- \maquinaEstadoss|state_reg.s4~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011101100110011001100110011001100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d_carta6|estadoCarta|ALT_INV_q\(0),
	datab => \maquinaEstadoss|ALT_INV_state_reg.s4~q\,
	datac => \teclado|Reg|ALT_INV_q\(2),
	datad => \teclado|Reg|ALT_INV_q\(1),
	datae => \maquinaEstadoss|ALT_INV_Selector35~0_combout\,
	combout => \maquinaEstadoss|Selector29~0_combout\);

\maquinaEstadoss|enableCard_6[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \maquinaEstadoss|enableCard_6\(0) = ( \maquinaEstadoss|enableCard_6\(0) & ( \maquinaEstadoss|Selector29~0_combout\ & ( !\maquinaEstadoss|Selector4~0_combout\ ) ) ) # ( !\maquinaEstadoss|enableCard_6\(0) & ( \maquinaEstadoss|Selector29~0_combout\ & ( 
-- !\maquinaEstadoss|Selector4~0_combout\ ) ) ) # ( \maquinaEstadoss|enableCard_6\(0) & ( !\maquinaEstadoss|Selector29~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \maquinaEstadoss|ALT_INV_Selector4~0_combout\,
	datae => \maquinaEstadoss|ALT_INV_enableCard_6\(0),
	dataf => \maquinaEstadoss|ALT_INV_Selector29~0_combout\,
	combout => \maquinaEstadoss|enableCard_6\(0));

\d_carta6|estadoCarta|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \maquinaEstadoss|enableCard_6\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_carta6|estadoCarta|q\(0));

\d_carta1|estadoCarta|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \maquinaEstadoss|enableCard_1\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_carta1|estadoCarta|q\(0));

\maquinaEstadoss|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \maquinaEstadoss|Equal1~0_combout\ = (\d_carta1|estadoCarta|q\(0)) # (\d_carta1|estadoCarta|q\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d_carta1|estadoCarta|ALT_INV_q\(1),
	datab => \d_carta1|estadoCarta|ALT_INV_q\(0),
	combout => \maquinaEstadoss|Equal1~0_combout\);

\maquinaEstadoss|Selector33~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \maquinaEstadoss|Selector33~1_combout\ = ( \teclado|Reg|q\(1) & ( ((!\d_carta3|estadoCarta|q\(2) & (\maquinaEstadoss|Selector33~0_combout\ & !\teclado|Reg|q\(2)))) # (\maquinaEstadoss|state_reg.s4~q\) ) ) # ( !\teclado|Reg|q\(1) & ( 
-- \maquinaEstadoss|state_reg.s4~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001110110011001100110011001100110011101100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d_carta3|estadoCarta|ALT_INV_q\(2),
	datab => \maquinaEstadoss|ALT_INV_state_reg.s4~q\,
	datac => \maquinaEstadoss|ALT_INV_Selector33~0_combout\,
	datad => \teclado|Reg|ALT_INV_q\(2),
	datae => \teclado|Reg|ALT_INV_q\(1),
	combout => \maquinaEstadoss|Selector33~1_combout\);

\maquinaEstadoss|enableCard_3[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \maquinaEstadoss|enableCard_3\(2) = ( \maquinaEstadoss|enableCard_3\(2) & ( \maquinaEstadoss|Selector33~1_combout\ & ( \maquinaEstadoss|Selector3~0_combout\ ) ) ) # ( !\maquinaEstadoss|enableCard_3\(2) & ( \maquinaEstadoss|Selector33~1_combout\ & ( 
-- \maquinaEstadoss|Selector3~0_combout\ ) ) ) # ( \maquinaEstadoss|enableCard_3\(2) & ( !\maquinaEstadoss|Selector33~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \maquinaEstadoss|ALT_INV_Selector3~0_combout\,
	datae => \maquinaEstadoss|ALT_INV_enableCard_3\(2),
	dataf => \maquinaEstadoss|ALT_INV_Selector33~1_combout\,
	combout => \maquinaEstadoss|enableCard_3\(2));

\d_carta3|estadoCarta|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \maquinaEstadoss|enableCard_3\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_carta3|estadoCarta|q\(2));

\maquinaEstadoss|Selector35~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \maquinaEstadoss|Selector35~1_combout\ = ( \maquinaEstadoss|Selector35~0_combout\ & ( ((!\d_carta2|estadoCarta|q\(0) & (!\teclado|Reg|q\(2) & \teclado|Reg|q\(1)))) # (\maquinaEstadoss|state_reg.s4~q\) ) ) # ( !\maquinaEstadoss|Selector35~0_combout\ & ( 
-- \maquinaEstadoss|state_reg.s4~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100111011001100110011001100110011001110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d_carta2|estadoCarta|ALT_INV_q\(0),
	datab => \maquinaEstadoss|ALT_INV_state_reg.s4~q\,
	datac => \teclado|Reg|ALT_INV_q\(2),
	datad => \teclado|Reg|ALT_INV_q\(1),
	datae => \maquinaEstadoss|ALT_INV_Selector35~0_combout\,
	combout => \maquinaEstadoss|Selector35~1_combout\);

\maquinaEstadoss|enableCard_2[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \maquinaEstadoss|enableCard_2\(0) = ( \maquinaEstadoss|enableCard_2\(0) & ( \maquinaEstadoss|Selector35~1_combout\ & ( !\maquinaEstadoss|Selector4~0_combout\ ) ) ) # ( !\maquinaEstadoss|enableCard_2\(0) & ( \maquinaEstadoss|Selector35~1_combout\ & ( 
-- !\maquinaEstadoss|Selector4~0_combout\ ) ) ) # ( \maquinaEstadoss|enableCard_2\(0) & ( !\maquinaEstadoss|Selector35~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \maquinaEstadoss|ALT_INV_Selector4~0_combout\,
	datae => \maquinaEstadoss|ALT_INV_enableCard_2\(0),
	dataf => \maquinaEstadoss|ALT_INV_Selector35~1_combout\,
	combout => \maquinaEstadoss|enableCard_2\(0));

\d_carta2|estadoCarta|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \maquinaEstadoss|enableCard_2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_carta2|estadoCarta|q\(0));

\maquinaEstadoss|Selector27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \maquinaEstadoss|Selector27~0_combout\ = ( \maquinaEstadoss|Selector35~0_combout\ & ( ((!\d_carta8|estadoCarta|q\(1) & (!\teclado|Reg|q\(2) & !\teclado|Reg|q\(1)))) # (\maquinaEstadoss|state_reg.s4~q\) ) ) # ( !\maquinaEstadoss|Selector35~0_combout\ & ( 
-- \maquinaEstadoss|state_reg.s4~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011101100110011001100110011001100111011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d_carta8|estadoCarta|ALT_INV_q\(1),
	datab => \maquinaEstadoss|ALT_INV_state_reg.s4~q\,
	datac => \teclado|Reg|ALT_INV_q\(2),
	datad => \teclado|Reg|ALT_INV_q\(1),
	datae => \maquinaEstadoss|ALT_INV_Selector35~0_combout\,
	combout => \maquinaEstadoss|Selector27~0_combout\);

\maquinaEstadoss|enableCard_8[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \maquinaEstadoss|enableCard_8\(1) = ( \maquinaEstadoss|enableCard_8\(1) & ( \maquinaEstadoss|Selector27~0_combout\ & ( !\maquinaEstadoss|Selector4~0_combout\ ) ) ) # ( !\maquinaEstadoss|enableCard_8\(1) & ( \maquinaEstadoss|Selector27~0_combout\ & ( 
-- !\maquinaEstadoss|Selector4~0_combout\ ) ) ) # ( \maquinaEstadoss|enableCard_8\(1) & ( !\maquinaEstadoss|Selector27~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \maquinaEstadoss|ALT_INV_Selector4~0_combout\,
	datae => \maquinaEstadoss|ALT_INV_enableCard_8\(1),
	dataf => \maquinaEstadoss|ALT_INV_Selector27~0_combout\,
	combout => \maquinaEstadoss|enableCard_8\(1));

\d_carta8|estadoCarta|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \maquinaEstadoss|enableCard_8\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_carta8|estadoCarta|q\(1));

\maquinaEstadoss|Mux1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \maquinaEstadoss|Mux1~4_combout\ = ( !\teclado|Reg|q\(1) & ( ((!\teclado|Reg|q\(0) & (((\d_carta8|estadoCarta|q\(1) & !\teclado|Reg|q\(2))))) # (\teclado|Reg|q\(0) & (((\teclado|Reg|q\(2))) # (\maquinaEstadoss|Equal1~0_combout\)))) ) ) # ( 
-- \teclado|Reg|q\(1) & ( ((!\teclado|Reg|q\(0) & (((\d_carta2|estadoCarta|q\(0) & !\teclado|Reg|q\(2))))) # (\teclado|Reg|q\(0) & (((\teclado|Reg|q\(2))) # (\d_carta3|estadoCarta|q\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \maquinaEstadoss|ALT_INV_Equal1~0_combout\,
	datab => \d_carta3|estadoCarta|ALT_INV_q\(2),
	datac => \d_carta2|estadoCarta|ALT_INV_q\(0),
	datad => \teclado|Reg|ALT_INV_q\(0),
	datae => \teclado|Reg|ALT_INV_q\(1),
	dataf => \teclado|Reg|ALT_INV_q\(2),
	datag => \d_carta8|estadoCarta|ALT_INV_q\(1),
	combout => \maquinaEstadoss|Mux1~4_combout\);

\maquinaEstadoss|Selector31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \maquinaEstadoss|Selector31~0_combout\ = ( \maquinaEstadoss|Selector35~0_combout\ & ( ((!\d_carta4|estadoCarta|q\(2) & (\teclado|Reg|q\(2) & !\teclado|Reg|q\(1)))) # (\maquinaEstadoss|state_reg.s4~q\) ) ) # ( !\maquinaEstadoss|Selector35~0_combout\ & ( 
-- \maquinaEstadoss|state_reg.s4~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001110110011001100110011001100110011101100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d_carta4|estadoCarta|ALT_INV_q\(2),
	datab => \maquinaEstadoss|ALT_INV_state_reg.s4~q\,
	datac => \teclado|Reg|ALT_INV_q\(2),
	datad => \teclado|Reg|ALT_INV_q\(1),
	datae => \maquinaEstadoss|ALT_INV_Selector35~0_combout\,
	combout => \maquinaEstadoss|Selector31~0_combout\);

\maquinaEstadoss|enableCard_4[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \maquinaEstadoss|enableCard_4\(2) = ( \maquinaEstadoss|enableCard_4\(2) & ( \maquinaEstadoss|Selector31~0_combout\ & ( !\maquinaEstadoss|Selector4~0_combout\ ) ) ) # ( !\maquinaEstadoss|enableCard_4\(2) & ( \maquinaEstadoss|Selector31~0_combout\ & ( 
-- !\maquinaEstadoss|Selector4~0_combout\ ) ) ) # ( \maquinaEstadoss|enableCard_4\(2) & ( !\maquinaEstadoss|Selector31~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \maquinaEstadoss|ALT_INV_Selector4~0_combout\,
	datae => \maquinaEstadoss|ALT_INV_enableCard_4\(2),
	dataf => \maquinaEstadoss|ALT_INV_Selector31~0_combout\,
	combout => \maquinaEstadoss|enableCard_4\(2));

\d_carta4|estadoCarta|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \maquinaEstadoss|enableCard_4\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_carta4|estadoCarta|q\(2));

\maquinaEstadoss|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \maquinaEstadoss|Mux1~0_combout\ = ( !\teclado|Reg|q\(1) & ( ((!\teclado|Reg|q\(2) & (((\maquinaEstadoss|Mux1~4_combout\)))) # (\teclado|Reg|q\(2) & ((!\maquinaEstadoss|Mux1~4_combout\ & ((\d_carta4|estadoCarta|q\(2)))) # (\maquinaEstadoss|Mux1~4_combout\ 
-- & (\maquinaEstadoss|Equal5~0_combout\))))) ) ) # ( \teclado|Reg|q\(1) & ( ((!\teclado|Reg|q\(2) & (((\maquinaEstadoss|Mux1~4_combout\)))) # (\teclado|Reg|q\(2) & ((!\maquinaEstadoss|Mux1~4_combout\ & ((\d_carta6|estadoCarta|q\(0)))) # 
-- (\maquinaEstadoss|Mux1~4_combout\ & (\d_carta7|estadoCarta|q\(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \maquinaEstadoss|ALT_INV_Equal5~0_combout\,
	datab => \d_carta7|estadoCarta|ALT_INV_q\(1),
	datac => \d_carta6|estadoCarta|ALT_INV_q\(0),
	datad => \teclado|Reg|ALT_INV_q\(2),
	datae => \teclado|Reg|ALT_INV_q\(1),
	dataf => \maquinaEstadoss|ALT_INV_Mux1~4_combout\,
	datag => \d_carta4|estadoCarta|ALT_INV_q\(2),
	combout => \maquinaEstadoss|Mux1~0_combout\);

\maquinaEstadoss|Selector50~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \maquinaEstadoss|Selector50~0_combout\ = (!\maquinaEstadoss|state_reg.s0~q\) # ((\maquinaEstadoss|state_reg.s1~q\ & \maquinaEstadoss|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111001101110011011100110111001101110011011100110111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \maquinaEstadoss|ALT_INV_state_reg.s1~q\,
	datab => \maquinaEstadoss|ALT_INV_state_reg.s0~q\,
	datac => \maquinaEstadoss|ALT_INV_Mux1~0_combout\,
	combout => \maquinaEstadoss|Selector50~0_combout\);

\maquinaEstadoss|next_state.s1_1479\ : cyclonev_lcell_comb
-- Equation(s):
-- \maquinaEstadoss|next_state.s1_1479~combout\ = ( \maquinaEstadoss|next_state.s1_1479~combout\ & ( \maquinaEstadoss|state_reg.s4~q\ ) ) # ( \maquinaEstadoss|next_state.s1_1479~combout\ & ( !\maquinaEstadoss|state_reg.s4~q\ & ( 
-- \maquinaEstadoss|Selector50~0_combout\ ) ) ) # ( !\maquinaEstadoss|next_state.s1_1479~combout\ & ( !\maquinaEstadoss|state_reg.s4~q\ & ( \maquinaEstadoss|Selector50~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \maquinaEstadoss|ALT_INV_Selector50~0_combout\,
	datae => \maquinaEstadoss|ALT_INV_next_state.s1_1479~combout\,
	dataf => \maquinaEstadoss|ALT_INV_state_reg.s4~q\,
	combout => \maquinaEstadoss|next_state.s1_1479~combout\);

\maquinaEstadoss|state_reg.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \maquinaEstadoss|next_state.s1_1479~combout\,
	clrn => \CLRN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquinaEstadoss|state_reg.s1~q\);

\maquinaEstadoss|Selector48~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \maquinaEstadoss|Selector48~0_combout\ = (!\maquinaEstadoss|Mux1~0_combout\ & (\maquinaEstadoss|state_reg.s1~q\)) # (\maquinaEstadoss|Mux1~0_combout\ & ((\maquinaEstadoss|state_reg.s2~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \maquinaEstadoss|ALT_INV_state_reg.s1~q\,
	datab => \maquinaEstadoss|ALT_INV_state_reg.s2~q\,
	datac => \maquinaEstadoss|ALT_INV_Mux1~0_combout\,
	combout => \maquinaEstadoss|Selector48~0_combout\);

\maquinaEstadoss|next_state.s2_1468\ : cyclonev_lcell_comb
-- Equation(s):
-- \maquinaEstadoss|next_state.s2_1468~combout\ = ( \maquinaEstadoss|next_state.s2_1468~combout\ & ( \maquinaEstadoss|state_reg.s4~q\ ) ) # ( \maquinaEstadoss|next_state.s2_1468~combout\ & ( !\maquinaEstadoss|state_reg.s4~q\ & ( 
-- \maquinaEstadoss|Selector48~0_combout\ ) ) ) # ( !\maquinaEstadoss|next_state.s2_1468~combout\ & ( !\maquinaEstadoss|state_reg.s4~q\ & ( \maquinaEstadoss|Selector48~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \maquinaEstadoss|ALT_INV_Selector48~0_combout\,
	datae => \maquinaEstadoss|ALT_INV_next_state.s2_1468~combout\,
	dataf => \maquinaEstadoss|ALT_INV_state_reg.s4~q\,
	combout => \maquinaEstadoss|next_state.s2_1468~combout\);

\maquinaEstadoss|state_reg.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \maquinaEstadoss|next_state.s2_1468~combout\,
	clrn => \CLRN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquinaEstadoss|state_reg.s2~q\);

\maquinaEstadoss|Selector46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \maquinaEstadoss|Selector46~0_combout\ = (\maquinaEstadoss|state_reg.s2~q\ & !\maquinaEstadoss|Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \maquinaEstadoss|ALT_INV_state_reg.s2~q\,
	datab => \maquinaEstadoss|ALT_INV_Mux1~0_combout\,
	combout => \maquinaEstadoss|Selector46~0_combout\);

\maquinaEstadoss|next_state.s3_1457\ : cyclonev_lcell_comb
-- Equation(s):
-- \maquinaEstadoss|next_state.s3_1457~combout\ = ( \maquinaEstadoss|next_state.s3_1457~combout\ & ( \maquinaEstadoss|state_reg.s4~q\ ) ) # ( \maquinaEstadoss|next_state.s3_1457~combout\ & ( !\maquinaEstadoss|state_reg.s4~q\ & ( 
-- \maquinaEstadoss|Selector46~0_combout\ ) ) ) # ( !\maquinaEstadoss|next_state.s3_1457~combout\ & ( !\maquinaEstadoss|state_reg.s4~q\ & ( \maquinaEstadoss|Selector46~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \maquinaEstadoss|ALT_INV_Selector46~0_combout\,
	datae => \maquinaEstadoss|ALT_INV_next_state.s3_1457~combout\,
	dataf => \maquinaEstadoss|ALT_INV_state_reg.s4~q\,
	combout => \maquinaEstadoss|next_state.s3_1457~combout\);

\maquinaEstadoss|state_reg.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \maquinaEstadoss|next_state.s3_1457~combout\,
	clrn => \CLRN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquinaEstadoss|state_reg.s3~q\);

\maquinaEstadoss|next_state.s4_1446\ : cyclonev_lcell_comb
-- Equation(s):
-- \maquinaEstadoss|next_state.s4_1446~combout\ = ( \maquinaEstadoss|next_state.s4_1446~combout\ & ( \maquinaEstadoss|state_reg.s4~q\ ) ) # ( \maquinaEstadoss|next_state.s4_1446~combout\ & ( !\maquinaEstadoss|state_reg.s4~q\ & ( 
-- \maquinaEstadoss|state_reg.s3~q\ ) ) ) # ( !\maquinaEstadoss|next_state.s4_1446~combout\ & ( !\maquinaEstadoss|state_reg.s4~q\ & ( \maquinaEstadoss|state_reg.s3~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \maquinaEstadoss|ALT_INV_state_reg.s3~q\,
	datae => \maquinaEstadoss|ALT_INV_next_state.s4_1446~combout\,
	dataf => \maquinaEstadoss|ALT_INV_state_reg.s4~q\,
	combout => \maquinaEstadoss|next_state.s4_1446~combout\);

\maquinaEstadoss|state_reg.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \maquinaEstadoss|next_state.s4_1446~combout\,
	clrn => \CLRN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquinaEstadoss|state_reg.s4~q\);

\maquinaEstadoss|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \maquinaEstadoss|Selector3~0_combout\ = (\teclado|Reg|q\(0) & !\maquinaEstadoss|state_reg.s4~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \teclado|Reg|ALT_INV_q\(0),
	datab => \maquinaEstadoss|ALT_INV_state_reg.s4~q\,
	combout => \maquinaEstadoss|Selector3~0_combout\);

\maquinaEstadoss|Selector38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \maquinaEstadoss|Selector38~0_combout\ = (!\d_carta1|estadoCarta|q\(1) & !\d_carta1|estadoCarta|q\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d_carta1|estadoCarta|ALT_INV_q\(1),
	datab => \d_carta1|estadoCarta|ALT_INV_q\(0),
	combout => \maquinaEstadoss|Selector38~0_combout\);

\maquinaEstadoss|Selector38~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \maquinaEstadoss|Selector38~1_combout\ = ( \teclado|Reg|q\(1) & ( \maquinaEstadoss|state_reg.s4~q\ ) ) # ( !\teclado|Reg|q\(1) & ( ((\maquinaEstadoss|Selector38~0_combout\ & (\maquinaEstadoss|Selector33~0_combout\ & !\teclado|Reg|q\(2)))) # 
-- (\maquinaEstadoss|state_reg.s4~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110011001100110011001100110111001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \maquinaEstadoss|ALT_INV_Selector38~0_combout\,
	datab => \maquinaEstadoss|ALT_INV_state_reg.s4~q\,
	datac => \maquinaEstadoss|ALT_INV_Selector33~0_combout\,
	datad => \teclado|Reg|ALT_INV_q\(2),
	datae => \teclado|Reg|ALT_INV_q\(1),
	combout => \maquinaEstadoss|Selector38~1_combout\);

\maquinaEstadoss|enableCard_1[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \maquinaEstadoss|enableCard_1\(1) = ( \maquinaEstadoss|enableCard_1\(1) & ( \maquinaEstadoss|Selector38~1_combout\ & ( \maquinaEstadoss|Selector3~0_combout\ ) ) ) # ( !\maquinaEstadoss|enableCard_1\(1) & ( \maquinaEstadoss|Selector38~1_combout\ & ( 
-- \maquinaEstadoss|Selector3~0_combout\ ) ) ) # ( \maquinaEstadoss|enableCard_1\(1) & ( !\maquinaEstadoss|Selector38~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \maquinaEstadoss|ALT_INV_Selector3~0_combout\,
	datae => \maquinaEstadoss|ALT_INV_enableCard_1\(1),
	dataf => \maquinaEstadoss|ALT_INV_Selector38~1_combout\,
	combout => \maquinaEstadoss|enableCard_1\(1));

\d_carta1|estadoCarta|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \maquinaEstadoss|enableCard_1\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_carta1|estadoCarta|q\(1));

\d_carta1|disp_carta|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d_carta1|disp_carta|Mux4~0_combout\ = (\d_carta1|estadoCarta|q\(1) & !\d_carta1|estadoCarta|q\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d_carta1|estadoCarta|ALT_INV_q\(1),
	datab => \d_carta1|estadoCarta|ALT_INV_q\(0),
	combout => \d_carta1|disp_carta|Mux4~0_combout\);

\d_carta5|disp_carta|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d_carta5|disp_carta|Mux4~0_combout\ = (\d_carta5|estadoCarta|q\(1) & !\d_carta5|estadoCarta|q\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \d_carta5|estadoCarta|ALT_INV_q\(1),
	datab => \d_carta5|estadoCarta|ALT_INV_q\(0),
	combout => \d_carta5|disp_carta|Mux4~0_combout\);

ww_carta1(0) <= \carta1[0]~output_o\;

ww_carta1(1) <= \carta1[1]~output_o\;

ww_carta1(2) <= \carta1[2]~output_o\;

ww_carta1(3) <= \carta1[3]~output_o\;

ww_carta1(4) <= \carta1[4]~output_o\;

ww_carta1(5) <= \carta1[5]~output_o\;

ww_carta1(6) <= \carta1[6]~output_o\;

ww_carta2(0) <= \carta2[0]~output_o\;

ww_carta2(1) <= \carta2[1]~output_o\;

ww_carta2(2) <= \carta2[2]~output_o\;

ww_carta2(3) <= \carta2[3]~output_o\;

ww_carta2(4) <= \carta2[4]~output_o\;

ww_carta2(5) <= \carta2[5]~output_o\;

ww_carta2(6) <= \carta2[6]~output_o\;

ww_carta3(0) <= \carta3[0]~output_o\;

ww_carta3(1) <= \carta3[1]~output_o\;

ww_carta3(2) <= \carta3[2]~output_o\;

ww_carta3(3) <= \carta3[3]~output_o\;

ww_carta3(4) <= \carta3[4]~output_o\;

ww_carta3(5) <= \carta3[5]~output_o\;

ww_carta3(6) <= \carta3[6]~output_o\;

ww_carta4(0) <= \carta4[0]~output_o\;

ww_carta4(1) <= \carta4[1]~output_o\;

ww_carta4(2) <= \carta4[2]~output_o\;

ww_carta4(3) <= \carta4[3]~output_o\;

ww_carta4(4) <= \carta4[4]~output_o\;

ww_carta4(5) <= \carta4[5]~output_o\;

ww_carta4(6) <= \carta4[6]~output_o\;

ww_carta5(0) <= \carta5[0]~output_o\;

ww_carta5(1) <= \carta5[1]~output_o\;

ww_carta5(2) <= \carta5[2]~output_o\;

ww_carta5(3) <= \carta5[3]~output_o\;

ww_carta5(4) <= \carta5[4]~output_o\;

ww_carta5(5) <= \carta5[5]~output_o\;

ww_carta5(6) <= \carta5[6]~output_o\;

ww_carta6(0) <= \carta6[0]~output_o\;

ww_carta6(1) <= \carta6[1]~output_o\;

ww_carta6(2) <= \carta6[2]~output_o\;

ww_carta6(3) <= \carta6[3]~output_o\;

ww_carta6(4) <= \carta6[4]~output_o\;

ww_carta6(5) <= \carta6[5]~output_o\;

ww_carta6(6) <= \carta6[6]~output_o\;

ww_carta7(0) <= \carta7[0]~output_o\;

ww_carta7(1) <= \carta7[1]~output_o\;

ww_carta7(2) <= \carta7[2]~output_o\;

ww_carta7(3) <= \carta7[3]~output_o\;

ww_carta7(4) <= \carta7[4]~output_o\;

ww_carta7(5) <= \carta7[5]~output_o\;

ww_carta7(6) <= \carta7[6]~output_o\;

ww_carta8(0) <= \carta8[0]~output_o\;

ww_carta8(1) <= \carta8[1]~output_o\;

ww_carta8(2) <= \carta8[2]~output_o\;

ww_carta8(3) <= \carta8[3]~output_o\;

ww_carta8(4) <= \carta8[4]~output_o\;

ww_carta8(5) <= \carta8[5]~output_o\;

ww_carta8(6) <= \carta8[6]~output_o\;
END structure;



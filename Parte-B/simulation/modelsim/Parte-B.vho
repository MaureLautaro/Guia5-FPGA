-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "10/29/2025 13:55:02"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mult2x2 IS
    PORT (
	A1 : IN std_logic;
	A0 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	P0 : OUT std_logic;
	P1 : OUT std_logic;
	P2 : OUT std_logic;
	P3 : OUT std_logic
	);
END mult2x2;

-- Design Ports Information
-- P0	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P1	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P2	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P3	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mult2x2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_P0 : std_logic;
SIGNAL ww_P1 : std_logic;
SIGNAL ww_P2 : std_logic;
SIGNAL ww_P3 : std_logic;
SIGNAL \P0~output_o\ : std_logic;
SIGNAL \P1~output_o\ : std_logic;
SIGNAL \P2~output_o\ : std_logic;
SIGNAL \P3~output_o\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \B0~input_o\ : std_logic;
SIGNAL \P0~0_combout\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \b2v_inst5|S~combout\ : std_logic;
SIGNAL \b2v_inst6|S~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Cout~0_combout\ : std_logic;

BEGIN

ww_A1 <= A1;
ww_A0 <= A0;
ww_B0 <= B0;
ww_B1 <= B1;
P0 <= ww_P0;
P1 <= ww_P1;
P2 <= ww_P2;
P3 <= ww_P3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X83_Y0_N16
\P0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P0~0_combout\,
	devoe => ww_devoe,
	o => \P0~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\P1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|S~combout\,
	devoe => ww_devoe,
	o => \P1~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\P2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst6|S~0_combout\,
	devoe => ww_devoe,
	o => \P2~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\P3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst6|Cout~0_combout\,
	devoe => ww_devoe,
	o => \P3~output_o\);

-- Location: IOIBUF_X56_Y0_N22
\A0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

-- Location: IOIBUF_X81_Y0_N22
\B0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0,
	o => \B0~input_o\);

-- Location: LCCOMB_X77_Y1_N24
\P0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \P0~0_combout\ = (\A0~input_o\ & \B0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0~input_o\,
	datad => \B0~input_o\,
	combout => \P0~0_combout\);

-- Location: IOIBUF_X94_Y0_N8
\B1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: IOIBUF_X85_Y0_N8
\A1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: LCCOMB_X77_Y1_N10
\b2v_inst5|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst5|S~combout\ = (\A0~input_o\ & (\B1~input_o\ $ (((\B0~input_o\ & \A1~input_o\))))) # (!\A0~input_o\ & (\B0~input_o\ & ((\A1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0~input_o\,
	datab => \B0~input_o\,
	datac => \B1~input_o\,
	datad => \A1~input_o\,
	combout => \b2v_inst5|S~combout\);

-- Location: LCCOMB_X77_Y1_N12
\b2v_inst6|S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst6|S~0_combout\ = (\B1~input_o\ & (\A1~input_o\ & ((!\B0~input_o\) # (!\A0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0~input_o\,
	datab => \B0~input_o\,
	datac => \B1~input_o\,
	datad => \A1~input_o\,
	combout => \b2v_inst6|S~0_combout\);

-- Location: LCCOMB_X77_Y1_N14
\b2v_inst6|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Cout~0_combout\ = (\A0~input_o\ & (\B0~input_o\ & (\B1~input_o\ & \A1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0~input_o\,
	datab => \B0~input_o\,
	datac => \B1~input_o\,
	datad => \A1~input_o\,
	combout => \b2v_inst6|Cout~0_combout\);

ww_P0 <= \P0~output_o\;

ww_P1 <= \P1~output_o\;

ww_P2 <= \P2~output_o\;

ww_P3 <= \P3~output_o\;
END structure;



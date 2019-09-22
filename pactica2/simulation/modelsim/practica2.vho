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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "09/21/2019 23:36:58"

-- 
-- Device: Altera EP2C5T144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	practica2 IS
    PORT (
	atras : OUT std_logic;
	boton : IN std_logic;
	reloj : IN std_logic;
	reset : IN std_logic;
	S : IN std_logic_vector(1 DOWNTO 0);
	adelante : OUT std_logic;
	giro_der : OUT std_logic;
	giro_izq : OUT std_logic;
	out_state : OUT std_logic_vector(3 DOWNTO 0)
	);
END practica2;

-- Design Ports Information
-- atras	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- adelante	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- giro_der	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- giro_izq	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_state[3]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_state[2]	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_state[1]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_state[0]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reset	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- S[1]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- S[0]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- boton	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reloj	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF practica2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_atras : std_logic;
SIGNAL ww_boton : std_logic;
SIGNAL ww_reloj : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_S : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_adelante : std_logic;
SIGNAL ww_giro_der : std_logic;
SIGNAL ww_giro_izq : std_logic;
SIGNAL ww_out_state : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_sensa_boton|reloj~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reloj~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reloj~combout\ : std_logic;
SIGNAL \reloj~clkctrl_outclk\ : std_logic;
SIGNAL \boton~combout\ : std_logic;
SIGNAL \inst_sensa_boton|esiguiente~feeder_combout\ : std_logic;
SIGNAL \inst_sensa_boton|esiguiente~regout\ : std_logic;
SIGNAL \inst_sensa_boton|reloj~0_combout\ : std_logic;
SIGNAL \inst_sensa_boton|reloj~regout\ : std_logic;
SIGNAL \inst_sensa_boton|reloj~clkctrl_outclk\ : std_logic;
SIGNAL \inst_controlMovimiento|Mux4~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \inst_controlMovimiento|Mux6~1_combout\ : std_logic;
SIGNAL \inst_controlMovimiento|Mux6~0_combout\ : std_logic;
SIGNAL \inst_controlMovimiento|Mux6~2_combout\ : std_logic;
SIGNAL \inst_controlMovimiento|Mux7~0_combout\ : std_logic;
SIGNAL \inst_controlMovimiento|Mux7~1_combout\ : std_logic;
SIGNAL \inst_controlMovimiento|Mux5~1_combout\ : std_logic;
SIGNAL \inst_controlMovimiento|Mux5~0_combout\ : std_logic;
SIGNAL \inst_controlMovimiento|Mux5~2_combout\ : std_logic;
SIGNAL \inst_controlMovimiento|Mux0~0_combout\ : std_logic;
SIGNAL \inst_controlMovimiento|atras~0_combout\ : std_logic;
SIGNAL \inst_controlMovimiento|atras~regout\ : std_logic;
SIGNAL \inst_controlMovimiento|adelante~1_combout\ : std_logic;
SIGNAL \inst_controlMovimiento|adelante~0_combout\ : std_logic;
SIGNAL \inst_controlMovimiento|adelante~2_combout\ : std_logic;
SIGNAL \inst_controlMovimiento|adelante~regout\ : std_logic;
SIGNAL \inst_controlMovimiento|Mux2~0_combout\ : std_logic;
SIGNAL \inst_controlMovimiento|giro_der~regout\ : std_logic;
SIGNAL \inst_controlMovimiento|Mux1~0_combout\ : std_logic;
SIGNAL \inst_controlMovimiento|giro_izq~regout\ : std_logic;
SIGNAL \inst_controlMovimiento|out_epresente[1]~feeder_combout\ : std_logic;
SIGNAL \inst_controlMovimiento|out_epresente\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_controlMovimiento|esiguiente\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_reset~combout\ : std_logic;

BEGIN

atras <= ww_atras;
ww_boton <= boton;
ww_reloj <= reloj;
ww_reset <= reset;
ww_S <= S;
adelante <= ww_adelante;
giro_der <= ww_giro_der;
giro_izq <= ww_giro_izq;
out_state <= ww_out_state;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst_sensa_boton|reloj~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst_sensa_boton|reloj~regout\);

\reloj~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reloj~combout\);
\ALT_INV_reset~combout\ <= NOT \reset~combout\;

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\S[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_S(1),
	combout => \S~combout\(1));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reloj~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reloj,
	combout => \reloj~combout\);

-- Location: CLKCTRL_G2
\reloj~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reloj~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reloj~clkctrl_outclk\);

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\boton~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_boton,
	combout => \boton~combout\);

-- Location: LCCOMB_X27_Y7_N18
\inst_sensa_boton|esiguiente~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_sensa_boton|esiguiente~feeder_combout\ = \boton~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \boton~combout\,
	combout => \inst_sensa_boton|esiguiente~feeder_combout\);

-- Location: LCFF_X27_Y7_N19
\inst_sensa_boton|esiguiente\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reloj~clkctrl_outclk\,
	datain => \inst_sensa_boton|esiguiente~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_sensa_boton|esiguiente~regout\);

-- Location: LCCOMB_X27_Y7_N6
\inst_sensa_boton|reloj~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_sensa_boton|reloj~0_combout\ = (!\boton~combout\ & \inst_sensa_boton|esiguiente~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \boton~combout\,
	datad => \inst_sensa_boton|esiguiente~regout\,
	combout => \inst_sensa_boton|reloj~0_combout\);

-- Location: LCFF_X27_Y7_N7
\inst_sensa_boton|reloj\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reloj~clkctrl_outclk\,
	datain => \inst_sensa_boton|reloj~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_sensa_boton|reloj~regout\);

-- Location: CLKCTRL_G4
\inst_sensa_boton|reloj~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst_sensa_boton|reloj~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst_sensa_boton|reloj~clkctrl_outclk\);

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\S[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_S(0),
	combout => \S~combout\(0));

-- Location: LCCOMB_X26_Y7_N26
\inst_controlMovimiento|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_controlMovimiento|Mux4~0_combout\ = (\inst_controlMovimiento|esiguiente\(1) & ((\inst_controlMovimiento|esiguiente\(0) & (\inst_controlMovimiento|esiguiente\(2))) # (!\inst_controlMovimiento|esiguiente\(0) & 
-- ((\inst_controlMovimiento|esiguiente\(3)))))) # (!\inst_controlMovimiento|esiguiente\(1) & (((\inst_controlMovimiento|esiguiente\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controlMovimiento|esiguiente\(2),
	datab => \inst_controlMovimiento|esiguiente\(1),
	datac => \inst_controlMovimiento|esiguiente\(3),
	datad => \inst_controlMovimiento|esiguiente\(0),
	combout => \inst_controlMovimiento|Mux4~0_combout\);

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LCFF_X26_Y7_N27
\inst_controlMovimiento|esiguiente[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst_sensa_boton|reloj~clkctrl_outclk\,
	datain => \inst_controlMovimiento|Mux4~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_controlMovimiento|esiguiente\(3));

-- Location: LCCOMB_X26_Y7_N4
\inst_controlMovimiento|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_controlMovimiento|Mux6~1_combout\ = (\inst_controlMovimiento|esiguiente\(0)) # ((\S~combout\(1) & (!\S~combout\(0) & !\inst_controlMovimiento|esiguiente\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(1),
	datab => \S~combout\(0),
	datac => \inst_controlMovimiento|esiguiente\(0),
	datad => \inst_controlMovimiento|esiguiente\(3),
	combout => \inst_controlMovimiento|Mux6~1_combout\);

-- Location: LCCOMB_X26_Y7_N12
\inst_controlMovimiento|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_controlMovimiento|Mux6~0_combout\ = (\inst_controlMovimiento|esiguiente\(0) & (\inst_controlMovimiento|esiguiente\(2) & (\inst_controlMovimiento|esiguiente\(1) $ (!\inst_controlMovimiento|esiguiente\(3))))) # (!\inst_controlMovimiento|esiguiente\(0) 
-- & (\inst_controlMovimiento|esiguiente\(1) & ((\inst_controlMovimiento|esiguiente\(2)) # (\inst_controlMovimiento|esiguiente\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controlMovimiento|esiguiente\(0),
	datab => \inst_controlMovimiento|esiguiente\(2),
	datac => \inst_controlMovimiento|esiguiente\(1),
	datad => \inst_controlMovimiento|esiguiente\(3),
	combout => \inst_controlMovimiento|Mux6~0_combout\);

-- Location: LCCOMB_X26_Y7_N6
\inst_controlMovimiento|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_controlMovimiento|Mux6~2_combout\ = (\inst_controlMovimiento|Mux6~0_combout\) # ((!\inst_controlMovimiento|esiguiente\(2) & (\inst_controlMovimiento|Mux6~1_combout\ & !\inst_controlMovimiento|esiguiente\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controlMovimiento|esiguiente\(2),
	datab => \inst_controlMovimiento|Mux6~1_combout\,
	datac => \inst_controlMovimiento|esiguiente\(1),
	datad => \inst_controlMovimiento|Mux6~0_combout\,
	combout => \inst_controlMovimiento|Mux6~2_combout\);

-- Location: LCFF_X26_Y7_N7
\inst_controlMovimiento|esiguiente[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst_sensa_boton|reloj~clkctrl_outclk\,
	datain => \inst_controlMovimiento|Mux6~2_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_controlMovimiento|esiguiente\(1));

-- Location: LCCOMB_X26_Y7_N30
\inst_controlMovimiento|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_controlMovimiento|Mux7~0_combout\ = (\inst_controlMovimiento|esiguiente\(1) & (((\inst_controlMovimiento|esiguiente\(2))))) # (!\inst_controlMovimiento|esiguiente\(1) & (!\inst_controlMovimiento|esiguiente\(2) & ((\S~combout\(1)) # 
-- (\S~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(1),
	datab => \S~combout\(0),
	datac => \inst_controlMovimiento|esiguiente\(1),
	datad => \inst_controlMovimiento|esiguiente\(2),
	combout => \inst_controlMovimiento|Mux7~0_combout\);

-- Location: LCCOMB_X26_Y7_N16
\inst_controlMovimiento|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_controlMovimiento|Mux7~1_combout\ = (\inst_controlMovimiento|esiguiente\(3) & (\inst_controlMovimiento|esiguiente\(2) $ ((!\inst_controlMovimiento|esiguiente\(0))))) # (!\inst_controlMovimiento|esiguiente\(3) & 
-- (((!\inst_controlMovimiento|esiguiente\(0) & \inst_controlMovimiento|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controlMovimiento|esiguiente\(3),
	datab => \inst_controlMovimiento|esiguiente\(2),
	datac => \inst_controlMovimiento|esiguiente\(0),
	datad => \inst_controlMovimiento|Mux7~0_combout\,
	combout => \inst_controlMovimiento|Mux7~1_combout\);

-- Location: LCFF_X26_Y7_N17
\inst_controlMovimiento|esiguiente[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst_sensa_boton|reloj~clkctrl_outclk\,
	datain => \inst_controlMovimiento|Mux7~1_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_controlMovimiento|esiguiente\(0));

-- Location: LCCOMB_X26_Y7_N0
\inst_controlMovimiento|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_controlMovimiento|Mux5~1_combout\ = (\inst_controlMovimiento|esiguiente\(0) & (((\inst_controlMovimiento|esiguiente\(1))))) # (!\inst_controlMovimiento|esiguiente\(0) & (\S~combout\(1) & (\S~combout\(0) & !\inst_controlMovimiento|esiguiente\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(1),
	datab => \S~combout\(0),
	datac => \inst_controlMovimiento|esiguiente\(0),
	datad => \inst_controlMovimiento|esiguiente\(1),
	combout => \inst_controlMovimiento|Mux5~1_combout\);

-- Location: LCCOMB_X26_Y7_N28
\inst_controlMovimiento|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_controlMovimiento|Mux5~0_combout\ = (\inst_controlMovimiento|esiguiente\(2) & ((\inst_controlMovimiento|esiguiente\(3)) # (\inst_controlMovimiento|esiguiente\(1) $ (\inst_controlMovimiento|esiguiente\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controlMovimiento|esiguiente\(1),
	datab => \inst_controlMovimiento|esiguiente\(3),
	datac => \inst_controlMovimiento|esiguiente\(2),
	datad => \inst_controlMovimiento|esiguiente\(0),
	combout => \inst_controlMovimiento|Mux5~0_combout\);

-- Location: LCCOMB_X26_Y7_N8
\inst_controlMovimiento|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_controlMovimiento|Mux5~2_combout\ = (\inst_controlMovimiento|Mux5~0_combout\) # ((!\inst_controlMovimiento|esiguiente\(3) & (\inst_controlMovimiento|Mux5~1_combout\ & !\inst_controlMovimiento|esiguiente\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controlMovimiento|esiguiente\(3),
	datab => \inst_controlMovimiento|Mux5~1_combout\,
	datac => \inst_controlMovimiento|esiguiente\(2),
	datad => \inst_controlMovimiento|Mux5~0_combout\,
	combout => \inst_controlMovimiento|Mux5~2_combout\);

-- Location: LCFF_X26_Y7_N9
\inst_controlMovimiento|esiguiente[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst_sensa_boton|reloj~clkctrl_outclk\,
	datain => \inst_controlMovimiento|Mux5~2_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_controlMovimiento|esiguiente\(2));

-- Location: LCCOMB_X26_Y7_N10
\inst_controlMovimiento|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_controlMovimiento|Mux0~0_combout\ = (!\inst_controlMovimiento|esiguiente\(3) & (\inst_controlMovimiento|esiguiente\(0) & ((!\inst_controlMovimiento|esiguiente\(1)) # (!\inst_controlMovimiento|esiguiente\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controlMovimiento|esiguiente\(3),
	datab => \inst_controlMovimiento|esiguiente\(2),
	datac => \inst_controlMovimiento|esiguiente\(1),
	datad => \inst_controlMovimiento|esiguiente\(0),
	combout => \inst_controlMovimiento|Mux0~0_combout\);

-- Location: LCCOMB_X26_Y7_N24
\inst_controlMovimiento|atras~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_controlMovimiento|atras~0_combout\ = (\reset~combout\ & ((!\inst_controlMovimiento|esiguiente\(3)) # (!\inst_controlMovimiento|esiguiente\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datac => \inst_controlMovimiento|esiguiente\(2),
	datad => \inst_controlMovimiento|esiguiente\(3),
	combout => \inst_controlMovimiento|atras~0_combout\);

-- Location: LCFF_X26_Y7_N11
\inst_controlMovimiento|atras\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst_sensa_boton|reloj~clkctrl_outclk\,
	datain => \inst_controlMovimiento|Mux0~0_combout\,
	ena => \inst_controlMovimiento|atras~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_controlMovimiento|atras~regout\);

-- Location: LCCOMB_X26_Y7_N22
\inst_controlMovimiento|adelante~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_controlMovimiento|adelante~1_combout\ = (\reset~combout\ & (!\inst_controlMovimiento|esiguiente\(2) & !\inst_controlMovimiento|esiguiente\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datac => \inst_controlMovimiento|esiguiente\(2),
	datad => \inst_controlMovimiento|esiguiente\(1),
	combout => \inst_controlMovimiento|adelante~1_combout\);

-- Location: LCCOMB_X26_Y7_N14
\inst_controlMovimiento|adelante~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_controlMovimiento|adelante~0_combout\ = (\inst_controlMovimiento|esiguiente\(3)) # ((!\S~combout\(1) & (!\S~combout\(0) & !\inst_controlMovimiento|esiguiente\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(1),
	datab => \S~combout\(0),
	datac => \inst_controlMovimiento|esiguiente\(0),
	datad => \inst_controlMovimiento|esiguiente\(3),
	combout => \inst_controlMovimiento|adelante~0_combout\);

-- Location: LCCOMB_X26_Y7_N18
\inst_controlMovimiento|adelante~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_controlMovimiento|adelante~2_combout\ = (\inst_controlMovimiento|atras~0_combout\ & (\inst_controlMovimiento|adelante~1_combout\ & ((\inst_controlMovimiento|adelante~0_combout\)))) # (!\inst_controlMovimiento|atras~0_combout\ & 
-- ((\inst_controlMovimiento|adelante~regout\) # ((\inst_controlMovimiento|adelante~1_combout\ & \inst_controlMovimiento|adelante~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controlMovimiento|atras~0_combout\,
	datab => \inst_controlMovimiento|adelante~1_combout\,
	datac => \inst_controlMovimiento|adelante~regout\,
	datad => \inst_controlMovimiento|adelante~0_combout\,
	combout => \inst_controlMovimiento|adelante~2_combout\);

-- Location: LCFF_X26_Y7_N19
\inst_controlMovimiento|adelante\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst_sensa_boton|reloj~clkctrl_outclk\,
	datain => \inst_controlMovimiento|adelante~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_controlMovimiento|adelante~regout\);

-- Location: LCCOMB_X26_Y7_N2
\inst_controlMovimiento|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_controlMovimiento|Mux2~0_combout\ = (!\inst_controlMovimiento|esiguiente\(0) & (!\inst_controlMovimiento|esiguiente\(1) & \inst_controlMovimiento|esiguiente\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controlMovimiento|esiguiente\(0),
	datac => \inst_controlMovimiento|esiguiente\(1),
	datad => \inst_controlMovimiento|esiguiente\(2),
	combout => \inst_controlMovimiento|Mux2~0_combout\);

-- Location: LCFF_X26_Y7_N3
\inst_controlMovimiento|giro_der\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst_sensa_boton|reloj~clkctrl_outclk\,
	datain => \inst_controlMovimiento|Mux2~0_combout\,
	sdata => \inst_controlMovimiento|esiguiente\(1),
	sload => \inst_controlMovimiento|esiguiente\(3),
	ena => \inst_controlMovimiento|atras~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_controlMovimiento|giro_der~regout\);

-- Location: LCCOMB_X26_Y7_N20
\inst_controlMovimiento|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_controlMovimiento|Mux1~0_combout\ = (!\inst_controlMovimiento|esiguiente\(3) & (\inst_controlMovimiento|esiguiente\(1) & ((\inst_controlMovimiento|esiguiente\(2)) # (!\inst_controlMovimiento|esiguiente\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_controlMovimiento|esiguiente\(3),
	datab => \inst_controlMovimiento|esiguiente\(2),
	datac => \inst_controlMovimiento|esiguiente\(1),
	datad => \inst_controlMovimiento|esiguiente\(0),
	combout => \inst_controlMovimiento|Mux1~0_combout\);

-- Location: LCFF_X26_Y7_N21
\inst_controlMovimiento|giro_izq\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst_sensa_boton|reloj~clkctrl_outclk\,
	datain => \inst_controlMovimiento|Mux1~0_combout\,
	ena => \inst_controlMovimiento|atras~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_controlMovimiento|giro_izq~regout\);

-- Location: LCFF_X25_Y7_N17
\inst_controlMovimiento|out_epresente[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst_sensa_boton|reloj~clkctrl_outclk\,
	sdata => \inst_controlMovimiento|esiguiente\(3),
	sload => VCC,
	ena => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_controlMovimiento|out_epresente\(3));

-- Location: LCFF_X25_Y7_N11
\inst_controlMovimiento|out_epresente[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst_sensa_boton|reloj~clkctrl_outclk\,
	sdata => \inst_controlMovimiento|esiguiente\(2),
	sload => VCC,
	ena => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_controlMovimiento|out_epresente\(2));

-- Location: LCCOMB_X25_Y7_N4
\inst_controlMovimiento|out_epresente[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_controlMovimiento|out_epresente[1]~feeder_combout\ = \inst_controlMovimiento|esiguiente\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_controlMovimiento|esiguiente\(1),
	combout => \inst_controlMovimiento|out_epresente[1]~feeder_combout\);

-- Location: LCFF_X25_Y7_N5
\inst_controlMovimiento|out_epresente[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst_sensa_boton|reloj~clkctrl_outclk\,
	datain => \inst_controlMovimiento|out_epresente[1]~feeder_combout\,
	ena => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_controlMovimiento|out_epresente\(1));

-- Location: LCFF_X25_Y7_N23
\inst_controlMovimiento|out_epresente[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst_sensa_boton|reloj~clkctrl_outclk\,
	sdata => \inst_controlMovimiento|esiguiente\(0),
	sload => VCC,
	ena => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_controlMovimiento|out_epresente\(0));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\atras~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst_controlMovimiento|atras~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_atras);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\adelante~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst_controlMovimiento|adelante~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_adelante);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\giro_der~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst_controlMovimiento|giro_der~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_giro_der);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\giro_izq~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst_controlMovimiento|giro_izq~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_giro_izq);

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_state[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst_controlMovimiento|out_epresente\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_state(3));

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_state[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst_controlMovimiento|out_epresente\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_state(2));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_state[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst_controlMovimiento|out_epresente\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_state(1));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_state[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst_controlMovimiento|out_epresente\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_state(0));
END structure;



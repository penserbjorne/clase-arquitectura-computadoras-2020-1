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

-- DATE "09/21/2019 22:36:47"

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
SIGNAL ww_reloj : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_S : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_adelante : std_logic;
SIGNAL ww_giro_der : std_logic;
SIGNAL ww_giro_izq : std_logic;
SIGNAL ww_out_state : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|cuenta[25]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reloj~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|Add0~20_combout\ : std_logic;
SIGNAL \inst1|Add0~34_combout\ : std_logic;
SIGNAL \inst1|Add0~38_combout\ : std_logic;
SIGNAL \inst1|Add0~40_combout\ : std_logic;
SIGNAL \inst1|Add0~44_combout\ : std_logic;
SIGNAL \inst1|Add0~48_combout\ : std_logic;
SIGNAL \inst1|Add0~51\ : std_logic;
SIGNAL \inst1|Add0~52_combout\ : std_logic;
SIGNAL \inst1|Add0~53\ : std_logic;
SIGNAL \inst1|Add0~54_combout\ : std_logic;
SIGNAL \inst|adelante~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|Equal0~3_combout\ : std_logic;
SIGNAL \inst1|Equal0~4_combout\ : std_logic;
SIGNAL \inst1|Equal0~5_combout\ : std_logic;
SIGNAL \inst1|Equal0~6_combout\ : std_logic;
SIGNAL \inst1|Equal0~7_combout\ : std_logic;
SIGNAL \inst1|Equal0~8_combout\ : std_logic;
SIGNAL \inst1|cuenta~0_combout\ : std_logic;
SIGNAL \inst1|cuenta~1_combout\ : std_logic;
SIGNAL \reloj~combout\ : std_logic;
SIGNAL \reloj~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|Add0~19\ : std_logic;
SIGNAL \inst1|Add0~21\ : std_logic;
SIGNAL \inst1|Add0~22_combout\ : std_logic;
SIGNAL \inst1|Add0~23\ : std_logic;
SIGNAL \inst1|Add0~24_combout\ : std_logic;
SIGNAL \inst1|Add0~25\ : std_logic;
SIGNAL \inst1|Add0~26_combout\ : std_logic;
SIGNAL \inst1|Add0~27\ : std_logic;
SIGNAL \inst1|Add0~28_combout\ : std_logic;
SIGNAL \inst1|Add0~29\ : std_logic;
SIGNAL \inst1|Add0~30_combout\ : std_logic;
SIGNAL \inst1|Add0~31\ : std_logic;
SIGNAL \inst1|Add0~32_combout\ : std_logic;
SIGNAL \inst1|Add0~33\ : std_logic;
SIGNAL \inst1|Add0~35\ : std_logic;
SIGNAL \inst1|Add0~36_combout\ : std_logic;
SIGNAL \inst1|Add0~37\ : std_logic;
SIGNAL \inst1|Add0~39\ : std_logic;
SIGNAL \inst1|Add0~41\ : std_logic;
SIGNAL \inst1|Add0~42_combout\ : std_logic;
SIGNAL \inst1|Add0~43\ : std_logic;
SIGNAL \inst1|Add0~45\ : std_logic;
SIGNAL \inst1|Add0~46_combout\ : std_logic;
SIGNAL \inst1|Add0~47\ : std_logic;
SIGNAL \inst1|Add0~49\ : std_logic;
SIGNAL \inst1|Add0~50_combout\ : std_logic;
SIGNAL \inst1|cuenta[25]~clkctrl_outclk\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \inst|Mux6~1_combout\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Mux6~2_combout\ : std_logic;
SIGNAL \inst|Mux7~0_combout\ : std_logic;
SIGNAL \inst|Mux7~1_combout\ : std_logic;
SIGNAL \inst|Mux5~1_combout\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst|Mux5~2_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst|atras~0_combout\ : std_logic;
SIGNAL \inst|atras~regout\ : std_logic;
SIGNAL \inst|adelante~0_combout\ : std_logic;
SIGNAL \inst|adelante~2_combout\ : std_logic;
SIGNAL \inst|adelante~regout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|giro_der~regout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|giro_izq~regout\ : std_logic;
SIGNAL \inst|out_epresente[3]~feeder_combout\ : std_logic;
SIGNAL \inst|out_epresente[2]~feeder_combout\ : std_logic;
SIGNAL \inst|out_epresente[0]~feeder_combout\ : std_logic;
SIGNAL \inst|esiguiente\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|out_epresente\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|cuenta\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \S~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_reset~combout\ : std_logic;

BEGIN

atras <= ww_atras;
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

\inst1|cuenta[25]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst1|cuenta\(25));

\reloj~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reloj~combout\);
\ALT_INV_reset~combout\ <= NOT \reset~combout\;

-- Location: LCCOMB_X27_Y11_N4
\inst1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst1|cuenta\(0) $ (VCC)
-- \inst1|Add0~1\ = CARRY(\inst1|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(0),
	datad => VCC,
	combout => \inst1|Add0~0_combout\,
	cout => \inst1|Add0~1\);

-- Location: LCCOMB_X27_Y11_N6
\inst1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst1|cuenta\(1) & (!\inst1|Add0~1\)) # (!\inst1|cuenta\(1) & ((\inst1|Add0~1\) # (GND)))
-- \inst1|Add0~3\ = CARRY((!\inst1|Add0~1\) # (!\inst1|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(1),
	datad => VCC,
	cin => \inst1|Add0~1\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: LCCOMB_X27_Y11_N10
\inst1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|cuenta\(3) & (!\inst1|Add0~5\)) # (!\inst1|cuenta\(3) & ((\inst1|Add0~5\) # (GND)))
-- \inst1|Add0~7\ = CARRY((!\inst1|Add0~5\) # (!\inst1|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(3),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: LCCOMB_X27_Y11_N12
\inst1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|cuenta\(4) & (\inst1|Add0~7\ $ (GND))) # (!\inst1|cuenta\(4) & (!\inst1|Add0~7\ & VCC))
-- \inst1|Add0~9\ = CARRY((\inst1|cuenta\(4) & !\inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(4),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: LCCOMB_X27_Y11_N16
\inst1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = (\inst1|cuenta\(6) & (\inst1|Add0~11\ $ (GND))) # (!\inst1|cuenta\(6) & (!\inst1|Add0~11\ & VCC))
-- \inst1|Add0~13\ = CARRY((\inst1|cuenta\(6) & !\inst1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(6),
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: LCCOMB_X27_Y11_N20
\inst1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = (\inst1|cuenta\(8) & (\inst1|Add0~15\ $ (GND))) # (!\inst1|cuenta\(8) & (!\inst1|Add0~15\ & VCC))
-- \inst1|Add0~17\ = CARRY((\inst1|cuenta\(8) & !\inst1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(8),
	datad => VCC,
	cin => \inst1|Add0~15\,
	combout => \inst1|Add0~16_combout\,
	cout => \inst1|Add0~17\);

-- Location: LCCOMB_X27_Y11_N24
\inst1|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~20_combout\ = (\inst1|cuenta\(10) & (\inst1|Add0~19\ $ (GND))) # (!\inst1|cuenta\(10) & (!\inst1|Add0~19\ & VCC))
-- \inst1|Add0~21\ = CARRY((\inst1|cuenta\(10) & !\inst1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(10),
	datad => VCC,
	cin => \inst1|Add0~19\,
	combout => \inst1|Add0~20_combout\,
	cout => \inst1|Add0~21\);

-- Location: LCCOMB_X27_Y10_N6
\inst1|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~34_combout\ = (\inst1|cuenta\(17) & (!\inst1|Add0~33\)) # (!\inst1|cuenta\(17) & ((\inst1|Add0~33\) # (GND)))
-- \inst1|Add0~35\ = CARRY((!\inst1|Add0~33\) # (!\inst1|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(17),
	datad => VCC,
	cin => \inst1|Add0~33\,
	combout => \inst1|Add0~34_combout\,
	cout => \inst1|Add0~35\);

-- Location: LCCOMB_X27_Y10_N10
\inst1|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~38_combout\ = (\inst1|cuenta\(19) & (!\inst1|Add0~37\)) # (!\inst1|cuenta\(19) & ((\inst1|Add0~37\) # (GND)))
-- \inst1|Add0~39\ = CARRY((!\inst1|Add0~37\) # (!\inst1|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(19),
	datad => VCC,
	cin => \inst1|Add0~37\,
	combout => \inst1|Add0~38_combout\,
	cout => \inst1|Add0~39\);

-- Location: LCCOMB_X27_Y10_N12
\inst1|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~40_combout\ = (\inst1|cuenta\(20) & (\inst1|Add0~39\ $ (GND))) # (!\inst1|cuenta\(20) & (!\inst1|Add0~39\ & VCC))
-- \inst1|Add0~41\ = CARRY((\inst1|cuenta\(20) & !\inst1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(20),
	datad => VCC,
	cin => \inst1|Add0~39\,
	combout => \inst1|Add0~40_combout\,
	cout => \inst1|Add0~41\);

-- Location: LCCOMB_X27_Y10_N16
\inst1|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~44_combout\ = (\inst1|cuenta\(22) & (\inst1|Add0~43\ $ (GND))) # (!\inst1|cuenta\(22) & (!\inst1|Add0~43\ & VCC))
-- \inst1|Add0~45\ = CARRY((\inst1|cuenta\(22) & !\inst1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(22),
	datad => VCC,
	cin => \inst1|Add0~43\,
	combout => \inst1|Add0~44_combout\,
	cout => \inst1|Add0~45\);

-- Location: LCCOMB_X27_Y10_N20
\inst1|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~48_combout\ = (\inst1|cuenta\(24) & (\inst1|Add0~47\ $ (GND))) # (!\inst1|cuenta\(24) & (!\inst1|Add0~47\ & VCC))
-- \inst1|Add0~49\ = CARRY((\inst1|cuenta\(24) & !\inst1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(24),
	datad => VCC,
	cin => \inst1|Add0~47\,
	combout => \inst1|Add0~48_combout\,
	cout => \inst1|Add0~49\);

-- Location: LCCOMB_X27_Y10_N22
\inst1|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~50_combout\ = (\inst1|cuenta\(25) & (!\inst1|Add0~49\)) # (!\inst1|cuenta\(25) & ((\inst1|Add0~49\) # (GND)))
-- \inst1|Add0~51\ = CARRY((!\inst1|Add0~49\) # (!\inst1|cuenta\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(25),
	datad => VCC,
	cin => \inst1|Add0~49\,
	combout => \inst1|Add0~50_combout\,
	cout => \inst1|Add0~51\);

-- Location: LCCOMB_X27_Y10_N24
\inst1|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~52_combout\ = (\inst1|cuenta\(26) & (\inst1|Add0~51\ $ (GND))) # (!\inst1|cuenta\(26) & (!\inst1|Add0~51\ & VCC))
-- \inst1|Add0~53\ = CARRY((\inst1|cuenta\(26) & !\inst1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(26),
	datad => VCC,
	cin => \inst1|Add0~51\,
	combout => \inst1|Add0~52_combout\,
	cout => \inst1|Add0~53\);

-- Location: LCCOMB_X27_Y10_N26
\inst1|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~54_combout\ = \inst1|Add0~53\ $ (\inst1|cuenta\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|cuenta\(27),
	cin => \inst1|Add0~53\,
	combout => \inst1|Add0~54_combout\);

-- Location: LCCOMB_X27_Y5_N16
\inst|adelante~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|adelante~1_combout\ = (\reset~combout\ & (!\inst|esiguiente\(2) & !\inst|esiguiente\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \inst|esiguiente\(2),
	datad => \inst|esiguiente\(1),
	combout => \inst|adelante~1_combout\);

-- Location: LCFF_X27_Y10_N21
\inst1|cuenta[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reloj~clkctrl_outclk\,
	datain => \inst1|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cuenta\(24));

-- Location: LCFF_X27_Y10_N17
\inst1|cuenta[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reloj~clkctrl_outclk\,
	datain => \inst1|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cuenta\(22));

-- Location: LCFF_X27_Y10_N13
\inst1|cuenta[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reloj~clkctrl_outclk\,
	datain => \inst1|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cuenta\(20));

-- Location: LCFF_X27_Y10_N11
\inst1|cuenta[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reloj~clkctrl_outclk\,
	datain => \inst1|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cuenta\(19));

-- Location: LCFF_X27_Y10_N7
\inst1|cuenta[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reloj~clkctrl_outclk\,
	datain => \inst1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cuenta\(17));

-- Location: LCFF_X27_Y11_N25
\inst1|cuenta[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reloj~clkctrl_outclk\,
	datain => \inst1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cuenta\(10));

-- Location: LCFF_X27_Y11_N21
\inst1|cuenta[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reloj~clkctrl_outclk\,
	datain => \inst1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cuenta\(8));

-- Location: LCFF_X27_Y11_N17
\inst1|cuenta[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reloj~clkctrl_outclk\,
	datain => \inst1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cuenta\(6));

-- Location: LCFF_X27_Y11_N13
\inst1|cuenta[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reloj~clkctrl_outclk\,
	datain => \inst1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cuenta\(4));

-- Location: LCFF_X27_Y11_N11
\inst1|cuenta[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reloj~clkctrl_outclk\,
	datain => \inst1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cuenta\(3));

-- Location: LCFF_X27_Y11_N7
\inst1|cuenta[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reloj~clkctrl_outclk\,
	datain => \inst1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cuenta\(1));

-- Location: LCFF_X26_Y10_N1
\inst1|cuenta[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reloj~clkctrl_outclk\,
	datain => \inst1|cuenta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cuenta\(0));

-- Location: LCCOMB_X26_Y10_N26
\inst1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (!\inst1|cuenta\(2) & (!\inst1|cuenta\(1) & (!\inst1|cuenta\(3) & !\inst1|cuenta\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(2),
	datab => \inst1|cuenta\(1),
	datac => \inst1|cuenta\(3),
	datad => \inst1|cuenta\(0),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y11_N0
\inst1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (!\inst1|cuenta\(6) & (!\inst1|cuenta\(7) & (!\inst1|cuenta\(5) & !\inst1|cuenta\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(6),
	datab => \inst1|cuenta\(7),
	datac => \inst1|cuenta\(5),
	datad => \inst1|cuenta\(4),
	combout => \inst1|Equal0~1_combout\);

-- Location: LCCOMB_X27_Y11_N2
\inst1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = (!\inst1|cuenta\(10) & (!\inst1|cuenta\(11) & (!\inst1|cuenta\(8) & !\inst1|cuenta\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(10),
	datab => \inst1|cuenta\(11),
	datac => \inst1|cuenta\(8),
	datad => \inst1|cuenta\(9),
	combout => \inst1|Equal0~2_combout\);

-- Location: LCCOMB_X26_Y10_N24
\inst1|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~3_combout\ = (!\inst1|cuenta\(15) & (!\inst1|cuenta\(14) & (!\inst1|cuenta\(13) & !\inst1|cuenta\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(15),
	datab => \inst1|cuenta\(14),
	datac => \inst1|cuenta\(13),
	datad => \inst1|cuenta\(12),
	combout => \inst1|Equal0~3_combout\);

-- Location: LCCOMB_X26_Y10_N14
\inst1|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~4_combout\ = (\inst1|Equal0~1_combout\ & (\inst1|Equal0~0_combout\ & (\inst1|Equal0~3_combout\ & \inst1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~1_combout\,
	datab => \inst1|Equal0~0_combout\,
	datac => \inst1|Equal0~3_combout\,
	datad => \inst1|Equal0~2_combout\,
	combout => \inst1|Equal0~4_combout\);

-- Location: LCCOMB_X26_Y10_N4
\inst1|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~5_combout\ = (!\inst1|cuenta\(17) & (!\inst1|cuenta\(18) & (!\inst1|cuenta\(19) & !\inst1|cuenta\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(17),
	datab => \inst1|cuenta\(18),
	datac => \inst1|cuenta\(19),
	datad => \inst1|cuenta\(16),
	combout => \inst1|Equal0~5_combout\);

-- Location: LCCOMB_X27_Y10_N30
\inst1|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~6_combout\ = (!\inst1|cuenta\(20) & (!\inst1|cuenta\(21) & (!\inst1|cuenta\(22) & !\inst1|cuenta\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(20),
	datab => \inst1|cuenta\(21),
	datac => \inst1|cuenta\(22),
	datad => \inst1|cuenta\(23),
	combout => \inst1|Equal0~6_combout\);

-- Location: LCFF_X26_Y10_N31
\inst1|cuenta[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reloj~clkctrl_outclk\,
	datain => \inst1|cuenta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cuenta\(26));

-- Location: LCFF_X27_Y10_N27
\inst1|cuenta[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reloj~clkctrl_outclk\,
	datain => \inst1|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cuenta\(27));

-- Location: LCCOMB_X27_Y10_N28
\inst1|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~7_combout\ = (!\inst1|cuenta\(24) & (!\inst1|cuenta\(27) & (\inst1|cuenta\(26) & !\inst1|cuenta\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cuenta\(24),
	datab => \inst1|cuenta\(27),
	datac => \inst1|cuenta\(26),
	datad => \inst1|cuenta\(25),
	combout => \inst1|Equal0~7_combout\);

-- Location: LCCOMB_X26_Y10_N20
\inst1|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~8_combout\ = (\inst1|Equal0~6_combout\ & (\inst1|Equal0~5_combout\ & (\inst1|Equal0~4_combout\ & \inst1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~6_combout\,
	datab => \inst1|Equal0~5_combout\,
	datac => \inst1|Equal0~4_combout\,
	datad => \inst1|Equal0~7_combout\,
	combout => \inst1|Equal0~8_combout\);

-- Location: LCCOMB_X26_Y10_N0
\inst1|cuenta~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cuenta~0_combout\ = (!\inst1|Equal0~8_combout\ & \inst1|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Equal0~8_combout\,
	datad => \inst1|Add0~0_combout\,
	combout => \inst1|cuenta~0_combout\);

-- Location: LCCOMB_X26_Y10_N30
\inst1|cuenta~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|cuenta~1_combout\ = (!\inst1|Equal0~8_combout\ & \inst1|Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Equal0~8_combout\,
	datad => \inst1|Add0~52_combout\,
	combout => \inst1|cuenta~1_combout\);

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

-- Location: LCCOMB_X27_Y11_N8
\inst1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst1|cuenta\(2) & (\inst1|Add0~3\ $ (GND))) # (!\inst1|cuenta\(2) & (!\inst1|Add0~3\ & VCC))
-- \inst1|Add0~5\ = CARRY((\inst1|cuenta\(2) & !\inst1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(2),
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: LCFF_X27_Y11_N9
\inst1|cuenta[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reloj~clkctrl_outclk\,
	datain => \inst1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cuenta\(2));

-- Location: LCCOMB_X27_Y11_N14
\inst1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst1|cuenta\(5) & (!\inst1|Add0~9\)) # (!\inst1|cuenta\(5) & ((\inst1|Add0~9\) # (GND)))
-- \inst1|Add0~11\ = CARRY((!\inst1|Add0~9\) # (!\inst1|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(5),
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: LCFF_X27_Y11_N15
\inst1|cuenta[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reloj~clkctrl_outclk\,
	datain => \inst1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cuenta\(5));

-- Location: LCCOMB_X27_Y11_N18
\inst1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\inst1|cuenta\(7) & (!\inst1|Add0~13\)) # (!\inst1|cuenta\(7) & ((\inst1|Add0~13\) # (GND)))
-- \inst1|Add0~15\ = CARRY((!\inst1|Add0~13\) # (!\inst1|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(7),
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

-- Location: LCFF_X27_Y11_N19
\inst1|cuenta[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reloj~clkctrl_outclk\,
	datain => \inst1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cuenta\(7));

-- Location: LCCOMB_X27_Y11_N22
\inst1|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = (\inst1|cuenta\(9) & (!\inst1|Add0~17\)) # (!\inst1|cuenta\(9) & ((\inst1|Add0~17\) # (GND)))
-- \inst1|Add0~19\ = CARRY((!\inst1|Add0~17\) # (!\inst1|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(9),
	datad => VCC,
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~18_combout\,
	cout => \inst1|Add0~19\);

-- Location: LCFF_X27_Y11_N23
\inst1|cuenta[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reloj~clkctrl_outclk\,
	datain => \inst1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cuenta\(9));

-- Location: LCCOMB_X27_Y11_N26
\inst1|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~22_combout\ = (\inst1|cuenta\(11) & (!\inst1|Add0~21\)) # (!\inst1|cuenta\(11) & ((\inst1|Add0~21\) # (GND)))
-- \inst1|Add0~23\ = CARRY((!\inst1|Add0~21\) # (!\inst1|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(11),
	datad => VCC,
	cin => \inst1|Add0~21\,
	combout => \inst1|Add0~22_combout\,
	cout => \inst1|Add0~23\);

-- Location: LCFF_X27_Y11_N27
\inst1|cuenta[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reloj~clkctrl_outclk\,
	datain => \inst1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cuenta\(11));

-- Location: LCCOMB_X27_Y11_N28
\inst1|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~24_combout\ = (\inst1|cuenta\(12) & (\inst1|Add0~23\ $ (GND))) # (!\inst1|cuenta\(12) & (!\inst1|Add0~23\ & VCC))
-- \inst1|Add0~25\ = CARRY((\inst1|cuenta\(12) & !\inst1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(12),
	datad => VCC,
	cin => \inst1|Add0~23\,
	combout => \inst1|Add0~24_combout\,
	cout => \inst1|Add0~25\);

-- Location: LCFF_X27_Y11_N29
\inst1|cuenta[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reloj~clkctrl_outclk\,
	datain => \inst1|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cuenta\(12));

-- Location: LCCOMB_X27_Y11_N30
\inst1|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~26_combout\ = (\inst1|cuenta\(13) & (!\inst1|Add0~25\)) # (!\inst1|cuenta\(13) & ((\inst1|Add0~25\) # (GND)))
-- \inst1|Add0~27\ = CARRY((!\inst1|Add0~25\) # (!\inst1|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(13),
	datad => VCC,
	cin => \inst1|Add0~25\,
	combout => \inst1|Add0~26_combout\,
	cout => \inst1|Add0~27\);

-- Location: LCFF_X27_Y11_N31
\inst1|cuenta[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reloj~clkctrl_outclk\,
	datain => \inst1|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cuenta\(13));

-- Location: LCCOMB_X27_Y10_N0
\inst1|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~28_combout\ = (\inst1|cuenta\(14) & (\inst1|Add0~27\ $ (GND))) # (!\inst1|cuenta\(14) & (!\inst1|Add0~27\ & VCC))
-- \inst1|Add0~29\ = CARRY((\inst1|cuenta\(14) & !\inst1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(14),
	datad => VCC,
	cin => \inst1|Add0~27\,
	combout => \inst1|Add0~28_combout\,
	cout => \inst1|Add0~29\);

-- Location: LCFF_X27_Y10_N1
\inst1|cuenta[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reloj~clkctrl_outclk\,
	datain => \inst1|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cuenta\(14));

-- Location: LCCOMB_X27_Y10_N2
\inst1|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~30_combout\ = (\inst1|cuenta\(15) & (!\inst1|Add0~29\)) # (!\inst1|cuenta\(15) & ((\inst1|Add0~29\) # (GND)))
-- \inst1|Add0~31\ = CARRY((!\inst1|Add0~29\) # (!\inst1|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(15),
	datad => VCC,
	cin => \inst1|Add0~29\,
	combout => \inst1|Add0~30_combout\,
	cout => \inst1|Add0~31\);

-- Location: LCFF_X27_Y10_N3
\inst1|cuenta[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reloj~clkctrl_outclk\,
	datain => \inst1|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cuenta\(15));

-- Location: LCCOMB_X27_Y10_N4
\inst1|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~32_combout\ = (\inst1|cuenta\(16) & (\inst1|Add0~31\ $ (GND))) # (!\inst1|cuenta\(16) & (!\inst1|Add0~31\ & VCC))
-- \inst1|Add0~33\ = CARRY((\inst1|cuenta\(16) & !\inst1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(16),
	datad => VCC,
	cin => \inst1|Add0~31\,
	combout => \inst1|Add0~32_combout\,
	cout => \inst1|Add0~33\);

-- Location: LCFF_X27_Y10_N5
\inst1|cuenta[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reloj~clkctrl_outclk\,
	datain => \inst1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cuenta\(16));

-- Location: LCCOMB_X27_Y10_N8
\inst1|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~36_combout\ = (\inst1|cuenta\(18) & (\inst1|Add0~35\ $ (GND))) # (!\inst1|cuenta\(18) & (!\inst1|Add0~35\ & VCC))
-- \inst1|Add0~37\ = CARRY((\inst1|cuenta\(18) & !\inst1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(18),
	datad => VCC,
	cin => \inst1|Add0~35\,
	combout => \inst1|Add0~36_combout\,
	cout => \inst1|Add0~37\);

-- Location: LCFF_X27_Y10_N9
\inst1|cuenta[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reloj~clkctrl_outclk\,
	datain => \inst1|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cuenta\(18));

-- Location: LCCOMB_X27_Y10_N14
\inst1|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~42_combout\ = (\inst1|cuenta\(21) & (!\inst1|Add0~41\)) # (!\inst1|cuenta\(21) & ((\inst1|Add0~41\) # (GND)))
-- \inst1|Add0~43\ = CARRY((!\inst1|Add0~41\) # (!\inst1|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(21),
	datad => VCC,
	cin => \inst1|Add0~41\,
	combout => \inst1|Add0~42_combout\,
	cout => \inst1|Add0~43\);

-- Location: LCFF_X27_Y10_N15
\inst1|cuenta[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reloj~clkctrl_outclk\,
	datain => \inst1|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cuenta\(21));

-- Location: LCCOMB_X27_Y10_N18
\inst1|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Add0~46_combout\ = (\inst1|cuenta\(23) & (!\inst1|Add0~45\)) # (!\inst1|cuenta\(23) & ((\inst1|Add0~45\) # (GND)))
-- \inst1|Add0~47\ = CARRY((!\inst1|Add0~45\) # (!\inst1|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cuenta\(23),
	datad => VCC,
	cin => \inst1|Add0~45\,
	combout => \inst1|Add0~46_combout\,
	cout => \inst1|Add0~47\);

-- Location: LCFF_X27_Y10_N19
\inst1|cuenta[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reloj~clkctrl_outclk\,
	datain => \inst1|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cuenta\(23));

-- Location: LCFF_X27_Y10_N23
\inst1|cuenta[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \reloj~clkctrl_outclk\,
	datain => \inst1|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|cuenta\(25));

-- Location: CLKCTRL_G4
\inst1|cuenta[25]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|cuenta[25]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|cuenta[25]~clkctrl_outclk\);

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

-- Location: LCCOMB_X27_Y5_N20
\inst|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = (\inst|esiguiente\(1) & ((\inst|esiguiente\(0) & (\inst|esiguiente\(2))) # (!\inst|esiguiente\(0) & ((\inst|esiguiente\(3)))))) # (!\inst|esiguiente\(1) & (((\inst|esiguiente\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|esiguiente\(2),
	datab => \inst|esiguiente\(1),
	datac => \inst|esiguiente\(3),
	datad => \inst|esiguiente\(0),
	combout => \inst|Mux4~0_combout\);

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

-- Location: LCFF_X27_Y5_N21
\inst|esiguiente[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|cuenta[25]~clkctrl_outclk\,
	datain => \inst|Mux4~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|esiguiente\(3));

-- Location: LCCOMB_X27_Y5_N28
\inst|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux6~1_combout\ = (\inst|esiguiente\(0)) # ((\S~combout\(1) & (!\S~combout\(0) & !\inst|esiguiente\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(1),
	datab => \S~combout\(0),
	datac => \inst|esiguiente\(3),
	datad => \inst|esiguiente\(0),
	combout => \inst|Mux6~1_combout\);

-- Location: LCCOMB_X27_Y5_N10
\inst|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = (\inst|esiguiente\(0) & (\inst|esiguiente\(2) & (\inst|esiguiente\(1) $ (!\inst|esiguiente\(3))))) # (!\inst|esiguiente\(0) & (\inst|esiguiente\(1) & ((\inst|esiguiente\(3)) # (\inst|esiguiente\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|esiguiente\(0),
	datab => \inst|esiguiente\(1),
	datac => \inst|esiguiente\(3),
	datad => \inst|esiguiente\(2),
	combout => \inst|Mux6~0_combout\);

-- Location: LCCOMB_X27_Y5_N0
\inst|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux6~2_combout\ = (\inst|Mux6~0_combout\) # ((!\inst|esiguiente\(2) & (\inst|Mux6~1_combout\ & !\inst|esiguiente\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|esiguiente\(2),
	datab => \inst|Mux6~1_combout\,
	datac => \inst|esiguiente\(1),
	datad => \inst|Mux6~0_combout\,
	combout => \inst|Mux6~2_combout\);

-- Location: LCFF_X27_Y5_N1
\inst|esiguiente[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|cuenta[25]~clkctrl_outclk\,
	datain => \inst|Mux6~2_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|esiguiente\(1));

-- Location: LCCOMB_X27_Y5_N26
\inst|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux7~0_combout\ = (\inst|esiguiente\(2) & (((\inst|esiguiente\(1))))) # (!\inst|esiguiente\(2) & (!\inst|esiguiente\(1) & ((\S~combout\(1)) # (\S~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(1),
	datab => \S~combout\(0),
	datac => \inst|esiguiente\(2),
	datad => \inst|esiguiente\(1),
	combout => \inst|Mux7~0_combout\);

-- Location: LCCOMB_X27_Y5_N30
\inst|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux7~1_combout\ = (\inst|esiguiente\(3) & (\inst|esiguiente\(2) $ ((!\inst|esiguiente\(0))))) # (!\inst|esiguiente\(3) & (((!\inst|esiguiente\(0) & \inst|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|esiguiente\(3),
	datab => \inst|esiguiente\(2),
	datac => \inst|esiguiente\(0),
	datad => \inst|Mux7~0_combout\,
	combout => \inst|Mux7~1_combout\);

-- Location: LCFF_X27_Y5_N31
\inst|esiguiente[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|cuenta[25]~clkctrl_outclk\,
	datain => \inst|Mux7~1_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|esiguiente\(0));

-- Location: LCCOMB_X27_Y5_N8
\inst|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux5~1_combout\ = (\inst|esiguiente\(0) & (((\inst|esiguiente\(1))))) # (!\inst|esiguiente\(0) & (\S~combout\(1) & (\S~combout\(0) & !\inst|esiguiente\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(1),
	datab => \S~combout\(0),
	datac => \inst|esiguiente\(0),
	datad => \inst|esiguiente\(1),
	combout => \inst|Mux5~1_combout\);

-- Location: LCCOMB_X27_Y5_N6
\inst|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = (\inst|esiguiente\(2) & ((\inst|esiguiente\(3)) # (\inst|esiguiente\(0) $ (\inst|esiguiente\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|esiguiente\(0),
	datab => \inst|esiguiente\(1),
	datac => \inst|esiguiente\(3),
	datad => \inst|esiguiente\(2),
	combout => \inst|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y5_N18
\inst|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux5~2_combout\ = (\inst|Mux5~0_combout\) # ((!\inst|esiguiente\(3) & (\inst|Mux5~1_combout\ & !\inst|esiguiente\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|esiguiente\(3),
	datab => \inst|Mux5~1_combout\,
	datac => \inst|esiguiente\(2),
	datad => \inst|Mux5~0_combout\,
	combout => \inst|Mux5~2_combout\);

-- Location: LCFF_X27_Y5_N19
\inst|esiguiente[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|cuenta[25]~clkctrl_outclk\,
	datain => \inst|Mux5~2_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|esiguiente\(2));

-- Location: LCCOMB_X27_Y5_N24
\inst|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (\inst|esiguiente\(0) & (!\inst|esiguiente\(3) & ((!\inst|esiguiente\(1)) # (!\inst|esiguiente\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|esiguiente\(0),
	datab => \inst|esiguiente\(2),
	datac => \inst|esiguiente\(1),
	datad => \inst|esiguiente\(3),
	combout => \inst|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y5_N4
\inst|atras~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|atras~0_combout\ = (\reset~combout\ & ((!\inst|esiguiente\(2)) # (!\inst|esiguiente\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datac => \inst|esiguiente\(3),
	datad => \inst|esiguiente\(2),
	combout => \inst|atras~0_combout\);

-- Location: LCFF_X27_Y5_N25
\inst|atras\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|cuenta[25]~clkctrl_outclk\,
	datain => \inst|Mux0~0_combout\,
	ena => \inst|atras~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|atras~regout\);

-- Location: LCCOMB_X27_Y5_N12
\inst|adelante~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|adelante~0_combout\ = (\inst|esiguiente\(3)) # ((!\S~combout\(1) & (!\S~combout\(0) & !\inst|esiguiente\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~combout\(1),
	datab => \S~combout\(0),
	datac => \inst|esiguiente\(3),
	datad => \inst|esiguiente\(0),
	combout => \inst|adelante~0_combout\);

-- Location: LCCOMB_X27_Y5_N2
\inst|adelante~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|adelante~2_combout\ = (\inst|adelante~1_combout\ & ((\inst|adelante~0_combout\) # ((!\inst|atras~0_combout\ & \inst|adelante~regout\)))) # (!\inst|adelante~1_combout\ & (!\inst|atras~0_combout\ & (\inst|adelante~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adelante~1_combout\,
	datab => \inst|atras~0_combout\,
	datac => \inst|adelante~regout\,
	datad => \inst|adelante~0_combout\,
	combout => \inst|adelante~2_combout\);

-- Location: LCFF_X27_Y5_N3
\inst|adelante\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|cuenta[25]~clkctrl_outclk\,
	datain => \inst|adelante~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|adelante~regout\);

-- Location: LCCOMB_X27_Y5_N14
\inst|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = (!\inst|esiguiente\(0) & (!\inst|esiguiente\(1) & \inst|esiguiente\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|esiguiente\(0),
	datac => \inst|esiguiente\(1),
	datad => \inst|esiguiente\(2),
	combout => \inst|Mux2~0_combout\);

-- Location: LCFF_X27_Y5_N15
\inst|giro_der\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|cuenta[25]~clkctrl_outclk\,
	datain => \inst|Mux2~0_combout\,
	sdata => \inst|esiguiente\(1),
	sload => \inst|esiguiente\(3),
	ena => \inst|atras~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|giro_der~regout\);

-- Location: LCCOMB_X27_Y5_N22
\inst|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (\inst|esiguiente\(1) & (!\inst|esiguiente\(3) & ((\inst|esiguiente\(2)) # (!\inst|esiguiente\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|esiguiente\(0),
	datab => \inst|esiguiente\(2),
	datac => \inst|esiguiente\(1),
	datad => \inst|esiguiente\(3),
	combout => \inst|Mux1~0_combout\);

-- Location: LCFF_X27_Y5_N23
\inst|giro_izq\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|cuenta[25]~clkctrl_outclk\,
	datain => \inst|Mux1~0_combout\,
	ena => \inst|atras~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|giro_izq~regout\);

-- Location: LCCOMB_X26_Y5_N0
\inst|out_epresente[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|out_epresente[3]~feeder_combout\ = \inst|esiguiente\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|esiguiente\(3),
	combout => \inst|out_epresente[3]~feeder_combout\);

-- Location: LCFF_X26_Y5_N1
\inst|out_epresente[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|cuenta[25]~clkctrl_outclk\,
	datain => \inst|out_epresente[3]~feeder_combout\,
	ena => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|out_epresente\(3));

-- Location: LCCOMB_X26_Y5_N22
\inst|out_epresente[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|out_epresente[2]~feeder_combout\ = \inst|esiguiente\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|esiguiente\(2),
	combout => \inst|out_epresente[2]~feeder_combout\);

-- Location: LCFF_X26_Y5_N23
\inst|out_epresente[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|cuenta[25]~clkctrl_outclk\,
	datain => \inst|out_epresente[2]~feeder_combout\,
	ena => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|out_epresente\(2));

-- Location: LCFF_X26_Y5_N9
\inst|out_epresente[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|cuenta[25]~clkctrl_outclk\,
	sdata => \inst|esiguiente\(1),
	sload => VCC,
	ena => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|out_epresente\(1));

-- Location: LCCOMB_X26_Y5_N2
\inst|out_epresente[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|out_epresente[0]~feeder_combout\ = \inst|esiguiente\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|esiguiente\(0),
	combout => \inst|out_epresente[0]~feeder_combout\);

-- Location: LCFF_X26_Y5_N3
\inst|out_epresente[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|cuenta[25]~clkctrl_outclk\,
	datain => \inst|out_epresente[0]~feeder_combout\,
	ena => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|out_epresente\(0));

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
	datain => \inst|atras~regout\,
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
	datain => \inst|adelante~regout\,
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
	datain => \inst|giro_der~regout\,
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
	datain => \inst|giro_izq~regout\,
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
	datain => \inst|out_epresente\(3),
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
	datain => \inst|out_epresente\(2),
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
	datain => \inst|out_epresente\(1),
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
	datain => \inst|out_epresente\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_state(0));
END structure;



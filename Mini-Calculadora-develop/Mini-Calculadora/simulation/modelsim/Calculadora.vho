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

-- DATE "04/11/2019 18:40:58"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
LIBRARY STD;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE STD.STANDARD.ALL;

ENTITY 	Calculadora IS
    PORT (
	x1 : IN STD.STANDARD.bit_vector(3 DOWNTO 0);
	x2 : IN STD.STANDARD.bit_vector(3 DOWNTO 0);
	s2 : IN std_logic;
	s1 : IN std_logic;
	s0 : IN std_logic;
	ld : IN std_logic;
	ctrl : OUT STD.STANDARD.bit_vector(1 DOWNTO 0);
	c0 : OUT STD.STANDARD.bit;
	y : OUT STD.STANDARD.bit_vector(3 DOWNTO 0)
	);
END Calculadora;

-- Design Ports Information
-- ctrl[0]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ctrl[1]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c0	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y[0]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y[1]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y[2]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y[3]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- x2[2]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x2[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x2[0]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x1[0]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x1[1]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x1[2]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x2[3]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- x1[3]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ld	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s1	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s0	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s2	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Calculadora IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_x2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s2 : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_s0 : std_logic;
SIGNAL ww_ld : std_logic;
SIGNAL ww_ctrl : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_c0 : std_logic;
SIGNAL ww_y : std_logic_vector(3 DOWNTO 0);
SIGNAL \usubtrador|sig[1]~0_combout\ : std_logic;
SIGNAL \usubtrador|sig[2]~1_combout\ : std_logic;
SIGNAL \usubtrador|b_out~0_combout\ : std_logic;
SIGNAL \ld~combout\ : std_logic;
SIGNAL \s2~combout\ : std_logic;
SIGNAL \c0~0_combout\ : std_logic;
SIGNAL \c0~1_combout\ : std_logic;
SIGNAL \c0~2_combout\ : std_logic;
SIGNAL \c0~3_combout\ : std_logic;
SIGNAL \s0~combout\ : std_logic;
SIGNAL \usomador|sig[1]~0_combout\ : std_logic;
SIGNAL \c0~5_combout\ : std_logic;
SIGNAL \s1~combout\ : std_logic;
SIGNAL \c0~4_combout\ : std_logic;
SIGNAL \c0~6_combout\ : std_logic;
SIGNAL \c0~7_combout\ : std_logic;
SIGNAL \uf:0:umult|y~1_combout\ : std_logic;
SIGNAL \c0~8_combout\ : std_logic;
SIGNAL \uf:0:umult|y~0_combout\ : std_logic;
SIGNAL \uf:0:umult|y~2_combout\ : std_logic;
SIGNAL \uf:1:umult|y~1_combout\ : std_logic;
SIGNAL \uf:1:umult|y~2_combout\ : std_logic;
SIGNAL \uf:1:umult|y~0_combout\ : std_logic;
SIGNAL \uf:2:umult|y~1_combout\ : std_logic;
SIGNAL \uf:2:umult|y~0_combout\ : std_logic;
SIGNAL \uf:2:umult|y~2_combout\ : std_logic;
SIGNAL \uf:3:umult|y~0_combout\ : std_logic;
SIGNAL \usubtrador|s[3]~0_combout\ : std_logic;
SIGNAL \uf:3:umult|y~1_combout\ : std_logic;
SIGNAL \usomador|s\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \x2~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \x1~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_x1 <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(x1);
ww_x2 <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(x2);
ww_s2 <= s2;
ww_s1 <= s1;
ww_s0 <= s0;
ww_ld <= ld;
ctrl <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_ctrl);
c0 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_c0);
y <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_y);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x2[1]~I\ : cycloneii_io
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
	padio => ww_x2(1),
	combout => \x2~combout\(1));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x2[3]~I\ : cycloneii_io
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
	padio => ww_x2(3),
	combout => \x2~combout\(3));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x2[0]~I\ : cycloneii_io
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
	padio => ww_x2(0),
	combout => \x2~combout\(0));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x1[0]~I\ : cycloneii_io
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
	padio => ww_x1(0),
	combout => \x1~combout\(0));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x1[1]~I\ : cycloneii_io
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
	padio => ww_x1(1),
	combout => \x1~combout\(1));

-- Location: LCCOMB_X29_Y34_N0
\usubtrador|sig[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \usubtrador|sig[1]~0_combout\ = (\x2~combout\(1) & ((\x2~combout\(0)) # ((!\x1~combout\(1)) # (!\x1~combout\(0))))) # (!\x2~combout\(1) & (!\x1~combout\(1) & ((\x2~combout\(0)) # (!\x1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2~combout\(1),
	datab => \x2~combout\(0),
	datac => \x1~combout\(0),
	datad => \x1~combout\(1),
	combout => \usubtrador|sig[1]~0_combout\);

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x1[2]~I\ : cycloneii_io
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
	padio => ww_x1(2),
	combout => \x1~combout\(2));

-- Location: LCCOMB_X28_Y34_N8
\usubtrador|sig[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \usubtrador|sig[2]~1_combout\ = (\x2~combout\(2) & ((\usubtrador|sig[1]~0_combout\) # (!\x1~combout\(2)))) # (!\x2~combout\(2) & (\usubtrador|sig[1]~0_combout\ & !\x1~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2~combout\(2),
	datab => \usubtrador|sig[1]~0_combout\,
	datac => \x1~combout\(2),
	combout => \usubtrador|sig[2]~1_combout\);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x1[3]~I\ : cycloneii_io
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
	padio => ww_x1(3),
	combout => \x1~combout\(3));

-- Location: LCCOMB_X28_Y34_N2
\usubtrador|b_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \usubtrador|b_out~0_combout\ = (\x2~combout\(3) & ((\usubtrador|sig[2]~1_combout\) # (!\x1~combout\(3)))) # (!\x2~combout\(3) & (\usubtrador|sig[2]~1_combout\ & !\x1~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x2~combout\(3),
	datac => \usubtrador|sig[2]~1_combout\,
	datad => \x1~combout\(3),
	combout => \usubtrador|b_out~0_combout\);

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ld~I\ : cycloneii_io
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
	padio => ww_ld,
	combout => \ld~combout\);

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s2~I\ : cycloneii_io
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
	padio => ww_s2,
	combout => \s2~combout\);

-- Location: LCCOMB_X29_Y34_N2
\c0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \c0~0_combout\ = (\x1~combout\(0) & (!\s2~combout\ & !\x2~combout\(0))) # (!\x1~combout\(0) & (\s2~combout\ & \x2~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x1~combout\(0),
	datab => \s2~combout\,
	datac => \x2~combout\(0),
	combout => \c0~0_combout\);

-- Location: LCCOMB_X29_Y34_N28
\c0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \c0~1_combout\ = (\x2~combout\(1) & ((\x1~combout\(1) & ((\c0~0_combout\))) # (!\x1~combout\(1) & (\s2~combout\)))) # (!\x2~combout\(1) & ((\x1~combout\(1) & (!\s2~combout\)) # (!\x1~combout\(1) & ((\c0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2~combout\(1),
	datab => \s2~combout\,
	datac => \c0~0_combout\,
	datad => \x1~combout\(1),
	combout => \c0~1_combout\);

-- Location: LCCOMB_X28_Y34_N4
\c0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \c0~2_combout\ = (\x2~combout\(2) & ((\x1~combout\(2) & (\c0~1_combout\)) # (!\x1~combout\(2) & ((\s2~combout\))))) # (!\x2~combout\(2) & ((\x1~combout\(2) & ((!\s2~combout\))) # (!\x1~combout\(2) & (\c0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2~combout\(2),
	datab => \c0~1_combout\,
	datac => \x1~combout\(2),
	datad => \s2~combout\,
	combout => \c0~2_combout\);

-- Location: LCCOMB_X28_Y34_N30
\c0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \c0~3_combout\ = (\x2~combout\(3) & ((\x1~combout\(3) & (\c0~2_combout\)) # (!\x1~combout\(3) & ((\s2~combout\))))) # (!\x2~combout\(3) & ((\x1~combout\(3) & ((!\s2~combout\))) # (!\x1~combout\(3) & (\c0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2~combout\(3),
	datab => \x1~combout\(3),
	datac => \c0~2_combout\,
	datad => \s2~combout\,
	combout => \c0~3_combout\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s0~I\ : cycloneii_io
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
	padio => ww_s0,
	combout => \s0~combout\);

-- Location: LCCOMB_X29_Y34_N30
\usomador|sig[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \usomador|sig[1]~0_combout\ = (\x2~combout\(1) & ((\x1~combout\(1)) # ((\x2~combout\(0) & \x1~combout\(0))))) # (!\x2~combout\(1) & (\x2~combout\(0) & (\x1~combout\(0) & \x1~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2~combout\(1),
	datab => \x2~combout\(0),
	datac => \x1~combout\(0),
	datad => \x1~combout\(1),
	combout => \usomador|sig[1]~0_combout\);

-- Location: LCCOMB_X28_Y34_N18
\c0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \c0~5_combout\ = (\x2~combout\(2) & ((\usomador|sig[1]~0_combout\) # (\x1~combout\(2)))) # (!\x2~combout\(2) & (\usomador|sig[1]~0_combout\ & \x1~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2~combout\(2),
	datab => \usomador|sig[1]~0_combout\,
	datac => \x1~combout\(2),
	combout => \c0~5_combout\);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s1~I\ : cycloneii_io
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
	padio => ww_s1,
	combout => \s1~combout\);

-- Location: LCCOMB_X28_Y34_N0
\c0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \c0~4_combout\ = (!\s0~combout\ & (!\s1~combout\ & !\s2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s0~combout\,
	datac => \s1~combout\,
	datad => \s2~combout\,
	combout => \c0~4_combout\);

-- Location: LCCOMB_X28_Y34_N20
\c0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \c0~6_combout\ = (\c0~4_combout\ & ((\x2~combout\(3) & ((\x1~combout\(3)) # (\c0~5_combout\))) # (!\x2~combout\(3) & (\x1~combout\(3) & \c0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2~combout\(3),
	datab => \x1~combout\(3),
	datac => \c0~5_combout\,
	datad => \c0~4_combout\,
	combout => \c0~6_combout\);

-- Location: LCCOMB_X28_Y34_N6
\c0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \c0~7_combout\ = (\c0~6_combout\) # ((\c0~3_combout\ & (!\s0~combout\ & \s1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c0~3_combout\,
	datab => \s0~combout\,
	datac => \c0~6_combout\,
	datad => \s1~combout\,
	combout => \c0~7_combout\);

-- Location: LCCOMB_X29_Y34_N4
\uf:0:umult|y~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uf:0:umult|y~1_combout\ = (!\s1~combout\ & (!\s0~combout\ & \s2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s1~combout\,
	datac => \s0~combout\,
	datad => \s2~combout\,
	combout => \uf:0:umult|y~1_combout\);

-- Location: LCCOMB_X29_Y34_N16
\c0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \c0~8_combout\ = (!\s1~combout\ & !\s2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s1~combout\,
	datad => \s2~combout\,
	combout => \c0~8_combout\);

-- Location: LCCOMB_X29_Y34_N10
\uf:0:umult|y~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uf:0:umult|y~0_combout\ = (\c0~8_combout\ & (\x1~combout\(0) $ (((\x2~combout\(0)) # (\s0~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x1~combout\(0),
	datab => \x2~combout\(0),
	datac => \s0~combout\,
	datad => \c0~8_combout\,
	combout => \uf:0:umult|y~0_combout\);

-- Location: LCCOMB_X29_Y34_N6
\uf:0:umult|y~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uf:0:umult|y~2_combout\ = (\uf:0:umult|y~0_combout\) # ((\uf:0:umult|y~1_combout\ & (\x1~combout\(0) $ (!\x2~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x1~combout\(0),
	datab => \uf:0:umult|y~1_combout\,
	datac => \x2~combout\(0),
	datad => \uf:0:umult|y~0_combout\,
	combout => \uf:0:umult|y~2_combout\);

-- Location: LCCOMB_X29_Y34_N26
\uf:1:umult|y~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uf:1:umult|y~1_combout\ = \x2~combout\(1) $ (\x1~combout\(1) $ (((\x2~combout\(0)) # (!\x1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2~combout\(1),
	datab => \x2~combout\(0),
	datac => \x1~combout\(0),
	datad => \x1~combout\(1),
	combout => \uf:1:umult|y~1_combout\);

-- Location: LCCOMB_X29_Y34_N12
\uf:1:umult|y~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uf:1:umult|y~2_combout\ = (\uf:1:umult|y~1_combout\ & ((\uf:0:umult|y~1_combout\) # ((\x1~combout\(0) & \c0~4_combout\)))) # (!\uf:1:umult|y~1_combout\ & (!\x1~combout\(0) & ((\c0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x1~combout\(0),
	datab => \uf:1:umult|y~1_combout\,
	datac => \uf:0:umult|y~1_combout\,
	datad => \c0~4_combout\,
	combout => \uf:1:umult|y~2_combout\);

-- Location: LCCOMB_X29_Y34_N24
\uf:1:umult|y~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uf:1:umult|y~0_combout\ = (\uf:1:umult|y~2_combout\) # ((\c0~8_combout\ & (\s0~combout\ & !\x1~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uf:1:umult|y~2_combout\,
	datab => \c0~8_combout\,
	datac => \s0~combout\,
	datad => \x1~combout\(1),
	combout => \uf:1:umult|y~0_combout\);

-- Location: LCCOMB_X28_Y34_N10
\uf:2:umult|y~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uf:2:umult|y~1_combout\ = (!\s1~combout\ & (\s0~combout\ & (!\x1~combout\(2) & !\s2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1~combout\,
	datab => \s0~combout\,
	datac => \x1~combout\(2),
	datad => \s2~combout\,
	combout => \uf:2:umult|y~1_combout\);

-- Location: LCCOMB_X28_Y34_N28
\usomador|s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \usomador|s\(2) = \x2~combout\(2) $ (\usomador|sig[1]~0_combout\ $ (\x1~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x2~combout\(2),
	datab => \usomador|sig[1]~0_combout\,
	datac => \x1~combout\(2),
	combout => \usomador|s\(2));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x2[2]~I\ : cycloneii_io
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
	padio => ww_x2(2),
	combout => \x2~combout\(2));

-- Location: LCCOMB_X28_Y34_N24
\uf:2:umult|y~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uf:2:umult|y~0_combout\ = (\uf:0:umult|y~1_combout\ & (\x1~combout\(2) $ (\usubtrador|sig[1]~0_combout\ $ (\x2~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x1~combout\(2),
	datab => \usubtrador|sig[1]~0_combout\,
	datac => \x2~combout\(2),
	datad => \uf:0:umult|y~1_combout\,
	combout => \uf:2:umult|y~0_combout\);

-- Location: LCCOMB_X28_Y34_N22
\uf:2:umult|y~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uf:2:umult|y~2_combout\ = (\uf:2:umult|y~1_combout\) # ((\uf:2:umult|y~0_combout\) # ((\usomador|s\(2) & \c0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uf:2:umult|y~1_combout\,
	datab => \usomador|s\(2),
	datac => \uf:2:umult|y~0_combout\,
	datad => \c0~4_combout\,
	combout => \uf:2:umult|y~2_combout\);

-- Location: LCCOMB_X28_Y34_N26
\usomador|s[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \usomador|s\(3) = \usubtrador|s[3]~0_combout\ $ (((\usomador|sig[1]~0_combout\ & ((\x1~combout\(2)) # (\x2~combout\(2)))) # (!\usomador|sig[1]~0_combout\ & (\x1~combout\(2) & \x2~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \usubtrador|s[3]~0_combout\,
	datab => \usomador|sig[1]~0_combout\,
	datac => \x1~combout\(2),
	datad => \x2~combout\(2),
	combout => \usomador|s\(3));

-- Location: LCCOMB_X28_Y34_N12
\uf:3:umult|y~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uf:3:umult|y~0_combout\ = (\c0~8_combout\ & ((\s0~combout\ & (!\x1~combout\(3))) # (!\s0~combout\ & ((\usomador|s\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x1~combout\(3),
	datab => \usomador|s\(3),
	datac => \c0~8_combout\,
	datad => \s0~combout\,
	combout => \uf:3:umult|y~0_combout\);

-- Location: LCCOMB_X28_Y34_N16
\usubtrador|s[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \usubtrador|s[3]~0_combout\ = \x2~combout\(3) $ (\x1~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x2~combout\(3),
	datad => \x1~combout\(3),
	combout => \usubtrador|s[3]~0_combout\);

-- Location: LCCOMB_X28_Y34_N14
\uf:3:umult|y~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uf:3:umult|y~1_combout\ = (\uf:3:umult|y~0_combout\) # ((\uf:0:umult|y~1_combout\ & (\usubtrador|sig[2]~1_combout\ $ (\usubtrador|s[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uf:3:umult|y~0_combout\,
	datab => \usubtrador|sig[2]~1_combout\,
	datac => \usubtrador|s[3]~0_combout\,
	datad => \uf:0:umult|y~1_combout\,
	combout => \uf:3:umult|y~1_combout\);

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ctrl[0]~I\ : cycloneii_io
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
	datain => \usubtrador|b_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ctrl(0));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ctrl[1]~I\ : cycloneii_io
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
	datain => \ld~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ctrl(1));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\c0~I\ : cycloneii_io
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
	datain => \c0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_c0);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y[0]~I\ : cycloneii_io
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
	datain => \uf:0:umult|y~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y(0));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y[1]~I\ : cycloneii_io
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
	datain => \uf:1:umult|y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y(1));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y[2]~I\ : cycloneii_io
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
	datain => \uf:2:umult|y~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y(2));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y[3]~I\ : cycloneii_io
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
	datain => \uf:3:umult|y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y(3));
END structure;



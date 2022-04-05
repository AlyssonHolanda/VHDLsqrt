-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "04/05/2022 20:38:05"

-- 
-- Device: Altera EP4CE10E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	raiz IS
    PORT (
	entrada : IN std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	rstsystem : IN std_logic;
	resultado : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END raiz;

-- Design Ports Information
-- resultado[0]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[1]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[2]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[3]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[4]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[5]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[6]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[7]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[7]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[6]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[5]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[4]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[3]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[2]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[1]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[0]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rstsystem	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF raiz IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entrada : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_rstsystem : std_logic;
SIGNAL ww_resultado : std_logic_vector(7 DOWNTO 0);
SIGNAL \rstsystem~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \resultado[0]~output_o\ : std_logic;
SIGNAL \resultado[1]~output_o\ : std_logic;
SIGNAL \resultado[2]~output_o\ : std_logic;
SIGNAL \resultado[3]~output_o\ : std_logic;
SIGNAL \resultado[4]~output_o\ : std_logic;
SIGNAL \resultado[5]~output_o\ : std_logic;
SIGNAL \resultado[6]~output_o\ : std_logic;
SIGNAL \resultado[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rstsystem~input_o\ : std_logic;
SIGNAL \rstsystem~inputclkctrl_outclk\ : std_logic;
SIGNAL \maquina_estado|estado_atual.estado3~q\ : std_logic;
SIGNAL \maquina_estado|estado_atual.estado4~q\ : std_logic;
SIGNAL \maquina_estado|estado_atual.estado5~feeder_combout\ : std_logic;
SIGNAL \maquina_estado|estado_atual.estado5~q\ : std_logic;
SIGNAL \entrada[7]~input_o\ : std_logic;
SIGNAL \som1|Add0~17\ : std_logic;
SIGNAL \som1|Add0~19_combout\ : std_logic;
SIGNAL \som1|Add0~21_combout\ : std_logic;
SIGNAL \maquina_estado|estado_atual.estado1~feeder_combout\ : std_logic;
SIGNAL \maquina_estado|estado_atual.estado1~q\ : std_logic;
SIGNAL \R6|q[0]~0_combout\ : std_logic;
SIGNAL \som1|Add0~20\ : std_logic;
SIGNAL \som1|Add0~22_combout\ : std_logic;
SIGNAL \som1|Add0~24_combout\ : std_logic;
SIGNAL \som1|Add0~23\ : std_logic;
SIGNAL \som1|Add0~25_combout\ : std_logic;
SIGNAL \som1|Add0~27_combout\ : std_logic;
SIGNAL \som1|Add0~26\ : std_logic;
SIGNAL \som1|Add0~28_combout\ : std_logic;
SIGNAL \som1|Add0~30_combout\ : std_logic;
SIGNAL \som1|Add0~29\ : std_logic;
SIGNAL \som1|Add0~31_combout\ : std_logic;
SIGNAL \som1|Add0~33_combout\ : std_logic;
SIGNAL \som1|Add0~32\ : std_logic;
SIGNAL \som1|Add0~34_combout\ : std_logic;
SIGNAL \som1|Add0~36_combout\ : std_logic;
SIGNAL \som1|Add0~35\ : std_logic;
SIGNAL \som1|Add0~37_combout\ : std_logic;
SIGNAL \som1|Add0~39_combout\ : std_logic;
SIGNAL \m5|Mux0~16_combout\ : std_logic;
SIGNAL \som1|Add0~48_combout\ : std_logic;
SIGNAL \som1|Add0~68_combout\ : std_logic;
SIGNAL \R7|q[7]~0_combout\ : std_logic;
SIGNAL \som1|Add0~49\ : std_logic;
SIGNAL \som1|Add0~50_combout\ : std_logic;
SIGNAL \som1|Add0~67_combout\ : std_logic;
SIGNAL \som1|Add0~51\ : std_logic;
SIGNAL \som1|Add0~52_combout\ : std_logic;
SIGNAL \som1|Add0~66_combout\ : std_logic;
SIGNAL \som1|Add0~53\ : std_logic;
SIGNAL \som1|Add0~54_combout\ : std_logic;
SIGNAL \som1|Add0~65_combout\ : std_logic;
SIGNAL \som1|Add0~55\ : std_logic;
SIGNAL \som1|Add0~56_combout\ : std_logic;
SIGNAL \som1|Add0~64_combout\ : std_logic;
SIGNAL \som1|Add0~57\ : std_logic;
SIGNAL \som1|Add0~58_combout\ : std_logic;
SIGNAL \som1|Add0~63_combout\ : std_logic;
SIGNAL \som1|Add0~59\ : std_logic;
SIGNAL \som1|Add0~60_combout\ : std_logic;
SIGNAL \som1|Add0~62_combout\ : std_logic;
SIGNAL \m4|Selector0~0_combout\ : std_logic;
SIGNAL \m4|Selector1~0_combout\ : std_logic;
SIGNAL \m4|Selector2~0_combout\ : std_logic;
SIGNAL \m4|Selector3~0_combout\ : std_logic;
SIGNAL \m4|Selector4~0_combout\ : std_logic;
SIGNAL \m4|Selector5~0_combout\ : std_logic;
SIGNAL \m4|Selector6~0_combout\ : std_logic;
SIGNAL \maquina_estado|m4ctrl~combout\ : std_logic;
SIGNAL \som1|result[0]~0_combout\ : std_logic;
SIGNAL \som1|Add0~47_combout\ : std_logic;
SIGNAL \R5|q[7]~0_combout\ : std_logic;
SIGNAL \m5|Mux7~16_combout\ : std_logic;
SIGNAL \som1|result[0]~1\ : std_logic;
SIGNAL \som1|result[1]~2_combout\ : std_logic;
SIGNAL \som1|Add0~46_combout\ : std_logic;
SIGNAL \m5|Mux6~16_combout\ : std_logic;
SIGNAL \som1|result[1]~3\ : std_logic;
SIGNAL \som1|result[2]~4_combout\ : std_logic;
SIGNAL \som1|Add0~45_combout\ : std_logic;
SIGNAL \m5|Mux5~16_combout\ : std_logic;
SIGNAL \som1|result[2]~5\ : std_logic;
SIGNAL \som1|result[3]~6_combout\ : std_logic;
SIGNAL \som1|Add0~44_combout\ : std_logic;
SIGNAL \m5|Mux4~16_combout\ : std_logic;
SIGNAL \som1|result[3]~7\ : std_logic;
SIGNAL \som1|result[4]~8_combout\ : std_logic;
SIGNAL \som1|Add0~43_combout\ : std_logic;
SIGNAL \m5|Mux3~16_combout\ : std_logic;
SIGNAL \som1|result[4]~9\ : std_logic;
SIGNAL \som1|result[5]~10_combout\ : std_logic;
SIGNAL \som1|Add0~42_combout\ : std_logic;
SIGNAL \m5|Mux2~16_combout\ : std_logic;
SIGNAL \som1|result[5]~11\ : std_logic;
SIGNAL \som1|result[6]~12_combout\ : std_logic;
SIGNAL \som1|Add0~41_combout\ : std_logic;
SIGNAL \m5|Mux1~16_combout\ : std_logic;
SIGNAL \som1|result[6]~13\ : std_logic;
SIGNAL \som1|result[7]~14_combout\ : std_logic;
SIGNAL \som1|Add0~40_combout\ : std_logic;
SIGNAL \entrada[6]~input_o\ : std_logic;
SIGNAL \entrada[5]~input_o\ : std_logic;
SIGNAL \entrada[4]~input_o\ : std_logic;
SIGNAL \entrada[3]~input_o\ : std_logic;
SIGNAL \entrada[2]~input_o\ : std_logic;
SIGNAL \entrada[1]~input_o\ : std_logic;
SIGNAL \entrada[0]~input_o\ : std_logic;
SIGNAL \c1|LessThan0~1_cout\ : std_logic;
SIGNAL \c1|LessThan0~3_cout\ : std_logic;
SIGNAL \c1|LessThan0~5_cout\ : std_logic;
SIGNAL \c1|LessThan0~7_cout\ : std_logic;
SIGNAL \c1|LessThan0~9_cout\ : std_logic;
SIGNAL \c1|LessThan0~11_cout\ : std_logic;
SIGNAL \c1|LessThan0~13_cout\ : std_logic;
SIGNAL \c1|LessThan0~14_combout\ : std_logic;
SIGNAL \maquina_estado|Selector0~0_combout\ : std_logic;
SIGNAL \maquina_estado|estado_atual.estado2~q\ : std_logic;
SIGNAL \som1|Add0~16_combout\ : std_logic;
SIGNAL \som1|Add0~18_combout\ : std_logic;
SIGNAL \R7|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \R6|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \R5|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \maquina_estado|ALT_INV_estado_atual.estado1~q\ : std_logic;
SIGNAL \ALT_INV_rstsystem~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_entrada <= entrada;
ww_clk <= clk;
ww_rstsystem <= rstsystem;
resultado <= ww_resultado;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rstsystem~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rstsystem~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\maquina_estado|ALT_INV_estado_atual.estado1~q\ <= NOT \maquina_estado|estado_atual.estado1~q\;
\ALT_INV_rstsystem~inputclkctrl_outclk\ <= NOT \rstsystem~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X23_Y24_N16
\resultado[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R6|q\(0),
	devoe => ww_devoe,
	o => \resultado[0]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\resultado[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R6|q\(1),
	devoe => ww_devoe,
	o => \resultado[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\resultado[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R6|q\(2),
	devoe => ww_devoe,
	o => \resultado[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\resultado[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R6|q\(3),
	devoe => ww_devoe,
	o => \resultado[3]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\resultado[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R6|q\(4),
	devoe => ww_devoe,
	o => \resultado[4]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\resultado[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R6|q\(5),
	devoe => ww_devoe,
	o => \resultado[5]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\resultado[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R6|q\(6),
	devoe => ww_devoe,
	o => \resultado[6]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\resultado[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R6|q\(7),
	devoe => ww_devoe,
	o => \resultado[7]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y11_N15
\rstsystem~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rstsystem,
	o => \rstsystem~input_o\);

-- Location: CLKCTRL_G4
\rstsystem~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rstsystem~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rstsystem~inputclkctrl_outclk\);

-- Location: FF_X31_Y21_N27
\maquina_estado|estado_atual.estado3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \maquina_estado|estado_atual.estado2~q\,
	clrn => \ALT_INV_rstsystem~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquina_estado|estado_atual.estado3~q\);

-- Location: FF_X31_Y21_N25
\maquina_estado|estado_atual.estado4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \maquina_estado|estado_atual.estado3~q\,
	clrn => \ALT_INV_rstsystem~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquina_estado|estado_atual.estado4~q\);

-- Location: LCCOMB_X33_Y21_N30
\maquina_estado|estado_atual.estado5~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_estado|estado_atual.estado5~feeder_combout\ = \maquina_estado|estado_atual.estado4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \maquina_estado|estado_atual.estado4~q\,
	combout => \maquina_estado|estado_atual.estado5~feeder_combout\);

-- Location: FF_X33_Y21_N31
\maquina_estado|estado_atual.estado5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \maquina_estado|estado_atual.estado5~feeder_combout\,
	clrn => \ALT_INV_rstsystem~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquina_estado|estado_atual.estado5~q\);

-- Location: IOIBUF_X34_Y17_N22
\entrada[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(7),
	o => \entrada[7]~input_o\);

-- Location: LCCOMB_X28_Y21_N12
\som1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~16_combout\ = \R6|q\(0) $ (VCC)
-- \som1|Add0~17\ = CARRY(\R6|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R6|q\(0),
	datad => VCC,
	combout => \som1|Add0~16_combout\,
	cout => \som1|Add0~17\);

-- Location: LCCOMB_X28_Y21_N14
\som1|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~19_combout\ = (\R6|q\(1) & (!\som1|Add0~17\)) # (!\R6|q\(1) & ((\som1|Add0~17\) # (GND)))
-- \som1|Add0~20\ = CARRY((!\som1|Add0~17\) # (!\R6|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \R6|q\(1),
	datad => VCC,
	cin => \som1|Add0~17\,
	combout => \som1|Add0~19_combout\,
	cout => \som1|Add0~20\);

-- Location: LCCOMB_X29_Y21_N28
\som1|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~21_combout\ = (\maquina_estado|estado_atual.estado2~q\ & \som1|Add0~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_estado|estado_atual.estado2~q\,
	datad => \som1|Add0~19_combout\,
	combout => \som1|Add0~21_combout\);

-- Location: LCCOMB_X33_Y21_N8
\maquina_estado|estado_atual.estado1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_estado|estado_atual.estado1~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \maquina_estado|estado_atual.estado1~feeder_combout\);

-- Location: FF_X33_Y21_N9
\maquina_estado|estado_atual.estado1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \maquina_estado|estado_atual.estado1~feeder_combout\,
	clrn => \ALT_INV_rstsystem~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquina_estado|estado_atual.estado1~q\);

-- Location: LCCOMB_X29_Y21_N30
\R6|q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R6|q[0]~0_combout\ = (\maquina_estado|estado_atual.estado2~q\) # (!\maquina_estado|estado_atual.estado1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maquina_estado|estado_atual.estado1~q\,
	datad => \maquina_estado|estado_atual.estado2~q\,
	combout => \R6|q[0]~0_combout\);

-- Location: FF_X29_Y21_N29
\R6|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \som1|Add0~21_combout\,
	sclr => \maquina_estado|ALT_INV_estado_atual.estado1~q\,
	ena => \R6|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R6|q\(1));

-- Location: LCCOMB_X28_Y21_N16
\som1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~22_combout\ = (\R6|q\(2) & (\som1|Add0~20\ $ (GND))) # (!\R6|q\(2) & (!\som1|Add0~20\ & VCC))
-- \som1|Add0~23\ = CARRY((\R6|q\(2) & !\som1|Add0~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \R6|q\(2),
	datad => VCC,
	cin => \som1|Add0~20\,
	combout => \som1|Add0~22_combout\,
	cout => \som1|Add0~23\);

-- Location: LCCOMB_X29_Y21_N26
\som1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~24_combout\ = (\som1|Add0~22_combout\ & \maquina_estado|estado_atual.estado2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \som1|Add0~22_combout\,
	datad => \maquina_estado|estado_atual.estado2~q\,
	combout => \som1|Add0~24_combout\);

-- Location: FF_X29_Y21_N27
\R6|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \som1|Add0~24_combout\,
	sclr => \maquina_estado|ALT_INV_estado_atual.estado1~q\,
	ena => \R6|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R6|q\(2));

-- Location: LCCOMB_X28_Y21_N18
\som1|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~25_combout\ = (\R6|q\(3) & (!\som1|Add0~23\)) # (!\R6|q\(3) & ((\som1|Add0~23\) # (GND)))
-- \som1|Add0~26\ = CARRY((!\som1|Add0~23\) # (!\R6|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \R6|q\(3),
	datad => VCC,
	cin => \som1|Add0~23\,
	combout => \som1|Add0~25_combout\,
	cout => \som1|Add0~26\);

-- Location: LCCOMB_X28_Y21_N6
\som1|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~27_combout\ = (\maquina_estado|estado_atual.estado2~q\ & \som1|Add0~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_estado|estado_atual.estado2~q\,
	datad => \som1|Add0~25_combout\,
	combout => \som1|Add0~27_combout\);

-- Location: FF_X28_Y21_N7
\R6|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \som1|Add0~27_combout\,
	sclr => \maquina_estado|ALT_INV_estado_atual.estado1~q\,
	ena => \R6|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R6|q\(3));

-- Location: LCCOMB_X28_Y21_N20
\som1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~28_combout\ = (\R6|q\(4) & (\som1|Add0~26\ $ (GND))) # (!\R6|q\(4) & (!\som1|Add0~26\ & VCC))
-- \som1|Add0~29\ = CARRY((\R6|q\(4) & !\som1|Add0~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \R6|q\(4),
	datad => VCC,
	cin => \som1|Add0~26\,
	combout => \som1|Add0~28_combout\,
	cout => \som1|Add0~29\);

-- Location: LCCOMB_X29_Y21_N20
\som1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~30_combout\ = (\maquina_estado|estado_atual.estado2~q\ & \som1|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_estado|estado_atual.estado2~q\,
	datad => \som1|Add0~28_combout\,
	combout => \som1|Add0~30_combout\);

-- Location: FF_X29_Y21_N21
\R6|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \som1|Add0~30_combout\,
	sclr => \maquina_estado|ALT_INV_estado_atual.estado1~q\,
	ena => \R6|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R6|q\(4));

-- Location: LCCOMB_X28_Y21_N22
\som1|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~31_combout\ = (\R6|q\(5) & (!\som1|Add0~29\)) # (!\R6|q\(5) & ((\som1|Add0~29\) # (GND)))
-- \som1|Add0~32\ = CARRY((!\som1|Add0~29\) # (!\R6|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \R6|q\(5),
	datad => VCC,
	cin => \som1|Add0~29\,
	combout => \som1|Add0~31_combout\,
	cout => \som1|Add0~32\);

-- Location: LCCOMB_X29_Y21_N6
\som1|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~33_combout\ = (\maquina_estado|estado_atual.estado2~q\ & \som1|Add0~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_estado|estado_atual.estado2~q\,
	datad => \som1|Add0~31_combout\,
	combout => \som1|Add0~33_combout\);

-- Location: FF_X29_Y21_N7
\R6|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \som1|Add0~33_combout\,
	sclr => \maquina_estado|ALT_INV_estado_atual.estado1~q\,
	ena => \R6|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R6|q\(5));

-- Location: LCCOMB_X28_Y21_N24
\som1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~34_combout\ = (\R6|q\(6) & (\som1|Add0~32\ $ (GND))) # (!\R6|q\(6) & (!\som1|Add0~32\ & VCC))
-- \som1|Add0~35\ = CARRY((\R6|q\(6) & !\som1|Add0~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \R6|q\(6),
	datad => VCC,
	cin => \som1|Add0~32\,
	combout => \som1|Add0~34_combout\,
	cout => \som1|Add0~35\);

-- Location: LCCOMB_X29_Y21_N8
\som1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~36_combout\ = (\maquina_estado|estado_atual.estado2~q\ & \som1|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_estado|estado_atual.estado2~q\,
	datad => \som1|Add0~34_combout\,
	combout => \som1|Add0~36_combout\);

-- Location: FF_X29_Y21_N9
\R6|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \som1|Add0~36_combout\,
	sclr => \maquina_estado|ALT_INV_estado_atual.estado1~q\,
	ena => \R6|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R6|q\(6));

-- Location: LCCOMB_X28_Y21_N26
\som1|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~37_combout\ = \R6|q\(7) $ (\som1|Add0~35\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \R6|q\(7),
	cin => \som1|Add0~35\,
	combout => \som1|Add0~37_combout\);

-- Location: LCCOMB_X28_Y21_N4
\som1|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~39_combout\ = (\som1|Add0~37_combout\ & \maquina_estado|estado_atual.estado2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \som1|Add0~37_combout\,
	datad => \maquina_estado|estado_atual.estado2~q\,
	combout => \som1|Add0~39_combout\);

-- Location: FF_X28_Y21_N5
\R6|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \som1|Add0~39_combout\,
	sclr => \maquina_estado|ALT_INV_estado_atual.estado1~q\,
	ena => \R6|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R6|q\(7));

-- Location: LCCOMB_X29_Y21_N24
\m5|Mux0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \m5|Mux0~16_combout\ = (!\maquina_estado|estado_atual.estado3~q\ & ((\maquina_estado|estado_atual.estado2~q\ & (\R6|q\(7))) # (!\maquina_estado|estado_atual.estado2~q\ & ((\R5|q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_estado|estado_atual.estado3~q\,
	datab => \R6|q\(7),
	datac => \R5|q\(7),
	datad => \maquina_estado|estado_atual.estado2~q\,
	combout => \m5|Mux0~16_combout\);

-- Location: LCCOMB_X32_Y21_N8
\som1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~48_combout\ = \R7|q\(1) $ (VCC)
-- \som1|Add0~49\ = CARRY(\R7|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R7|q\(1),
	datad => VCC,
	combout => \som1|Add0~48_combout\,
	cout => \som1|Add0~49\);

-- Location: LCCOMB_X32_Y21_N4
\som1|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~68_combout\ = (\som1|Add0~48_combout\) # (!\maquina_estado|estado_atual.estado3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_estado|estado_atual.estado3~q\,
	datac => \som1|Add0~48_combout\,
	combout => \som1|Add0~68_combout\);

-- Location: LCCOMB_X33_Y21_N26
\R7|q[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R7|q[7]~0_combout\ = (\maquina_estado|estado_atual.estado3~q\) # (!\maquina_estado|estado_atual.estado1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maquina_estado|estado_atual.estado1~q\,
	datad => \maquina_estado|estado_atual.estado3~q\,
	combout => \R7|q[7]~0_combout\);

-- Location: FF_X32_Y21_N5
\R7|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \som1|Add0~68_combout\,
	sclr => \maquina_estado|ALT_INV_estado_atual.estado1~q\,
	ena => \R7|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R7|q\(1));

-- Location: LCCOMB_X32_Y21_N10
\som1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~50_combout\ = (\R7|q\(2) & (!\som1|Add0~49\)) # (!\R7|q\(2) & ((\som1|Add0~49\) # (GND)))
-- \som1|Add0~51\ = CARRY((!\som1|Add0~49\) # (!\R7|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \R7|q\(2),
	datad => VCC,
	cin => \som1|Add0~49\,
	combout => \som1|Add0~50_combout\,
	cout => \som1|Add0~51\);

-- Location: LCCOMB_X32_Y21_N26
\som1|Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~67_combout\ = (\maquina_estado|estado_atual.estado3~q\ & \som1|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maquina_estado|estado_atual.estado3~q\,
	datad => \som1|Add0~50_combout\,
	combout => \som1|Add0~67_combout\);

-- Location: FF_X32_Y21_N27
\R7|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \som1|Add0~67_combout\,
	sclr => \maquina_estado|ALT_INV_estado_atual.estado1~q\,
	ena => \R7|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R7|q\(2));

-- Location: LCCOMB_X32_Y21_N12
\som1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~52_combout\ = (\R7|q\(3) & (\som1|Add0~51\ $ (GND))) # (!\R7|q\(3) & (!\som1|Add0~51\ & VCC))
-- \som1|Add0~53\ = CARRY((\R7|q\(3) & !\som1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \R7|q\(3),
	datad => VCC,
	cin => \som1|Add0~51\,
	combout => \som1|Add0~52_combout\,
	cout => \som1|Add0~53\);

-- Location: LCCOMB_X32_Y21_N0
\som1|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~66_combout\ = (\maquina_estado|estado_atual.estado3~q\ & \som1|Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maquina_estado|estado_atual.estado3~q\,
	datad => \som1|Add0~52_combout\,
	combout => \som1|Add0~66_combout\);

-- Location: FF_X32_Y21_N1
\R7|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \som1|Add0~66_combout\,
	sclr => \maquina_estado|ALT_INV_estado_atual.estado1~q\,
	ena => \R7|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R7|q\(3));

-- Location: LCCOMB_X32_Y21_N14
\som1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~54_combout\ = (\R7|q\(4) & (!\som1|Add0~53\)) # (!\R7|q\(4) & ((\som1|Add0~53\) # (GND)))
-- \som1|Add0~55\ = CARRY((!\som1|Add0~53\) # (!\R7|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \R7|q\(4),
	datad => VCC,
	cin => \som1|Add0~53\,
	combout => \som1|Add0~54_combout\,
	cout => \som1|Add0~55\);

-- Location: LCCOMB_X32_Y21_N2
\som1|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~65_combout\ = (\maquina_estado|estado_atual.estado3~q\ & \som1|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_estado|estado_atual.estado3~q\,
	datac => \som1|Add0~54_combout\,
	combout => \som1|Add0~65_combout\);

-- Location: FF_X32_Y21_N3
\R7|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \som1|Add0~65_combout\,
	sclr => \maquina_estado|ALT_INV_estado_atual.estado1~q\,
	ena => \R7|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R7|q\(4));

-- Location: LCCOMB_X32_Y21_N16
\som1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~56_combout\ = (\R7|q\(5) & (\som1|Add0~55\ $ (GND))) # (!\R7|q\(5) & (!\som1|Add0~55\ & VCC))
-- \som1|Add0~57\ = CARRY((\R7|q\(5) & !\som1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \R7|q\(5),
	datad => VCC,
	cin => \som1|Add0~55\,
	combout => \som1|Add0~56_combout\,
	cout => \som1|Add0~57\);

-- Location: LCCOMB_X32_Y21_N30
\som1|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~64_combout\ = (\maquina_estado|estado_atual.estado3~q\ & \som1|Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maquina_estado|estado_atual.estado3~q\,
	datad => \som1|Add0~56_combout\,
	combout => \som1|Add0~64_combout\);

-- Location: FF_X32_Y21_N31
\R7|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \som1|Add0~64_combout\,
	sclr => \maquina_estado|ALT_INV_estado_atual.estado1~q\,
	ena => \R7|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R7|q\(5));

-- Location: LCCOMB_X32_Y21_N18
\som1|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~58_combout\ = (\R7|q\(6) & (!\som1|Add0~57\)) # (!\R7|q\(6) & ((\som1|Add0~57\) # (GND)))
-- \som1|Add0~59\ = CARRY((!\som1|Add0~57\) # (!\R7|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \R7|q\(6),
	datad => VCC,
	cin => \som1|Add0~57\,
	combout => \som1|Add0~58_combout\,
	cout => \som1|Add0~59\);

-- Location: LCCOMB_X32_Y21_N24
\som1|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~63_combout\ = (\maquina_estado|estado_atual.estado3~q\ & \som1|Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maquina_estado|estado_atual.estado3~q\,
	datad => \som1|Add0~58_combout\,
	combout => \som1|Add0~63_combout\);

-- Location: FF_X32_Y21_N25
\R7|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \som1|Add0~63_combout\,
	sclr => \maquina_estado|ALT_INV_estado_atual.estado1~q\,
	ena => \R7|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R7|q\(6));

-- Location: LCCOMB_X32_Y21_N20
\som1|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~60_combout\ = \R7|q\(7) $ (!\som1|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \R7|q\(7),
	cin => \som1|Add0~59\,
	combout => \som1|Add0~60_combout\);

-- Location: LCCOMB_X32_Y21_N22
\som1|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~62_combout\ = (\maquina_estado|estado_atual.estado3~q\ & \som1|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maquina_estado|estado_atual.estado3~q\,
	datad => \som1|Add0~60_combout\,
	combout => \som1|Add0~62_combout\);

-- Location: FF_X32_Y21_N23
\R7|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \som1|Add0~62_combout\,
	sclr => \maquina_estado|ALT_INV_estado_atual.estado1~q\,
	ena => \R7|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R7|q\(7));

-- Location: LCCOMB_X29_Y21_N10
\m4|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m4|Selector0~0_combout\ = (\R7|q\(7) & ((\maquina_estado|estado_atual.estado3~q\) # (\maquina_estado|estado_atual.estado4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_estado|estado_atual.estado3~q\,
	datac => \R7|q\(7),
	datad => \maquina_estado|estado_atual.estado4~q\,
	combout => \m4|Selector0~0_combout\);

-- Location: LCCOMB_X31_Y21_N24
\m4|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m4|Selector1~0_combout\ = (\R7|q\(6) & ((\maquina_estado|estado_atual.estado3~q\) # (\maquina_estado|estado_atual.estado4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_estado|estado_atual.estado3~q\,
	datac => \maquina_estado|estado_atual.estado4~q\,
	datad => \R7|q\(6),
	combout => \m4|Selector1~0_combout\);

-- Location: LCCOMB_X32_Y21_N6
\m4|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m4|Selector2~0_combout\ = (\R7|q\(5) & ((\maquina_estado|estado_atual.estado3~q\) # (\maquina_estado|estado_atual.estado4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R7|q\(5),
	datac => \maquina_estado|estado_atual.estado3~q\,
	datad => \maquina_estado|estado_atual.estado4~q\,
	combout => \m4|Selector2~0_combout\);

-- Location: LCCOMB_X31_Y21_N26
\m4|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m4|Selector3~0_combout\ = (\R7|q\(4) & ((\maquina_estado|estado_atual.estado4~q\) # (\maquina_estado|estado_atual.estado3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maquina_estado|estado_atual.estado4~q\,
	datac => \maquina_estado|estado_atual.estado3~q\,
	datad => \R7|q\(4),
	combout => \m4|Selector3~0_combout\);

-- Location: LCCOMB_X31_Y21_N20
\m4|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m4|Selector4~0_combout\ = (\R7|q\(3) & ((\maquina_estado|estado_atual.estado3~q\) # (\maquina_estado|estado_atual.estado4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_estado|estado_atual.estado3~q\,
	datac => \R7|q\(3),
	datad => \maquina_estado|estado_atual.estado4~q\,
	combout => \m4|Selector4~0_combout\);

-- Location: LCCOMB_X31_Y21_N16
\m4|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m4|Selector5~0_combout\ = (\R7|q\(2) & ((\maquina_estado|estado_atual.estado4~q\) # (\maquina_estado|estado_atual.estado3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maquina_estado|estado_atual.estado4~q\,
	datac => \maquina_estado|estado_atual.estado3~q\,
	datad => \R7|q\(2),
	combout => \m4|Selector5~0_combout\);

-- Location: LCCOMB_X31_Y21_N18
\m4|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m4|Selector6~0_combout\ = (\R7|q\(1) & ((\maquina_estado|estado_atual.estado4~q\) # (\maquina_estado|estado_atual.estado3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maquina_estado|estado_atual.estado4~q\,
	datac => \maquina_estado|estado_atual.estado3~q\,
	datad => \R7|q\(1),
	combout => \m4|Selector6~0_combout\);

-- Location: LCCOMB_X31_Y21_N28
\maquina_estado|m4ctrl\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_estado|m4ctrl~combout\ = (\maquina_estado|estado_atual.estado3~q\) # (\maquina_estado|estado_atual.estado4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maquina_estado|estado_atual.estado3~q\,
	datad => \maquina_estado|estado_atual.estado4~q\,
	combout => \maquina_estado|m4ctrl~combout\);

-- Location: LCCOMB_X30_Y21_N14
\som1|result[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|result[0]~0_combout\ = (\m5|Mux7~16_combout\ & (\maquina_estado|m4ctrl~combout\ $ (GND))) # (!\m5|Mux7~16_combout\ & (!\maquina_estado|m4ctrl~combout\ & VCC))
-- \som1|result[0]~1\ = CARRY((\m5|Mux7~16_combout\ & !\maquina_estado|m4ctrl~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m5|Mux7~16_combout\,
	datab => \maquina_estado|m4ctrl~combout\,
	datad => VCC,
	combout => \som1|result[0]~0_combout\,
	cout => \som1|result[0]~1\);

-- Location: LCCOMB_X32_Y21_N28
\som1|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~47_combout\ = (\som1|result[0]~0_combout\ & ((\maquina_estado|estado_atual.estado4~q\) # (\maquina_estado|estado_atual.estado5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maquina_estado|estado_atual.estado4~q\,
	datac => \maquina_estado|estado_atual.estado5~q\,
	datad => \som1|result[0]~0_combout\,
	combout => \som1|Add0~47_combout\);

-- Location: LCCOMB_X33_Y21_N28
\R5|q[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \R5|q[7]~0_combout\ = (\maquina_estado|estado_atual.estado5~q\) # ((\maquina_estado|estado_atual.estado4~q\) # (!\maquina_estado|estado_atual.estado1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_estado|estado_atual.estado5~q\,
	datac => \maquina_estado|estado_atual.estado1~q\,
	datad => \maquina_estado|estado_atual.estado4~q\,
	combout => \R5|q[7]~0_combout\);

-- Location: FF_X32_Y21_N29
\R5|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \som1|Add0~47_combout\,
	sclr => \maquina_estado|ALT_INV_estado_atual.estado1~q\,
	ena => \R5|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R5|q\(0));

-- Location: LCCOMB_X31_Y21_N30
\m5|Mux7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \m5|Mux7~16_combout\ = (!\maquina_estado|estado_atual.estado3~q\ & ((\maquina_estado|estado_atual.estado2~q\ & (\R6|q\(0))) # (!\maquina_estado|estado_atual.estado2~q\ & ((\R5|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_estado|estado_atual.estado3~q\,
	datab => \maquina_estado|estado_atual.estado2~q\,
	datac => \R6|q\(0),
	datad => \R5|q\(0),
	combout => \m5|Mux7~16_combout\);

-- Location: LCCOMB_X30_Y21_N16
\som1|result[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|result[1]~2_combout\ = (\m5|Mux6~16_combout\ & ((\m4|Selector6~0_combout\ & (\som1|result[0]~1\ & VCC)) # (!\m4|Selector6~0_combout\ & (!\som1|result[0]~1\)))) # (!\m5|Mux6~16_combout\ & ((\m4|Selector6~0_combout\ & (!\som1|result[0]~1\)) # 
-- (!\m4|Selector6~0_combout\ & ((\som1|result[0]~1\) # (GND)))))
-- \som1|result[1]~3\ = CARRY((\m5|Mux6~16_combout\ & (!\m4|Selector6~0_combout\ & !\som1|result[0]~1\)) # (!\m5|Mux6~16_combout\ & ((!\som1|result[0]~1\) # (!\m4|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m5|Mux6~16_combout\,
	datab => \m4|Selector6~0_combout\,
	datad => VCC,
	cin => \som1|result[0]~1\,
	combout => \som1|result[1]~2_combout\,
	cout => \som1|result[1]~3\);

-- Location: LCCOMB_X30_Y21_N4
\som1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~46_combout\ = (\som1|result[1]~2_combout\ & ((\maquina_estado|estado_atual.estado5~q\) # (\maquina_estado|estado_atual.estado4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maquina_estado|estado_atual.estado5~q\,
	datac => \maquina_estado|estado_atual.estado4~q\,
	datad => \som1|result[1]~2_combout\,
	combout => \som1|Add0~46_combout\);

-- Location: FF_X30_Y21_N5
\R5|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \som1|Add0~46_combout\,
	sclr => \maquina_estado|ALT_INV_estado_atual.estado1~q\,
	ena => \R5|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R5|q\(1));

-- Location: LCCOMB_X29_Y21_N16
\m5|Mux6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \m5|Mux6~16_combout\ = (\maquina_estado|estado_atual.estado3~q\) # ((\maquina_estado|estado_atual.estado2~q\ & ((\R6|q\(1)))) # (!\maquina_estado|estado_atual.estado2~q\ & (\R5|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R5|q\(1),
	datab => \R6|q\(1),
	datac => \maquina_estado|estado_atual.estado3~q\,
	datad => \maquina_estado|estado_atual.estado2~q\,
	combout => \m5|Mux6~16_combout\);

-- Location: LCCOMB_X30_Y21_N18
\som1|result[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|result[2]~4_combout\ = ((\m5|Mux5~16_combout\ $ (\m4|Selector5~0_combout\ $ (!\som1|result[1]~3\)))) # (GND)
-- \som1|result[2]~5\ = CARRY((\m5|Mux5~16_combout\ & ((\m4|Selector5~0_combout\) # (!\som1|result[1]~3\))) # (!\m5|Mux5~16_combout\ & (\m4|Selector5~0_combout\ & !\som1|result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m5|Mux5~16_combout\,
	datab => \m4|Selector5~0_combout\,
	datad => VCC,
	cin => \som1|result[1]~3\,
	combout => \som1|result[2]~4_combout\,
	cout => \som1|result[2]~5\);

-- Location: LCCOMB_X30_Y21_N30
\som1|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~45_combout\ = (\som1|result[2]~4_combout\) # ((!\maquina_estado|estado_atual.estado5~q\ & !\maquina_estado|estado_atual.estado4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maquina_estado|estado_atual.estado5~q\,
	datac => \maquina_estado|estado_atual.estado4~q\,
	datad => \som1|result[2]~4_combout\,
	combout => \som1|Add0~45_combout\);

-- Location: FF_X30_Y21_N31
\R5|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \som1|Add0~45_combout\,
	sclr => \maquina_estado|ALT_INV_estado_atual.estado1~q\,
	ena => \R5|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R5|q\(2));

-- Location: LCCOMB_X29_Y21_N2
\m5|Mux5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \m5|Mux5~16_combout\ = (!\maquina_estado|estado_atual.estado3~q\ & ((\maquina_estado|estado_atual.estado2~q\ & ((\R6|q\(2)))) # (!\maquina_estado|estado_atual.estado2~q\ & (\R5|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R5|q\(2),
	datab => \R6|q\(2),
	datac => \maquina_estado|estado_atual.estado3~q\,
	datad => \maquina_estado|estado_atual.estado2~q\,
	combout => \m5|Mux5~16_combout\);

-- Location: LCCOMB_X30_Y21_N20
\som1|result[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|result[3]~6_combout\ = (\m4|Selector4~0_combout\ & ((\m5|Mux4~16_combout\ & (\som1|result[2]~5\ & VCC)) # (!\m5|Mux4~16_combout\ & (!\som1|result[2]~5\)))) # (!\m4|Selector4~0_combout\ & ((\m5|Mux4~16_combout\ & (!\som1|result[2]~5\)) # 
-- (!\m5|Mux4~16_combout\ & ((\som1|result[2]~5\) # (GND)))))
-- \som1|result[3]~7\ = CARRY((\m4|Selector4~0_combout\ & (!\m5|Mux4~16_combout\ & !\som1|result[2]~5\)) # (!\m4|Selector4~0_combout\ & ((!\som1|result[2]~5\) # (!\m5|Mux4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m4|Selector4~0_combout\,
	datab => \m5|Mux4~16_combout\,
	datad => VCC,
	cin => \som1|result[2]~5\,
	combout => \som1|result[3]~6_combout\,
	cout => \som1|result[3]~7\);

-- Location: LCCOMB_X30_Y21_N0
\som1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~44_combout\ = (\som1|result[3]~6_combout\ & ((\maquina_estado|estado_atual.estado5~q\) # (\maquina_estado|estado_atual.estado4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maquina_estado|estado_atual.estado5~q\,
	datac => \maquina_estado|estado_atual.estado4~q\,
	datad => \som1|result[3]~6_combout\,
	combout => \som1|Add0~44_combout\);

-- Location: FF_X30_Y21_N1
\R5|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \som1|Add0~44_combout\,
	sclr => \maquina_estado|ALT_INV_estado_atual.estado1~q\,
	ena => \R5|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R5|q\(3));

-- Location: LCCOMB_X30_Y21_N2
\m5|Mux4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \m5|Mux4~16_combout\ = (!\maquina_estado|estado_atual.estado3~q\ & ((\maquina_estado|estado_atual.estado2~q\ & (\R6|q\(3))) # (!\maquina_estado|estado_atual.estado2~q\ & ((\R5|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R6|q\(3),
	datab => \R5|q\(3),
	datac => \maquina_estado|estado_atual.estado2~q\,
	datad => \maquina_estado|estado_atual.estado3~q\,
	combout => \m5|Mux4~16_combout\);

-- Location: LCCOMB_X30_Y21_N22
\som1|result[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|result[4]~8_combout\ = ((\m5|Mux3~16_combout\ $ (\m4|Selector3~0_combout\ $ (!\som1|result[3]~7\)))) # (GND)
-- \som1|result[4]~9\ = CARRY((\m5|Mux3~16_combout\ & ((\m4|Selector3~0_combout\) # (!\som1|result[3]~7\))) # (!\m5|Mux3~16_combout\ & (\m4|Selector3~0_combout\ & !\som1|result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m5|Mux3~16_combout\,
	datab => \m4|Selector3~0_combout\,
	datad => VCC,
	cin => \som1|result[3]~7\,
	combout => \som1|result[4]~8_combout\,
	cout => \som1|result[4]~9\);

-- Location: LCCOMB_X30_Y21_N10
\som1|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~43_combout\ = (\som1|result[4]~8_combout\ & ((\maquina_estado|estado_atual.estado4~q\) # (\maquina_estado|estado_atual.estado5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maquina_estado|estado_atual.estado4~q\,
	datac => \som1|result[4]~8_combout\,
	datad => \maquina_estado|estado_atual.estado5~q\,
	combout => \som1|Add0~43_combout\);

-- Location: FF_X30_Y21_N11
\R5|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \som1|Add0~43_combout\,
	sclr => \maquina_estado|ALT_INV_estado_atual.estado1~q\,
	ena => \R5|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R5|q\(4));

-- Location: LCCOMB_X29_Y21_N12
\m5|Mux3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \m5|Mux3~16_combout\ = (!\maquina_estado|estado_atual.estado3~q\ & ((\maquina_estado|estado_atual.estado2~q\ & (\R6|q\(4))) # (!\maquina_estado|estado_atual.estado2~q\ & ((\R5|q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_estado|estado_atual.estado3~q\,
	datab => \R6|q\(4),
	datac => \R5|q\(4),
	datad => \maquina_estado|estado_atual.estado2~q\,
	combout => \m5|Mux3~16_combout\);

-- Location: LCCOMB_X30_Y21_N24
\som1|result[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|result[5]~10_combout\ = (\m4|Selector2~0_combout\ & ((\m5|Mux2~16_combout\ & (\som1|result[4]~9\ & VCC)) # (!\m5|Mux2~16_combout\ & (!\som1|result[4]~9\)))) # (!\m4|Selector2~0_combout\ & ((\m5|Mux2~16_combout\ & (!\som1|result[4]~9\)) # 
-- (!\m5|Mux2~16_combout\ & ((\som1|result[4]~9\) # (GND)))))
-- \som1|result[5]~11\ = CARRY((\m4|Selector2~0_combout\ & (!\m5|Mux2~16_combout\ & !\som1|result[4]~9\)) # (!\m4|Selector2~0_combout\ & ((!\som1|result[4]~9\) # (!\m5|Mux2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m4|Selector2~0_combout\,
	datab => \m5|Mux2~16_combout\,
	datad => VCC,
	cin => \som1|result[4]~9\,
	combout => \som1|result[5]~10_combout\,
	cout => \som1|result[5]~11\);

-- Location: LCCOMB_X30_Y21_N8
\som1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~42_combout\ = (\som1|result[5]~10_combout\ & ((\maquina_estado|estado_atual.estado5~q\) # (\maquina_estado|estado_atual.estado4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maquina_estado|estado_atual.estado5~q\,
	datac => \maquina_estado|estado_atual.estado4~q\,
	datad => \som1|result[5]~10_combout\,
	combout => \som1|Add0~42_combout\);

-- Location: FF_X30_Y21_N9
\R5|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \som1|Add0~42_combout\,
	sclr => \maquina_estado|ALT_INV_estado_atual.estado1~q\,
	ena => \R5|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R5|q\(5));

-- Location: LCCOMB_X29_Y21_N18
\m5|Mux2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \m5|Mux2~16_combout\ = (!\maquina_estado|estado_atual.estado3~q\ & ((\maquina_estado|estado_atual.estado2~q\ & (\R6|q\(5))) # (!\maquina_estado|estado_atual.estado2~q\ & ((\R5|q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R6|q\(5),
	datab => \R5|q\(5),
	datac => \maquina_estado|estado_atual.estado3~q\,
	datad => \maquina_estado|estado_atual.estado2~q\,
	combout => \m5|Mux2~16_combout\);

-- Location: LCCOMB_X30_Y21_N26
\som1|result[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|result[6]~12_combout\ = ((\m5|Mux1~16_combout\ $ (\m4|Selector1~0_combout\ $ (!\som1|result[5]~11\)))) # (GND)
-- \som1|result[6]~13\ = CARRY((\m5|Mux1~16_combout\ & ((\m4|Selector1~0_combout\) # (!\som1|result[5]~11\))) # (!\m5|Mux1~16_combout\ & (\m4|Selector1~0_combout\ & !\som1|result[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m5|Mux1~16_combout\,
	datab => \m4|Selector1~0_combout\,
	datad => VCC,
	cin => \som1|result[5]~11\,
	combout => \som1|result[6]~12_combout\,
	cout => \som1|result[6]~13\);

-- Location: LCCOMB_X30_Y21_N6
\som1|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~41_combout\ = (\som1|result[6]~12_combout\ & ((\maquina_estado|estado_atual.estado4~q\) # (\maquina_estado|estado_atual.estado5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maquina_estado|estado_atual.estado4~q\,
	datac => \som1|result[6]~12_combout\,
	datad => \maquina_estado|estado_atual.estado5~q\,
	combout => \som1|Add0~41_combout\);

-- Location: FF_X30_Y21_N7
\R5|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \som1|Add0~41_combout\,
	sclr => \maquina_estado|ALT_INV_estado_atual.estado1~q\,
	ena => \R5|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R5|q\(6));

-- Location: LCCOMB_X29_Y21_N4
\m5|Mux1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \m5|Mux1~16_combout\ = (!\maquina_estado|estado_atual.estado3~q\ & ((\maquina_estado|estado_atual.estado2~q\ & ((\R6|q\(6)))) # (!\maquina_estado|estado_atual.estado2~q\ & (\R5|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R5|q\(6),
	datab => \R6|q\(6),
	datac => \maquina_estado|estado_atual.estado3~q\,
	datad => \maquina_estado|estado_atual.estado2~q\,
	combout => \m5|Mux1~16_combout\);

-- Location: LCCOMB_X30_Y21_N28
\som1|result[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|result[7]~14_combout\ = \m5|Mux0~16_combout\ $ (\som1|result[6]~13\ $ (\m4|Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m5|Mux0~16_combout\,
	datad => \m4|Selector0~0_combout\,
	cin => \som1|result[6]~13\,
	combout => \som1|result[7]~14_combout\);

-- Location: LCCOMB_X30_Y21_N12
\som1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~40_combout\ = (\som1|result[7]~14_combout\ & ((\maquina_estado|estado_atual.estado5~q\) # (\maquina_estado|estado_atual.estado4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \maquina_estado|estado_atual.estado5~q\,
	datac => \maquina_estado|estado_atual.estado4~q\,
	datad => \som1|result[7]~14_combout\,
	combout => \som1|Add0~40_combout\);

-- Location: FF_X30_Y21_N13
\R5|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \som1|Add0~40_combout\,
	sclr => \maquina_estado|ALT_INV_estado_atual.estado1~q\,
	ena => \R5|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R5|q\(7));

-- Location: IOIBUF_X34_Y18_N15
\entrada[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(6),
	o => \entrada[6]~input_o\);

-- Location: IOIBUF_X34_Y18_N1
\entrada[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(5),
	o => \entrada[5]~input_o\);

-- Location: IOIBUF_X23_Y24_N8
\entrada[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(4),
	o => \entrada[4]~input_o\);

-- Location: IOIBUF_X34_Y17_N1
\entrada[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(3),
	o => \entrada[3]~input_o\);

-- Location: IOIBUF_X30_Y24_N1
\entrada[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(2),
	o => \entrada[2]~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\entrada[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(1),
	o => \entrada[1]~input_o\);

-- Location: IOIBUF_X34_Y17_N15
\entrada[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(0),
	o => \entrada[0]~input_o\);

-- Location: LCCOMB_X31_Y21_N0
\c1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|LessThan0~1_cout\ = CARRY((!\entrada[0]~input_o\ & \R5|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[0]~input_o\,
	datab => \R5|q\(0),
	datad => VCC,
	cout => \c1|LessThan0~1_cout\);

-- Location: LCCOMB_X31_Y21_N2
\c1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|LessThan0~3_cout\ = CARRY((\R5|q\(1) & (\entrada[1]~input_o\ & !\c1|LessThan0~1_cout\)) # (!\R5|q\(1) & ((\entrada[1]~input_o\) # (!\c1|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \R5|q\(1),
	datab => \entrada[1]~input_o\,
	datad => VCC,
	cin => \c1|LessThan0~1_cout\,
	cout => \c1|LessThan0~3_cout\);

-- Location: LCCOMB_X31_Y21_N4
\c1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|LessThan0~5_cout\ = CARRY((\R5|q\(2) & ((!\c1|LessThan0~3_cout\) # (!\entrada[2]~input_o\))) # (!\R5|q\(2) & (!\entrada[2]~input_o\ & !\c1|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \R5|q\(2),
	datab => \entrada[2]~input_o\,
	datad => VCC,
	cin => \c1|LessThan0~3_cout\,
	cout => \c1|LessThan0~5_cout\);

-- Location: LCCOMB_X31_Y21_N6
\c1|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|LessThan0~7_cout\ = CARRY((\entrada[3]~input_o\ & ((!\c1|LessThan0~5_cout\) # (!\R5|q\(3)))) # (!\entrada[3]~input_o\ & (!\R5|q\(3) & !\c1|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[3]~input_o\,
	datab => \R5|q\(3),
	datad => VCC,
	cin => \c1|LessThan0~5_cout\,
	cout => \c1|LessThan0~7_cout\);

-- Location: LCCOMB_X31_Y21_N8
\c1|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|LessThan0~9_cout\ = CARRY((\R5|q\(4) & ((!\c1|LessThan0~7_cout\) # (!\entrada[4]~input_o\))) # (!\R5|q\(4) & (!\entrada[4]~input_o\ & !\c1|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \R5|q\(4),
	datab => \entrada[4]~input_o\,
	datad => VCC,
	cin => \c1|LessThan0~7_cout\,
	cout => \c1|LessThan0~9_cout\);

-- Location: LCCOMB_X31_Y21_N10
\c1|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|LessThan0~11_cout\ = CARRY((\R5|q\(5) & (\entrada[5]~input_o\ & !\c1|LessThan0~9_cout\)) # (!\R5|q\(5) & ((\entrada[5]~input_o\) # (!\c1|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \R5|q\(5),
	datab => \entrada[5]~input_o\,
	datad => VCC,
	cin => \c1|LessThan0~9_cout\,
	cout => \c1|LessThan0~11_cout\);

-- Location: LCCOMB_X31_Y21_N12
\c1|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|LessThan0~13_cout\ = CARRY((\entrada[6]~input_o\ & (\R5|q\(6) & !\c1|LessThan0~11_cout\)) # (!\entrada[6]~input_o\ & ((\R5|q\(6)) # (!\c1|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[6]~input_o\,
	datab => \R5|q\(6),
	datad => VCC,
	cin => \c1|LessThan0~11_cout\,
	cout => \c1|LessThan0~13_cout\);

-- Location: LCCOMB_X31_Y21_N14
\c1|LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|LessThan0~14_combout\ = (\entrada[7]~input_o\ & (\c1|LessThan0~13_cout\ & \R5|q\(7))) # (!\entrada[7]~input_o\ & ((\c1|LessThan0~13_cout\) # (\R5|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[7]~input_o\,
	datad => \R5|q\(7),
	cin => \c1|LessThan0~13_cout\,
	combout => \c1|LessThan0~14_combout\);

-- Location: LCCOMB_X31_Y21_N22
\maquina_estado|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \maquina_estado|Selector0~0_combout\ = ((\maquina_estado|estado_atual.estado5~q\ & !\c1|LessThan0~14_combout\)) # (!\maquina_estado|estado_atual.estado1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_estado|estado_atual.estado5~q\,
	datac => \c1|LessThan0~14_combout\,
	datad => \maquina_estado|estado_atual.estado1~q\,
	combout => \maquina_estado|Selector0~0_combout\);

-- Location: FF_X31_Y21_N23
\maquina_estado|estado_atual.estado2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \maquina_estado|Selector0~0_combout\,
	clrn => \ALT_INV_rstsystem~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquina_estado|estado_atual.estado2~q\);

-- Location: LCCOMB_X28_Y21_N0
\som1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \som1|Add0~18_combout\ = (\som1|Add0~16_combout\) # (!\maquina_estado|estado_atual.estado2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_estado|estado_atual.estado2~q\,
	datad => \som1|Add0~16_combout\,
	combout => \som1|Add0~18_combout\);

-- Location: FF_X28_Y21_N1
\R6|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \som1|Add0~18_combout\,
	sclr => \maquina_estado|ALT_INV_estado_atual.estado1~q\,
	ena => \R6|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R6|q\(0));

ww_resultado(0) <= \resultado[0]~output_o\;

ww_resultado(1) <= \resultado[1]~output_o\;

ww_resultado(2) <= \resultado[2]~output_o\;

ww_resultado(3) <= \resultado[3]~output_o\;

ww_resultado(4) <= \resultado[4]~output_o\;

ww_resultado(5) <= \resultado[5]~output_o\;

ww_resultado(6) <= \resultado[6]~output_o\;

ww_resultado(7) <= \resultado[7]~output_o\;
END structure;



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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "11/27/2015 14:20:25"

-- 
-- Device: Altera EP2C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MIPS_Multiciclo IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	saida : OUT std_logic_vector(31 DOWNTO 0)
	);
END MIPS_Multiciclo;

-- Design Ports Information
-- saida[0]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[1]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[2]	=>  Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[3]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[4]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[5]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[6]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[7]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[8]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[9]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[10]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[11]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[12]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[13]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[14]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[15]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[16]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[17]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[18]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[19]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[20]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[21]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[22]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[23]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[24]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[25]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[26]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[27]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[28]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[29]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[30]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[31]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reset	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF MIPS_Multiciclo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_saida : std_logic_vector(31 DOWNTO 0);
SIGNAL \Memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Memoria|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Memoria|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \Memoria|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Memoria|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Controladora|nstate.c_mem_add_st~0_combout\ : std_logic;
SIGNAL \EnablePC~1_combout\ : std_logic;
SIGNAL \PC|sr_out~0_combout\ : std_logic;
SIGNAL \PC|sr_out~3_combout\ : std_logic;
SIGNAL \PC|sr_out~4_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \MUX_PC_MEM|m_out[4]~3_combout\ : std_logic;
SIGNAL \PC|sr_out~7_combout\ : std_logic;
SIGNAL \RI|sr_out~29_combout\ : std_logic;
SIGNAL \RI|sr_out[1]~1_combout\ : std_logic;
SIGNAL \Controladora|nstate.branch_ex_st~0_combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \Controladora|pstate.branch_ex_st~regout\ : std_logic;
SIGNAL \ULA|Mux31~2_combout\ : std_logic;
SIGNAL \RI|sr_out~27_combout\ : std_logic;
SIGNAL \Controladora|Equal0~1_combout\ : std_logic;
SIGNAL \EnablePC~0_combout\ : std_logic;
SIGNAL \PC|sr_out[5]~2_combout\ : std_logic;
SIGNAL \MUX_PC_MEM|m_out[7]~6_combout\ : std_logic;
SIGNAL \RI|sr_out~5_combout\ : std_logic;
SIGNAL \PC|sr_out~6_combout\ : std_logic;
SIGNAL \MUX_PC_MEM|m_out[6]~5_combout\ : std_logic;
SIGNAL \RI|sr_out~30_combout\ : std_logic;
SIGNAL \RI|sr_out~32_combout\ : std_logic;
SIGNAL \Controladora|Equal0~0_combout\ : std_logic;
SIGNAL \Controladora|nstate.jump_ex_st~0_combout\ : std_logic;
SIGNAL \Controladora|nstate.jump_ex_st~1_combout\ : std_logic;
SIGNAL \Controladora|pstate.jump_ex_st~regout\ : std_logic;
SIGNAL \RI|sr_out~4_combout\ : std_logic;
SIGNAL \PC|sr_out~5_combout\ : std_logic;
SIGNAL \MUX_PC_MEM|m_out[5]~4_combout\ : std_logic;
SIGNAL \RI|sr_out~6_combout\ : std_logic;
SIGNAL \RI|sr_out~2_combout\ : std_logic;
SIGNAL \ULA|Mux31~3_combout\ : std_logic;
SIGNAL \ULA|Mux31~4_combout\ : std_logic;
SIGNAL \RI|sr_out~3_combout\ : std_logic;
SIGNAL \ULA|Mux31~5_combout\ : std_logic;
SIGNAL \MUX_PC_MEM|m_out[3]~2_combout\ : std_logic;
SIGNAL \RI|sr_out~31_combout\ : std_logic;
SIGNAL \Controladora|nstate.readmem_st~0_combout\ : std_logic;
SIGNAL \Controladora|pstate.readmem_st~regout\ : std_logic;
SIGNAL \PC|sr_out~1_combout\ : std_logic;
SIGNAL \MUX_PC_MEM|m_out[2]~1_combout\ : std_logic;
SIGNAL \RI|sr_out~28_combout\ : std_logic;
SIGNAL \Controladora|nstate.rtype_ex_st~0_combout\ : std_logic;
SIGNAL \Controladora|pstate.rtype_ex_st~regout\ : std_logic;
SIGNAL \Controladora|Mux0~0_combout\ : std_logic;
SIGNAL \Controladora|Selector0~0_combout\ : std_logic;
SIGNAL \Controladora|WideNor0~0_combout\ : std_logic;
SIGNAL \Controladora|Selector0~1_combout\ : std_logic;
SIGNAL \Controladora|pstate.fetch_st~regout\ : std_logic;
SIGNAL \Controladora|pstate.decode_st~0_combout\ : std_logic;
SIGNAL \Controladora|pstate.decode_st~regout\ : std_logic;
SIGNAL \Controladora|nstate.c_mem_add_st~1_combout\ : std_logic;
SIGNAL \Controladora|pstate.c_mem_add_st~regout\ : std_logic;
SIGNAL \Controladora|nstate.writemem_st~0_combout\ : std_logic;
SIGNAL \Controladora|pstate.writemem_st~regout\ : std_logic;
SIGNAL \MUX_PC_MEM|m_out[0]~0_combout\ : std_logic;
SIGNAL \RI|sr_out~0_combout\ : std_logic;
SIGNAL \RI|sr_out~7_combout\ : std_logic;
SIGNAL \RI|sr_out~8_combout\ : std_logic;
SIGNAL \RI|sr_out~9_combout\ : std_logic;
SIGNAL \RI|sr_out~10_combout\ : std_logic;
SIGNAL \RI|sr_out~11_combout\ : std_logic;
SIGNAL \RI|sr_out~12_combout\ : std_logic;
SIGNAL \RI|sr_out~13_combout\ : std_logic;
SIGNAL \RI|sr_out~14_combout\ : std_logic;
SIGNAL \RI|sr_out~15_combout\ : std_logic;
SIGNAL \RI|sr_out~16_combout\ : std_logic;
SIGNAL \RI|sr_out~17_combout\ : std_logic;
SIGNAL \RI|sr_out~18_combout\ : std_logic;
SIGNAL \RI|sr_out~19_combout\ : std_logic;
SIGNAL \RI|sr_out~20_combout\ : std_logic;
SIGNAL \RI|sr_out~21_combout\ : std_logic;
SIGNAL \RI|sr_out~22_combout\ : std_logic;
SIGNAL \RI|sr_out~23_combout\ : std_logic;
SIGNAL \RI|sr_out~24_combout\ : std_logic;
SIGNAL \RI|sr_out~25_combout\ : std_logic;
SIGNAL \RI|sr_out~26_combout\ : std_logic;
SIGNAL \Memoria|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \PC|sr_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RI|sr_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \SaidaAlu|sr_out\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Memoria|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\MUX_PC_MEM|m_out[7]~6_combout\ & \MUX_PC_MEM|m_out[6]~5_combout\ & \MUX_PC_MEM|m_out[5]~4_combout\ & \MUX_PC_MEM|m_out[4]~3_combout\ & \MUX_PC_MEM|m_out[3]~2_combout\ & 
\MUX_PC_MEM|m_out[2]~1_combout\ & \MUX_PC_MEM|m_out[0]~0_combout\ & \MUX_PC_MEM|m_out[0]~0_combout\);

\Memoria|altsyncram_component|auto_generated|q_a\(0) <= \Memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\Memoria|altsyncram_component|auto_generated|q_a\(1) <= \Memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\Memoria|altsyncram_component|auto_generated|q_a\(2) <= \Memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\Memoria|altsyncram_component|auto_generated|q_a\(3) <= \Memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\Memoria|altsyncram_component|auto_generated|q_a\(4) <= \Memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\Memoria|altsyncram_component|auto_generated|q_a\(5) <= \Memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\Memoria|altsyncram_component|auto_generated|q_a\(6) <= \Memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\Memoria|altsyncram_component|auto_generated|q_a\(7) <= \Memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\Memoria|altsyncram_component|auto_generated|q_a\(8) <= \Memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\Memoria|altsyncram_component|auto_generated|q_a\(9) <= \Memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\Memoria|altsyncram_component|auto_generated|q_a\(10) <= \Memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\Memoria|altsyncram_component|auto_generated|q_a\(11) <= \Memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\Memoria|altsyncram_component|auto_generated|q_a\(12) <= \Memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\Memoria|altsyncram_component|auto_generated|q_a\(13) <= \Memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\Memoria|altsyncram_component|auto_generated|q_a\(14) <= \Memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\Memoria|altsyncram_component|auto_generated|q_a\(15) <= \Memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\Memoria|altsyncram_component|auto_generated|q_a\(16) <= \Memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\Memoria|altsyncram_component|auto_generated|q_a\(17) <= \Memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);

\Memoria|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Memoria|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\MUX_PC_MEM|m_out[7]~6_combout\ & \MUX_PC_MEM|m_out[6]~5_combout\ & \MUX_PC_MEM|m_out[5]~4_combout\ & \MUX_PC_MEM|m_out[4]~3_combout\ & \MUX_PC_MEM|m_out[3]~2_combout\ & 
\MUX_PC_MEM|m_out[2]~1_combout\ & \MUX_PC_MEM|m_out[0]~0_combout\ & \MUX_PC_MEM|m_out[0]~0_combout\);

\Memoria|altsyncram_component|auto_generated|q_a\(18) <= \Memoria|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);
\Memoria|altsyncram_component|auto_generated|q_a\(19) <= \Memoria|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(1);
\Memoria|altsyncram_component|auto_generated|q_a\(20) <= \Memoria|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(2);
\Memoria|altsyncram_component|auto_generated|q_a\(21) <= \Memoria|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(3);
\Memoria|altsyncram_component|auto_generated|q_a\(22) <= \Memoria|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(4);
\Memoria|altsyncram_component|auto_generated|q_a\(23) <= \Memoria|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(5);
\Memoria|altsyncram_component|auto_generated|q_a\(24) <= \Memoria|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(6);
\Memoria|altsyncram_component|auto_generated|q_a\(25) <= \Memoria|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(7);
\Memoria|altsyncram_component|auto_generated|q_a\(26) <= \Memoria|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(8);
\Memoria|altsyncram_component|auto_generated|q_a\(27) <= \Memoria|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(9);
\Memoria|altsyncram_component|auto_generated|q_a\(28) <= \Memoria|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(10);
\Memoria|altsyncram_component|auto_generated|q_a\(29) <= \Memoria|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(11);
\Memoria|altsyncram_component|auto_generated|q_a\(30) <= \Memoria|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(12);
\Memoria|altsyncram_component|auto_generated|q_a\(31) <= \Memoria|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(13);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCFF_X9_Y11_N21
\PC|sr_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(0));

-- Location: LCFF_X9_Y11_N25
\PC|sr_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~3_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(3));

-- Location: LCFF_X9_Y11_N27
\PC|sr_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~4_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(4));

-- Location: LCCOMB_X10_Y10_N10
\Controladora|nstate.c_mem_add_st~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|nstate.c_mem_add_st~0_combout\ = (!\RI|sr_out\(28) & (\RI|sr_out\(26) & (\RI|sr_out\(27) & \RI|sr_out\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(28),
	datab => \RI|sr_out\(26),
	datac => \RI|sr_out\(27),
	datad => \RI|sr_out\(31),
	combout => \Controladora|nstate.c_mem_add_st~0_combout\);

-- Location: LCCOMB_X9_Y11_N28
\EnablePC~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \EnablePC~1_combout\ = (\Controladora|pstate.fetch_st~regout\ & (!\Controladora|pstate.jump_ex_st~regout\ & \EnablePC~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controladora|pstate.fetch_st~regout\,
	datac => \Controladora|pstate.jump_ex_st~regout\,
	datad => \EnablePC~0_combout\,
	combout => \EnablePC~1_combout\);

-- Location: LCCOMB_X9_Y11_N20
\PC|sr_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~0_combout\ = (\EnablePC~1_combout\ & (((\PC|sr_out\(0))))) # (!\EnablePC~1_combout\ & (!\Controladora|pstate.jump_ex_st~regout\ & ((\ULA|Mux31~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.jump_ex_st~regout\,
	datab => \EnablePC~1_combout\,
	datac => \PC|sr_out\(0),
	datad => \ULA|Mux31~5_combout\,
	combout => \PC|sr_out~0_combout\);

-- Location: LCCOMB_X9_Y11_N24
\PC|sr_out~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~3_combout\ = (\Controladora|pstate.branch_ex_st~regout\ & (((\ULA|Mux31~5_combout\)))) # (!\Controladora|pstate.branch_ex_st~regout\ & ((\Controladora|pstate.jump_ex_st~regout\ & (\RI|sr_out\(1))) # (!\Controladora|pstate.jump_ex_st~regout\ & 
-- ((\ULA|Mux31~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \RI|sr_out\(1),
	datac => \Controladora|pstate.jump_ex_st~regout\,
	datad => \ULA|Mux31~5_combout\,
	combout => \PC|sr_out~3_combout\);

-- Location: LCCOMB_X9_Y11_N26
\PC|sr_out~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~4_combout\ = (\Controladora|pstate.branch_ex_st~regout\ & (\ULA|Mux31~5_combout\)) # (!\Controladora|pstate.branch_ex_st~regout\ & ((\Controladora|pstate.jump_ex_st~regout\ & ((\RI|sr_out\(2)))) # (!\Controladora|pstate.jump_ex_st~regout\ & 
-- (\ULA|Mux31~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \ULA|Mux31~5_combout\,
	datac => \Controladora|pstate.jump_ex_st~regout\,
	datad => \RI|sr_out\(2),
	combout => \PC|sr_out~4_combout\);

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X12_Y11_N24
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X12_Y11_N14
\MUX_PC_MEM|m_out[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_PC_MEM|m_out[4]~3_combout\ = (\Controladora|pstate.readmem_st~regout\ & (((\SaidaAlu|sr_out\(0))))) # (!\Controladora|pstate.readmem_st~regout\ & ((\Controladora|pstate.writemem_st~regout\ & ((\SaidaAlu|sr_out\(0)))) # 
-- (!\Controladora|pstate.writemem_st~regout\ & (\PC|sr_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|sr_out\(4),
	datab => \Controladora|pstate.readmem_st~regout\,
	datac => \Controladora|pstate.writemem_st~regout\,
	datad => \SaidaAlu|sr_out\(0),
	combout => \MUX_PC_MEM|m_out[4]~3_combout\);

-- Location: LCCOMB_X9_Y11_N8
\PC|sr_out~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~7_combout\ = (\Controladora|pstate.branch_ex_st~regout\ & (\ULA|Mux31~5_combout\)) # (!\Controladora|pstate.branch_ex_st~regout\ & ((\Controladora|pstate.jump_ex_st~regout\ & ((\RI|sr_out\(5)))) # (!\Controladora|pstate.jump_ex_st~regout\ & 
-- (\ULA|Mux31~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \ULA|Mux31~5_combout\,
	datac => \Controladora|pstate.jump_ex_st~regout\,
	datad => \RI|sr_out\(5),
	combout => \PC|sr_out~7_combout\);

-- Location: M4K_X11_Y10
\Memoria|altsyncram_component|auto_generated|ram_block1a18\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000260090022008001A006001600500120040012806301480528D0E3438D0A3428D08802",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mips_mem:Memoria|altsyncram:altsyncram_component|altsyncram_qkc1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 14,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_b_address_width => 8,
	port_b_data_width => 14,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \Controladora|pstate.writemem_st~regout\,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \Memoria|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \Memoria|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Memoria|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

-- Location: LCCOMB_X10_Y10_N12
\RI|sr_out~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~29_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(28),
	combout => \RI|sr_out~29_combout\);

-- Location: LCCOMB_X12_Y11_N16
\RI|sr_out[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out[1]~1_combout\ = (\reset~combout\) # (!\Controladora|pstate.fetch_st~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datad => \Controladora|pstate.fetch_st~regout\,
	combout => \RI|sr_out[1]~1_combout\);

-- Location: LCFF_X10_Y10_N13
\RI|sr_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~29_combout\,
	ena => \RI|sr_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(28));

-- Location: LCCOMB_X10_Y11_N22
\Controladora|nstate.branch_ex_st~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|nstate.branch_ex_st~0_combout\ = (\Controladora|pstate.decode_st~regout\ & (!\RI|sr_out\(27) & (\Controladora|Equal0~0_combout\ & \RI|sr_out\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.decode_st~regout\,
	datab => \RI|sr_out\(27),
	datac => \Controladora|Equal0~0_combout\,
	datad => \RI|sr_out\(28),
	combout => \Controladora|nstate.branch_ex_st~0_combout\);

-- Location: CLKCTRL_G1
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCFF_X10_Y11_N23
\Controladora|pstate.branch_ex_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Controladora|nstate.branch_ex_st~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Controladora|pstate.branch_ex_st~regout\);

-- Location: LCCOMB_X10_Y11_N24
\ULA|Mux31~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux31~2_combout\ = (\RI|sr_out\(2) & ((\RI|sr_out\(5)))) # (!\RI|sr_out\(2) & (!\Controladora|pstate.branch_ex_st~regout\ & !\RI|sr_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(2),
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datad => \RI|sr_out\(5),
	combout => \ULA|Mux31~2_combout\);

-- Location: LCCOMB_X10_Y10_N28
\RI|sr_out~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~27_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(26),
	combout => \RI|sr_out~27_combout\);

-- Location: LCFF_X10_Y10_N29
\RI|sr_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~27_combout\,
	ena => \RI|sr_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(26));

-- Location: LCCOMB_X10_Y10_N26
\Controladora|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|Equal0~1_combout\ = (\RI|sr_out\(28) & (!\RI|sr_out\(27) & (\Controladora|Equal0~0_combout\ & !\RI|sr_out\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(28),
	datab => \RI|sr_out\(27),
	datac => \Controladora|Equal0~0_combout\,
	datad => \RI|sr_out\(26),
	combout => \Controladora|Equal0~1_combout\);

-- Location: LCCOMB_X9_Y11_N6
\EnablePC~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EnablePC~0_combout\ = (\Controladora|Equal0~1_combout\ $ (((!\ULA|Mux31~4_combout\) # (!\ULA|Mux31~2_combout\)))) # (!\Controladora|pstate.branch_ex_st~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \ULA|Mux31~2_combout\,
	datac => \Controladora|Equal0~1_combout\,
	datad => \ULA|Mux31~4_combout\,
	combout => \EnablePC~0_combout\);

-- Location: LCCOMB_X9_Y11_N30
\PC|sr_out[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out[5]~2_combout\ = (\Controladora|pstate.jump_ex_st~regout\) # (((\reset~combout\) # (!\EnablePC~0_combout\)) # (!\Controladora|pstate.fetch_st~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.jump_ex_st~regout\,
	datab => \Controladora|pstate.fetch_st~regout\,
	datac => \reset~combout\,
	datad => \EnablePC~0_combout\,
	combout => \PC|sr_out[5]~2_combout\);

-- Location: LCFF_X9_Y11_N9
\PC|sr_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~7_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(7));

-- Location: LCCOMB_X9_Y11_N16
\MUX_PC_MEM|m_out[7]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_PC_MEM|m_out[7]~6_combout\ = (\Controladora|pstate.writemem_st~regout\ & (\SaidaAlu|sr_out\(0))) # (!\Controladora|pstate.writemem_st~regout\ & ((\Controladora|pstate.readmem_st~regout\ & (\SaidaAlu|sr_out\(0))) # 
-- (!\Controladora|pstate.readmem_st~regout\ & ((\PC|sr_out\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SaidaAlu|sr_out\(0),
	datab => \Controladora|pstate.writemem_st~regout\,
	datac => \PC|sr_out\(7),
	datad => \Controladora|pstate.readmem_st~regout\,
	combout => \MUX_PC_MEM|m_out[7]~6_combout\);

-- Location: M4K_X11_Y11
\Memoria|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000090001C00050000C00010000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002608090202208080201A0806020160805020120804020E60A9902462089802040040000CC00220004400002000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mips_mem:Memoria|altsyncram:altsyncram_component|altsyncram_qkc1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \Controladora|pstate.writemem_st~regout\,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \Memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \Memoria|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X10_Y11_N20
\RI|sr_out~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~5_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(4),
	combout => \RI|sr_out~5_combout\);

-- Location: LCFF_X10_Y11_N21
\RI|sr_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~5_combout\,
	ena => \RI|sr_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(4));

-- Location: LCCOMB_X9_Y11_N14
\PC|sr_out~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~6_combout\ = (\Controladora|pstate.branch_ex_st~regout\ & (\ULA|Mux31~5_combout\)) # (!\Controladora|pstate.branch_ex_st~regout\ & ((\Controladora|pstate.jump_ex_st~regout\ & ((\RI|sr_out\(4)))) # (!\Controladora|pstate.jump_ex_st~regout\ & 
-- (\ULA|Mux31~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \ULA|Mux31~5_combout\,
	datac => \Controladora|pstate.jump_ex_st~regout\,
	datad => \RI|sr_out\(4),
	combout => \PC|sr_out~6_combout\);

-- Location: LCFF_X9_Y11_N15
\PC|sr_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~6_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(6));

-- Location: LCCOMB_X10_Y11_N10
\MUX_PC_MEM|m_out[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_PC_MEM|m_out[6]~5_combout\ = (\Controladora|pstate.readmem_st~regout\ & (\SaidaAlu|sr_out\(0))) # (!\Controladora|pstate.readmem_st~regout\ & ((\Controladora|pstate.writemem_st~regout\ & (\SaidaAlu|sr_out\(0))) # 
-- (!\Controladora|pstate.writemem_st~regout\ & ((\PC|sr_out\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SaidaAlu|sr_out\(0),
	datab => \Controladora|pstate.readmem_st~regout\,
	datac => \Controladora|pstate.writemem_st~regout\,
	datad => \PC|sr_out\(6),
	combout => \MUX_PC_MEM|m_out[6]~5_combout\);

-- Location: LCCOMB_X10_Y10_N30
\RI|sr_out~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~30_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(29),
	combout => \RI|sr_out~30_combout\);

-- Location: LCFF_X10_Y10_N31
\RI|sr_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~30_combout\,
	ena => \RI|sr_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(29));

-- Location: LCCOMB_X10_Y10_N18
\RI|sr_out~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~32_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datac => \Memoria|altsyncram_component|auto_generated|q_a\(31),
	combout => \RI|sr_out~32_combout\);

-- Location: LCFF_X10_Y10_N19
\RI|sr_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~32_combout\,
	ena => \RI|sr_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(31));

-- Location: LCCOMB_X10_Y10_N20
\Controladora|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|Equal0~0_combout\ = (!\RI|sr_out\(29) & (!\RI|sr_out\(30) & !\RI|sr_out\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RI|sr_out\(29),
	datac => \RI|sr_out\(30),
	datad => \RI|sr_out\(31),
	combout => \Controladora|Equal0~0_combout\);

-- Location: LCCOMB_X10_Y10_N0
\Controladora|nstate.jump_ex_st~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|nstate.jump_ex_st~0_combout\ = (!\RI|sr_out\(28) & (\Controladora|pstate.decode_st~regout\ & (\Controladora|Equal0~0_combout\ & !\RI|sr_out\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(28),
	datab => \Controladora|pstate.decode_st~regout\,
	datac => \Controladora|Equal0~0_combout\,
	datad => \RI|sr_out\(26),
	combout => \Controladora|nstate.jump_ex_st~0_combout\);

-- Location: LCCOMB_X10_Y11_N26
\Controladora|nstate.jump_ex_st~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|nstate.jump_ex_st~1_combout\ = (\RI|sr_out\(27) & \Controladora|nstate.jump_ex_st~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RI|sr_out\(27),
	datad => \Controladora|nstate.jump_ex_st~0_combout\,
	combout => \Controladora|nstate.jump_ex_st~1_combout\);

-- Location: LCFF_X10_Y11_N27
\Controladora|pstate.jump_ex_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Controladora|nstate.jump_ex_st~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Controladora|pstate.jump_ex_st~regout\);

-- Location: LCCOMB_X10_Y11_N30
\RI|sr_out~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~4_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(3),
	combout => \RI|sr_out~4_combout\);

-- Location: LCFF_X10_Y11_N31
\RI|sr_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~4_combout\,
	ena => \RI|sr_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(3));

-- Location: LCCOMB_X9_Y11_N4
\PC|sr_out~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~5_combout\ = (\Controladora|pstate.branch_ex_st~regout\ & (\ULA|Mux31~5_combout\)) # (!\Controladora|pstate.branch_ex_st~regout\ & ((\Controladora|pstate.jump_ex_st~regout\ & ((\RI|sr_out\(3)))) # (!\Controladora|pstate.jump_ex_st~regout\ & 
-- (\ULA|Mux31~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \ULA|Mux31~5_combout\,
	datac => \Controladora|pstate.jump_ex_st~regout\,
	datad => \RI|sr_out\(3),
	combout => \PC|sr_out~5_combout\);

-- Location: LCFF_X9_Y11_N5
\PC|sr_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~5_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(5));

-- Location: LCCOMB_X9_Y11_N22
\MUX_PC_MEM|m_out[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_PC_MEM|m_out[5]~4_combout\ = (\Controladora|pstate.writemem_st~regout\ & (\SaidaAlu|sr_out\(0))) # (!\Controladora|pstate.writemem_st~regout\ & ((\Controladora|pstate.readmem_st~regout\ & (\SaidaAlu|sr_out\(0))) # 
-- (!\Controladora|pstate.readmem_st~regout\ & ((\PC|sr_out\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SaidaAlu|sr_out\(0),
	datab => \Controladora|pstate.writemem_st~regout\,
	datac => \PC|sr_out\(5),
	datad => \Controladora|pstate.readmem_st~regout\,
	combout => \MUX_PC_MEM|m_out[5]~4_combout\);

-- Location: LCCOMB_X10_Y11_N2
\RI|sr_out~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~6_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(5),
	combout => \RI|sr_out~6_combout\);

-- Location: LCFF_X10_Y11_N3
\RI|sr_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~6_combout\,
	ena => \RI|sr_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(5));

-- Location: LCCOMB_X10_Y11_N18
\RI|sr_out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~2_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(1),
	combout => \RI|sr_out~2_combout\);

-- Location: LCFF_X10_Y11_N19
\RI|sr_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~2_combout\,
	ena => \RI|sr_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(1));

-- Location: LCCOMB_X10_Y11_N14
\ULA|Mux31~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux31~3_combout\ = (!\RI|sr_out\(4) & (\RI|sr_out\(1) & (\Controladora|pstate.rtype_ex_st~regout\ & !\RI|sr_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(4),
	datab => \RI|sr_out\(1),
	datac => \Controladora|pstate.rtype_ex_st~regout\,
	datad => \RI|sr_out\(3),
	combout => \ULA|Mux31~3_combout\);

-- Location: LCCOMB_X10_Y11_N28
\ULA|Mux31~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux31~4_combout\ = (\RI|sr_out\(2) & (\RI|sr_out\(5) & (\ULA|Mux31~3_combout\ & \RI|sr_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(2),
	datab => \RI|sr_out\(5),
	datac => \ULA|Mux31~3_combout\,
	datad => \RI|sr_out\(0),
	combout => \ULA|Mux31~4_combout\);

-- Location: LCCOMB_X10_Y11_N12
\RI|sr_out~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~3_combout\ = (\Memoria|altsyncram_component|auto_generated|q_a\(2) & !\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Memoria|altsyncram_component|auto_generated|q_a\(2),
	datad => \reset~combout\,
	combout => \RI|sr_out~3_combout\);

-- Location: LCFF_X10_Y11_N13
\RI|sr_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~3_combout\,
	ena => \RI|sr_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(2));

-- Location: LCCOMB_X9_Y11_N0
\ULA|Mux31~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux31~5_combout\ = (\ULA|Mux31~4_combout\ & ((\RI|sr_out\(5) & ((\RI|sr_out\(2)))) # (!\RI|sr_out\(5) & (!\Controladora|pstate.branch_ex_st~regout\ & !\RI|sr_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(5),
	datab => \ULA|Mux31~4_combout\,
	datac => \Controladora|pstate.branch_ex_st~regout\,
	datad => \RI|sr_out\(2),
	combout => \ULA|Mux31~5_combout\);

-- Location: LCFF_X9_Y11_N1
\SaidaAlu|sr_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ULA|Mux31~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SaidaAlu|sr_out\(0));

-- Location: LCCOMB_X12_Y11_N0
\MUX_PC_MEM|m_out[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_PC_MEM|m_out[3]~2_combout\ = (\Controladora|pstate.readmem_st~regout\ & (((\SaidaAlu|sr_out\(0))))) # (!\Controladora|pstate.readmem_st~regout\ & ((\Controladora|pstate.writemem_st~regout\ & ((\SaidaAlu|sr_out\(0)))) # 
-- (!\Controladora|pstate.writemem_st~regout\ & (\PC|sr_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|sr_out\(3),
	datab => \Controladora|pstate.readmem_st~regout\,
	datac => \Controladora|pstate.writemem_st~regout\,
	datad => \SaidaAlu|sr_out\(0),
	combout => \MUX_PC_MEM|m_out[3]~2_combout\);

-- Location: LCCOMB_X10_Y10_N24
\RI|sr_out~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~31_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(30),
	combout => \RI|sr_out~31_combout\);

-- Location: LCFF_X10_Y10_N25
\RI|sr_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~31_combout\,
	ena => \RI|sr_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(30));

-- Location: LCCOMB_X10_Y10_N22
\Controladora|nstate.readmem_st~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|nstate.readmem_st~0_combout\ = (\Controladora|nstate.c_mem_add_st~0_combout\ & (\Controladora|pstate.c_mem_add_st~regout\ & (!\RI|sr_out\(30) & !\RI|sr_out\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|nstate.c_mem_add_st~0_combout\,
	datab => \Controladora|pstate.c_mem_add_st~regout\,
	datac => \RI|sr_out\(30),
	datad => \RI|sr_out\(29),
	combout => \Controladora|nstate.readmem_st~0_combout\);

-- Location: LCFF_X10_Y10_N23
\Controladora|pstate.readmem_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Controladora|nstate.readmem_st~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Controladora|pstate.readmem_st~regout\);

-- Location: LCCOMB_X9_Y11_N18
\PC|sr_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~1_combout\ = (\Controladora|pstate.branch_ex_st~regout\ & (((\ULA|Mux31~5_combout\)))) # (!\Controladora|pstate.branch_ex_st~regout\ & ((\Controladora|pstate.jump_ex_st~regout\ & (\RI|sr_out\(0))) # (!\Controladora|pstate.jump_ex_st~regout\ & 
-- ((\ULA|Mux31~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \RI|sr_out\(0),
	datac => \Controladora|pstate.jump_ex_st~regout\,
	datad => \ULA|Mux31~5_combout\,
	combout => \PC|sr_out~1_combout\);

-- Location: LCFF_X9_Y11_N19
\PC|sr_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~1_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(2));

-- Location: LCCOMB_X10_Y11_N16
\MUX_PC_MEM|m_out[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_PC_MEM|m_out[2]~1_combout\ = (\Controladora|pstate.writemem_st~regout\ & (\SaidaAlu|sr_out\(0))) # (!\Controladora|pstate.writemem_st~regout\ & ((\Controladora|pstate.readmem_st~regout\ & (\SaidaAlu|sr_out\(0))) # 
-- (!\Controladora|pstate.readmem_st~regout\ & ((\PC|sr_out\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SaidaAlu|sr_out\(0),
	datab => \Controladora|pstate.writemem_st~regout\,
	datac => \Controladora|pstate.readmem_st~regout\,
	datad => \PC|sr_out\(2),
	combout => \MUX_PC_MEM|m_out[2]~1_combout\);

-- Location: LCCOMB_X10_Y10_N2
\RI|sr_out~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~28_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datac => \Memoria|altsyncram_component|auto_generated|q_a\(27),
	combout => \RI|sr_out~28_combout\);

-- Location: LCFF_X10_Y10_N3
\RI|sr_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~28_combout\,
	ena => \RI|sr_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(27));

-- Location: LCCOMB_X10_Y11_N8
\Controladora|nstate.rtype_ex_st~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|nstate.rtype_ex_st~0_combout\ = (!\RI|sr_out\(27) & \Controladora|nstate.jump_ex_st~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RI|sr_out\(27),
	datad => \Controladora|nstate.jump_ex_st~0_combout\,
	combout => \Controladora|nstate.rtype_ex_st~0_combout\);

-- Location: LCFF_X10_Y11_N9
\Controladora|pstate.rtype_ex_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Controladora|nstate.rtype_ex_st~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Controladora|pstate.rtype_ex_st~regout\);

-- Location: LCCOMB_X10_Y10_N4
\Controladora|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|Mux0~0_combout\ = (\RI|sr_out\(28) & (((\RI|sr_out\(27)) # (\RI|sr_out\(31))))) # (!\RI|sr_out\(28) & ((\RI|sr_out\(26) & ((!\RI|sr_out\(31)) # (!\RI|sr_out\(27)))) # (!\RI|sr_out\(26) & ((\RI|sr_out\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(28),
	datab => \RI|sr_out\(26),
	datac => \RI|sr_out\(27),
	datad => \RI|sr_out\(31),
	combout => \Controladora|Mux0~0_combout\);

-- Location: LCCOMB_X10_Y10_N8
\Controladora|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|Selector0~0_combout\ = (\RI|sr_out\(30)) # ((\RI|sr_out\(29) & (!\Controladora|nstate.c_mem_add_st~0_combout\)) # (!\RI|sr_out\(29) & ((\Controladora|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|nstate.c_mem_add_st~0_combout\,
	datab => \Controladora|Mux0~0_combout\,
	datac => \RI|sr_out\(30),
	datad => \RI|sr_out\(29),
	combout => \Controladora|Selector0~0_combout\);

-- Location: LCCOMB_X9_Y11_N12
\Controladora|WideNor0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|WideNor0~0_combout\ = (!\Controladora|pstate.decode_st~regout\ & (\Controladora|pstate.fetch_st~regout\ & (!\Controladora|pstate.c_mem_add_st~regout\ & !\Controladora|pstate.readmem_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.decode_st~regout\,
	datab => \Controladora|pstate.fetch_st~regout\,
	datac => \Controladora|pstate.c_mem_add_st~regout\,
	datad => \Controladora|pstate.readmem_st~regout\,
	combout => \Controladora|WideNor0~0_combout\);

-- Location: LCCOMB_X9_Y11_N2
\Controladora|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|Selector0~1_combout\ = (\Controladora|pstate.decode_st~regout\ & (!\Controladora|Selector0~0_combout\ & ((\Controladora|pstate.rtype_ex_st~regout\) # (!\Controladora|WideNor0~0_combout\)))) # (!\Controladora|pstate.decode_st~regout\ & 
-- ((\Controladora|pstate.rtype_ex_st~regout\) # ((!\Controladora|WideNor0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.decode_st~regout\,
	datab => \Controladora|pstate.rtype_ex_st~regout\,
	datac => \Controladora|Selector0~0_combout\,
	datad => \Controladora|WideNor0~0_combout\,
	combout => \Controladora|Selector0~1_combout\);

-- Location: LCFF_X9_Y11_N3
\Controladora|pstate.fetch_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Controladora|Selector0~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Controladora|pstate.fetch_st~regout\);

-- Location: LCCOMB_X9_Y11_N10
\Controladora|pstate.decode_st~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|pstate.decode_st~0_combout\ = !\Controladora|pstate.fetch_st~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Controladora|pstate.fetch_st~regout\,
	combout => \Controladora|pstate.decode_st~0_combout\);

-- Location: LCFF_X9_Y11_N11
\Controladora|pstate.decode_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Controladora|pstate.decode_st~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Controladora|pstate.decode_st~regout\);

-- Location: LCCOMB_X10_Y10_N14
\Controladora|nstate.c_mem_add_st~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|nstate.c_mem_add_st~1_combout\ = (\Controladora|nstate.c_mem_add_st~0_combout\ & (\Controladora|pstate.decode_st~regout\ & !\RI|sr_out\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|nstate.c_mem_add_st~0_combout\,
	datab => \Controladora|pstate.decode_st~regout\,
	datac => \RI|sr_out\(30),
	combout => \Controladora|nstate.c_mem_add_st~1_combout\);

-- Location: LCFF_X10_Y10_N15
\Controladora|pstate.c_mem_add_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Controladora|nstate.c_mem_add_st~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Controladora|pstate.c_mem_add_st~regout\);

-- Location: LCCOMB_X10_Y10_N16
\Controladora|nstate.writemem_st~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|nstate.writemem_st~0_combout\ = (\Controladora|pstate.c_mem_add_st~regout\ & (((\RI|sr_out\(30)) # (\RI|sr_out\(29))) # (!\Controladora|nstate.c_mem_add_st~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|nstate.c_mem_add_st~0_combout\,
	datab => \Controladora|pstate.c_mem_add_st~regout\,
	datac => \RI|sr_out\(30),
	datad => \RI|sr_out\(29),
	combout => \Controladora|nstate.writemem_st~0_combout\);

-- Location: LCFF_X10_Y10_N17
\Controladora|pstate.writemem_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Controladora|nstate.writemem_st~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Controladora|pstate.writemem_st~regout\);

-- Location: LCCOMB_X12_Y11_N26
\MUX_PC_MEM|m_out[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_PC_MEM|m_out[0]~0_combout\ = (\Controladora|pstate.writemem_st~regout\ & (((\SaidaAlu|sr_out\(0))))) # (!\Controladora|pstate.writemem_st~regout\ & ((\Controladora|pstate.readmem_st~regout\ & ((\SaidaAlu|sr_out\(0)))) # 
-- (!\Controladora|pstate.readmem_st~regout\ & (\PC|sr_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|sr_out\(0),
	datab => \Controladora|pstate.writemem_st~regout\,
	datac => \Controladora|pstate.readmem_st~regout\,
	datad => \SaidaAlu|sr_out\(0),
	combout => \MUX_PC_MEM|m_out[0]~0_combout\);

-- Location: LCCOMB_X10_Y11_N0
\RI|sr_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~0_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(0),
	combout => \RI|sr_out~0_combout\);

-- Location: LCFF_X10_Y11_N1
\RI|sr_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~0_combout\,
	ena => \RI|sr_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(0));

-- Location: LCCOMB_X10_Y11_N4
\RI|sr_out~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~7_combout\ = (\Memoria|altsyncram_component|auto_generated|q_a\(6) & !\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Memoria|altsyncram_component|auto_generated|q_a\(6),
	datad => \reset~combout\,
	combout => \RI|sr_out~7_combout\);

-- Location: LCFF_X10_Y11_N5
\RI|sr_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~7_combout\,
	ena => \RI|sr_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(6));

-- Location: LCCOMB_X12_Y11_N28
\RI|sr_out~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~8_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(7),
	combout => \RI|sr_out~8_combout\);

-- Location: LCFF_X12_Y11_N29
\RI|sr_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~8_combout\,
	ena => \RI|sr_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(7));

-- Location: LCCOMB_X12_Y11_N18
\RI|sr_out~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~9_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(8),
	combout => \RI|sr_out~9_combout\);

-- Location: LCFF_X12_Y11_N19
\RI|sr_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~9_combout\,
	ena => \RI|sr_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(8));

-- Location: LCCOMB_X12_Y11_N8
\RI|sr_out~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~10_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(9),
	combout => \RI|sr_out~10_combout\);

-- Location: LCFF_X12_Y11_N9
\RI|sr_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~10_combout\,
	ena => \RI|sr_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(9));

-- Location: LCCOMB_X10_Y11_N6
\RI|sr_out~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~11_combout\ = (\Memoria|altsyncram_component|auto_generated|q_a\(10) & !\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Memoria|altsyncram_component|auto_generated|q_a\(10),
	datad => \reset~combout\,
	combout => \RI|sr_out~11_combout\);

-- Location: LCFF_X10_Y11_N7
\RI|sr_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~11_combout\,
	ena => \RI|sr_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(10));

-- Location: LCCOMB_X12_Y11_N2
\RI|sr_out~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~12_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(11),
	combout => \RI|sr_out~12_combout\);

-- Location: LCFF_X12_Y11_N3
\RI|sr_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~12_combout\,
	ena => \RI|sr_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(11));

-- Location: LCCOMB_X12_Y11_N4
\RI|sr_out~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~13_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(12),
	combout => \RI|sr_out~13_combout\);

-- Location: LCFF_X12_Y11_N5
\RI|sr_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~13_combout\,
	ena => \RI|sr_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(12));

-- Location: LCCOMB_X12_Y11_N6
\RI|sr_out~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~14_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(13),
	combout => \RI|sr_out~14_combout\);

-- Location: LCFF_X12_Y11_N7
\RI|sr_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~14_combout\,
	ena => \RI|sr_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(13));

-- Location: LCCOMB_X12_Y11_N12
\RI|sr_out~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~15_combout\ = (\Memoria|altsyncram_component|auto_generated|q_a\(14) & !\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Memoria|altsyncram_component|auto_generated|q_a\(14),
	datad => \reset~combout\,
	combout => \RI|sr_out~15_combout\);

-- Location: LCFF_X12_Y11_N13
\RI|sr_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~15_combout\,
	ena => \RI|sr_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(14));

-- Location: LCCOMB_X12_Y11_N22
\RI|sr_out~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~16_combout\ = (\Memoria|altsyncram_component|auto_generated|q_a\(15) & !\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Memoria|altsyncram_component|auto_generated|q_a\(15),
	datad => \reset~combout\,
	combout => \RI|sr_out~16_combout\);

-- Location: LCFF_X12_Y11_N23
\RI|sr_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~16_combout\,
	ena => \RI|sr_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(15));

-- Location: LCCOMB_X12_Y11_N20
\RI|sr_out~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~17_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(16),
	combout => \RI|sr_out~17_combout\);

-- Location: LCFF_X12_Y11_N21
\RI|sr_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~17_combout\,
	ena => \RI|sr_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(16));

-- Location: LCCOMB_X12_Y11_N10
\RI|sr_out~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~18_combout\ = (\Memoria|altsyncram_component|auto_generated|q_a\(17) & !\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Memoria|altsyncram_component|auto_generated|q_a\(17),
	datad => \reset~combout\,
	combout => \RI|sr_out~18_combout\);

-- Location: LCFF_X12_Y11_N11
\RI|sr_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~18_combout\,
	ena => \RI|sr_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(17));

-- Location: LCCOMB_X12_Y10_N12
\RI|sr_out~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~19_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(18),
	combout => \RI|sr_out~19_combout\);

-- Location: LCFF_X12_Y10_N13
\RI|sr_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~19_combout\,
	ena => \RI|sr_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(18));

-- Location: LCCOMB_X12_Y10_N22
\RI|sr_out~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~20_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(19),
	combout => \RI|sr_out~20_combout\);

-- Location: LCFF_X12_Y10_N23
\RI|sr_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~20_combout\,
	ena => \RI|sr_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(19));

-- Location: LCCOMB_X12_Y10_N16
\RI|sr_out~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~21_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(20),
	combout => \RI|sr_out~21_combout\);

-- Location: LCFF_X12_Y10_N17
\RI|sr_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~21_combout\,
	ena => \RI|sr_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(20));

-- Location: LCCOMB_X12_Y10_N10
\RI|sr_out~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~22_combout\ = (\Memoria|altsyncram_component|auto_generated|q_a\(21) & !\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Memoria|altsyncram_component|auto_generated|q_a\(21),
	datad => \reset~combout\,
	combout => \RI|sr_out~22_combout\);

-- Location: LCFF_X12_Y10_N11
\RI|sr_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~22_combout\,
	ena => \RI|sr_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(21));

-- Location: LCCOMB_X12_Y10_N8
\RI|sr_out~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~23_combout\ = (\Memoria|altsyncram_component|auto_generated|q_a\(22) & !\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Memoria|altsyncram_component|auto_generated|q_a\(22),
	datad => \reset~combout\,
	combout => \RI|sr_out~23_combout\);

-- Location: LCFF_X12_Y10_N9
\RI|sr_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~23_combout\,
	ena => \RI|sr_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(22));

-- Location: LCCOMB_X12_Y10_N6
\RI|sr_out~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~24_combout\ = (\Memoria|altsyncram_component|auto_generated|q_a\(23) & !\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Memoria|altsyncram_component|auto_generated|q_a\(23),
	datad => \reset~combout\,
	combout => \RI|sr_out~24_combout\);

-- Location: LCFF_X12_Y10_N7
\RI|sr_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~24_combout\,
	ena => \RI|sr_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(23));

-- Location: LCCOMB_X12_Y10_N24
\RI|sr_out~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~25_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(24),
	combout => \RI|sr_out~25_combout\);

-- Location: LCFF_X12_Y10_N25
\RI|sr_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~25_combout\,
	ena => \RI|sr_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(24));

-- Location: LCCOMB_X12_Y10_N26
\RI|sr_out~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~26_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(25),
	combout => \RI|sr_out~26_combout\);

-- Location: LCFF_X12_Y10_N27
\RI|sr_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~26_combout\,
	ena => \RI|sr_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(25));

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[0]~I\ : cycloneii_io
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
	datain => \RI|sr_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(0));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[1]~I\ : cycloneii_io
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
	datain => \RI|sr_out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(1));

-- Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[2]~I\ : cycloneii_io
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
	datain => \RI|sr_out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(2));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[3]~I\ : cycloneii_io
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
	datain => \RI|sr_out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(3));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[4]~I\ : cycloneii_io
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
	datain => \RI|sr_out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(4));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[5]~I\ : cycloneii_io
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
	datain => \RI|sr_out\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(5));

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[6]~I\ : cycloneii_io
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
	datain => \RI|sr_out\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(6));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[7]~I\ : cycloneii_io
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
	datain => \RI|sr_out\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(7));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[8]~I\ : cycloneii_io
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
	datain => \RI|sr_out\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(8));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[9]~I\ : cycloneii_io
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
	datain => \RI|sr_out\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(9));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[10]~I\ : cycloneii_io
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
	datain => \RI|sr_out\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(10));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[11]~I\ : cycloneii_io
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
	datain => \RI|sr_out\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(11));

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[12]~I\ : cycloneii_io
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
	datain => \RI|sr_out\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(12));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[13]~I\ : cycloneii_io
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
	datain => \RI|sr_out\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(13));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[14]~I\ : cycloneii_io
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
	datain => \RI|sr_out\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(14));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[15]~I\ : cycloneii_io
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
	datain => \RI|sr_out\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(15));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[16]~I\ : cycloneii_io
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
	datain => \RI|sr_out\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(16));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[17]~I\ : cycloneii_io
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
	datain => \RI|sr_out\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(17));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[18]~I\ : cycloneii_io
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
	datain => \RI|sr_out\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(18));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[19]~I\ : cycloneii_io
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
	datain => \RI|sr_out\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(19));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[20]~I\ : cycloneii_io
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
	datain => \RI|sr_out\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(20));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[21]~I\ : cycloneii_io
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
	datain => \RI|sr_out\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(21));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[22]~I\ : cycloneii_io
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
	datain => \RI|sr_out\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(22));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[23]~I\ : cycloneii_io
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
	datain => \RI|sr_out\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(23));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[24]~I\ : cycloneii_io
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
	datain => \RI|sr_out\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(24));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[25]~I\ : cycloneii_io
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
	datain => \RI|sr_out\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(25));

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[26]~I\ : cycloneii_io
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
	datain => \RI|sr_out\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(26));

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[27]~I\ : cycloneii_io
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
	datain => \RI|sr_out\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(27));

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[28]~I\ : cycloneii_io
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
	datain => \RI|sr_out\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(28));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[29]~I\ : cycloneii_io
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
	datain => \RI|sr_out\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(29));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[30]~I\ : cycloneii_io
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
	datain => \RI|sr_out\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(30));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[31]~I\ : cycloneii_io
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
	datain => \RI|sr_out\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(31));
END structure;



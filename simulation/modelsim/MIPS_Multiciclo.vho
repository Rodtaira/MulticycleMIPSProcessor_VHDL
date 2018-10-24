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

-- DATE "11/30/2015 18:14:32"

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
	instruction : OUT std_logic_vector(31 DOWNTO 0);
	address : OUT std_logic_vector(31 DOWNTO 0);
	saida_alu_teste : OUT std_logic_vector(31 DOWNTO 0);
	RS_teste : OUT std_logic_vector(4 DOWNTO 0);
	RT_teste : OUT std_logic_vector(4 DOWNTO 0);
	RD_teste : OUT std_logic_vector(4 DOWNTO 0);
	imm : OUT std_logic_vector(15 DOWNTO 0)
	);
END MIPS_Multiciclo;

-- Design Ports Information
-- instruction[0]	=>  Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[1]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[2]	=>  Location: PIN_L14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[3]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[4]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[5]	=>  Location: PIN_N8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[6]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[7]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[8]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[9]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[10]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[11]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[12]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[13]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[14]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[15]	=>  Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[16]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[17]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[18]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[19]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[20]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[21]	=>  Location: PIN_L15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[22]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[23]	=>  Location: PIN_E6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[24]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[25]	=>  Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[26]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[27]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[28]	=>  Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[29]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[30]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- instruction[31]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address[0]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address[1]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address[2]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address[3]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address[4]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address[5]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address[6]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address[7]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address[8]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address[9]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address[10]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address[11]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address[12]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address[13]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address[14]	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address[15]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address[16]	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address[17]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address[18]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address[19]	=>  Location: PIN_K10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address[20]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address[21]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address[22]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address[23]	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address[24]	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address[25]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address[26]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address[27]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address[28]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address[29]	=>  Location: PIN_K11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address[30]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address[31]	=>  Location: PIN_N11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_alu_teste[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_alu_teste[1]	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_alu_teste[2]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_alu_teste[3]	=>  Location: PIN_N10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_alu_teste[4]	=>  Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_alu_teste[5]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_alu_teste[6]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_alu_teste[7]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_alu_teste[8]	=>  Location: PIN_P13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_alu_teste[9]	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_alu_teste[10]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_alu_teste[11]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_alu_teste[12]	=>  Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_alu_teste[13]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_alu_teste[14]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_alu_teste[15]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_alu_teste[16]	=>  Location: PIN_P12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_alu_teste[17]	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_alu_teste[18]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_alu_teste[19]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_alu_teste[20]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_alu_teste[21]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_alu_teste[22]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_alu_teste[23]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_alu_teste[24]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_alu_teste[25]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_alu_teste[26]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_alu_teste[27]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_alu_teste[28]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_alu_teste[29]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_alu_teste[30]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida_alu_teste[31]	=>  Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RS_teste[0]	=>  Location: PIN_M14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RS_teste[1]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RS_teste[2]	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RS_teste[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RS_teste[4]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RT_teste[0]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RT_teste[1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RT_teste[2]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RT_teste[3]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RT_teste[4]	=>  Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD_teste[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD_teste[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD_teste[2]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD_teste[3]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD_teste[4]	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- imm[0]	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- imm[1]	=>  Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- imm[2]	=>  Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- imm[3]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- imm[4]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- imm[5]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- imm[6]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- imm[7]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- imm[8]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- imm[9]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- imm[10]	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- imm[11]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- imm[12]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- imm[13]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- imm[14]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- imm[15]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
SIGNAL ww_instruction : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_address : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_saida_alu_teste : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RS_teste : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_RT_teste : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_RD_teste : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_imm : std_logic_vector(15 DOWNTO 0);
SIGNAL \Memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Memoria|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Memoria|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \Memoria|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Memoria|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ULA|tmp[0]~0_combout\ : std_logic;
SIGNAL \ULA|tmp[1]~2_combout\ : std_logic;
SIGNAL \ULA|tmp[3]~6_combout\ : std_logic;
SIGNAL \ULA|tmp[11]~22_combout\ : std_logic;
SIGNAL \ULA|tmp[12]~24_combout\ : std_logic;
SIGNAL \ULA|tmp[18]~36_combout\ : std_logic;
SIGNAL \ULA|tmp[19]~38_combout\ : std_logic;
SIGNAL \ULA|tmp[21]~42_combout\ : std_logic;
SIGNAL \MUX_A_ALU|m_out[18]~14_combout\ : std_logic;
SIGNAL \MUX_A_ALU|m_out[16]~16_combout\ : std_logic;
SIGNAL \MUX_B_extsgn_ALU|m_out[12]~7_combout\ : std_logic;
SIGNAL \MUX_B_extsgn_ALU|m_out[11]~8_combout\ : std_logic;
SIGNAL \MUX_A_ALU|m_out[1]~31_combout\ : std_logic;
SIGNAL \ULA|Mux31~6_combout\ : std_logic;
SIGNAL \PC|sr_out[0]~1_combout\ : std_logic;
SIGNAL \ULA|Equal0~0_combout\ : std_logic;
SIGNAL \ULA|Mux2~2_combout\ : std_logic;
SIGNAL \ULA|Mux3~0_combout\ : std_logic;
SIGNAL \ULA|Mux24~0_combout\ : std_logic;
SIGNAL \ULA|Equal0~4_combout\ : std_logic;
SIGNAL \ULA|Mux27~0_combout\ : std_logic;
SIGNAL \ULA|Mux13~0_combout\ : std_logic;
SIGNAL \ULA|Mux15~0_combout\ : std_logic;
SIGNAL \ULA|Mux18~0_combout\ : std_logic;
SIGNAL \ULA|Mux19~0_combout\ : std_logic;
SIGNAL \ULA|Mux20~0_combout\ : std_logic;
SIGNAL \ULA|Mux22~0_combout\ : std_logic;
SIGNAL \ULA|Equal0~10_combout\ : std_logic;
SIGNAL \PC|sr_out~16_combout\ : std_logic;
SIGNAL \Controladora|Mux0~0_combout\ : std_logic;
SIGNAL \ULA|Mux0~2_combout\ : std_logic;
SIGNAL \ULA|Mux0~3_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Controladora|pstate.decode_st~0_combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \Controladora|pstate.decode_st~regout\ : std_logic;
SIGNAL \Controladora|nstate.writemem_st~0_combout\ : std_logic;
SIGNAL \Controladora|pstate.writemem_st~regout\ : std_logic;
SIGNAL \Controladora|nstate.jump_ex_st~0_combout\ : std_logic;
SIGNAL \Controladora|pstate.jump_ex_st~regout\ : std_logic;
SIGNAL \RI|sr_out~6_combout\ : std_logic;
SIGNAL \RI|sr_out[14]~1_combout\ : std_logic;
SIGNAL \MUX_A_ALU|m_out[7]~25_combout\ : std_logic;
SIGNAL \RI|sr_out~3_combout\ : std_logic;
SIGNAL \COntroladora_ULA|alu_ctr[1]~2_combout\ : std_logic;
SIGNAL \COntroladora_ULA|alu_ctr[1]~0_combout\ : std_logic;
SIGNAL \COntroladora_ULA|alu_ctr[1]~1_combout\ : std_logic;
SIGNAL \COntroladora_ULA|alu_ctr[1]~3_combout\ : std_logic;
SIGNAL \ULA|Mux31~5_combout\ : std_logic;
SIGNAL \RI|sr_out~8_combout\ : std_logic;
SIGNAL \MUX_B_extsgn_ALU|Equal2~0_combout\ : std_logic;
SIGNAL \MUX_B_extsgn_ALU|m_out[7]~12_combout\ : std_logic;
SIGNAL \MUX_A_ALU|m_out[6]~26_combout\ : std_logic;
SIGNAL \MUX_A_ALU|m_out[5]~27_combout\ : std_logic;
SIGNAL \MUX_B_extsgn_ALU|m_out[4]~15_combout\ : std_logic;
SIGNAL \MUX_B_extsgn_ALU|m_out[3]~16_combout\ : std_logic;
SIGNAL \PC|sr_out~4_combout\ : std_logic;
SIGNAL \MUX_B_extsgn_ALU|m_out[2]~17_combout\ : std_logic;
SIGNAL \ULA|Mux29~0_combout\ : std_logic;
SIGNAL \COntroladora_ULA|alu_ctr[0]~10_combout\ : std_logic;
SIGNAL \COntroladora_ULA|alu_ctr[0]~11_combout\ : std_logic;
SIGNAL \ULA|Mux2~1_combout\ : std_logic;
SIGNAL \MUX_B_extsgn_ALU|m_out[1]~18_combout\ : std_logic;
SIGNAL \MUX_A_ALU|m_out[0]~0_combout\ : std_logic;
SIGNAL \ULA|tmp[0]~1\ : std_logic;
SIGNAL \ULA|tmp[1]~3\ : std_logic;
SIGNAL \ULA|tmp[2]~4_combout\ : std_logic;
SIGNAL \MUX_B_extsgn_ALU|m_out[0]~0_combout\ : std_logic;
SIGNAL \ULA|Add1~1\ : std_logic;
SIGNAL \ULA|Add1~3\ : std_logic;
SIGNAL \ULA|Add1~4_combout\ : std_logic;
SIGNAL \ULA|Mux29~1_combout\ : std_logic;
SIGNAL \ULA|Mux29~2_combout\ : std_logic;
SIGNAL \ULA|Mux29~3_combout\ : std_logic;
SIGNAL \ULA|Mux29~4_combout\ : std_logic;
SIGNAL \PC|sr_out~5_combout\ : std_logic;
SIGNAL \Controladora|Equal0~1_combout\ : std_logic;
SIGNAL \ULA|Equal0~5_combout\ : std_logic;
SIGNAL \RI|sr_out~16_combout\ : std_logic;
SIGNAL \MUX_B_extsgn_ALU|m_out[31]~1_combout\ : std_logic;
SIGNAL \ULA|Mux2~0_combout\ : std_logic;
SIGNAL \PC|sr_out~56_combout\ : std_logic;
SIGNAL \PC|sr_out~57_combout\ : std_logic;
SIGNAL \MUX_A_ALU|m_out[28]~4_combout\ : std_logic;
SIGNAL \RI|sr_out~25_combout\ : std_logic;
SIGNAL \PC|sr_out~52_combout\ : std_logic;
SIGNAL \ULA|Mux6~0_combout\ : std_logic;
SIGNAL \ULA|Mux7~0_combout\ : std_logic;
SIGNAL \RI|sr_out~15_combout\ : std_logic;
SIGNAL \MUX_B_extsgn_ALU|m_out[16]~3_combout\ : std_logic;
SIGNAL \MUX_A_ALU|m_out[15]~17_combout\ : std_logic;
SIGNAL \ULA|Mux17~2_combout\ : std_logic;
SIGNAL \MUX_B_extsgn_ALU|m_out[14]~5_combout\ : std_logic;
SIGNAL \RI|sr_out~14_combout\ : std_logic;
SIGNAL \RI|sr_out~12_combout\ : std_logic;
SIGNAL \MUX_B_extsgn_ALU|m_out[13]~6_combout\ : std_logic;
SIGNAL \RI|sr_out~11_combout\ : std_logic;
SIGNAL \MUX_B_extsgn_ALU|m_out[10]~9_combout\ : std_logic;
SIGNAL \MUX_B_extsgn_ALU|m_out[9]~10_combout\ : std_logic;
SIGNAL \RI|sr_out~7_combout\ : std_logic;
SIGNAL \MUX_B_extsgn_ALU|m_out[8]~11_combout\ : std_logic;
SIGNAL \ULA|Mux23~0_combout\ : std_logic;
SIGNAL \ULA|Add1~15\ : std_logic;
SIGNAL \ULA|Add1~16_combout\ : std_logic;
SIGNAL \ULA|Mux23~1_combout\ : std_logic;
SIGNAL \MUX_B_extsgn_ALU|m_out[6]~13_combout\ : std_logic;
SIGNAL \PC|sr_out~8_combout\ : std_logic;
SIGNAL \PC|sr_out~9_combout\ : std_logic;
SIGNAL \MUX_A_ALU|m_out[4]~28_combout\ : std_logic;
SIGNAL \ULA|tmp[2]~5\ : std_logic;
SIGNAL \ULA|tmp[3]~7\ : std_logic;
SIGNAL \ULA|tmp[4]~9\ : std_logic;
SIGNAL \ULA|tmp[5]~11\ : std_logic;
SIGNAL \ULA|tmp[6]~13\ : std_logic;
SIGNAL \ULA|tmp[7]~15\ : std_logic;
SIGNAL \ULA|tmp[8]~16_combout\ : std_logic;
SIGNAL \ULA|Mux23~2_combout\ : std_logic;
SIGNAL \ULA|Mux23~3_combout\ : std_logic;
SIGNAL \ULA|Mux23~4_combout\ : std_logic;
SIGNAL \PC|sr_out~17_combout\ : std_logic;
SIGNAL \MUX_A_ALU|m_out[8]~24_combout\ : std_logic;
SIGNAL \ULA|Add1~17\ : std_logic;
SIGNAL \ULA|Add1~19\ : std_logic;
SIGNAL \ULA|Add1~21\ : std_logic;
SIGNAL \ULA|Add1~22_combout\ : std_logic;
SIGNAL \ULA|Mux20~1_combout\ : std_logic;
SIGNAL \ULA|Mux20~2_combout\ : std_logic;
SIGNAL \ULA|Mux20~3_combout\ : std_logic;
SIGNAL \ULA|Mux20~4_combout\ : std_logic;
SIGNAL \RI|sr_out~10_combout\ : std_logic;
SIGNAL \PC|sr_out~22_combout\ : std_logic;
SIGNAL \PC|sr_out~23_combout\ : std_logic;
SIGNAL \MUX_A_ALU|m_out[11]~21_combout\ : std_logic;
SIGNAL \ULA|Add1~23\ : std_logic;
SIGNAL \ULA|Add1~24_combout\ : std_logic;
SIGNAL \ULA|Mux19~1_combout\ : std_logic;
SIGNAL \ULA|Mux19~2_combout\ : std_logic;
SIGNAL \ULA|Mux19~3_combout\ : std_logic;
SIGNAL \ULA|Mux19~4_combout\ : std_logic;
SIGNAL \PC|sr_out~24_combout\ : std_logic;
SIGNAL \PC|sr_out~25_combout\ : std_logic;
SIGNAL \MUX_A_ALU|m_out[12]~20_combout\ : std_logic;
SIGNAL \ULA|Add1~25\ : std_logic;
SIGNAL \ULA|Add1~27\ : std_logic;
SIGNAL \ULA|Add1~28_combout\ : std_logic;
SIGNAL \ULA|Mux17~3_combout\ : std_logic;
SIGNAL \ULA|tmp[8]~17\ : std_logic;
SIGNAL \ULA|tmp[9]~18_combout\ : std_logic;
SIGNAL \ULA|Add1~18_combout\ : std_logic;
SIGNAL \ULA|Mux22~1_combout\ : std_logic;
SIGNAL \ULA|Mux22~2_combout\ : std_logic;
SIGNAL \ULA|Mux22~3_combout\ : std_logic;
SIGNAL \ULA|Mux22~4_combout\ : std_logic;
SIGNAL \PC|sr_out~18_combout\ : std_logic;
SIGNAL \PC|sr_out~19_combout\ : std_logic;
SIGNAL \MUX_A_ALU|m_out[9]~23_combout\ : std_logic;
SIGNAL \ULA|tmp[9]~19\ : std_logic;
SIGNAL \ULA|tmp[10]~21\ : std_logic;
SIGNAL \ULA|tmp[11]~23\ : std_logic;
SIGNAL \ULA|tmp[12]~25\ : std_logic;
SIGNAL \ULA|tmp[13]~26_combout\ : std_logic;
SIGNAL \ULA|Add1~26_combout\ : std_logic;
SIGNAL \ULA|Mux18~1_combout\ : std_logic;
SIGNAL \ULA|Mux18~2_combout\ : std_logic;
SIGNAL \ULA|Mux18~3_combout\ : std_logic;
SIGNAL \ULA|Mux18~4_combout\ : std_logic;
SIGNAL \PC|sr_out~26_combout\ : std_logic;
SIGNAL \PC|sr_out~27_combout\ : std_logic;
SIGNAL \MUX_A_ALU|m_out[13]~19_combout\ : std_logic;
SIGNAL \ULA|tmp[13]~27\ : std_logic;
SIGNAL \ULA|tmp[14]~28_combout\ : std_logic;
SIGNAL \ULA|Mux17~4_combout\ : std_logic;
SIGNAL \ULA|Mux17~5_combout\ : std_logic;
SIGNAL \ULA|Mux17~6_combout\ : std_logic;
SIGNAL \RI|sr_out~13_combout\ : std_logic;
SIGNAL \PC|sr_out~28_combout\ : std_logic;
SIGNAL \PC|sr_out~29_combout\ : std_logic;
SIGNAL \MUX_A_ALU|m_out[14]~18_combout\ : std_logic;
SIGNAL \ULA|tmp[14]~29\ : std_logic;
SIGNAL \ULA|tmp[15]~31\ : std_logic;
SIGNAL \ULA|tmp[16]~33\ : std_logic;
SIGNAL \ULA|tmp[17]~35\ : std_logic;
SIGNAL \ULA|tmp[18]~37\ : std_logic;
SIGNAL \ULA|tmp[19]~39\ : std_logic;
SIGNAL \ULA|tmp[20]~41\ : std_logic;
SIGNAL \ULA|tmp[21]~43\ : std_logic;
SIGNAL \ULA|tmp[22]~45\ : std_logic;
SIGNAL \ULA|tmp[23]~47\ : std_logic;
SIGNAL \ULA|tmp[24]~48_combout\ : std_logic;
SIGNAL \ULA|Add1~29\ : std_logic;
SIGNAL \ULA|Add1~31\ : std_logic;
SIGNAL \ULA|Add1~33\ : std_logic;
SIGNAL \ULA|Add1~35\ : std_logic;
SIGNAL \ULA|Add1~37\ : std_logic;
SIGNAL \ULA|Add1~39\ : std_logic;
SIGNAL \ULA|Add1~41\ : std_logic;
SIGNAL \ULA|Add1~43\ : std_logic;
SIGNAL \ULA|Add1~45\ : std_logic;
SIGNAL \ULA|Add1~47\ : std_logic;
SIGNAL \ULA|Add1~48_combout\ : std_logic;
SIGNAL \ULA|Mux7~1_combout\ : std_logic;
SIGNAL \ULA|Mux7~2_combout\ : std_logic;
SIGNAL \ULA|Mux7~3_combout\ : std_logic;
SIGNAL \ULA|Mux7~4_combout\ : std_logic;
SIGNAL \RI|sr_out~23_combout\ : std_logic;
SIGNAL \PC|sr_out~48_combout\ : std_logic;
SIGNAL \PC|sr_out~49_combout\ : std_logic;
SIGNAL \MUX_A_ALU|m_out[24]~8_combout\ : std_logic;
SIGNAL \ULA|tmp[24]~49\ : std_logic;
SIGNAL \ULA|tmp[25]~50_combout\ : std_logic;
SIGNAL \ULA|Add1~49\ : std_logic;
SIGNAL \ULA|Add1~50_combout\ : std_logic;
SIGNAL \ULA|Mux6~1_combout\ : std_logic;
SIGNAL \ULA|Mux6~2_combout\ : std_logic;
SIGNAL \ULA|Mux6~3_combout\ : std_logic;
SIGNAL \ULA|Mux6~4_combout\ : std_logic;
SIGNAL \RI|sr_out~24_combout\ : std_logic;
SIGNAL \PC|sr_out~50_combout\ : std_logic;
SIGNAL \PC|sr_out~51_combout\ : std_logic;
SIGNAL \MUX_A_ALU|m_out[25]~7_combout\ : std_logic;
SIGNAL \ULA|tmp[25]~51\ : std_logic;
SIGNAL \ULA|tmp[26]~52_combout\ : std_logic;
SIGNAL \ULA|Add1~51\ : std_logic;
SIGNAL \ULA|Add1~52_combout\ : std_logic;
SIGNAL \ULA|Mux5~0_combout\ : std_logic;
SIGNAL \ULA|Mux5~1_combout\ : std_logic;
SIGNAL \ULA|Mux5~2_combout\ : std_logic;
SIGNAL \ULA|Mux5~4_combout\ : std_logic;
SIGNAL \PC|sr_out~53_combout\ : std_logic;
SIGNAL \MUX_A_ALU|m_out[26]~6_combout\ : std_logic;
SIGNAL \ULA|tmp[26]~53\ : std_logic;
SIGNAL \ULA|tmp[27]~54_combout\ : std_logic;
SIGNAL \ULA|Add1~53\ : std_logic;
SIGNAL \ULA|Add1~54_combout\ : std_logic;
SIGNAL \ULA|Mux4~2_combout\ : std_logic;
SIGNAL \ULA|Mux4~3_combout\ : std_logic;
SIGNAL \ULA|Mux4~4_combout\ : std_logic;
SIGNAL \ULA|Mux4~6_combout\ : std_logic;
SIGNAL \RI|sr_out~26_combout\ : std_logic;
SIGNAL \PC|sr_out~54_combout\ : std_logic;
SIGNAL \PC|sr_out~55_combout\ : std_logic;
SIGNAL \MUX_A_ALU|m_out[27]~5_combout\ : std_logic;
SIGNAL \ULA|Add1~55\ : std_logic;
SIGNAL \ULA|Add1~56_combout\ : std_logic;
SIGNAL \ULA|Mux3~1_combout\ : std_logic;
SIGNAL \ULA|tmp[27]~55\ : std_logic;
SIGNAL \ULA|tmp[28]~56_combout\ : std_logic;
SIGNAL \ULA|Mux3~2_combout\ : std_logic;
SIGNAL \ULA|Mux3~3_combout\ : std_logic;
SIGNAL \ULA|Mux3~4_combout\ : std_logic;
SIGNAL \RI|sr_out~30_combout\ : std_logic;
SIGNAL \PC|sr_out~58_combout\ : std_logic;
SIGNAL \PC|sr_out~59_combout\ : std_logic;
SIGNAL \MUX_A_ALU|m_out[29]~3_combout\ : std_logic;
SIGNAL \ULA|tmp[28]~57\ : std_logic;
SIGNAL \ULA|tmp[29]~58_combout\ : std_logic;
SIGNAL \ULA|Add1~57\ : std_logic;
SIGNAL \ULA|Add1~58_combout\ : std_logic;
SIGNAL \ULA|Mux2~3_combout\ : std_logic;
SIGNAL \ULA|Mux2~4_combout\ : std_logic;
SIGNAL \ULA|Mux2~5_combout\ : std_logic;
SIGNAL \ULA|Mux2~6_combout\ : std_logic;
SIGNAL \ULA|Equal0~6_combout\ : std_logic;
SIGNAL \MUX_B_extsgn_ALU|m_out[15]~4_combout\ : std_logic;
SIGNAL \ULA|Mux16~0_combout\ : std_logic;
SIGNAL \ULA|tmp[15]~30_combout\ : std_logic;
SIGNAL \ULA|Add1~30_combout\ : std_logic;
SIGNAL \ULA|Mux16~1_combout\ : std_logic;
SIGNAL \ULA|Mux16~2_combout\ : std_logic;
SIGNAL \ULA|Mux16~3_combout\ : std_logic;
SIGNAL \ULA|Mux16~4_combout\ : std_logic;
SIGNAL \ULA|tmp[16]~32_combout\ : std_logic;
SIGNAL \ULA|Add1~32_combout\ : std_logic;
SIGNAL \ULA|Mux15~1_combout\ : std_logic;
SIGNAL \ULA|Mux15~2_combout\ : std_logic;
SIGNAL \ULA|Mux15~3_combout\ : std_logic;
SIGNAL \ULA|Mux15~4_combout\ : std_logic;
SIGNAL \ULA|Equal0~9_combout\ : std_logic;
SIGNAL \ULA|Add1~0_combout\ : std_logic;
SIGNAL \ULA|Mux31~0_combout\ : std_logic;
SIGNAL \ULA|Mux31~1_combout\ : std_logic;
SIGNAL \ULA|Mux31~2_combout\ : std_logic;
SIGNAL \ULA|Mux31~3_combout\ : std_logic;
SIGNAL \ULA|Mux31~7_combout\ : std_logic;
SIGNAL \ULA|Mux31~8_combout\ : std_logic;
SIGNAL \ULA|Mux1~0_combout\ : std_logic;
SIGNAL \ULA|tmp[29]~59\ : std_logic;
SIGNAL \ULA|tmp[30]~60_combout\ : std_logic;
SIGNAL \ULA|Add1~59\ : std_logic;
SIGNAL \ULA|Add1~60_combout\ : std_logic;
SIGNAL \ULA|Mux1~1_combout\ : std_logic;
SIGNAL \ULA|Mux1~2_combout\ : std_logic;
SIGNAL \ULA|Mux1~3_combout\ : std_logic;
SIGNAL \ULA|Mux1~4_combout\ : std_logic;
SIGNAL \PC|sr_out~60_combout\ : std_logic;
SIGNAL \PC|sr_out~61_combout\ : std_logic;
SIGNAL \MUX_A_ALU|m_out[30]~2_combout\ : std_logic;
SIGNAL \ULA|Add1~61\ : std_logic;
SIGNAL \ULA|Add1~62_combout\ : std_logic;
SIGNAL \ULA|Mux0~0_combout\ : std_logic;
SIGNAL \ULA|Mux0~1_combout\ : std_logic;
SIGNAL \PC|sr_out~62_combout\ : std_logic;
SIGNAL \PC|sr_out~63_combout\ : std_logic;
SIGNAL \MUX_A_ALU|m_out[31]~1_combout\ : std_logic;
SIGNAL \ULA|tmp[30]~61\ : std_logic;
SIGNAL \ULA|tmp[31]~62_combout\ : std_logic;
SIGNAL \ULA|Mux31~4_combout\ : std_logic;
SIGNAL \ULA|Mux31~9_combout\ : std_logic;
SIGNAL \ULA|Equal0~7_combout\ : std_logic;
SIGNAL \MUX_A_ALU|m_out[21]~11_combout\ : std_logic;
SIGNAL \ULA|Mux10~0_combout\ : std_logic;
SIGNAL \ULA|Add1~42_combout\ : std_logic;
SIGNAL \ULA|Mux10~1_combout\ : std_logic;
SIGNAL \ULA|Mux10~2_combout\ : std_logic;
SIGNAL \ULA|Mux10~3_combout\ : std_logic;
SIGNAL \ULA|Mux10~4_combout\ : std_logic;
SIGNAL \RI|sr_out~19_combout\ : std_logic;
SIGNAL \PC|sr_out~40_combout\ : std_logic;
SIGNAL \PC|sr_out~41_combout\ : std_logic;
SIGNAL \MUX_A_ALU|m_out[20]~12_combout\ : std_logic;
SIGNAL \ULA|Mux11~0_combout\ : std_logic;
SIGNAL \ULA|tmp[20]~40_combout\ : std_logic;
SIGNAL \ULA|Add1~40_combout\ : std_logic;
SIGNAL \ULA|Mux11~1_combout\ : std_logic;
SIGNAL \ULA|Mux11~2_combout\ : std_logic;
SIGNAL \ULA|Mux11~3_combout\ : std_logic;
SIGNAL \ULA|Mux11~4_combout\ : std_logic;
SIGNAL \MUX_A_ALU|m_out[19]~13_combout\ : std_logic;
SIGNAL \ULA|Mux12~0_combout\ : std_logic;
SIGNAL \ULA|Add1~38_combout\ : std_logic;
SIGNAL \ULA|Mux12~1_combout\ : std_logic;
SIGNAL \ULA|Mux12~2_combout\ : std_logic;
SIGNAL \ULA|Mux12~3_combout\ : std_logic;
SIGNAL \ULA|Mux12~4_combout\ : std_logic;
SIGNAL \ULA|Equal0~8_combout\ : std_logic;
SIGNAL \ULA|Equal0~11_combout\ : std_logic;
SIGNAL \ULA|Mux5~3_combout\ : std_logic;
SIGNAL \ULA|Mux4~5_combout\ : std_logic;
SIGNAL \ULA|Equal0~1_combout\ : std_logic;
SIGNAL \ULA|Equal0~2_combout\ : std_logic;
SIGNAL \ULA|Equal0~3_combout\ : std_logic;
SIGNAL \ULA|Equal0~12_combout\ : std_logic;
SIGNAL \PC|sr_out[0]~2_combout\ : std_logic;
SIGNAL \MUX_A_ALU|m_out[2]~30_combout\ : std_logic;
SIGNAL \ULA|Add1~5\ : std_logic;
SIGNAL \ULA|Add1~7\ : std_logic;
SIGNAL \ULA|Add1~9\ : std_logic;
SIGNAL \ULA|Add1~11\ : std_logic;
SIGNAL \ULA|Add1~13\ : std_logic;
SIGNAL \ULA|Add1~14_combout\ : std_logic;
SIGNAL \ULA|Mux24~1_combout\ : std_logic;
SIGNAL \ULA|tmp[7]~14_combout\ : std_logic;
SIGNAL \ULA|Mux24~2_combout\ : std_logic;
SIGNAL \ULA|Mux24~3_combout\ : std_logic;
SIGNAL \ULA|Mux24~4_combout\ : std_logic;
SIGNAL \PC|sr_out~14_combout\ : std_logic;
SIGNAL \PC|sr_out~15_combout\ : std_logic;
SIGNAL \MUX_PC_MEM|m_out[7]~7_combout\ : std_logic;
SIGNAL \RI|sr_out~5_combout\ : std_logic;
SIGNAL \PC|sr_out~12_combout\ : std_logic;
SIGNAL \PC|sr_out~13_combout\ : std_logic;
SIGNAL \MUX_PC_MEM|m_out[6]~6_combout\ : std_logic;
SIGNAL \RI|sr_out~31_combout\ : std_logic;
SIGNAL \Controladora|nstate.c_mem_add_st~1_combout\ : std_logic;
SIGNAL \Controladora|pstate.c_mem_add_st~regout\ : std_logic;
SIGNAL \Controladora|WideNor0~0_combout\ : std_logic;
SIGNAL \Controladora|Selector0~0_combout\ : std_logic;
SIGNAL \Controladora|Selector0~1_combout\ : std_logic;
SIGNAL \Controladora|pstate.fetch_st~regout\ : std_logic;
SIGNAL \MUX_B_extsgn_ALU|m_out[16]~2_combout\ : std_logic;
SIGNAL \MUX_B_extsgn_ALU|m_out[5]~14_combout\ : std_logic;
SIGNAL \ULA|Mux26~0_combout\ : std_logic;
SIGNAL \ULA|Add1~10_combout\ : std_logic;
SIGNAL \ULA|Mux26~1_combout\ : std_logic;
SIGNAL \ULA|tmp[5]~10_combout\ : std_logic;
SIGNAL \ULA|Mux26~2_combout\ : std_logic;
SIGNAL \ULA|Mux26~3_combout\ : std_logic;
SIGNAL \ULA|Mux26~4_combout\ : std_logic;
SIGNAL \PC|sr_out~10_combout\ : std_logic;
SIGNAL \PC|sr_out~11_combout\ : std_logic;
SIGNAL \MUX_PC_MEM|m_out[5]~5_combout\ : std_logic;
SIGNAL \RI|sr_out~32_combout\ : std_logic;
SIGNAL \Controladora|Equal0~0_combout\ : std_logic;
SIGNAL \Controladora|nstate.rtype_ex_st~0_combout\ : std_logic;
SIGNAL \Controladora|nstate.rtype_ex_st~1_combout\ : std_logic;
SIGNAL \Controladora|pstate.rtype_ex_st~regout\ : std_logic;
SIGNAL \COntroladora_ULA|alu_ctr[3]~9_combout\ : std_logic;
SIGNAL \ULA|tmp[4]~8_combout\ : std_logic;
SIGNAL \ULA|Add1~8_combout\ : std_logic;
SIGNAL \ULA|Mux27~1_combout\ : std_logic;
SIGNAL \ULA|Mux27~2_combout\ : std_logic;
SIGNAL \ULA|Mux27~3_combout\ : std_logic;
SIGNAL \ULA|Mux27~4_combout\ : std_logic;
SIGNAL \MUX_PC_MEM|m_out[4]~4_combout\ : std_logic;
SIGNAL \RI|sr_out~2_combout\ : std_logic;
SIGNAL \COntroladora_ULA|alu_ctr[2]~7_combout\ : std_logic;
SIGNAL \COntroladora_ULA|alu_ctr[2]~8_combout\ : std_logic;
SIGNAL \ULA|Mux30~2_combout\ : std_logic;
SIGNAL \MUX_A_ALU|m_out[3]~29_combout\ : std_logic;
SIGNAL \ULA|Mux28~0_combout\ : std_logic;
SIGNAL \ULA|Add1~6_combout\ : std_logic;
SIGNAL \ULA|Mux28~1_combout\ : std_logic;
SIGNAL \ULA|Mux28~2_combout\ : std_logic;
SIGNAL \ULA|Mux28~3_combout\ : std_logic;
SIGNAL \ULA|Mux28~4_combout\ : std_logic;
SIGNAL \PC|sr_out~6_combout\ : std_logic;
SIGNAL \PC|sr_out~7_combout\ : std_logic;
SIGNAL \MUX_PC_MEM|m_out[3]~3_combout\ : std_logic;
SIGNAL \RI|sr_out~28_combout\ : std_logic;
SIGNAL \Controladora|nstate.c_mem_add_st~0_combout\ : std_logic;
SIGNAL \Controladora|nstate.readmem_st~0_combout\ : std_logic;
SIGNAL \Controladora|pstate.readmem_st~regout\ : std_logic;
SIGNAL \MUX_PC_MEM|m_out[2]~2_combout\ : std_logic;
SIGNAL \RI|sr_out~4_combout\ : std_logic;
SIGNAL \COntroladora_ULA|alu_ctr[3]~5_combout\ : std_logic;
SIGNAL \COntroladora_ULA|alu_ctr[3]~4_combout\ : std_logic;
SIGNAL \COntroladora_ULA|alu_ctr[3]~6_combout\ : std_logic;
SIGNAL \ULA|Add1~2_combout\ : std_logic;
SIGNAL \ULA|Mux30~4_combout\ : std_logic;
SIGNAL \ULA|Mux30~5_combout\ : std_logic;
SIGNAL \ULA|Mux30~6_combout\ : std_logic;
SIGNAL \ULA|Mux30~3_combout\ : std_logic;
SIGNAL \ULA|Mux30~7_combout\ : std_logic;
SIGNAL \PC|sr_out~3_combout\ : std_logic;
SIGNAL \MUX_PC_MEM|m_out[1]~1_combout\ : std_logic;
SIGNAL \RI|sr_out~29_combout\ : std_logic;
SIGNAL \Controladora|nstate.branch_ex_st~0_combout\ : std_logic;
SIGNAL \Controladora|pstate.branch_ex_st~regout\ : std_logic;
SIGNAL \PC|sr_out~0_combout\ : std_logic;
SIGNAL \MUX_PC_MEM|m_out[0]~0_combout\ : std_logic;
SIGNAL \RI|sr_out~0_combout\ : std_logic;
SIGNAL \RI|sr_out~9_combout\ : std_logic;
SIGNAL \RI|sr_out~17_combout\ : std_logic;
SIGNAL \RI|sr_out~18_combout\ : std_logic;
SIGNAL \RI|sr_out~20_combout\ : std_logic;
SIGNAL \RI|sr_out~21_combout\ : std_logic;
SIGNAL \RI|sr_out~22_combout\ : std_logic;
SIGNAL \RI|sr_out~27_combout\ : std_logic;
SIGNAL \PC|sr_out~20_combout\ : std_logic;
SIGNAL \MUX_A_ALU|m_out[10]~22_combout\ : std_logic;
SIGNAL \ULA|Mux21~0_combout\ : std_logic;
SIGNAL \ULA|tmp[10]~20_combout\ : std_logic;
SIGNAL \ULA|Add1~20_combout\ : std_logic;
SIGNAL \ULA|Mux21~1_combout\ : std_logic;
SIGNAL \ULA|Mux21~2_combout\ : std_logic;
SIGNAL \ULA|Mux21~3_combout\ : std_logic;
SIGNAL \ULA|Mux21~4_combout\ : std_logic;
SIGNAL \PC|sr_out~21_combout\ : std_logic;
SIGNAL \PC|sr_out~30_combout\ : std_logic;
SIGNAL \PC|sr_out~31_combout\ : std_logic;
SIGNAL \PC|sr_out~32_combout\ : std_logic;
SIGNAL \PC|sr_out~33_combout\ : std_logic;
SIGNAL \MUX_A_ALU|m_out[17]~15_combout\ : std_logic;
SIGNAL \ULA|Mux14~0_combout\ : std_logic;
SIGNAL \ULA|tmp[17]~34_combout\ : std_logic;
SIGNAL \ULA|Add1~34_combout\ : std_logic;
SIGNAL \ULA|Mux14~1_combout\ : std_logic;
SIGNAL \ULA|Mux14~2_combout\ : std_logic;
SIGNAL \ULA|Mux14~3_combout\ : std_logic;
SIGNAL \ULA|Mux14~4_combout\ : std_logic;
SIGNAL \PC|sr_out~34_combout\ : std_logic;
SIGNAL \PC|sr_out~35_combout\ : std_logic;
SIGNAL \ULA|Add1~36_combout\ : std_logic;
SIGNAL \ULA|Mux13~1_combout\ : std_logic;
SIGNAL \ULA|Mux13~2_combout\ : std_logic;
SIGNAL \ULA|Mux13~3_combout\ : std_logic;
SIGNAL \ULA|Mux13~4_combout\ : std_logic;
SIGNAL \PC|sr_out~36_combout\ : std_logic;
SIGNAL \PC|sr_out~37_combout\ : std_logic;
SIGNAL \PC|sr_out~38_combout\ : std_logic;
SIGNAL \PC|sr_out~39_combout\ : std_logic;
SIGNAL \PC|sr_out~42_combout\ : std_logic;
SIGNAL \PC|sr_out~43_combout\ : std_logic;
SIGNAL \MUX_A_ALU|m_out[22]~10_combout\ : std_logic;
SIGNAL \ULA|Mux9~0_combout\ : std_logic;
SIGNAL \ULA|tmp[22]~44_combout\ : std_logic;
SIGNAL \ULA|Add1~44_combout\ : std_logic;
SIGNAL \ULA|Mux9~1_combout\ : std_logic;
SIGNAL \ULA|Mux9~2_combout\ : std_logic;
SIGNAL \ULA|Mux9~3_combout\ : std_logic;
SIGNAL \ULA|Mux9~4_combout\ : std_logic;
SIGNAL \PC|sr_out~44_combout\ : std_logic;
SIGNAL \PC|sr_out~45_combout\ : std_logic;
SIGNAL \PC|sr_out~46_combout\ : std_logic;
SIGNAL \MUX_A_ALU|m_out[23]~9_combout\ : std_logic;
SIGNAL \ULA|Add1~46_combout\ : std_logic;
SIGNAL \ULA|Mux8~1_combout\ : std_logic;
SIGNAL \ULA|tmp[23]~46_combout\ : std_logic;
SIGNAL \ULA|Mux8~2_combout\ : std_logic;
SIGNAL \ULA|Mux8~3_combout\ : std_logic;
SIGNAL \ULA|Mux8~0_combout\ : std_logic;
SIGNAL \ULA|Mux8~4_combout\ : std_logic;
SIGNAL \PC|sr_out~47_combout\ : std_logic;
SIGNAL \ULA|Mux25~0_combout\ : std_logic;
SIGNAL \ULA|Add1~12_combout\ : std_logic;
SIGNAL \ULA|Mux25~1_combout\ : std_logic;
SIGNAL \ULA|tmp[6]~12_combout\ : std_logic;
SIGNAL \ULA|Mux25~2_combout\ : std_logic;
SIGNAL \ULA|Mux25~3_combout\ : std_logic;
SIGNAL \ULA|Mux25~4_combout\ : std_logic;
SIGNAL \SaidaAlu|sr_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Memoria|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \PC|sr_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RI|sr_out\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
instruction <= ww_instruction;
address <= ww_address;
saida_alu_teste <= ww_saida_alu_teste;
RS_teste <= ww_RS_teste;
RT_teste <= ww_RT_teste;
RD_teste <= ww_RD_teste;
imm <= ww_imm;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Memoria|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\Memoria|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\MUX_PC_MEM|m_out[7]~7_combout\ & \MUX_PC_MEM|m_out[6]~6_combout\ & \MUX_PC_MEM|m_out[5]~5_combout\ & \MUX_PC_MEM|m_out[4]~4_combout\ & \MUX_PC_MEM|m_out[3]~3_combout\ & 
\MUX_PC_MEM|m_out[2]~2_combout\ & \MUX_PC_MEM|m_out[1]~1_combout\ & \MUX_PC_MEM|m_out[0]~0_combout\);

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

\Memoria|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\MUX_PC_MEM|m_out[7]~7_combout\ & \MUX_PC_MEM|m_out[6]~6_combout\ & \MUX_PC_MEM|m_out[5]~5_combout\ & \MUX_PC_MEM|m_out[4]~4_combout\ & \MUX_PC_MEM|m_out[3]~3_combout\ & 
\MUX_PC_MEM|m_out[2]~2_combout\ & \MUX_PC_MEM|m_out[1]~1_combout\ & \MUX_PC_MEM|m_out[0]~0_combout\);

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

-- Location: M4K_X11_Y11
\Memoria|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000090001C00050000C00010000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000024080882020080682018080582014080482010083982A640918822600810010000330008800110000080000000",
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

-- Location: M4K_X11_Y10
\Memoria|altsyncram_component|auto_generated|ram_block1a18\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000240088020006801800580140048010004A018C052014A3438D0E3428D0A3422008000",
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

-- Location: LCCOMB_X13_Y10_N0
\ULA|tmp[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|tmp[0]~0_combout\ = (\MUX_B_extsgn_ALU|m_out[0]~0_combout\ & (\MUX_A_ALU|m_out[0]~0_combout\ $ (VCC))) # (!\MUX_B_extsgn_ALU|m_out[0]~0_combout\ & ((\MUX_A_ALU|m_out[0]~0_combout\) # (GND)))
-- \ULA|tmp[0]~1\ = CARRY((\MUX_A_ALU|m_out[0]~0_combout\) # (!\MUX_B_extsgn_ALU|m_out[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[0]~0_combout\,
	datab => \MUX_A_ALU|m_out[0]~0_combout\,
	datad => VCC,
	combout => \ULA|tmp[0]~0_combout\,
	cout => \ULA|tmp[0]~1\);

-- Location: LCCOMB_X13_Y10_N2
\ULA|tmp[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|tmp[1]~2_combout\ = (\MUX_A_ALU|m_out[1]~31_combout\ & ((\MUX_B_extsgn_ALU|m_out[1]~18_combout\ & (!\ULA|tmp[0]~1\)) # (!\MUX_B_extsgn_ALU|m_out[1]~18_combout\ & (\ULA|tmp[0]~1\ & VCC)))) # (!\MUX_A_ALU|m_out[1]~31_combout\ & 
-- ((\MUX_B_extsgn_ALU|m_out[1]~18_combout\ & ((\ULA|tmp[0]~1\) # (GND))) # (!\MUX_B_extsgn_ALU|m_out[1]~18_combout\ & (!\ULA|tmp[0]~1\))))
-- \ULA|tmp[1]~3\ = CARRY((\MUX_A_ALU|m_out[1]~31_combout\ & (\MUX_B_extsgn_ALU|m_out[1]~18_combout\ & !\ULA|tmp[0]~1\)) # (!\MUX_A_ALU|m_out[1]~31_combout\ & ((\MUX_B_extsgn_ALU|m_out[1]~18_combout\) # (!\ULA|tmp[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[1]~31_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[1]~18_combout\,
	datad => VCC,
	cin => \ULA|tmp[0]~1\,
	combout => \ULA|tmp[1]~2_combout\,
	cout => \ULA|tmp[1]~3\);

-- Location: LCCOMB_X13_Y10_N6
\ULA|tmp[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|tmp[3]~6_combout\ = (\MUX_A_ALU|m_out[3]~29_combout\ & ((\MUX_B_extsgn_ALU|m_out[3]~16_combout\ & (!\ULA|tmp[2]~5\)) # (!\MUX_B_extsgn_ALU|m_out[3]~16_combout\ & (\ULA|tmp[2]~5\ & VCC)))) # (!\MUX_A_ALU|m_out[3]~29_combout\ & 
-- ((\MUX_B_extsgn_ALU|m_out[3]~16_combout\ & ((\ULA|tmp[2]~5\) # (GND))) # (!\MUX_B_extsgn_ALU|m_out[3]~16_combout\ & (!\ULA|tmp[2]~5\))))
-- \ULA|tmp[3]~7\ = CARRY((\MUX_A_ALU|m_out[3]~29_combout\ & (\MUX_B_extsgn_ALU|m_out[3]~16_combout\ & !\ULA|tmp[2]~5\)) # (!\MUX_A_ALU|m_out[3]~29_combout\ & ((\MUX_B_extsgn_ALU|m_out[3]~16_combout\) # (!\ULA|tmp[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[3]~29_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[3]~16_combout\,
	datad => VCC,
	cin => \ULA|tmp[2]~5\,
	combout => \ULA|tmp[3]~6_combout\,
	cout => \ULA|tmp[3]~7\);

-- Location: LCCOMB_X13_Y10_N22
\ULA|tmp[11]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|tmp[11]~22_combout\ = (\MUX_B_extsgn_ALU|m_out[11]~8_combout\ & ((\MUX_A_ALU|m_out[11]~21_combout\ & (!\ULA|tmp[10]~21\)) # (!\MUX_A_ALU|m_out[11]~21_combout\ & ((\ULA|tmp[10]~21\) # (GND))))) # (!\MUX_B_extsgn_ALU|m_out[11]~8_combout\ & 
-- ((\MUX_A_ALU|m_out[11]~21_combout\ & (\ULA|tmp[10]~21\ & VCC)) # (!\MUX_A_ALU|m_out[11]~21_combout\ & (!\ULA|tmp[10]~21\))))
-- \ULA|tmp[11]~23\ = CARRY((\MUX_B_extsgn_ALU|m_out[11]~8_combout\ & ((!\ULA|tmp[10]~21\) # (!\MUX_A_ALU|m_out[11]~21_combout\))) # (!\MUX_B_extsgn_ALU|m_out[11]~8_combout\ & (!\MUX_A_ALU|m_out[11]~21_combout\ & !\ULA|tmp[10]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[11]~8_combout\,
	datab => \MUX_A_ALU|m_out[11]~21_combout\,
	datad => VCC,
	cin => \ULA|tmp[10]~21\,
	combout => \ULA|tmp[11]~22_combout\,
	cout => \ULA|tmp[11]~23\);

-- Location: LCCOMB_X13_Y10_N24
\ULA|tmp[12]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|tmp[12]~24_combout\ = ((\MUX_B_extsgn_ALU|m_out[12]~7_combout\ $ (\MUX_A_ALU|m_out[12]~20_combout\ $ (\ULA|tmp[11]~23\)))) # (GND)
-- \ULA|tmp[12]~25\ = CARRY((\MUX_B_extsgn_ALU|m_out[12]~7_combout\ & (\MUX_A_ALU|m_out[12]~20_combout\ & !\ULA|tmp[11]~23\)) # (!\MUX_B_extsgn_ALU|m_out[12]~7_combout\ & ((\MUX_A_ALU|m_out[12]~20_combout\) # (!\ULA|tmp[11]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[12]~7_combout\,
	datab => \MUX_A_ALU|m_out[12]~20_combout\,
	datad => VCC,
	cin => \ULA|tmp[11]~23\,
	combout => \ULA|tmp[12]~24_combout\,
	cout => \ULA|tmp[12]~25\);

-- Location: LCCOMB_X13_Y9_N4
\ULA|tmp[18]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|tmp[18]~36_combout\ = ((\MUX_A_ALU|m_out[18]~14_combout\ $ (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ $ (\ULA|tmp[17]~35\)))) # (GND)
-- \ULA|tmp[18]~37\ = CARRY((\MUX_A_ALU|m_out[18]~14_combout\ & ((!\ULA|tmp[17]~35\) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\))) # (!\MUX_A_ALU|m_out[18]~14_combout\ & (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & !\ULA|tmp[17]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[18]~14_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datad => VCC,
	cin => \ULA|tmp[17]~35\,
	combout => \ULA|tmp[18]~36_combout\,
	cout => \ULA|tmp[18]~37\);

-- Location: LCCOMB_X13_Y9_N6
\ULA|tmp[19]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|tmp[19]~38_combout\ = (\MUX_A_ALU|m_out[19]~13_combout\ & ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (!\ULA|tmp[18]~37\)) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (\ULA|tmp[18]~37\ & VCC)))) # (!\MUX_A_ALU|m_out[19]~13_combout\ & 
-- ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & ((\ULA|tmp[18]~37\) # (GND))) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (!\ULA|tmp[18]~37\))))
-- \ULA|tmp[19]~39\ = CARRY((\MUX_A_ALU|m_out[19]~13_combout\ & (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & !\ULA|tmp[18]~37\)) # (!\MUX_A_ALU|m_out[19]~13_combout\ & ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\) # (!\ULA|tmp[18]~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[19]~13_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datad => VCC,
	cin => \ULA|tmp[18]~37\,
	combout => \ULA|tmp[19]~38_combout\,
	cout => \ULA|tmp[19]~39\);

-- Location: LCCOMB_X13_Y9_N10
\ULA|tmp[21]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|tmp[21]~42_combout\ = (\MUX_A_ALU|m_out[21]~11_combout\ & ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (!\ULA|tmp[20]~41\)) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (\ULA|tmp[20]~41\ & VCC)))) # (!\MUX_A_ALU|m_out[21]~11_combout\ & 
-- ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & ((\ULA|tmp[20]~41\) # (GND))) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (!\ULA|tmp[20]~41\))))
-- \ULA|tmp[21]~43\ = CARRY((\MUX_A_ALU|m_out[21]~11_combout\ & (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & !\ULA|tmp[20]~41\)) # (!\MUX_A_ALU|m_out[21]~11_combout\ & ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\) # (!\ULA|tmp[20]~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[21]~11_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datad => VCC,
	cin => \ULA|tmp[20]~41\,
	combout => \ULA|tmp[21]~42_combout\,
	cout => \ULA|tmp[21]~43\);

-- Location: LCCOMB_X9_Y10_N14
\MUX_A_ALU|m_out[18]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A_ALU|m_out[18]~14_combout\ = (!\Controladora|pstate.rtype_ex_st~regout\ & (!\Controladora|pstate.branch_ex_st~regout\ & (!\Controladora|pstate.c_mem_add_st~regout\ & \PC|sr_out\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.rtype_ex_st~regout\,
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \Controladora|pstate.c_mem_add_st~regout\,
	datad => \PC|sr_out\(18),
	combout => \MUX_A_ALU|m_out[18]~14_combout\);

-- Location: LCCOMB_X9_Y9_N8
\MUX_A_ALU|m_out[16]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A_ALU|m_out[16]~16_combout\ = (!\Controladora|pstate.rtype_ex_st~regout\ & (!\Controladora|pstate.branch_ex_st~regout\ & (!\Controladora|pstate.c_mem_add_st~regout\ & \PC|sr_out\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.rtype_ex_st~regout\,
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \Controladora|pstate.c_mem_add_st~regout\,
	datad => \PC|sr_out\(16),
	combout => \MUX_A_ALU|m_out[16]~16_combout\);

-- Location: LCCOMB_X9_Y11_N26
\MUX_B_extsgn_ALU|m_out[12]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B_extsgn_ALU|m_out[12]~7_combout\ = (\RI|sr_out\(12) & (((\RI|sr_out\(10) & \MUX_B_extsgn_ALU|m_out[16]~2_combout\)) # (!\MUX_B_extsgn_ALU|Equal2~0_combout\))) # (!\RI|sr_out\(12) & (\RI|sr_out\(10) & (\MUX_B_extsgn_ALU|m_out[16]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(12),
	datab => \RI|sr_out\(10),
	datac => \MUX_B_extsgn_ALU|m_out[16]~2_combout\,
	datad => \MUX_B_extsgn_ALU|Equal2~0_combout\,
	combout => \MUX_B_extsgn_ALU|m_out[12]~7_combout\);

-- Location: LCCOMB_X10_Y11_N4
\MUX_B_extsgn_ALU|m_out[11]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B_extsgn_ALU|m_out[11]~8_combout\ = (\RI|sr_out\(11) & (((\MUX_B_extsgn_ALU|m_out[16]~2_combout\ & \RI|sr_out\(9))) # (!\MUX_B_extsgn_ALU|Equal2~0_combout\))) # (!\RI|sr_out\(11) & (\MUX_B_extsgn_ALU|m_out[16]~2_combout\ & ((\RI|sr_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(11),
	datab => \MUX_B_extsgn_ALU|m_out[16]~2_combout\,
	datac => \MUX_B_extsgn_ALU|Equal2~0_combout\,
	datad => \RI|sr_out\(9),
	combout => \MUX_B_extsgn_ALU|m_out[11]~8_combout\);

-- Location: LCCOMB_X9_Y10_N12
\MUX_A_ALU|m_out[1]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A_ALU|m_out[1]~31_combout\ = (!\Controladora|pstate.rtype_ex_st~regout\ & (!\Controladora|pstate.branch_ex_st~regout\ & (!\Controladora|pstate.c_mem_add_st~regout\ & \PC|sr_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.rtype_ex_st~regout\,
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \Controladora|pstate.c_mem_add_st~regout\,
	datad => \PC|sr_out\(1),
	combout => \MUX_A_ALU|m_out[1]~31_combout\);

-- Location: LCCOMB_X13_Y6_N12
\ULA|Mux31~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux31~6_combout\ = (\MUX_A_ALU|m_out[0]~0_combout\ & (\MUX_B_extsgn_ALU|m_out[0]~0_combout\ & ((!\COntroladora_ULA|alu_ctr[3]~6_combout\) # (!\Controladora|pstate.rtype_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[0]~0_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[0]~0_combout\,
	datac => \Controladora|pstate.rtype_ex_st~regout\,
	datad => \COntroladora_ULA|alu_ctr[3]~6_combout\,
	combout => \ULA|Mux31~6_combout\);

-- Location: LCCOMB_X13_Y8_N20
\PC|sr_out[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out[0]~1_combout\ = (!\Controladora|pstate.jump_ex_st~regout\ & (!\reset~combout\ & \Controladora|pstate.fetch_st~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.jump_ex_st~regout\,
	datab => \reset~combout\,
	datad => \Controladora|pstate.fetch_st~regout\,
	combout => \PC|sr_out[0]~1_combout\);

-- Location: LCCOMB_X12_Y7_N2
\ULA|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Equal0~0_combout\ = (!\ULA|Mux6~4_combout\ & (!\ULA|Mux9~4_combout\ & (!\ULA|Mux8~4_combout\ & !\ULA|Mux7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux6~4_combout\,
	datab => \ULA|Mux9~4_combout\,
	datac => \ULA|Mux8~4_combout\,
	datad => \ULA|Mux7~4_combout\,
	combout => \ULA|Equal0~0_combout\);

-- Location: LCCOMB_X12_Y9_N14
\ULA|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux2~2_combout\ = (\MUX_A_ALU|m_out[29]~3_combout\ & (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & !\COntroladora_ULA|alu_ctr[2]~8_combout\)) # (!\MUX_A_ALU|m_out[29]~3_combout\ & (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ $ 
-- (\COntroladora_ULA|alu_ctr[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A_ALU|m_out[29]~3_combout\,
	datac => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datad => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	combout => \ULA|Mux2~2_combout\);

-- Location: LCCOMB_X12_Y9_N6
\ULA|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux3~0_combout\ = (\MUX_A_ALU|m_out[28]~4_combout\ & (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & !\COntroladora_ULA|alu_ctr[2]~8_combout\)) # (!\MUX_A_ALU|m_out[28]~4_combout\ & (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ $ 
-- (\COntroladora_ULA|alu_ctr[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[28]~4_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datad => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	combout => \ULA|Mux3~0_combout\);

-- Location: LCCOMB_X9_Y8_N20
\ULA|Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux24~0_combout\ = (\MUX_B_extsgn_ALU|m_out[7]~12_combout\ & (!\COntroladora_ULA|alu_ctr[2]~8_combout\ & !\MUX_A_ALU|m_out[7]~25_combout\)) # (!\MUX_B_extsgn_ALU|m_out[7]~12_combout\ & (\COntroladora_ULA|alu_ctr[2]~8_combout\ $ 
-- (\MUX_A_ALU|m_out[7]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[7]~12_combout\,
	datac => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	datad => \MUX_A_ALU|m_out[7]~25_combout\,
	combout => \ULA|Mux24~0_combout\);

-- Location: LCCOMB_X13_Y8_N24
\ULA|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Equal0~4_combout\ = (!\ULA|Mux25~4_combout\ & (!\ULA|Mux23~4_combout\ & (!\ULA|Mux24~4_combout\ & !\ULA|Mux26~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux25~4_combout\,
	datab => \ULA|Mux23~4_combout\,
	datac => \ULA|Mux24~4_combout\,
	datad => \ULA|Mux26~4_combout\,
	combout => \ULA|Equal0~4_combout\);

-- Location: LCCOMB_X10_Y6_N12
\ULA|Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux27~0_combout\ = (\COntroladora_ULA|alu_ctr[2]~8_combout\ & (!\MUX_A_ALU|m_out[4]~28_combout\ & !\MUX_B_extsgn_ALU|m_out[4]~15_combout\)) # (!\COntroladora_ULA|alu_ctr[2]~8_combout\ & (\MUX_A_ALU|m_out[4]~28_combout\ $ 
-- (\MUX_B_extsgn_ALU|m_out[4]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	datac => \MUX_A_ALU|m_out[4]~28_combout\,
	datad => \MUX_B_extsgn_ALU|m_out[4]~15_combout\,
	combout => \ULA|Mux27~0_combout\);

-- Location: LCCOMB_X13_Y11_N24
\ULA|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux13~0_combout\ = (\MUX_A_ALU|m_out[18]~14_combout\ & (!\COntroladora_ULA|alu_ctr[2]~8_combout\ & !\MUX_B_extsgn_ALU|m_out[31]~1_combout\)) # (!\MUX_A_ALU|m_out[18]~14_combout\ & (\COntroladora_ULA|alu_ctr[2]~8_combout\ $ 
-- (\MUX_B_extsgn_ALU|m_out[31]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[18]~14_combout\,
	datac => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	datad => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	combout => \ULA|Mux13~0_combout\);

-- Location: LCCOMB_X13_Y7_N10
\ULA|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux15~0_combout\ = (\MUX_B_extsgn_ALU|m_out[16]~3_combout\ & (!\MUX_A_ALU|m_out[16]~16_combout\ & !\COntroladora_ULA|alu_ctr[2]~8_combout\)) # (!\MUX_B_extsgn_ALU|m_out[16]~3_combout\ & (\MUX_A_ALU|m_out[16]~16_combout\ $ 
-- (\COntroladora_ULA|alu_ctr[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_B_extsgn_ALU|m_out[16]~3_combout\,
	datac => \MUX_A_ALU|m_out[16]~16_combout\,
	datad => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	combout => \ULA|Mux15~0_combout\);

-- Location: LCCOMB_X10_Y8_N24
\ULA|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux18~0_combout\ = (\MUX_A_ALU|m_out[13]~19_combout\ & (!\MUX_B_extsgn_ALU|m_out[13]~6_combout\ & !\COntroladora_ULA|alu_ctr[2]~8_combout\)) # (!\MUX_A_ALU|m_out[13]~19_combout\ & (\MUX_B_extsgn_ALU|m_out[13]~6_combout\ $ 
-- (\COntroladora_ULA|alu_ctr[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A_ALU|m_out[13]~19_combout\,
	datac => \MUX_B_extsgn_ALU|m_out[13]~6_combout\,
	datad => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	combout => \ULA|Mux18~0_combout\);

-- Location: LCCOMB_X12_Y6_N16
\ULA|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux19~0_combout\ = (\MUX_A_ALU|m_out[12]~20_combout\ & (!\COntroladora_ULA|alu_ctr[2]~8_combout\ & !\MUX_B_extsgn_ALU|m_out[12]~7_combout\)) # (!\MUX_A_ALU|m_out[12]~20_combout\ & (\COntroladora_ULA|alu_ctr[2]~8_combout\ $ 
-- (\MUX_B_extsgn_ALU|m_out[12]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A_ALU|m_out[12]~20_combout\,
	datac => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	datad => \MUX_B_extsgn_ALU|m_out[12]~7_combout\,
	combout => \ULA|Mux19~0_combout\);

-- Location: LCCOMB_X12_Y12_N10
\ULA|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux20~0_combout\ = (\MUX_A_ALU|m_out[11]~21_combout\ & (!\COntroladora_ULA|alu_ctr[2]~8_combout\ & !\MUX_B_extsgn_ALU|m_out[11]~8_combout\)) # (!\MUX_A_ALU|m_out[11]~21_combout\ & (\COntroladora_ULA|alu_ctr[2]~8_combout\ $ 
-- (\MUX_B_extsgn_ALU|m_out[11]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A_ALU|m_out[11]~21_combout\,
	datac => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	datad => \MUX_B_extsgn_ALU|m_out[11]~8_combout\,
	combout => \ULA|Mux20~0_combout\);

-- Location: LCCOMB_X9_Y8_N24
\ULA|Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux22~0_combout\ = (\MUX_B_extsgn_ALU|m_out[9]~10_combout\ & (!\MUX_A_ALU|m_out[9]~23_combout\ & !\COntroladora_ULA|alu_ctr[2]~8_combout\)) # (!\MUX_B_extsgn_ALU|m_out[9]~10_combout\ & (\MUX_A_ALU|m_out[9]~23_combout\ $ 
-- (\COntroladora_ULA|alu_ctr[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[9]~10_combout\,
	datac => \MUX_A_ALU|m_out[9]~23_combout\,
	datad => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	combout => \ULA|Mux22~0_combout\);

-- Location: LCCOMB_X13_Y8_N16
\ULA|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Equal0~10_combout\ = (!\ULA|Mux22~4_combout\ & (!\ULA|Mux21~4_combout\ & (!\ULA|Mux19~4_combout\ & !\ULA|Mux20~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux22~4_combout\,
	datab => \ULA|Mux21~4_combout\,
	datac => \ULA|Mux19~4_combout\,
	datad => \ULA|Mux20~4_combout\,
	combout => \ULA|Equal0~10_combout\);

-- Location: LCCOMB_X14_Y8_N0
\PC|sr_out~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~16_combout\ = (\Controladora|pstate.branch_ex_st~regout\ & (((!\Controladora|pstate.jump_ex_st~regout\ & \SaidaAlu|sr_out\(8))))) # (!\Controladora|pstate.branch_ex_st~regout\ & (\RI|sr_out\(6) & (\Controladora|pstate.jump_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(6),
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \Controladora|pstate.jump_ex_st~regout\,
	datad => \SaidaAlu|sr_out\(8),
	combout => \PC|sr_out~16_combout\);

-- Location: LCCOMB_X8_Y10_N12
\Controladora|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|Mux0~0_combout\ = (\RI|sr_out\(27) & ((\RI|sr_out\(28)) # (\RI|sr_out\(26) $ (\RI|sr_out\(31))))) # (!\RI|sr_out\(27) & ((\RI|sr_out\(31)) # ((\RI|sr_out\(26) & !\RI|sr_out\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(26),
	datab => \RI|sr_out\(27),
	datac => \RI|sr_out\(28),
	datad => \RI|sr_out\(31),
	combout => \Controladora|Mux0~0_combout\);

-- Location: LCCOMB_X13_Y6_N24
\ULA|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux0~2_combout\ = (\MUX_A_ALU|m_out[31]~1_combout\ & (!\COntroladora_ULA|alu_ctr[2]~8_combout\ & ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\) # (\COntroladora_ULA|alu_ctr[0]~11_combout\)))) # (!\MUX_A_ALU|m_out[31]~1_combout\ & 
-- ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (!\COntroladora_ULA|alu_ctr[2]~8_combout\ & \COntroladora_ULA|alu_ctr[0]~11_combout\)) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (\COntroladora_ULA|alu_ctr[2]~8_combout\ & 
-- !\COntroladora_ULA|alu_ctr[0]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[31]~1_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datac => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	datad => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	combout => \ULA|Mux0~2_combout\);

-- Location: LCCOMB_X13_Y6_N6
\ULA|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux0~3_combout\ = (\ULA|Mux0~2_combout\ & (!\COntroladora_ULA|alu_ctr[1]~3_combout\ & (\COntroladora_ULA|alu_ctr[2]~8_combout\ $ (!\COntroladora_ULA|alu_ctr[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux0~2_combout\,
	datab => \COntroladora_ULA|alu_ctr[1]~3_combout\,
	datac => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	datad => \COntroladora_ULA|alu_ctr[3]~9_combout\,
	combout => \ULA|Mux0~3_combout\);

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

-- Location: LCCOMB_X12_Y12_N30
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

-- Location: LCCOMB_X13_Y8_N28
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
\Controladora|pstate.decode_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Controladora|pstate.decode_st~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Controladora|pstate.decode_st~regout\);

-- Location: LCCOMB_X9_Y11_N22
\Controladora|nstate.writemem_st~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|nstate.writemem_st~0_combout\ = (\Controladora|pstate.c_mem_add_st~regout\ & ((\RI|sr_out\(29)) # ((\RI|sr_out\(30)) # (!\Controladora|nstate.c_mem_add_st~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(29),
	datab => \Controladora|pstate.c_mem_add_st~regout\,
	datac => \RI|sr_out\(30),
	datad => \Controladora|nstate.c_mem_add_st~0_combout\,
	combout => \Controladora|nstate.writemem_st~0_combout\);

-- Location: LCFF_X9_Y11_N23
\Controladora|pstate.writemem_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Controladora|nstate.writemem_st~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Controladora|pstate.writemem_st~regout\);

-- Location: LCCOMB_X8_Y10_N24
\Controladora|nstate.jump_ex_st~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|nstate.jump_ex_st~0_combout\ = (\RI|sr_out\(27) & \Controladora|nstate.rtype_ex_st~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RI|sr_out\(27),
	datad => \Controladora|nstate.rtype_ex_st~0_combout\,
	combout => \Controladora|nstate.jump_ex_st~0_combout\);

-- Location: LCFF_X8_Y10_N25
\Controladora|pstate.jump_ex_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Controladora|nstate.jump_ex_st~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Controladora|pstate.jump_ex_st~regout\);

-- Location: LCCOMB_X9_Y9_N6
\RI|sr_out~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~6_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(5),
	combout => \RI|sr_out~6_combout\);

-- Location: LCCOMB_X9_Y11_N30
\RI|sr_out[14]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out[14]~1_combout\ = (\reset~combout\) # (!\Controladora|pstate.fetch_st~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.fetch_st~regout\,
	datad => \reset~combout\,
	combout => \RI|sr_out[14]~1_combout\);

-- Location: LCFF_X9_Y9_N7
\RI|sr_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~6_combout\,
	ena => \RI|sr_out[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(5));

-- Location: LCCOMB_X9_Y10_N10
\MUX_A_ALU|m_out[7]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A_ALU|m_out[7]~25_combout\ = (!\Controladora|pstate.rtype_ex_st~regout\ & (!\Controladora|pstate.branch_ex_st~regout\ & (!\Controladora|pstate.c_mem_add_st~regout\ & \PC|sr_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.rtype_ex_st~regout\,
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \Controladora|pstate.c_mem_add_st~regout\,
	datad => \PC|sr_out\(7),
	combout => \MUX_A_ALU|m_out[7]~25_combout\);

-- Location: LCCOMB_X9_Y9_N28
\RI|sr_out~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~3_combout\ = (\Memoria|altsyncram_component|auto_generated|q_a\(2) & !\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memoria|altsyncram_component|auto_generated|q_a\(2),
	datac => \reset~combout\,
	combout => \RI|sr_out~3_combout\);

-- Location: LCFF_X9_Y9_N29
\RI|sr_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~3_combout\,
	ena => \RI|sr_out[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(2));

-- Location: LCCOMB_X9_Y9_N12
\COntroladora_ULA|alu_ctr[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \COntroladora_ULA|alu_ctr[1]~2_combout\ = (!\RI|sr_out\(4) & (!\RI|sr_out\(3) & ((\RI|sr_out\(5)) # (!\RI|sr_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(5),
	datab => \RI|sr_out\(4),
	datac => \RI|sr_out\(2),
	datad => \RI|sr_out\(3),
	combout => \COntroladora_ULA|alu_ctr[1]~2_combout\);

-- Location: LCCOMB_X13_Y7_N20
\COntroladora_ULA|alu_ctr[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \COntroladora_ULA|alu_ctr[1]~0_combout\ = ((\Controladora|pstate.branch_ex_st~regout\ & ((!\RI|sr_out\(1)) # (!\RI|sr_out\(0))))) # (!\Controladora|pstate.rtype_ex_st~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(0),
	datab => \RI|sr_out\(1),
	datac => \Controladora|pstate.rtype_ex_st~regout\,
	datad => \Controladora|pstate.branch_ex_st~regout\,
	combout => \COntroladora_ULA|alu_ctr[1]~0_combout\);

-- Location: LCCOMB_X13_Y7_N26
\COntroladora_ULA|alu_ctr[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \COntroladora_ULA|alu_ctr[1]~1_combout\ = (\Controladora|pstate.branch_ex_st~regout\) # ((\RI|sr_out\(5)) # (\RI|sr_out\(0) $ (\RI|sr_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(0),
	datab => \RI|sr_out\(1),
	datac => \Controladora|pstate.branch_ex_st~regout\,
	datad => \RI|sr_out\(5),
	combout => \COntroladora_ULA|alu_ctr[1]~1_combout\);

-- Location: LCCOMB_X13_Y7_N0
\COntroladora_ULA|alu_ctr[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \COntroladora_ULA|alu_ctr[1]~3_combout\ = ((\COntroladora_ULA|alu_ctr[1]~0_combout\) # ((!\RI|sr_out\(2) & \COntroladora_ULA|alu_ctr[1]~1_combout\))) # (!\COntroladora_ULA|alu_ctr[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(2),
	datab => \COntroladora_ULA|alu_ctr[1]~2_combout\,
	datac => \COntroladora_ULA|alu_ctr[1]~0_combout\,
	datad => \COntroladora_ULA|alu_ctr[1]~1_combout\,
	combout => \COntroladora_ULA|alu_ctr[1]~3_combout\);

-- Location: LCCOMB_X13_Y7_N30
\ULA|Mux31~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux31~5_combout\ = (!\COntroladora_ULA|alu_ctr[1]~3_combout\ & !\COntroladora_ULA|alu_ctr[2]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COntroladora_ULA|alu_ctr[1]~3_combout\,
	datad => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	combout => \ULA|Mux31~5_combout\);

-- Location: LCCOMB_X10_Y11_N22
\RI|sr_out~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~8_combout\ = (\Memoria|altsyncram_component|auto_generated|q_a\(7) & !\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memoria|altsyncram_component|auto_generated|q_a\(7),
	datad => \reset~combout\,
	combout => \RI|sr_out~8_combout\);

-- Location: LCFF_X9_Y11_N31
\RI|sr_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \RI|sr_out~8_combout\,
	sload => VCC,
	ena => \RI|sr_out[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(7));

-- Location: LCCOMB_X10_Y11_N20
\MUX_B_extsgn_ALU|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B_extsgn_ALU|Equal2~0_combout\ = ((\Controladora|pstate.decode_st~regout\) # (!\Controladora|pstate.c_mem_add_st~regout\)) # (!\Controladora|pstate.fetch_st~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controladora|pstate.fetch_st~regout\,
	datac => \Controladora|pstate.c_mem_add_st~regout\,
	datad => \Controladora|pstate.decode_st~regout\,
	combout => \MUX_B_extsgn_ALU|Equal2~0_combout\);

-- Location: LCCOMB_X9_Y8_N10
\MUX_B_extsgn_ALU|m_out[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B_extsgn_ALU|m_out[7]~12_combout\ = (\RI|sr_out\(5) & ((\MUX_B_extsgn_ALU|m_out[16]~2_combout\) # ((\RI|sr_out\(7) & !\MUX_B_extsgn_ALU|Equal2~0_combout\)))) # (!\RI|sr_out\(5) & (\RI|sr_out\(7) & ((!\MUX_B_extsgn_ALU|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(5),
	datab => \RI|sr_out\(7),
	datac => \MUX_B_extsgn_ALU|m_out[16]~2_combout\,
	datad => \MUX_B_extsgn_ALU|Equal2~0_combout\,
	combout => \MUX_B_extsgn_ALU|m_out[7]~12_combout\);

-- Location: LCCOMB_X9_Y10_N4
\MUX_A_ALU|m_out[6]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A_ALU|m_out[6]~26_combout\ = (!\Controladora|pstate.rtype_ex_st~regout\ & (!\Controladora|pstate.c_mem_add_st~regout\ & (\PC|sr_out\(6) & !\Controladora|pstate.branch_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.rtype_ex_st~regout\,
	datab => \Controladora|pstate.c_mem_add_st~regout\,
	datac => \PC|sr_out\(6),
	datad => \Controladora|pstate.branch_ex_st~regout\,
	combout => \MUX_A_ALU|m_out[6]~26_combout\);

-- Location: LCCOMB_X12_Y11_N16
\MUX_A_ALU|m_out[5]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A_ALU|m_out[5]~27_combout\ = (\PC|sr_out\(5) & (!\Controladora|pstate.c_mem_add_st~regout\ & (!\Controladora|pstate.branch_ex_st~regout\ & !\Controladora|pstate.rtype_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|sr_out\(5),
	datab => \Controladora|pstate.c_mem_add_st~regout\,
	datac => \Controladora|pstate.branch_ex_st~regout\,
	datad => \Controladora|pstate.rtype_ex_st~regout\,
	combout => \MUX_A_ALU|m_out[5]~27_combout\);

-- Location: LCCOMB_X10_Y11_N2
\MUX_B_extsgn_ALU|m_out[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B_extsgn_ALU|m_out[4]~15_combout\ = (\RI|sr_out\(4) & (((\MUX_B_extsgn_ALU|m_out[16]~2_combout\ & \RI|sr_out\(2))) # (!\MUX_B_extsgn_ALU|Equal2~0_combout\))) # (!\RI|sr_out\(4) & (\MUX_B_extsgn_ALU|m_out[16]~2_combout\ & ((\RI|sr_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(4),
	datab => \MUX_B_extsgn_ALU|m_out[16]~2_combout\,
	datac => \MUX_B_extsgn_ALU|Equal2~0_combout\,
	datad => \RI|sr_out\(2),
	combout => \MUX_B_extsgn_ALU|m_out[4]~15_combout\);

-- Location: LCCOMB_X10_Y11_N28
\MUX_B_extsgn_ALU|m_out[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B_extsgn_ALU|m_out[3]~16_combout\ = (\MUX_B_extsgn_ALU|Equal2~0_combout\ & (\RI|sr_out\(1) & (\MUX_B_extsgn_ALU|m_out[16]~2_combout\))) # (!\MUX_B_extsgn_ALU|Equal2~0_combout\ & ((\RI|sr_out\(3)) # ((\RI|sr_out\(1) & 
-- \MUX_B_extsgn_ALU|m_out[16]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|Equal2~0_combout\,
	datab => \RI|sr_out\(1),
	datac => \MUX_B_extsgn_ALU|m_out[16]~2_combout\,
	datad => \RI|sr_out\(3),
	combout => \MUX_B_extsgn_ALU|m_out[3]~16_combout\);

-- Location: LCCOMB_X12_Y11_N6
\PC|sr_out~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~4_combout\ = (\Controladora|pstate.jump_ex_st~regout\ & (((\RI|sr_out\(0) & !\Controladora|pstate.branch_ex_st~regout\)))) # (!\Controladora|pstate.jump_ex_st~regout\ & (\SaidaAlu|sr_out\(2) & ((\Controladora|pstate.branch_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SaidaAlu|sr_out\(2),
	datab => \RI|sr_out\(0),
	datac => \Controladora|pstate.jump_ex_st~regout\,
	datad => \Controladora|pstate.branch_ex_st~regout\,
	combout => \PC|sr_out~4_combout\);

-- Location: LCCOMB_X10_Y11_N30
\MUX_B_extsgn_ALU|m_out[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B_extsgn_ALU|m_out[2]~17_combout\ = (\MUX_B_extsgn_ALU|Equal2~0_combout\ & (\MUX_B_extsgn_ALU|m_out[16]~2_combout\ & ((\RI|sr_out\(0))))) # (!\MUX_B_extsgn_ALU|Equal2~0_combout\ & ((\RI|sr_out\(2)) # ((\MUX_B_extsgn_ALU|m_out[16]~2_combout\ & 
-- \RI|sr_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|Equal2~0_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[16]~2_combout\,
	datac => \RI|sr_out\(2),
	datad => \RI|sr_out\(0),
	combout => \MUX_B_extsgn_ALU|m_out[2]~17_combout\);

-- Location: LCCOMB_X13_Y11_N4
\ULA|Mux29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux29~0_combout\ = (\COntroladora_ULA|alu_ctr[2]~8_combout\ & (!\MUX_B_extsgn_ALU|m_out[2]~17_combout\ & !\MUX_A_ALU|m_out[2]~30_combout\)) # (!\COntroladora_ULA|alu_ctr[2]~8_combout\ & (\MUX_B_extsgn_ALU|m_out[2]~17_combout\ $ 
-- (\MUX_A_ALU|m_out[2]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	datac => \MUX_B_extsgn_ALU|m_out[2]~17_combout\,
	datad => \MUX_A_ALU|m_out[2]~30_combout\,
	combout => \ULA|Mux29~0_combout\);

-- Location: LCCOMB_X9_Y9_N2
\COntroladora_ULA|alu_ctr[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \COntroladora_ULA|alu_ctr[0]~10_combout\ = (\RI|sr_out\(2) & ((\RI|sr_out\(1) $ (\RI|sr_out\(0))) # (!\RI|sr_out\(5)))) # (!\RI|sr_out\(2) & ((\RI|sr_out\(0)) # ((\RI|sr_out\(1) & !\RI|sr_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(2),
	datab => \RI|sr_out\(1),
	datac => \RI|sr_out\(0),
	datad => \RI|sr_out\(5),
	combout => \COntroladora_ULA|alu_ctr[0]~10_combout\);

-- Location: LCCOMB_X9_Y9_N16
\COntroladora_ULA|alu_ctr[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \COntroladora_ULA|alu_ctr[0]~11_combout\ = (\Controladora|pstate.rtype_ex_st~regout\ & ((\RI|sr_out\(3)) # ((\COntroladora_ULA|alu_ctr[0]~10_combout\) # (\RI|sr_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.rtype_ex_st~regout\,
	datab => \RI|sr_out\(3),
	datac => \COntroladora_ULA|alu_ctr[0]~10_combout\,
	datad => \RI|sr_out\(4),
	combout => \COntroladora_ULA|alu_ctr[0]~11_combout\);

-- Location: LCCOMB_X14_Y8_N24
\ULA|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux2~1_combout\ = (\COntroladora_ULA|alu_ctr[2]~8_combout\) # ((\COntroladora_ULA|alu_ctr[0]~11_combout\ & !\COntroladora_ULA|alu_ctr[1]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	datac => \COntroladora_ULA|alu_ctr[1]~3_combout\,
	datad => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	combout => \ULA|Mux2~1_combout\);

-- Location: LCCOMB_X9_Y10_N18
\MUX_B_extsgn_ALU|m_out[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B_extsgn_ALU|m_out[1]~18_combout\ = (\Controladora|pstate.c_mem_add_st~regout\ & (\RI|sr_out\(1) & (!\Controladora|pstate.decode_st~regout\ & \Controladora|pstate.fetch_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.c_mem_add_st~regout\,
	datab => \RI|sr_out\(1),
	datac => \Controladora|pstate.decode_st~regout\,
	datad => \Controladora|pstate.fetch_st~regout\,
	combout => \MUX_B_extsgn_ALU|m_out[1]~18_combout\);

-- Location: LCCOMB_X9_Y10_N16
\MUX_A_ALU|m_out[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A_ALU|m_out[0]~0_combout\ = (!\Controladora|pstate.rtype_ex_st~regout\ & (!\Controladora|pstate.branch_ex_st~regout\ & (!\Controladora|pstate.c_mem_add_st~regout\ & \PC|sr_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.rtype_ex_st~regout\,
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \Controladora|pstate.c_mem_add_st~regout\,
	datad => \PC|sr_out\(0),
	combout => \MUX_A_ALU|m_out[0]~0_combout\);

-- Location: LCCOMB_X13_Y10_N4
\ULA|tmp[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|tmp[2]~4_combout\ = ((\MUX_A_ALU|m_out[2]~30_combout\ $ (\MUX_B_extsgn_ALU|m_out[2]~17_combout\ $ (\ULA|tmp[1]~3\)))) # (GND)
-- \ULA|tmp[2]~5\ = CARRY((\MUX_A_ALU|m_out[2]~30_combout\ & ((!\ULA|tmp[1]~3\) # (!\MUX_B_extsgn_ALU|m_out[2]~17_combout\))) # (!\MUX_A_ALU|m_out[2]~30_combout\ & (!\MUX_B_extsgn_ALU|m_out[2]~17_combout\ & !\ULA|tmp[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[2]~30_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[2]~17_combout\,
	datad => VCC,
	cin => \ULA|tmp[1]~3\,
	combout => \ULA|tmp[2]~4_combout\,
	cout => \ULA|tmp[2]~5\);

-- Location: LCCOMB_X10_Y11_N16
\MUX_B_extsgn_ALU|m_out[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B_extsgn_ALU|m_out[0]~0_combout\ = (!\Controladora|pstate.decode_st~regout\ & ((\Controladora|pstate.fetch_st~regout\ & (\Controladora|pstate.c_mem_add_st~regout\ & \RI|sr_out\(0))) # (!\Controladora|pstate.fetch_st~regout\ & 
-- (!\Controladora|pstate.c_mem_add_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.fetch_st~regout\,
	datab => \Controladora|pstate.decode_st~regout\,
	datac => \Controladora|pstate.c_mem_add_st~regout\,
	datad => \RI|sr_out\(0),
	combout => \MUX_B_extsgn_ALU|m_out[0]~0_combout\);

-- Location: LCCOMB_X10_Y10_N0
\ULA|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~0_combout\ = (\MUX_A_ALU|m_out[0]~0_combout\ & (\MUX_B_extsgn_ALU|m_out[0]~0_combout\ $ (VCC))) # (!\MUX_A_ALU|m_out[0]~0_combout\ & (\MUX_B_extsgn_ALU|m_out[0]~0_combout\ & VCC))
-- \ULA|Add1~1\ = CARRY((\MUX_A_ALU|m_out[0]~0_combout\ & \MUX_B_extsgn_ALU|m_out[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[0]~0_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[0]~0_combout\,
	datad => VCC,
	combout => \ULA|Add1~0_combout\,
	cout => \ULA|Add1~1\);

-- Location: LCCOMB_X10_Y10_N2
\ULA|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~2_combout\ = (\MUX_A_ALU|m_out[1]~31_combout\ & ((\MUX_B_extsgn_ALU|m_out[1]~18_combout\ & (\ULA|Add1~1\ & VCC)) # (!\MUX_B_extsgn_ALU|m_out[1]~18_combout\ & (!\ULA|Add1~1\)))) # (!\MUX_A_ALU|m_out[1]~31_combout\ & 
-- ((\MUX_B_extsgn_ALU|m_out[1]~18_combout\ & (!\ULA|Add1~1\)) # (!\MUX_B_extsgn_ALU|m_out[1]~18_combout\ & ((\ULA|Add1~1\) # (GND)))))
-- \ULA|Add1~3\ = CARRY((\MUX_A_ALU|m_out[1]~31_combout\ & (!\MUX_B_extsgn_ALU|m_out[1]~18_combout\ & !\ULA|Add1~1\)) # (!\MUX_A_ALU|m_out[1]~31_combout\ & ((!\ULA|Add1~1\) # (!\MUX_B_extsgn_ALU|m_out[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[1]~31_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[1]~18_combout\,
	datad => VCC,
	cin => \ULA|Add1~1\,
	combout => \ULA|Add1~2_combout\,
	cout => \ULA|Add1~3\);

-- Location: LCCOMB_X10_Y10_N4
\ULA|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~4_combout\ = ((\MUX_B_extsgn_ALU|m_out[2]~17_combout\ $ (\MUX_A_ALU|m_out[2]~30_combout\ $ (!\ULA|Add1~3\)))) # (GND)
-- \ULA|Add1~5\ = CARRY((\MUX_B_extsgn_ALU|m_out[2]~17_combout\ & ((\MUX_A_ALU|m_out[2]~30_combout\) # (!\ULA|Add1~3\))) # (!\MUX_B_extsgn_ALU|m_out[2]~17_combout\ & (\MUX_A_ALU|m_out[2]~30_combout\ & !\ULA|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[2]~17_combout\,
	datab => \MUX_A_ALU|m_out[2]~30_combout\,
	datad => VCC,
	cin => \ULA|Add1~3\,
	combout => \ULA|Add1~4_combout\,
	cout => \ULA|Add1~5\);

-- Location: LCCOMB_X14_Y11_N6
\ULA|Mux29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux29~1_combout\ = (!\COntroladora_ULA|alu_ctr[0]~11_combout\ & \ULA|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	datad => \ULA|Add1~4_combout\,
	combout => \ULA|Mux29~1_combout\);

-- Location: LCCOMB_X14_Y11_N20
\ULA|Mux29~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux29~2_combout\ = (\ULA|Mux2~0_combout\ & ((\ULA|Mux2~1_combout\ & (\ULA|tmp[2]~4_combout\)) # (!\ULA|Mux2~1_combout\ & ((\ULA|Mux29~1_combout\))))) # (!\ULA|Mux2~0_combout\ & (!\ULA|Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux2~0_combout\,
	datab => \ULA|Mux2~1_combout\,
	datac => \ULA|tmp[2]~4_combout\,
	datad => \ULA|Mux29~1_combout\,
	combout => \ULA|Mux29~2_combout\);

-- Location: LCCOMB_X14_Y11_N30
\ULA|Mux29~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux29~3_combout\ = (\ULA|Mux31~5_combout\ & ((\MUX_B_extsgn_ALU|m_out[2]~17_combout\ & ((\MUX_A_ALU|m_out[2]~30_combout\) # (!\ULA|Mux29~2_combout\))) # (!\MUX_B_extsgn_ALU|m_out[2]~17_combout\ & (\MUX_A_ALU|m_out[2]~30_combout\ & 
-- !\ULA|Mux29~2_combout\)))) # (!\ULA|Mux31~5_combout\ & (((\ULA|Mux29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux31~5_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[2]~17_combout\,
	datac => \MUX_A_ALU|m_out[2]~30_combout\,
	datad => \ULA|Mux29~2_combout\,
	combout => \ULA|Mux29~3_combout\);

-- Location: LCCOMB_X14_Y11_N16
\ULA|Mux29~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux29~4_combout\ = (\COntroladora_ULA|alu_ctr[3]~9_combout\ & (\ULA|Mux29~0_combout\ & (\ULA|Mux30~2_combout\))) # (!\COntroladora_ULA|alu_ctr[3]~9_combout\ & ((\ULA|Mux29~3_combout\) # ((\ULA|Mux29~0_combout\ & \ULA|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COntroladora_ULA|alu_ctr[3]~9_combout\,
	datab => \ULA|Mux29~0_combout\,
	datac => \ULA|Mux30~2_combout\,
	datad => \ULA|Mux29~3_combout\,
	combout => \ULA|Mux29~4_combout\);

-- Location: LCCOMB_X10_Y8_N12
\PC|sr_out~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~5_combout\ = (\PC|sr_out~4_combout\) # ((!\Controladora|pstate.branch_ex_st~regout\ & (!\Controladora|pstate.jump_ex_st~regout\ & \ULA|Mux29~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \Controladora|pstate.jump_ex_st~regout\,
	datac => \PC|sr_out~4_combout\,
	datad => \ULA|Mux29~4_combout\,
	combout => \PC|sr_out~5_combout\);

-- Location: LCCOMB_X8_Y10_N8
\Controladora|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|Equal0~1_combout\ = (!\RI|sr_out\(26) & (\RI|sr_out\(28) & (\Controladora|Equal0~0_combout\ & !\RI|sr_out\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(26),
	datab => \RI|sr_out\(28),
	datac => \Controladora|Equal0~0_combout\,
	datad => \RI|sr_out\(27),
	combout => \Controladora|Equal0~1_combout\);

-- Location: LCCOMB_X13_Y8_N18
\ULA|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Equal0~5_combout\ = (!\ULA|Mux28~4_combout\ & !\ULA|Mux27~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ULA|Mux28~4_combout\,
	datad => \ULA|Mux27~4_combout\,
	combout => \ULA|Equal0~5_combout\);

-- Location: LCCOMB_X10_Y11_N6
\RI|sr_out~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~16_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(15),
	combout => \RI|sr_out~16_combout\);

-- Location: LCFF_X10_Y11_N7
\RI|sr_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~16_combout\,
	ena => \RI|sr_out[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(15));

-- Location: LCCOMB_X10_Y11_N0
\MUX_B_extsgn_ALU|m_out[31]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B_extsgn_ALU|m_out[31]~1_combout\ = (\RI|sr_out\(15) & ((\Controladora|pstate.c_mem_add_st~regout\) # (\Controladora|pstate.decode_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.c_mem_add_st~regout\,
	datab => \Controladora|pstate.decode_st~regout\,
	datad => \RI|sr_out\(15),
	combout => \MUX_B_extsgn_ALU|m_out[31]~1_combout\);

-- Location: LCCOMB_X10_Y8_N10
\ULA|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux2~0_combout\ = (\COntroladora_ULA|alu_ctr[1]~3_combout\ & ((!\COntroladora_ULA|alu_ctr[0]~11_combout\) # (!\COntroladora_ULA|alu_ctr[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	datac => \COntroladora_ULA|alu_ctr[1]~3_combout\,
	datad => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	combout => \ULA|Mux2~0_combout\);

-- Location: LCFF_X12_Y9_N17
\SaidaAlu|sr_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ULA|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SaidaAlu|sr_out\(28));

-- Location: LCCOMB_X12_Y9_N22
\PC|sr_out~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~56_combout\ = (\Controladora|pstate.jump_ex_st~regout\ & (!\Controladora|pstate.branch_ex_st~regout\ & (\RI|sr_out\(28)))) # (!\Controladora|pstate.jump_ex_st~regout\ & (\Controladora|pstate.branch_ex_st~regout\ & ((\SaidaAlu|sr_out\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.jump_ex_st~regout\,
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \RI|sr_out\(28),
	datad => \SaidaAlu|sr_out\(28),
	combout => \PC|sr_out~56_combout\);

-- Location: LCCOMB_X12_Y9_N8
\PC|sr_out~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~57_combout\ = (\PC|sr_out~56_combout\) # ((!\Controladora|pstate.jump_ex_st~regout\ & (!\Controladora|pstate.branch_ex_st~regout\ & \ULA|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.jump_ex_st~regout\,
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \ULA|Mux3~4_combout\,
	datad => \PC|sr_out~56_combout\,
	combout => \PC|sr_out~57_combout\);

-- Location: LCFF_X12_Y9_N9
\PC|sr_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~57_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(28));

-- Location: LCCOMB_X12_Y9_N10
\MUX_A_ALU|m_out[28]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A_ALU|m_out[28]~4_combout\ = (!\Controladora|pstate.c_mem_add_st~regout\ & (!\Controladora|pstate.branch_ex_st~regout\ & (\PC|sr_out\(28) & !\Controladora|pstate.rtype_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.c_mem_add_st~regout\,
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \PC|sr_out\(28),
	datad => \Controladora|pstate.rtype_ex_st~regout\,
	combout => \MUX_A_ALU|m_out[28]~4_combout\);

-- Location: LCCOMB_X12_Y11_N10
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

-- Location: LCFF_X12_Y11_N11
\RI|sr_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~25_combout\,
	ena => \RI|sr_out[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(24));

-- Location: LCCOMB_X12_Y12_N20
\PC|sr_out~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~52_combout\ = (\Controladora|pstate.jump_ex_st~regout\ & (((\RI|sr_out\(24) & !\Controladora|pstate.branch_ex_st~regout\)))) # (!\Controladora|pstate.jump_ex_st~regout\ & (\SaidaAlu|sr_out\(26) & ((\Controladora|pstate.branch_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SaidaAlu|sr_out\(26),
	datab => \Controladora|pstate.jump_ex_st~regout\,
	datac => \RI|sr_out\(24),
	datad => \Controladora|pstate.branch_ex_st~regout\,
	combout => \PC|sr_out~52_combout\);

-- Location: LCCOMB_X12_Y7_N4
\ULA|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux6~0_combout\ = (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (!\COntroladora_ULA|alu_ctr[2]~8_combout\ & !\MUX_A_ALU|m_out[25]~7_combout\)) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (\COntroladora_ULA|alu_ctr[2]~8_combout\ $ 
-- (\MUX_A_ALU|m_out[25]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datab => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	datad => \MUX_A_ALU|m_out[25]~7_combout\,
	combout => \ULA|Mux6~0_combout\);

-- Location: LCCOMB_X10_Y7_N6
\ULA|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux7~0_combout\ = (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (!\COntroladora_ULA|alu_ctr[2]~8_combout\ & !\MUX_A_ALU|m_out[24]~8_combout\)) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (\COntroladora_ULA|alu_ctr[2]~8_combout\ $ 
-- (\MUX_A_ALU|m_out[24]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datac => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	datad => \MUX_A_ALU|m_out[24]~8_combout\,
	combout => \ULA|Mux7~0_combout\);

-- Location: LCCOMB_X8_Y11_N12
\RI|sr_out~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~15_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(14),
	combout => \RI|sr_out~15_combout\);

-- Location: LCFF_X10_Y11_N9
\RI|sr_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \RI|sr_out~15_combout\,
	sload => VCC,
	ena => \RI|sr_out[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(14));

-- Location: LCCOMB_X10_Y11_N8
\MUX_B_extsgn_ALU|m_out[16]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B_extsgn_ALU|m_out[16]~3_combout\ = (\MUX_B_extsgn_ALU|Equal2~0_combout\ & (\MUX_B_extsgn_ALU|m_out[16]~2_combout\ & (\RI|sr_out\(14)))) # (!\MUX_B_extsgn_ALU|Equal2~0_combout\ & ((\RI|sr_out\(15)) # ((\MUX_B_extsgn_ALU|m_out[16]~2_combout\ & 
-- \RI|sr_out\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|Equal2~0_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[16]~2_combout\,
	datac => \RI|sr_out\(14),
	datad => \RI|sr_out\(15),
	combout => \MUX_B_extsgn_ALU|m_out[16]~3_combout\);

-- Location: LCCOMB_X14_Y10_N10
\MUX_A_ALU|m_out[15]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A_ALU|m_out[15]~17_combout\ = (\PC|sr_out\(15) & (!\Controladora|pstate.branch_ex_st~regout\ & (!\Controladora|pstate.c_mem_add_st~regout\ & !\Controladora|pstate.rtype_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|sr_out\(15),
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \Controladora|pstate.c_mem_add_st~regout\,
	datad => \Controladora|pstate.rtype_ex_st~regout\,
	combout => \MUX_A_ALU|m_out[15]~17_combout\);

-- Location: LCCOMB_X14_Y11_N18
\ULA|Mux17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux17~2_combout\ = (\ULA|Mux30~2_combout\ & ((\MUX_B_extsgn_ALU|m_out[14]~5_combout\ & (!\COntroladora_ULA|alu_ctr[2]~8_combout\ & !\MUX_A_ALU|m_out[14]~18_combout\)) # (!\MUX_B_extsgn_ALU|m_out[14]~5_combout\ & 
-- (\COntroladora_ULA|alu_ctr[2]~8_combout\ $ (\MUX_A_ALU|m_out[14]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[14]~5_combout\,
	datab => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	datac => \ULA|Mux30~2_combout\,
	datad => \MUX_A_ALU|m_out[14]~18_combout\,
	combout => \ULA|Mux17~2_combout\);

-- Location: LCCOMB_X9_Y11_N24
\MUX_B_extsgn_ALU|m_out[14]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B_extsgn_ALU|m_out[14]~5_combout\ = (\RI|sr_out\(12) & ((\MUX_B_extsgn_ALU|m_out[16]~2_combout\) # ((\RI|sr_out\(14) & !\MUX_B_extsgn_ALU|Equal2~0_combout\)))) # (!\RI|sr_out\(12) & (((\RI|sr_out\(14) & !\MUX_B_extsgn_ALU|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(12),
	datab => \MUX_B_extsgn_ALU|m_out[16]~2_combout\,
	datac => \RI|sr_out\(14),
	datad => \MUX_B_extsgn_ALU|Equal2~0_combout\,
	combout => \MUX_B_extsgn_ALU|m_out[14]~5_combout\);

-- Location: LCCOMB_X10_Y11_N10
\RI|sr_out~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~14_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(13),
	combout => \RI|sr_out~14_combout\);

-- Location: LCFF_X10_Y11_N11
\RI|sr_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~14_combout\,
	ena => \RI|sr_out[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(13));

-- Location: LCCOMB_X12_Y11_N24
\RI|sr_out~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~12_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(11),
	combout => \RI|sr_out~12_combout\);

-- Location: LCFF_X10_Y11_N25
\RI|sr_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \RI|sr_out~12_combout\,
	sload => VCC,
	ena => \RI|sr_out[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(11));

-- Location: LCCOMB_X10_Y11_N24
\MUX_B_extsgn_ALU|m_out[13]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B_extsgn_ALU|m_out[13]~6_combout\ = (\MUX_B_extsgn_ALU|Equal2~0_combout\ & (((\RI|sr_out\(11) & \MUX_B_extsgn_ALU|m_out[16]~2_combout\)))) # (!\MUX_B_extsgn_ALU|Equal2~0_combout\ & ((\RI|sr_out\(13)) # ((\RI|sr_out\(11) & 
-- \MUX_B_extsgn_ALU|m_out[16]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|Equal2~0_combout\,
	datab => \RI|sr_out\(13),
	datac => \RI|sr_out\(11),
	datad => \MUX_B_extsgn_ALU|m_out[16]~2_combout\,
	combout => \MUX_B_extsgn_ALU|m_out[13]~6_combout\);

-- Location: LCCOMB_X9_Y11_N0
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

-- Location: LCFF_X9_Y11_N1
\RI|sr_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~11_combout\,
	ena => \RI|sr_out[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(10));

-- Location: LCCOMB_X9_Y11_N8
\MUX_B_extsgn_ALU|m_out[10]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B_extsgn_ALU|m_out[10]~9_combout\ = (\RI|sr_out\(8) & ((\MUX_B_extsgn_ALU|m_out[16]~2_combout\) # ((\RI|sr_out\(10) & !\MUX_B_extsgn_ALU|Equal2~0_combout\)))) # (!\RI|sr_out\(8) & (\RI|sr_out\(10) & ((!\MUX_B_extsgn_ALU|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(8),
	datab => \RI|sr_out\(10),
	datac => \MUX_B_extsgn_ALU|m_out[16]~2_combout\,
	datad => \MUX_B_extsgn_ALU|Equal2~0_combout\,
	combout => \MUX_B_extsgn_ALU|m_out[10]~9_combout\);

-- Location: LCCOMB_X9_Y11_N10
\MUX_B_extsgn_ALU|m_out[9]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B_extsgn_ALU|m_out[9]~10_combout\ = (\RI|sr_out\(9) & (((\RI|sr_out\(7) & \MUX_B_extsgn_ALU|m_out[16]~2_combout\)) # (!\MUX_B_extsgn_ALU|Equal2~0_combout\))) # (!\RI|sr_out\(9) & (\RI|sr_out\(7) & (\MUX_B_extsgn_ALU|m_out[16]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(9),
	datab => \RI|sr_out\(7),
	datac => \MUX_B_extsgn_ALU|m_out[16]~2_combout\,
	datad => \MUX_B_extsgn_ALU|Equal2~0_combout\,
	combout => \MUX_B_extsgn_ALU|m_out[9]~10_combout\);

-- Location: LCCOMB_X9_Y11_N4
\RI|sr_out~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~7_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(6),
	combout => \RI|sr_out~7_combout\);

-- Location: LCFF_X9_Y11_N5
\RI|sr_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~7_combout\,
	ena => \RI|sr_out[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(6));

-- Location: LCCOMB_X9_Y11_N16
\MUX_B_extsgn_ALU|m_out[8]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B_extsgn_ALU|m_out[8]~11_combout\ = (\RI|sr_out\(8) & (((\RI|sr_out\(6) & \MUX_B_extsgn_ALU|m_out[16]~2_combout\)) # (!\MUX_B_extsgn_ALU|Equal2~0_combout\))) # (!\RI|sr_out\(8) & (\RI|sr_out\(6) & (\MUX_B_extsgn_ALU|m_out[16]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(8),
	datab => \RI|sr_out\(6),
	datac => \MUX_B_extsgn_ALU|m_out[16]~2_combout\,
	datad => \MUX_B_extsgn_ALU|Equal2~0_combout\,
	combout => \MUX_B_extsgn_ALU|m_out[8]~11_combout\);

-- Location: LCCOMB_X14_Y8_N2
\ULA|Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux23~0_combout\ = (\MUX_A_ALU|m_out[8]~24_combout\ & (!\MUX_B_extsgn_ALU|m_out[8]~11_combout\ & !\COntroladora_ULA|alu_ctr[2]~8_combout\)) # (!\MUX_A_ALU|m_out[8]~24_combout\ & (\MUX_B_extsgn_ALU|m_out[8]~11_combout\ $ 
-- (\COntroladora_ULA|alu_ctr[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[8]~24_combout\,
	datac => \MUX_B_extsgn_ALU|m_out[8]~11_combout\,
	datad => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	combout => \ULA|Mux23~0_combout\);

-- Location: LCCOMB_X10_Y10_N14
\ULA|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~14_combout\ = (\MUX_A_ALU|m_out[7]~25_combout\ & ((\MUX_B_extsgn_ALU|m_out[7]~12_combout\ & (\ULA|Add1~13\ & VCC)) # (!\MUX_B_extsgn_ALU|m_out[7]~12_combout\ & (!\ULA|Add1~13\)))) # (!\MUX_A_ALU|m_out[7]~25_combout\ & 
-- ((\MUX_B_extsgn_ALU|m_out[7]~12_combout\ & (!\ULA|Add1~13\)) # (!\MUX_B_extsgn_ALU|m_out[7]~12_combout\ & ((\ULA|Add1~13\) # (GND)))))
-- \ULA|Add1~15\ = CARRY((\MUX_A_ALU|m_out[7]~25_combout\ & (!\MUX_B_extsgn_ALU|m_out[7]~12_combout\ & !\ULA|Add1~13\)) # (!\MUX_A_ALU|m_out[7]~25_combout\ & ((!\ULA|Add1~13\) # (!\MUX_B_extsgn_ALU|m_out[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[7]~25_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[7]~12_combout\,
	datad => VCC,
	cin => \ULA|Add1~13\,
	combout => \ULA|Add1~14_combout\,
	cout => \ULA|Add1~15\);

-- Location: LCCOMB_X10_Y10_N16
\ULA|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~16_combout\ = ((\MUX_B_extsgn_ALU|m_out[8]~11_combout\ $ (\MUX_A_ALU|m_out[8]~24_combout\ $ (!\ULA|Add1~15\)))) # (GND)
-- \ULA|Add1~17\ = CARRY((\MUX_B_extsgn_ALU|m_out[8]~11_combout\ & ((\MUX_A_ALU|m_out[8]~24_combout\) # (!\ULA|Add1~15\))) # (!\MUX_B_extsgn_ALU|m_out[8]~11_combout\ & (\MUX_A_ALU|m_out[8]~24_combout\ & !\ULA|Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[8]~11_combout\,
	datab => \MUX_A_ALU|m_out[8]~24_combout\,
	datad => VCC,
	cin => \ULA|Add1~15\,
	combout => \ULA|Add1~16_combout\,
	cout => \ULA|Add1~17\);

-- Location: LCCOMB_X14_Y8_N4
\ULA|Mux23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux23~1_combout\ = (!\COntroladora_ULA|alu_ctr[0]~11_combout\ & \ULA|Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	datad => \ULA|Add1~16_combout\,
	combout => \ULA|Mux23~1_combout\);

-- Location: LCCOMB_X10_Y11_N26
\MUX_B_extsgn_ALU|m_out[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B_extsgn_ALU|m_out[6]~13_combout\ = (\RI|sr_out\(4) & ((\MUX_B_extsgn_ALU|m_out[16]~2_combout\) # ((\RI|sr_out\(6) & !\MUX_B_extsgn_ALU|Equal2~0_combout\)))) # (!\RI|sr_out\(4) & (\RI|sr_out\(6) & ((!\MUX_B_extsgn_ALU|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(4),
	datab => \RI|sr_out\(6),
	datac => \MUX_B_extsgn_ALU|m_out[16]~2_combout\,
	datad => \MUX_B_extsgn_ALU|Equal2~0_combout\,
	combout => \MUX_B_extsgn_ALU|m_out[6]~13_combout\);

-- Location: LCCOMB_X12_Y8_N30
\PC|sr_out~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~8_combout\ = (\Controladora|pstate.branch_ex_st~regout\ & (\SaidaAlu|sr_out\(4) & (!\Controladora|pstate.jump_ex_st~regout\))) # (!\Controladora|pstate.branch_ex_st~regout\ & (((\Controladora|pstate.jump_ex_st~regout\ & \RI|sr_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SaidaAlu|sr_out\(4),
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \Controladora|pstate.jump_ex_st~regout\,
	datad => \RI|sr_out\(2),
	combout => \PC|sr_out~8_combout\);

-- Location: LCCOMB_X12_Y8_N4
\PC|sr_out~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~9_combout\ = (\PC|sr_out~8_combout\) # ((!\Controladora|pstate.branch_ex_st~regout\ & (\ULA|Mux27~4_combout\ & !\Controladora|pstate.jump_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \ULA|Mux27~4_combout\,
	datac => \Controladora|pstate.jump_ex_st~regout\,
	datad => \PC|sr_out~8_combout\,
	combout => \PC|sr_out~9_combout\);

-- Location: LCFF_X12_Y8_N5
\PC|sr_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~9_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(4));

-- Location: LCCOMB_X9_Y10_N30
\MUX_A_ALU|m_out[4]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A_ALU|m_out[4]~28_combout\ = (!\Controladora|pstate.rtype_ex_st~regout\ & (!\Controladora|pstate.branch_ex_st~regout\ & (!\Controladora|pstate.c_mem_add_st~regout\ & \PC|sr_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.rtype_ex_st~regout\,
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \Controladora|pstate.c_mem_add_st~regout\,
	datad => \PC|sr_out\(4),
	combout => \MUX_A_ALU|m_out[4]~28_combout\);

-- Location: LCCOMB_X13_Y10_N8
\ULA|tmp[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|tmp[4]~8_combout\ = ((\MUX_B_extsgn_ALU|m_out[4]~15_combout\ $ (\MUX_A_ALU|m_out[4]~28_combout\ $ (\ULA|tmp[3]~7\)))) # (GND)
-- \ULA|tmp[4]~9\ = CARRY((\MUX_B_extsgn_ALU|m_out[4]~15_combout\ & (\MUX_A_ALU|m_out[4]~28_combout\ & !\ULA|tmp[3]~7\)) # (!\MUX_B_extsgn_ALU|m_out[4]~15_combout\ & ((\MUX_A_ALU|m_out[4]~28_combout\) # (!\ULA|tmp[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[4]~15_combout\,
	datab => \MUX_A_ALU|m_out[4]~28_combout\,
	datad => VCC,
	cin => \ULA|tmp[3]~7\,
	combout => \ULA|tmp[4]~8_combout\,
	cout => \ULA|tmp[4]~9\);

-- Location: LCCOMB_X13_Y10_N10
\ULA|tmp[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|tmp[5]~10_combout\ = (\MUX_B_extsgn_ALU|m_out[5]~14_combout\ & ((\MUX_A_ALU|m_out[5]~27_combout\ & (!\ULA|tmp[4]~9\)) # (!\MUX_A_ALU|m_out[5]~27_combout\ & ((\ULA|tmp[4]~9\) # (GND))))) # (!\MUX_B_extsgn_ALU|m_out[5]~14_combout\ & 
-- ((\MUX_A_ALU|m_out[5]~27_combout\ & (\ULA|tmp[4]~9\ & VCC)) # (!\MUX_A_ALU|m_out[5]~27_combout\ & (!\ULA|tmp[4]~9\))))
-- \ULA|tmp[5]~11\ = CARRY((\MUX_B_extsgn_ALU|m_out[5]~14_combout\ & ((!\ULA|tmp[4]~9\) # (!\MUX_A_ALU|m_out[5]~27_combout\))) # (!\MUX_B_extsgn_ALU|m_out[5]~14_combout\ & (!\MUX_A_ALU|m_out[5]~27_combout\ & !\ULA|tmp[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[5]~14_combout\,
	datab => \MUX_A_ALU|m_out[5]~27_combout\,
	datad => VCC,
	cin => \ULA|tmp[4]~9\,
	combout => \ULA|tmp[5]~10_combout\,
	cout => \ULA|tmp[5]~11\);

-- Location: LCCOMB_X13_Y10_N12
\ULA|tmp[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|tmp[6]~12_combout\ = ((\MUX_A_ALU|m_out[6]~26_combout\ $ (\MUX_B_extsgn_ALU|m_out[6]~13_combout\ $ (\ULA|tmp[5]~11\)))) # (GND)
-- \ULA|tmp[6]~13\ = CARRY((\MUX_A_ALU|m_out[6]~26_combout\ & ((!\ULA|tmp[5]~11\) # (!\MUX_B_extsgn_ALU|m_out[6]~13_combout\))) # (!\MUX_A_ALU|m_out[6]~26_combout\ & (!\MUX_B_extsgn_ALU|m_out[6]~13_combout\ & !\ULA|tmp[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[6]~26_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[6]~13_combout\,
	datad => VCC,
	cin => \ULA|tmp[5]~11\,
	combout => \ULA|tmp[6]~12_combout\,
	cout => \ULA|tmp[6]~13\);

-- Location: LCCOMB_X13_Y10_N14
\ULA|tmp[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|tmp[7]~14_combout\ = (\MUX_A_ALU|m_out[7]~25_combout\ & ((\MUX_B_extsgn_ALU|m_out[7]~12_combout\ & (!\ULA|tmp[6]~13\)) # (!\MUX_B_extsgn_ALU|m_out[7]~12_combout\ & (\ULA|tmp[6]~13\ & VCC)))) # (!\MUX_A_ALU|m_out[7]~25_combout\ & 
-- ((\MUX_B_extsgn_ALU|m_out[7]~12_combout\ & ((\ULA|tmp[6]~13\) # (GND))) # (!\MUX_B_extsgn_ALU|m_out[7]~12_combout\ & (!\ULA|tmp[6]~13\))))
-- \ULA|tmp[7]~15\ = CARRY((\MUX_A_ALU|m_out[7]~25_combout\ & (\MUX_B_extsgn_ALU|m_out[7]~12_combout\ & !\ULA|tmp[6]~13\)) # (!\MUX_A_ALU|m_out[7]~25_combout\ & ((\MUX_B_extsgn_ALU|m_out[7]~12_combout\) # (!\ULA|tmp[6]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[7]~25_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[7]~12_combout\,
	datad => VCC,
	cin => \ULA|tmp[6]~13\,
	combout => \ULA|tmp[7]~14_combout\,
	cout => \ULA|tmp[7]~15\);

-- Location: LCCOMB_X13_Y10_N16
\ULA|tmp[8]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|tmp[8]~16_combout\ = ((\MUX_A_ALU|m_out[8]~24_combout\ $ (\MUX_B_extsgn_ALU|m_out[8]~11_combout\ $ (\ULA|tmp[7]~15\)))) # (GND)
-- \ULA|tmp[8]~17\ = CARRY((\MUX_A_ALU|m_out[8]~24_combout\ & ((!\ULA|tmp[7]~15\) # (!\MUX_B_extsgn_ALU|m_out[8]~11_combout\))) # (!\MUX_A_ALU|m_out[8]~24_combout\ & (!\MUX_B_extsgn_ALU|m_out[8]~11_combout\ & !\ULA|tmp[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[8]~24_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[8]~11_combout\,
	datad => VCC,
	cin => \ULA|tmp[7]~15\,
	combout => \ULA|tmp[8]~16_combout\,
	cout => \ULA|tmp[8]~17\);

-- Location: LCCOMB_X14_Y8_N22
\ULA|Mux23~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux23~2_combout\ = (\ULA|Mux2~1_combout\ & (\ULA|Mux2~0_combout\ & ((\ULA|tmp[8]~16_combout\)))) # (!\ULA|Mux2~1_combout\ & (((\ULA|Mux23~1_combout\)) # (!\ULA|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux2~1_combout\,
	datab => \ULA|Mux2~0_combout\,
	datac => \ULA|Mux23~1_combout\,
	datad => \ULA|tmp[8]~16_combout\,
	combout => \ULA|Mux23~2_combout\);

-- Location: LCCOMB_X14_Y8_N12
\ULA|Mux23~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux23~3_combout\ = (\ULA|Mux31~5_combout\ & ((\MUX_B_extsgn_ALU|m_out[8]~11_combout\ & ((\MUX_A_ALU|m_out[8]~24_combout\) # (!\ULA|Mux23~2_combout\))) # (!\MUX_B_extsgn_ALU|m_out[8]~11_combout\ & (\MUX_A_ALU|m_out[8]~24_combout\ & 
-- !\ULA|Mux23~2_combout\)))) # (!\ULA|Mux31~5_combout\ & (((\ULA|Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[8]~11_combout\,
	datab => \ULA|Mux31~5_combout\,
	datac => \MUX_A_ALU|m_out[8]~24_combout\,
	datad => \ULA|Mux23~2_combout\,
	combout => \ULA|Mux23~3_combout\);

-- Location: LCCOMB_X14_Y8_N18
\ULA|Mux23~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux23~4_combout\ = (\COntroladora_ULA|alu_ctr[3]~9_combout\ & (\ULA|Mux23~0_combout\ & (\ULA|Mux30~2_combout\))) # (!\COntroladora_ULA|alu_ctr[3]~9_combout\ & ((\ULA|Mux23~3_combout\) # ((\ULA|Mux23~0_combout\ & \ULA|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COntroladora_ULA|alu_ctr[3]~9_combout\,
	datab => \ULA|Mux23~0_combout\,
	datac => \ULA|Mux30~2_combout\,
	datad => \ULA|Mux23~3_combout\,
	combout => \ULA|Mux23~4_combout\);

-- Location: LCCOMB_X14_Y8_N10
\PC|sr_out~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~17_combout\ = (\PC|sr_out~16_combout\) # ((!\Controladora|pstate.jump_ex_st~regout\ & (\ULA|Mux23~4_combout\ & !\Controladora|pstate.branch_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|sr_out~16_combout\,
	datab => \Controladora|pstate.jump_ex_st~regout\,
	datac => \ULA|Mux23~4_combout\,
	datad => \Controladora|pstate.branch_ex_st~regout\,
	combout => \PC|sr_out~17_combout\);

-- Location: LCFF_X14_Y8_N11
\PC|sr_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~17_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(8));

-- Location: LCCOMB_X14_Y10_N6
\MUX_A_ALU|m_out[8]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A_ALU|m_out[8]~24_combout\ = (!\Controladora|pstate.rtype_ex_st~regout\ & (\PC|sr_out\(8) & (!\Controladora|pstate.branch_ex_st~regout\ & !\Controladora|pstate.c_mem_add_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.rtype_ex_st~regout\,
	datab => \PC|sr_out\(8),
	datac => \Controladora|pstate.branch_ex_st~regout\,
	datad => \Controladora|pstate.c_mem_add_st~regout\,
	combout => \MUX_A_ALU|m_out[8]~24_combout\);

-- Location: LCCOMB_X10_Y10_N18
\ULA|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~18_combout\ = (\MUX_A_ALU|m_out[9]~23_combout\ & ((\MUX_B_extsgn_ALU|m_out[9]~10_combout\ & (\ULA|Add1~17\ & VCC)) # (!\MUX_B_extsgn_ALU|m_out[9]~10_combout\ & (!\ULA|Add1~17\)))) # (!\MUX_A_ALU|m_out[9]~23_combout\ & 
-- ((\MUX_B_extsgn_ALU|m_out[9]~10_combout\ & (!\ULA|Add1~17\)) # (!\MUX_B_extsgn_ALU|m_out[9]~10_combout\ & ((\ULA|Add1~17\) # (GND)))))
-- \ULA|Add1~19\ = CARRY((\MUX_A_ALU|m_out[9]~23_combout\ & (!\MUX_B_extsgn_ALU|m_out[9]~10_combout\ & !\ULA|Add1~17\)) # (!\MUX_A_ALU|m_out[9]~23_combout\ & ((!\ULA|Add1~17\) # (!\MUX_B_extsgn_ALU|m_out[9]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[9]~23_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[9]~10_combout\,
	datad => VCC,
	cin => \ULA|Add1~17\,
	combout => \ULA|Add1~18_combout\,
	cout => \ULA|Add1~19\);

-- Location: LCCOMB_X10_Y10_N20
\ULA|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~20_combout\ = ((\MUX_A_ALU|m_out[10]~22_combout\ $ (\MUX_B_extsgn_ALU|m_out[10]~9_combout\ $ (!\ULA|Add1~19\)))) # (GND)
-- \ULA|Add1~21\ = CARRY((\MUX_A_ALU|m_out[10]~22_combout\ & ((\MUX_B_extsgn_ALU|m_out[10]~9_combout\) # (!\ULA|Add1~19\))) # (!\MUX_A_ALU|m_out[10]~22_combout\ & (\MUX_B_extsgn_ALU|m_out[10]~9_combout\ & !\ULA|Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[10]~22_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[10]~9_combout\,
	datad => VCC,
	cin => \ULA|Add1~19\,
	combout => \ULA|Add1~20_combout\,
	cout => \ULA|Add1~21\);

-- Location: LCCOMB_X10_Y10_N22
\ULA|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~22_combout\ = (\MUX_B_extsgn_ALU|m_out[11]~8_combout\ & ((\MUX_A_ALU|m_out[11]~21_combout\ & (\ULA|Add1~21\ & VCC)) # (!\MUX_A_ALU|m_out[11]~21_combout\ & (!\ULA|Add1~21\)))) # (!\MUX_B_extsgn_ALU|m_out[11]~8_combout\ & 
-- ((\MUX_A_ALU|m_out[11]~21_combout\ & (!\ULA|Add1~21\)) # (!\MUX_A_ALU|m_out[11]~21_combout\ & ((\ULA|Add1~21\) # (GND)))))
-- \ULA|Add1~23\ = CARRY((\MUX_B_extsgn_ALU|m_out[11]~8_combout\ & (!\MUX_A_ALU|m_out[11]~21_combout\ & !\ULA|Add1~21\)) # (!\MUX_B_extsgn_ALU|m_out[11]~8_combout\ & ((!\ULA|Add1~21\) # (!\MUX_A_ALU|m_out[11]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[11]~8_combout\,
	datab => \MUX_A_ALU|m_out[11]~21_combout\,
	datad => VCC,
	cin => \ULA|Add1~21\,
	combout => \ULA|Add1~22_combout\,
	cout => \ULA|Add1~23\);

-- Location: LCCOMB_X12_Y12_N12
\ULA|Mux20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux20~1_combout\ = (!\COntroladora_ULA|alu_ctr[0]~11_combout\ & \ULA|Add1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	datad => \ULA|Add1~22_combout\,
	combout => \ULA|Mux20~1_combout\);

-- Location: LCCOMB_X12_Y12_N2
\ULA|Mux20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux20~2_combout\ = (\ULA|Mux2~0_combout\ & ((\ULA|Mux2~1_combout\ & (\ULA|tmp[11]~22_combout\)) # (!\ULA|Mux2~1_combout\ & ((\ULA|Mux20~1_combout\))))) # (!\ULA|Mux2~0_combout\ & (((!\ULA|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|tmp[11]~22_combout\,
	datab => \ULA|Mux2~0_combout\,
	datac => \ULA|Mux2~1_combout\,
	datad => \ULA|Mux20~1_combout\,
	combout => \ULA|Mux20~2_combout\);

-- Location: LCCOMB_X12_Y12_N28
\ULA|Mux20~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux20~3_combout\ = (\ULA|Mux31~5_combout\ & ((\MUX_B_extsgn_ALU|m_out[11]~8_combout\ & ((\MUX_A_ALU|m_out[11]~21_combout\) # (!\ULA|Mux20~2_combout\))) # (!\MUX_B_extsgn_ALU|m_out[11]~8_combout\ & (\MUX_A_ALU|m_out[11]~21_combout\ & 
-- !\ULA|Mux20~2_combout\)))) # (!\ULA|Mux31~5_combout\ & (((\ULA|Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[11]~8_combout\,
	datab => \MUX_A_ALU|m_out[11]~21_combout\,
	datac => \ULA|Mux31~5_combout\,
	datad => \ULA|Mux20~2_combout\,
	combout => \ULA|Mux20~3_combout\);

-- Location: LCCOMB_X12_Y12_N8
\ULA|Mux20~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux20~4_combout\ = (\ULA|Mux20~0_combout\ & ((\ULA|Mux30~2_combout\) # ((!\COntroladora_ULA|alu_ctr[3]~9_combout\ & \ULA|Mux20~3_combout\)))) # (!\ULA|Mux20~0_combout\ & (!\COntroladora_ULA|alu_ctr[3]~9_combout\ & ((\ULA|Mux20~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux20~0_combout\,
	datab => \COntroladora_ULA|alu_ctr[3]~9_combout\,
	datac => \ULA|Mux30~2_combout\,
	datad => \ULA|Mux20~3_combout\,
	combout => \ULA|Mux20~4_combout\);

-- Location: LCCOMB_X9_Y11_N14
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

-- Location: LCFF_X9_Y11_N15
\RI|sr_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~10_combout\,
	ena => \RI|sr_out[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(9));

-- Location: LCFF_X12_Y12_N9
\SaidaAlu|sr_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ULA|Mux20~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SaidaAlu|sr_out\(11));

-- Location: LCCOMB_X12_Y12_N18
\PC|sr_out~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~22_combout\ = (\Controladora|pstate.branch_ex_st~regout\ & (((!\Controladora|pstate.jump_ex_st~regout\ & \SaidaAlu|sr_out\(11))))) # (!\Controladora|pstate.branch_ex_st~regout\ & (\RI|sr_out\(9) & (\Controladora|pstate.jump_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \RI|sr_out\(9),
	datac => \Controladora|pstate.jump_ex_st~regout\,
	datad => \SaidaAlu|sr_out\(11),
	combout => \PC|sr_out~22_combout\);

-- Location: LCCOMB_X12_Y12_N4
\PC|sr_out~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~23_combout\ = (\PC|sr_out~22_combout\) # ((!\Controladora|pstate.branch_ex_st~regout\ & (\ULA|Mux20~4_combout\ & !\Controladora|pstate.jump_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \ULA|Mux20~4_combout\,
	datac => \Controladora|pstate.jump_ex_st~regout\,
	datad => \PC|sr_out~22_combout\,
	combout => \PC|sr_out~23_combout\);

-- Location: LCFF_X12_Y12_N5
\PC|sr_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~23_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(11));

-- Location: LCCOMB_X12_Y12_N14
\MUX_A_ALU|m_out[11]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A_ALU|m_out[11]~21_combout\ = (!\Controladora|pstate.c_mem_add_st~regout\ & (\PC|sr_out\(11) & (!\Controladora|pstate.rtype_ex_st~regout\ & !\Controladora|pstate.branch_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.c_mem_add_st~regout\,
	datab => \PC|sr_out\(11),
	datac => \Controladora|pstate.rtype_ex_st~regout\,
	datad => \Controladora|pstate.branch_ex_st~regout\,
	combout => \MUX_A_ALU|m_out[11]~21_combout\);

-- Location: LCCOMB_X10_Y10_N24
\ULA|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~24_combout\ = ((\MUX_B_extsgn_ALU|m_out[12]~7_combout\ $ (\MUX_A_ALU|m_out[12]~20_combout\ $ (!\ULA|Add1~23\)))) # (GND)
-- \ULA|Add1~25\ = CARRY((\MUX_B_extsgn_ALU|m_out[12]~7_combout\ & ((\MUX_A_ALU|m_out[12]~20_combout\) # (!\ULA|Add1~23\))) # (!\MUX_B_extsgn_ALU|m_out[12]~7_combout\ & (\MUX_A_ALU|m_out[12]~20_combout\ & !\ULA|Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[12]~7_combout\,
	datab => \MUX_A_ALU|m_out[12]~20_combout\,
	datad => VCC,
	cin => \ULA|Add1~23\,
	combout => \ULA|Add1~24_combout\,
	cout => \ULA|Add1~25\);

-- Location: LCCOMB_X12_Y6_N22
\ULA|Mux19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux19~1_combout\ = (!\COntroladora_ULA|alu_ctr[0]~11_combout\ & \ULA|Add1~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	datad => \ULA|Add1~24_combout\,
	combout => \ULA|Mux19~1_combout\);

-- Location: LCCOMB_X12_Y6_N0
\ULA|Mux19~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux19~2_combout\ = (\ULA|Mux2~0_combout\ & ((\ULA|Mux2~1_combout\ & (\ULA|tmp[12]~24_combout\)) # (!\ULA|Mux2~1_combout\ & ((\ULA|Mux19~1_combout\))))) # (!\ULA|Mux2~0_combout\ & (((!\ULA|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|tmp[12]~24_combout\,
	datab => \ULA|Mux2~0_combout\,
	datac => \ULA|Mux2~1_combout\,
	datad => \ULA|Mux19~1_combout\,
	combout => \ULA|Mux19~2_combout\);

-- Location: LCCOMB_X12_Y6_N6
\ULA|Mux19~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux19~3_combout\ = (\ULA|Mux31~5_combout\ & ((\MUX_B_extsgn_ALU|m_out[12]~7_combout\ & ((\MUX_A_ALU|m_out[12]~20_combout\) # (!\ULA|Mux19~2_combout\))) # (!\MUX_B_extsgn_ALU|m_out[12]~7_combout\ & (\MUX_A_ALU|m_out[12]~20_combout\ & 
-- !\ULA|Mux19~2_combout\)))) # (!\ULA|Mux31~5_combout\ & (((\ULA|Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[12]~7_combout\,
	datab => \ULA|Mux31~5_combout\,
	datac => \MUX_A_ALU|m_out[12]~20_combout\,
	datad => \ULA|Mux19~2_combout\,
	combout => \ULA|Mux19~3_combout\);

-- Location: LCCOMB_X12_Y6_N24
\ULA|Mux19~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux19~4_combout\ = (\ULA|Mux19~0_combout\ & ((\ULA|Mux30~2_combout\) # ((!\COntroladora_ULA|alu_ctr[3]~9_combout\ & \ULA|Mux19~3_combout\)))) # (!\ULA|Mux19~0_combout\ & (((!\COntroladora_ULA|alu_ctr[3]~9_combout\ & \ULA|Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux19~0_combout\,
	datab => \ULA|Mux30~2_combout\,
	datac => \COntroladora_ULA|alu_ctr[3]~9_combout\,
	datad => \ULA|Mux19~3_combout\,
	combout => \ULA|Mux19~4_combout\);

-- Location: LCFF_X12_Y6_N25
\SaidaAlu|sr_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ULA|Mux19~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SaidaAlu|sr_out\(12));

-- Location: LCCOMB_X14_Y10_N18
\PC|sr_out~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~24_combout\ = (\Controladora|pstate.branch_ex_st~regout\ & (((\SaidaAlu|sr_out\(12) & !\Controladora|pstate.jump_ex_st~regout\)))) # (!\Controladora|pstate.branch_ex_st~regout\ & (\RI|sr_out\(10) & ((\Controladora|pstate.jump_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \RI|sr_out\(10),
	datac => \SaidaAlu|sr_out\(12),
	datad => \Controladora|pstate.jump_ex_st~regout\,
	combout => \PC|sr_out~24_combout\);

-- Location: LCCOMB_X13_Y8_N0
\PC|sr_out~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~25_combout\ = (\PC|sr_out~24_combout\) # ((!\Controladora|pstate.jump_ex_st~regout\ & (!\Controladora|pstate.branch_ex_st~regout\ & \ULA|Mux19~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.jump_ex_st~regout\,
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \ULA|Mux19~4_combout\,
	datad => \PC|sr_out~24_combout\,
	combout => \PC|sr_out~25_combout\);

-- Location: LCFF_X13_Y8_N1
\PC|sr_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~25_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(12));

-- Location: LCCOMB_X14_Y10_N24
\MUX_A_ALU|m_out[12]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A_ALU|m_out[12]~20_combout\ = (!\Controladora|pstate.rtype_ex_st~regout\ & (!\Controladora|pstate.branch_ex_st~regout\ & (\PC|sr_out\(12) & !\Controladora|pstate.c_mem_add_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.rtype_ex_st~regout\,
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \PC|sr_out\(12),
	datad => \Controladora|pstate.c_mem_add_st~regout\,
	combout => \MUX_A_ALU|m_out[12]~20_combout\);

-- Location: LCCOMB_X10_Y10_N26
\ULA|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~26_combout\ = (\MUX_A_ALU|m_out[13]~19_combout\ & ((\MUX_B_extsgn_ALU|m_out[13]~6_combout\ & (\ULA|Add1~25\ & VCC)) # (!\MUX_B_extsgn_ALU|m_out[13]~6_combout\ & (!\ULA|Add1~25\)))) # (!\MUX_A_ALU|m_out[13]~19_combout\ & 
-- ((\MUX_B_extsgn_ALU|m_out[13]~6_combout\ & (!\ULA|Add1~25\)) # (!\MUX_B_extsgn_ALU|m_out[13]~6_combout\ & ((\ULA|Add1~25\) # (GND)))))
-- \ULA|Add1~27\ = CARRY((\MUX_A_ALU|m_out[13]~19_combout\ & (!\MUX_B_extsgn_ALU|m_out[13]~6_combout\ & !\ULA|Add1~25\)) # (!\MUX_A_ALU|m_out[13]~19_combout\ & ((!\ULA|Add1~25\) # (!\MUX_B_extsgn_ALU|m_out[13]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[13]~19_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[13]~6_combout\,
	datad => VCC,
	cin => \ULA|Add1~25\,
	combout => \ULA|Add1~26_combout\,
	cout => \ULA|Add1~27\);

-- Location: LCCOMB_X10_Y10_N28
\ULA|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~28_combout\ = ((\MUX_B_extsgn_ALU|m_out[14]~5_combout\ $ (\MUX_A_ALU|m_out[14]~18_combout\ $ (!\ULA|Add1~27\)))) # (GND)
-- \ULA|Add1~29\ = CARRY((\MUX_B_extsgn_ALU|m_out[14]~5_combout\ & ((\MUX_A_ALU|m_out[14]~18_combout\) # (!\ULA|Add1~27\))) # (!\MUX_B_extsgn_ALU|m_out[14]~5_combout\ & (\MUX_A_ALU|m_out[14]~18_combout\ & !\ULA|Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[14]~5_combout\,
	datab => \MUX_A_ALU|m_out[14]~18_combout\,
	datad => VCC,
	cin => \ULA|Add1~27\,
	combout => \ULA|Add1~28_combout\,
	cout => \ULA|Add1~29\);

-- Location: LCCOMB_X14_Y11_N24
\ULA|Mux17~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux17~3_combout\ = (!\COntroladora_ULA|alu_ctr[0]~11_combout\ & \ULA|Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	datad => \ULA|Add1~28_combout\,
	combout => \ULA|Mux17~3_combout\);

-- Location: LCCOMB_X13_Y10_N18
\ULA|tmp[9]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|tmp[9]~18_combout\ = (\MUX_B_extsgn_ALU|m_out[9]~10_combout\ & ((\MUX_A_ALU|m_out[9]~23_combout\ & (!\ULA|tmp[8]~17\)) # (!\MUX_A_ALU|m_out[9]~23_combout\ & ((\ULA|tmp[8]~17\) # (GND))))) # (!\MUX_B_extsgn_ALU|m_out[9]~10_combout\ & 
-- ((\MUX_A_ALU|m_out[9]~23_combout\ & (\ULA|tmp[8]~17\ & VCC)) # (!\MUX_A_ALU|m_out[9]~23_combout\ & (!\ULA|tmp[8]~17\))))
-- \ULA|tmp[9]~19\ = CARRY((\MUX_B_extsgn_ALU|m_out[9]~10_combout\ & ((!\ULA|tmp[8]~17\) # (!\MUX_A_ALU|m_out[9]~23_combout\))) # (!\MUX_B_extsgn_ALU|m_out[9]~10_combout\ & (!\MUX_A_ALU|m_out[9]~23_combout\ & !\ULA|tmp[8]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[9]~10_combout\,
	datab => \MUX_A_ALU|m_out[9]~23_combout\,
	datad => VCC,
	cin => \ULA|tmp[8]~17\,
	combout => \ULA|tmp[9]~18_combout\,
	cout => \ULA|tmp[9]~19\);

-- Location: LCCOMB_X9_Y8_N26
\ULA|Mux22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux22~1_combout\ = (\ULA|Add1~18_combout\ & !\COntroladora_ULA|alu_ctr[0]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ULA|Add1~18_combout\,
	datad => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	combout => \ULA|Mux22~1_combout\);

-- Location: LCCOMB_X9_Y8_N12
\ULA|Mux22~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux22~2_combout\ = (\ULA|Mux2~1_combout\ & (\ULA|Mux2~0_combout\ & (\ULA|tmp[9]~18_combout\))) # (!\ULA|Mux2~1_combout\ & (((\ULA|Mux22~1_combout\)) # (!\ULA|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux2~1_combout\,
	datab => \ULA|Mux2~0_combout\,
	datac => \ULA|tmp[9]~18_combout\,
	datad => \ULA|Mux22~1_combout\,
	combout => \ULA|Mux22~2_combout\);

-- Location: LCCOMB_X9_Y8_N22
\ULA|Mux22~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux22~3_combout\ = (\ULA|Mux31~5_combout\ & ((\MUX_A_ALU|m_out[9]~23_combout\ & ((\MUX_B_extsgn_ALU|m_out[9]~10_combout\) # (!\ULA|Mux22~2_combout\))) # (!\MUX_A_ALU|m_out[9]~23_combout\ & (\MUX_B_extsgn_ALU|m_out[9]~10_combout\ & 
-- !\ULA|Mux22~2_combout\)))) # (!\ULA|Mux31~5_combout\ & (((\ULA|Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[9]~23_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[9]~10_combout\,
	datac => \ULA|Mux31~5_combout\,
	datad => \ULA|Mux22~2_combout\,
	combout => \ULA|Mux22~3_combout\);

-- Location: LCCOMB_X9_Y8_N8
\ULA|Mux22~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux22~4_combout\ = (\ULA|Mux22~0_combout\ & ((\ULA|Mux30~2_combout\) # ((!\COntroladora_ULA|alu_ctr[3]~9_combout\ & \ULA|Mux22~3_combout\)))) # (!\ULA|Mux22~0_combout\ & (((!\COntroladora_ULA|alu_ctr[3]~9_combout\ & \ULA|Mux22~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux22~0_combout\,
	datab => \ULA|Mux30~2_combout\,
	datac => \COntroladora_ULA|alu_ctr[3]~9_combout\,
	datad => \ULA|Mux22~3_combout\,
	combout => \ULA|Mux22~4_combout\);

-- Location: LCCOMB_X9_Y8_N30
\PC|sr_out~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~18_combout\ = (\Controladora|pstate.branch_ex_st~regout\ & (\SaidaAlu|sr_out\(9) & ((!\Controladora|pstate.jump_ex_st~regout\)))) # (!\Controladora|pstate.branch_ex_st~regout\ & (((\RI|sr_out\(7) & \Controladora|pstate.jump_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SaidaAlu|sr_out\(9),
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \RI|sr_out\(7),
	datad => \Controladora|pstate.jump_ex_st~regout\,
	combout => \PC|sr_out~18_combout\);

-- Location: LCCOMB_X9_Y8_N16
\PC|sr_out~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~19_combout\ = (\PC|sr_out~18_combout\) # ((!\Controladora|pstate.jump_ex_st~regout\ & (!\Controladora|pstate.branch_ex_st~regout\ & \ULA|Mux22~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.jump_ex_st~regout\,
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \ULA|Mux22~4_combout\,
	datad => \PC|sr_out~18_combout\,
	combout => \PC|sr_out~19_combout\);

-- Location: LCFF_X9_Y8_N17
\PC|sr_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~19_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(9));

-- Location: LCCOMB_X9_Y10_N28
\MUX_A_ALU|m_out[9]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A_ALU|m_out[9]~23_combout\ = (!\Controladora|pstate.rtype_ex_st~regout\ & (!\Controladora|pstate.c_mem_add_st~regout\ & (\PC|sr_out\(9) & !\Controladora|pstate.branch_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.rtype_ex_st~regout\,
	datab => \Controladora|pstate.c_mem_add_st~regout\,
	datac => \PC|sr_out\(9),
	datad => \Controladora|pstate.branch_ex_st~regout\,
	combout => \MUX_A_ALU|m_out[9]~23_combout\);

-- Location: LCCOMB_X13_Y10_N20
\ULA|tmp[10]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|tmp[10]~20_combout\ = ((\MUX_A_ALU|m_out[10]~22_combout\ $ (\MUX_B_extsgn_ALU|m_out[10]~9_combout\ $ (\ULA|tmp[9]~19\)))) # (GND)
-- \ULA|tmp[10]~21\ = CARRY((\MUX_A_ALU|m_out[10]~22_combout\ & ((!\ULA|tmp[9]~19\) # (!\MUX_B_extsgn_ALU|m_out[10]~9_combout\))) # (!\MUX_A_ALU|m_out[10]~22_combout\ & (!\MUX_B_extsgn_ALU|m_out[10]~9_combout\ & !\ULA|tmp[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[10]~22_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[10]~9_combout\,
	datad => VCC,
	cin => \ULA|tmp[9]~19\,
	combout => \ULA|tmp[10]~20_combout\,
	cout => \ULA|tmp[10]~21\);

-- Location: LCCOMB_X13_Y10_N26
\ULA|tmp[13]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|tmp[13]~26_combout\ = (\MUX_B_extsgn_ALU|m_out[13]~6_combout\ & ((\MUX_A_ALU|m_out[13]~19_combout\ & (!\ULA|tmp[12]~25\)) # (!\MUX_A_ALU|m_out[13]~19_combout\ & ((\ULA|tmp[12]~25\) # (GND))))) # (!\MUX_B_extsgn_ALU|m_out[13]~6_combout\ & 
-- ((\MUX_A_ALU|m_out[13]~19_combout\ & (\ULA|tmp[12]~25\ & VCC)) # (!\MUX_A_ALU|m_out[13]~19_combout\ & (!\ULA|tmp[12]~25\))))
-- \ULA|tmp[13]~27\ = CARRY((\MUX_B_extsgn_ALU|m_out[13]~6_combout\ & ((!\ULA|tmp[12]~25\) # (!\MUX_A_ALU|m_out[13]~19_combout\))) # (!\MUX_B_extsgn_ALU|m_out[13]~6_combout\ & (!\MUX_A_ALU|m_out[13]~19_combout\ & !\ULA|tmp[12]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[13]~6_combout\,
	datab => \MUX_A_ALU|m_out[13]~19_combout\,
	datad => VCC,
	cin => \ULA|tmp[12]~25\,
	combout => \ULA|tmp[13]~26_combout\,
	cout => \ULA|tmp[13]~27\);

-- Location: LCCOMB_X10_Y8_N18
\ULA|Mux18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux18~1_combout\ = (!\COntroladora_ULA|alu_ctr[0]~11_combout\ & \ULA|Add1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	datad => \ULA|Add1~26_combout\,
	combout => \ULA|Mux18~1_combout\);

-- Location: LCCOMB_X10_Y8_N28
\ULA|Mux18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux18~2_combout\ = (\ULA|Mux2~0_combout\ & ((\ULA|Mux2~1_combout\ & (\ULA|tmp[13]~26_combout\)) # (!\ULA|Mux2~1_combout\ & ((\ULA|Mux18~1_combout\))))) # (!\ULA|Mux2~0_combout\ & (!\ULA|Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux2~0_combout\,
	datab => \ULA|Mux2~1_combout\,
	datac => \ULA|tmp[13]~26_combout\,
	datad => \ULA|Mux18~1_combout\,
	combout => \ULA|Mux18~2_combout\);

-- Location: LCCOMB_X10_Y8_N22
\ULA|Mux18~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux18~3_combout\ = (\ULA|Mux31~5_combout\ & ((\MUX_B_extsgn_ALU|m_out[13]~6_combout\ & ((\MUX_A_ALU|m_out[13]~19_combout\) # (!\ULA|Mux18~2_combout\))) # (!\MUX_B_extsgn_ALU|m_out[13]~6_combout\ & (\MUX_A_ALU|m_out[13]~19_combout\ & 
-- !\ULA|Mux18~2_combout\)))) # (!\ULA|Mux31~5_combout\ & (((\ULA|Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[13]~6_combout\,
	datab => \MUX_A_ALU|m_out[13]~19_combout\,
	datac => \ULA|Mux31~5_combout\,
	datad => \ULA|Mux18~2_combout\,
	combout => \ULA|Mux18~3_combout\);

-- Location: LCCOMB_X10_Y8_N14
\ULA|Mux18~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux18~4_combout\ = (\ULA|Mux18~0_combout\ & ((\ULA|Mux30~2_combout\) # ((!\COntroladora_ULA|alu_ctr[3]~9_combout\ & \ULA|Mux18~3_combout\)))) # (!\ULA|Mux18~0_combout\ & (!\COntroladora_ULA|alu_ctr[3]~9_combout\ & ((\ULA|Mux18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux18~0_combout\,
	datab => \COntroladora_ULA|alu_ctr[3]~9_combout\,
	datac => \ULA|Mux30~2_combout\,
	datad => \ULA|Mux18~3_combout\,
	combout => \ULA|Mux18~4_combout\);

-- Location: LCFF_X10_Y8_N15
\SaidaAlu|sr_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ULA|Mux18~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SaidaAlu|sr_out\(13));

-- Location: LCCOMB_X10_Y8_N26
\PC|sr_out~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~26_combout\ = (\Controladora|pstate.branch_ex_st~regout\ & (((!\Controladora|pstate.jump_ex_st~regout\ & \SaidaAlu|sr_out\(13))))) # (!\Controladora|pstate.branch_ex_st~regout\ & (\RI|sr_out\(11) & (\Controladora|pstate.jump_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \RI|sr_out\(11),
	datac => \Controladora|pstate.jump_ex_st~regout\,
	datad => \SaidaAlu|sr_out\(13),
	combout => \PC|sr_out~26_combout\);

-- Location: LCCOMB_X10_Y8_N30
\PC|sr_out~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~27_combout\ = (\PC|sr_out~26_combout\) # ((!\Controladora|pstate.branch_ex_st~regout\ & (!\Controladora|pstate.jump_ex_st~regout\ & \ULA|Mux18~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \Controladora|pstate.jump_ex_st~regout\,
	datac => \ULA|Mux18~4_combout\,
	datad => \PC|sr_out~26_combout\,
	combout => \PC|sr_out~27_combout\);

-- Location: LCFF_X10_Y8_N31
\PC|sr_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~27_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(13));

-- Location: LCCOMB_X9_Y10_N22
\MUX_A_ALU|m_out[13]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A_ALU|m_out[13]~19_combout\ = (!\Controladora|pstate.rtype_ex_st~regout\ & (!\Controladora|pstate.c_mem_add_st~regout\ & (\PC|sr_out\(13) & !\Controladora|pstate.branch_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.rtype_ex_st~regout\,
	datab => \Controladora|pstate.c_mem_add_st~regout\,
	datac => \PC|sr_out\(13),
	datad => \Controladora|pstate.branch_ex_st~regout\,
	combout => \MUX_A_ALU|m_out[13]~19_combout\);

-- Location: LCCOMB_X13_Y10_N28
\ULA|tmp[14]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|tmp[14]~28_combout\ = ((\MUX_B_extsgn_ALU|m_out[14]~5_combout\ $ (\MUX_A_ALU|m_out[14]~18_combout\ $ (\ULA|tmp[13]~27\)))) # (GND)
-- \ULA|tmp[14]~29\ = CARRY((\MUX_B_extsgn_ALU|m_out[14]~5_combout\ & (\MUX_A_ALU|m_out[14]~18_combout\ & !\ULA|tmp[13]~27\)) # (!\MUX_B_extsgn_ALU|m_out[14]~5_combout\ & ((\MUX_A_ALU|m_out[14]~18_combout\) # (!\ULA|tmp[13]~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[14]~5_combout\,
	datab => \MUX_A_ALU|m_out[14]~18_combout\,
	datad => VCC,
	cin => \ULA|tmp[13]~27\,
	combout => \ULA|tmp[14]~28_combout\,
	cout => \ULA|tmp[14]~29\);

-- Location: LCCOMB_X14_Y11_N22
\ULA|Mux17~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux17~4_combout\ = (\ULA|Mux2~0_combout\ & ((\ULA|Mux2~1_combout\ & ((\ULA|tmp[14]~28_combout\))) # (!\ULA|Mux2~1_combout\ & (\ULA|Mux17~3_combout\)))) # (!\ULA|Mux2~0_combout\ & (!\ULA|Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux2~0_combout\,
	datab => \ULA|Mux2~1_combout\,
	datac => \ULA|Mux17~3_combout\,
	datad => \ULA|tmp[14]~28_combout\,
	combout => \ULA|Mux17~4_combout\);

-- Location: LCCOMB_X14_Y11_N0
\ULA|Mux17~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux17~5_combout\ = (\ULA|Mux31~5_combout\ & ((\MUX_A_ALU|m_out[14]~18_combout\ & ((\MUX_B_extsgn_ALU|m_out[14]~5_combout\) # (!\ULA|Mux17~4_combout\))) # (!\MUX_A_ALU|m_out[14]~18_combout\ & (\MUX_B_extsgn_ALU|m_out[14]~5_combout\ & 
-- !\ULA|Mux17~4_combout\)))) # (!\ULA|Mux31~5_combout\ & (((\ULA|Mux17~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[14]~18_combout\,
	datab => \ULA|Mux31~5_combout\,
	datac => \MUX_B_extsgn_ALU|m_out[14]~5_combout\,
	datad => \ULA|Mux17~4_combout\,
	combout => \ULA|Mux17~5_combout\);

-- Location: LCCOMB_X14_Y11_N12
\ULA|Mux17~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux17~6_combout\ = (\ULA|Mux17~2_combout\) # ((\ULA|Mux17~5_combout\ & ((!\COntroladora_ULA|alu_ctr[3]~6_combout\) # (!\Controladora|pstate.rtype_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.rtype_ex_st~regout\,
	datab => \ULA|Mux17~2_combout\,
	datac => \COntroladora_ULA|alu_ctr[3]~6_combout\,
	datad => \ULA|Mux17~5_combout\,
	combout => \ULA|Mux17~6_combout\);

-- Location: LCCOMB_X9_Y11_N2
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

-- Location: LCFF_X9_Y11_N3
\RI|sr_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~13_combout\,
	ena => \RI|sr_out[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(12));

-- Location: LCFF_X14_Y11_N13
\SaidaAlu|sr_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ULA|Mux17~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SaidaAlu|sr_out\(14));

-- Location: LCCOMB_X14_Y11_N26
\PC|sr_out~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~28_combout\ = (\Controladora|pstate.jump_ex_st~regout\ & (!\Controladora|pstate.branch_ex_st~regout\ & (\RI|sr_out\(12)))) # (!\Controladora|pstate.jump_ex_st~regout\ & (\Controladora|pstate.branch_ex_st~regout\ & ((\SaidaAlu|sr_out\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.jump_ex_st~regout\,
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \RI|sr_out\(12),
	datad => \SaidaAlu|sr_out\(14),
	combout => \PC|sr_out~28_combout\);

-- Location: LCCOMB_X13_Y8_N22
\PC|sr_out~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~29_combout\ = (\PC|sr_out~28_combout\) # ((!\Controladora|pstate.jump_ex_st~regout\ & (!\Controladora|pstate.branch_ex_st~regout\ & \ULA|Mux17~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.jump_ex_st~regout\,
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \ULA|Mux17~6_combout\,
	datad => \PC|sr_out~28_combout\,
	combout => \PC|sr_out~29_combout\);

-- Location: LCFF_X13_Y8_N23
\PC|sr_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~29_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(14));

-- Location: LCCOMB_X9_Y10_N24
\MUX_A_ALU|m_out[14]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A_ALU|m_out[14]~18_combout\ = (!\Controladora|pstate.rtype_ex_st~regout\ & (!\Controladora|pstate.branch_ex_st~regout\ & (!\Controladora|pstate.c_mem_add_st~regout\ & \PC|sr_out\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.rtype_ex_st~regout\,
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \Controladora|pstate.c_mem_add_st~regout\,
	datad => \PC|sr_out\(14),
	combout => \MUX_A_ALU|m_out[14]~18_combout\);

-- Location: LCCOMB_X13_Y10_N30
\ULA|tmp[15]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|tmp[15]~30_combout\ = (\MUX_B_extsgn_ALU|m_out[15]~4_combout\ & ((\MUX_A_ALU|m_out[15]~17_combout\ & (!\ULA|tmp[14]~29\)) # (!\MUX_A_ALU|m_out[15]~17_combout\ & ((\ULA|tmp[14]~29\) # (GND))))) # (!\MUX_B_extsgn_ALU|m_out[15]~4_combout\ & 
-- ((\MUX_A_ALU|m_out[15]~17_combout\ & (\ULA|tmp[14]~29\ & VCC)) # (!\MUX_A_ALU|m_out[15]~17_combout\ & (!\ULA|tmp[14]~29\))))
-- \ULA|tmp[15]~31\ = CARRY((\MUX_B_extsgn_ALU|m_out[15]~4_combout\ & ((!\ULA|tmp[14]~29\) # (!\MUX_A_ALU|m_out[15]~17_combout\))) # (!\MUX_B_extsgn_ALU|m_out[15]~4_combout\ & (!\MUX_A_ALU|m_out[15]~17_combout\ & !\ULA|tmp[14]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[15]~4_combout\,
	datab => \MUX_A_ALU|m_out[15]~17_combout\,
	datad => VCC,
	cin => \ULA|tmp[14]~29\,
	combout => \ULA|tmp[15]~30_combout\,
	cout => \ULA|tmp[15]~31\);

-- Location: LCCOMB_X13_Y9_N0
\ULA|tmp[16]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|tmp[16]~32_combout\ = ((\MUX_A_ALU|m_out[16]~16_combout\ $ (\MUX_B_extsgn_ALU|m_out[16]~3_combout\ $ (\ULA|tmp[15]~31\)))) # (GND)
-- \ULA|tmp[16]~33\ = CARRY((\MUX_A_ALU|m_out[16]~16_combout\ & ((!\ULA|tmp[15]~31\) # (!\MUX_B_extsgn_ALU|m_out[16]~3_combout\))) # (!\MUX_A_ALU|m_out[16]~16_combout\ & (!\MUX_B_extsgn_ALU|m_out[16]~3_combout\ & !\ULA|tmp[15]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[16]~16_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[16]~3_combout\,
	datad => VCC,
	cin => \ULA|tmp[15]~31\,
	combout => \ULA|tmp[16]~32_combout\,
	cout => \ULA|tmp[16]~33\);

-- Location: LCCOMB_X13_Y9_N2
\ULA|tmp[17]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|tmp[17]~34_combout\ = (\MUX_A_ALU|m_out[17]~15_combout\ & ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (!\ULA|tmp[16]~33\)) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (\ULA|tmp[16]~33\ & VCC)))) # (!\MUX_A_ALU|m_out[17]~15_combout\ & 
-- ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & ((\ULA|tmp[16]~33\) # (GND))) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (!\ULA|tmp[16]~33\))))
-- \ULA|tmp[17]~35\ = CARRY((\MUX_A_ALU|m_out[17]~15_combout\ & (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & !\ULA|tmp[16]~33\)) # (!\MUX_A_ALU|m_out[17]~15_combout\ & ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\) # (!\ULA|tmp[16]~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[17]~15_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datad => VCC,
	cin => \ULA|tmp[16]~33\,
	combout => \ULA|tmp[17]~34_combout\,
	cout => \ULA|tmp[17]~35\);

-- Location: LCCOMB_X13_Y9_N8
\ULA|tmp[20]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|tmp[20]~40_combout\ = ((\MUX_A_ALU|m_out[20]~12_combout\ $ (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ $ (\ULA|tmp[19]~39\)))) # (GND)
-- \ULA|tmp[20]~41\ = CARRY((\MUX_A_ALU|m_out[20]~12_combout\ & ((!\ULA|tmp[19]~39\) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\))) # (!\MUX_A_ALU|m_out[20]~12_combout\ & (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & !\ULA|tmp[19]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[20]~12_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datad => VCC,
	cin => \ULA|tmp[19]~39\,
	combout => \ULA|tmp[20]~40_combout\,
	cout => \ULA|tmp[20]~41\);

-- Location: LCCOMB_X13_Y9_N12
\ULA|tmp[22]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|tmp[22]~44_combout\ = ((\MUX_A_ALU|m_out[22]~10_combout\ $ (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ $ (\ULA|tmp[21]~43\)))) # (GND)
-- \ULA|tmp[22]~45\ = CARRY((\MUX_A_ALU|m_out[22]~10_combout\ & ((!\ULA|tmp[21]~43\) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\))) # (!\MUX_A_ALU|m_out[22]~10_combout\ & (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & !\ULA|tmp[21]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[22]~10_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datad => VCC,
	cin => \ULA|tmp[21]~43\,
	combout => \ULA|tmp[22]~44_combout\,
	cout => \ULA|tmp[22]~45\);

-- Location: LCCOMB_X13_Y9_N14
\ULA|tmp[23]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|tmp[23]~46_combout\ = (\MUX_A_ALU|m_out[23]~9_combout\ & ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (!\ULA|tmp[22]~45\)) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (\ULA|tmp[22]~45\ & VCC)))) # (!\MUX_A_ALU|m_out[23]~9_combout\ & 
-- ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & ((\ULA|tmp[22]~45\) # (GND))) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (!\ULA|tmp[22]~45\))))
-- \ULA|tmp[23]~47\ = CARRY((\MUX_A_ALU|m_out[23]~9_combout\ & (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & !\ULA|tmp[22]~45\)) # (!\MUX_A_ALU|m_out[23]~9_combout\ & ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\) # (!\ULA|tmp[22]~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[23]~9_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datad => VCC,
	cin => \ULA|tmp[22]~45\,
	combout => \ULA|tmp[23]~46_combout\,
	cout => \ULA|tmp[23]~47\);

-- Location: LCCOMB_X13_Y9_N16
\ULA|tmp[24]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|tmp[24]~48_combout\ = ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ $ (\MUX_A_ALU|m_out[24]~8_combout\ $ (\ULA|tmp[23]~47\)))) # (GND)
-- \ULA|tmp[24]~49\ = CARRY((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (\MUX_A_ALU|m_out[24]~8_combout\ & !\ULA|tmp[23]~47\)) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & ((\MUX_A_ALU|m_out[24]~8_combout\) # (!\ULA|tmp[23]~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datab => \MUX_A_ALU|m_out[24]~8_combout\,
	datad => VCC,
	cin => \ULA|tmp[23]~47\,
	combout => \ULA|tmp[24]~48_combout\,
	cout => \ULA|tmp[24]~49\);

-- Location: LCCOMB_X10_Y10_N30
\ULA|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~30_combout\ = (\MUX_B_extsgn_ALU|m_out[15]~4_combout\ & ((\MUX_A_ALU|m_out[15]~17_combout\ & (\ULA|Add1~29\ & VCC)) # (!\MUX_A_ALU|m_out[15]~17_combout\ & (!\ULA|Add1~29\)))) # (!\MUX_B_extsgn_ALU|m_out[15]~4_combout\ & 
-- ((\MUX_A_ALU|m_out[15]~17_combout\ & (!\ULA|Add1~29\)) # (!\MUX_A_ALU|m_out[15]~17_combout\ & ((\ULA|Add1~29\) # (GND)))))
-- \ULA|Add1~31\ = CARRY((\MUX_B_extsgn_ALU|m_out[15]~4_combout\ & (!\MUX_A_ALU|m_out[15]~17_combout\ & !\ULA|Add1~29\)) # (!\MUX_B_extsgn_ALU|m_out[15]~4_combout\ & ((!\ULA|Add1~29\) # (!\MUX_A_ALU|m_out[15]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[15]~4_combout\,
	datab => \MUX_A_ALU|m_out[15]~17_combout\,
	datad => VCC,
	cin => \ULA|Add1~29\,
	combout => \ULA|Add1~30_combout\,
	cout => \ULA|Add1~31\);

-- Location: LCCOMB_X10_Y9_N0
\ULA|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~32_combout\ = ((\MUX_A_ALU|m_out[16]~16_combout\ $ (\MUX_B_extsgn_ALU|m_out[16]~3_combout\ $ (!\ULA|Add1~31\)))) # (GND)
-- \ULA|Add1~33\ = CARRY((\MUX_A_ALU|m_out[16]~16_combout\ & ((\MUX_B_extsgn_ALU|m_out[16]~3_combout\) # (!\ULA|Add1~31\))) # (!\MUX_A_ALU|m_out[16]~16_combout\ & (\MUX_B_extsgn_ALU|m_out[16]~3_combout\ & !\ULA|Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[16]~16_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[16]~3_combout\,
	datad => VCC,
	cin => \ULA|Add1~31\,
	combout => \ULA|Add1~32_combout\,
	cout => \ULA|Add1~33\);

-- Location: LCCOMB_X10_Y9_N2
\ULA|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~34_combout\ = (\MUX_A_ALU|m_out[17]~15_combout\ & ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (\ULA|Add1~33\ & VCC)) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (!\ULA|Add1~33\)))) # (!\MUX_A_ALU|m_out[17]~15_combout\ & 
-- ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (!\ULA|Add1~33\)) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & ((\ULA|Add1~33\) # (GND)))))
-- \ULA|Add1~35\ = CARRY((\MUX_A_ALU|m_out[17]~15_combout\ & (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & !\ULA|Add1~33\)) # (!\MUX_A_ALU|m_out[17]~15_combout\ & ((!\ULA|Add1~33\) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[17]~15_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datad => VCC,
	cin => \ULA|Add1~33\,
	combout => \ULA|Add1~34_combout\,
	cout => \ULA|Add1~35\);

-- Location: LCCOMB_X10_Y9_N4
\ULA|Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~36_combout\ = ((\MUX_A_ALU|m_out[18]~14_combout\ $ (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ $ (!\ULA|Add1~35\)))) # (GND)
-- \ULA|Add1~37\ = CARRY((\MUX_A_ALU|m_out[18]~14_combout\ & ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\) # (!\ULA|Add1~35\))) # (!\MUX_A_ALU|m_out[18]~14_combout\ & (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & !\ULA|Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[18]~14_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datad => VCC,
	cin => \ULA|Add1~35\,
	combout => \ULA|Add1~36_combout\,
	cout => \ULA|Add1~37\);

-- Location: LCCOMB_X10_Y9_N6
\ULA|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~38_combout\ = (\MUX_A_ALU|m_out[19]~13_combout\ & ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (\ULA|Add1~37\ & VCC)) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (!\ULA|Add1~37\)))) # (!\MUX_A_ALU|m_out[19]~13_combout\ & 
-- ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (!\ULA|Add1~37\)) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & ((\ULA|Add1~37\) # (GND)))))
-- \ULA|Add1~39\ = CARRY((\MUX_A_ALU|m_out[19]~13_combout\ & (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & !\ULA|Add1~37\)) # (!\MUX_A_ALU|m_out[19]~13_combout\ & ((!\ULA|Add1~37\) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[19]~13_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datad => VCC,
	cin => \ULA|Add1~37\,
	combout => \ULA|Add1~38_combout\,
	cout => \ULA|Add1~39\);

-- Location: LCCOMB_X10_Y9_N8
\ULA|Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~40_combout\ = ((\MUX_A_ALU|m_out[20]~12_combout\ $ (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ $ (!\ULA|Add1~39\)))) # (GND)
-- \ULA|Add1~41\ = CARRY((\MUX_A_ALU|m_out[20]~12_combout\ & ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\) # (!\ULA|Add1~39\))) # (!\MUX_A_ALU|m_out[20]~12_combout\ & (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & !\ULA|Add1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[20]~12_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datad => VCC,
	cin => \ULA|Add1~39\,
	combout => \ULA|Add1~40_combout\,
	cout => \ULA|Add1~41\);

-- Location: LCCOMB_X10_Y9_N10
\ULA|Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~42_combout\ = (\MUX_A_ALU|m_out[21]~11_combout\ & ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (\ULA|Add1~41\ & VCC)) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (!\ULA|Add1~41\)))) # (!\MUX_A_ALU|m_out[21]~11_combout\ & 
-- ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (!\ULA|Add1~41\)) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & ((\ULA|Add1~41\) # (GND)))))
-- \ULA|Add1~43\ = CARRY((\MUX_A_ALU|m_out[21]~11_combout\ & (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & !\ULA|Add1~41\)) # (!\MUX_A_ALU|m_out[21]~11_combout\ & ((!\ULA|Add1~41\) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[21]~11_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datad => VCC,
	cin => \ULA|Add1~41\,
	combout => \ULA|Add1~42_combout\,
	cout => \ULA|Add1~43\);

-- Location: LCCOMB_X10_Y9_N12
\ULA|Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~44_combout\ = ((\MUX_A_ALU|m_out[22]~10_combout\ $ (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ $ (!\ULA|Add1~43\)))) # (GND)
-- \ULA|Add1~45\ = CARRY((\MUX_A_ALU|m_out[22]~10_combout\ & ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\) # (!\ULA|Add1~43\))) # (!\MUX_A_ALU|m_out[22]~10_combout\ & (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & !\ULA|Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[22]~10_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datad => VCC,
	cin => \ULA|Add1~43\,
	combout => \ULA|Add1~44_combout\,
	cout => \ULA|Add1~45\);

-- Location: LCCOMB_X10_Y9_N14
\ULA|Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~46_combout\ = (\MUX_A_ALU|m_out[23]~9_combout\ & ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (\ULA|Add1~45\ & VCC)) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (!\ULA|Add1~45\)))) # (!\MUX_A_ALU|m_out[23]~9_combout\ & 
-- ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (!\ULA|Add1~45\)) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & ((\ULA|Add1~45\) # (GND)))))
-- \ULA|Add1~47\ = CARRY((\MUX_A_ALU|m_out[23]~9_combout\ & (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & !\ULA|Add1~45\)) # (!\MUX_A_ALU|m_out[23]~9_combout\ & ((!\ULA|Add1~45\) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[23]~9_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datad => VCC,
	cin => \ULA|Add1~45\,
	combout => \ULA|Add1~46_combout\,
	cout => \ULA|Add1~47\);

-- Location: LCCOMB_X10_Y9_N16
\ULA|Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~48_combout\ = ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ $ (\MUX_A_ALU|m_out[24]~8_combout\ $ (!\ULA|Add1~47\)))) # (GND)
-- \ULA|Add1~49\ = CARRY((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & ((\MUX_A_ALU|m_out[24]~8_combout\) # (!\ULA|Add1~47\))) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (\MUX_A_ALU|m_out[24]~8_combout\ & !\ULA|Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datab => \MUX_A_ALU|m_out[24]~8_combout\,
	datad => VCC,
	cin => \ULA|Add1~47\,
	combout => \ULA|Add1~48_combout\,
	cout => \ULA|Add1~49\);

-- Location: LCCOMB_X9_Y9_N10
\ULA|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux7~1_combout\ = (!\COntroladora_ULA|alu_ctr[0]~11_combout\ & \ULA|Add1~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	datac => \ULA|Add1~48_combout\,
	combout => \ULA|Mux7~1_combout\);

-- Location: LCCOMB_X12_Y7_N6
\ULA|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux7~2_combout\ = (\ULA|Mux2~1_combout\ & (\ULA|Mux2~0_combout\ & (\ULA|tmp[24]~48_combout\))) # (!\ULA|Mux2~1_combout\ & (((\ULA|Mux7~1_combout\)) # (!\ULA|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux2~1_combout\,
	datab => \ULA|Mux2~0_combout\,
	datac => \ULA|tmp[24]~48_combout\,
	datad => \ULA|Mux7~1_combout\,
	combout => \ULA|Mux7~2_combout\);

-- Location: LCCOMB_X12_Y7_N0
\ULA|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux7~3_combout\ = (\ULA|Mux31~5_combout\ & ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & ((\MUX_A_ALU|m_out[24]~8_combout\) # (!\ULA|Mux7~2_combout\))) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (\MUX_A_ALU|m_out[24]~8_combout\ & 
-- !\ULA|Mux7~2_combout\)))) # (!\ULA|Mux31~5_combout\ & (((\ULA|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datab => \MUX_A_ALU|m_out[24]~8_combout\,
	datac => \ULA|Mux31~5_combout\,
	datad => \ULA|Mux7~2_combout\,
	combout => \ULA|Mux7~3_combout\);

-- Location: LCCOMB_X12_Y7_N10
\ULA|Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux7~4_combout\ = (\COntroladora_ULA|alu_ctr[3]~9_combout\ & (\ULA|Mux7~0_combout\ & (\ULA|Mux30~2_combout\))) # (!\COntroladora_ULA|alu_ctr[3]~9_combout\ & ((\ULA|Mux7~3_combout\) # ((\ULA|Mux7~0_combout\ & \ULA|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COntroladora_ULA|alu_ctr[3]~9_combout\,
	datab => \ULA|Mux7~0_combout\,
	datac => \ULA|Mux30~2_combout\,
	datad => \ULA|Mux7~3_combout\,
	combout => \ULA|Mux7~4_combout\);

-- Location: LCFF_X12_Y7_N11
\SaidaAlu|sr_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ULA|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SaidaAlu|sr_out\(24));

-- Location: LCCOMB_X12_Y8_N10
\RI|sr_out~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~23_combout\ = (\Memoria|altsyncram_component|auto_generated|q_a\(22) & !\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memoria|altsyncram_component|auto_generated|q_a\(22),
	datac => \reset~combout\,
	combout => \RI|sr_out~23_combout\);

-- Location: LCFF_X12_Y8_N11
\RI|sr_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~23_combout\,
	ena => \RI|sr_out[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(22));

-- Location: LCCOMB_X12_Y8_N16
\PC|sr_out~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~48_combout\ = (\Controladora|pstate.branch_ex_st~regout\ & (!\Controladora|pstate.jump_ex_st~regout\ & (\SaidaAlu|sr_out\(24)))) # (!\Controladora|pstate.branch_ex_st~regout\ & (\Controladora|pstate.jump_ex_st~regout\ & ((\RI|sr_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \Controladora|pstate.jump_ex_st~regout\,
	datac => \SaidaAlu|sr_out\(24),
	datad => \RI|sr_out\(22),
	combout => \PC|sr_out~48_combout\);

-- Location: LCCOMB_X12_Y8_N28
\PC|sr_out~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~49_combout\ = (\PC|sr_out~48_combout\) # ((!\Controladora|pstate.branch_ex_st~regout\ & (!\Controladora|pstate.jump_ex_st~regout\ & \ULA|Mux7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \Controladora|pstate.jump_ex_st~regout\,
	datac => \PC|sr_out~48_combout\,
	datad => \ULA|Mux7~4_combout\,
	combout => \PC|sr_out~49_combout\);

-- Location: LCFF_X12_Y8_N29
\PC|sr_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~49_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(24));

-- Location: LCCOMB_X9_Y10_N26
\MUX_A_ALU|m_out[24]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A_ALU|m_out[24]~8_combout\ = (!\Controladora|pstate.rtype_ex_st~regout\ & (!\Controladora|pstate.branch_ex_st~regout\ & (!\Controladora|pstate.c_mem_add_st~regout\ & \PC|sr_out\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.rtype_ex_st~regout\,
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \Controladora|pstate.c_mem_add_st~regout\,
	datad => \PC|sr_out\(24),
	combout => \MUX_A_ALU|m_out[24]~8_combout\);

-- Location: LCCOMB_X13_Y9_N18
\ULA|tmp[25]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|tmp[25]~50_combout\ = (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & ((\MUX_A_ALU|m_out[25]~7_combout\ & (!\ULA|tmp[24]~49\)) # (!\MUX_A_ALU|m_out[25]~7_combout\ & ((\ULA|tmp[24]~49\) # (GND))))) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & 
-- ((\MUX_A_ALU|m_out[25]~7_combout\ & (\ULA|tmp[24]~49\ & VCC)) # (!\MUX_A_ALU|m_out[25]~7_combout\ & (!\ULA|tmp[24]~49\))))
-- \ULA|tmp[25]~51\ = CARRY((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & ((!\ULA|tmp[24]~49\) # (!\MUX_A_ALU|m_out[25]~7_combout\))) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (!\MUX_A_ALU|m_out[25]~7_combout\ & !\ULA|tmp[24]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datab => \MUX_A_ALU|m_out[25]~7_combout\,
	datad => VCC,
	cin => \ULA|tmp[24]~49\,
	combout => \ULA|tmp[25]~50_combout\,
	cout => \ULA|tmp[25]~51\);

-- Location: LCCOMB_X10_Y9_N18
\ULA|Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~50_combout\ = (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & ((\MUX_A_ALU|m_out[25]~7_combout\ & (\ULA|Add1~49\ & VCC)) # (!\MUX_A_ALU|m_out[25]~7_combout\ & (!\ULA|Add1~49\)))) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & 
-- ((\MUX_A_ALU|m_out[25]~7_combout\ & (!\ULA|Add1~49\)) # (!\MUX_A_ALU|m_out[25]~7_combout\ & ((\ULA|Add1~49\) # (GND)))))
-- \ULA|Add1~51\ = CARRY((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (!\MUX_A_ALU|m_out[25]~7_combout\ & !\ULA|Add1~49\)) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & ((!\ULA|Add1~49\) # (!\MUX_A_ALU|m_out[25]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datab => \MUX_A_ALU|m_out[25]~7_combout\,
	datad => VCC,
	cin => \ULA|Add1~49\,
	combout => \ULA|Add1~50_combout\,
	cout => \ULA|Add1~51\);

-- Location: LCCOMB_X10_Y7_N16
\ULA|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux6~1_combout\ = (!\COntroladora_ULA|alu_ctr[0]~11_combout\ & \ULA|Add1~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	datad => \ULA|Add1~50_combout\,
	combout => \ULA|Mux6~1_combout\);

-- Location: LCCOMB_X12_Y7_N18
\ULA|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux6~2_combout\ = (\ULA|Mux2~1_combout\ & (\ULA|Mux2~0_combout\ & (\ULA|tmp[25]~50_combout\))) # (!\ULA|Mux2~1_combout\ & (((\ULA|Mux6~1_combout\)) # (!\ULA|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux2~1_combout\,
	datab => \ULA|Mux2~0_combout\,
	datac => \ULA|tmp[25]~50_combout\,
	datad => \ULA|Mux6~1_combout\,
	combout => \ULA|Mux6~2_combout\);

-- Location: LCCOMB_X12_Y7_N28
\ULA|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux6~3_combout\ = (\ULA|Mux31~5_combout\ & ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & ((\MUX_A_ALU|m_out[25]~7_combout\) # (!\ULA|Mux6~2_combout\))) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (\MUX_A_ALU|m_out[25]~7_combout\ & 
-- !\ULA|Mux6~2_combout\)))) # (!\ULA|Mux31~5_combout\ & (((\ULA|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datab => \MUX_A_ALU|m_out[25]~7_combout\,
	datac => \ULA|Mux31~5_combout\,
	datad => \ULA|Mux6~2_combout\,
	combout => \ULA|Mux6~3_combout\);

-- Location: LCCOMB_X12_Y7_N16
\ULA|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux6~4_combout\ = (\COntroladora_ULA|alu_ctr[3]~9_combout\ & (\ULA|Mux6~0_combout\ & (\ULA|Mux30~2_combout\))) # (!\COntroladora_ULA|alu_ctr[3]~9_combout\ & ((\ULA|Mux6~3_combout\) # ((\ULA|Mux6~0_combout\ & \ULA|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COntroladora_ULA|alu_ctr[3]~9_combout\,
	datab => \ULA|Mux6~0_combout\,
	datac => \ULA|Mux30~2_combout\,
	datad => \ULA|Mux6~3_combout\,
	combout => \ULA|Mux6~4_combout\);

-- Location: LCFF_X12_Y7_N17
\SaidaAlu|sr_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ULA|Mux6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SaidaAlu|sr_out\(25));

-- Location: LCCOMB_X8_Y11_N4
\RI|sr_out~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~24_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(23),
	combout => \RI|sr_out~24_combout\);

-- Location: LCFF_X8_Y11_N5
\RI|sr_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~24_combout\,
	ena => \RI|sr_out[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(23));

-- Location: LCCOMB_X8_Y11_N14
\PC|sr_out~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~50_combout\ = (\Controladora|pstate.branch_ex_st~regout\ & (\SaidaAlu|sr_out\(25) & ((!\Controladora|pstate.jump_ex_st~regout\)))) # (!\Controladora|pstate.branch_ex_st~regout\ & (((\RI|sr_out\(23) & \Controladora|pstate.jump_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \SaidaAlu|sr_out\(25),
	datac => \RI|sr_out\(23),
	datad => \Controladora|pstate.jump_ex_st~regout\,
	combout => \PC|sr_out~50_combout\);

-- Location: LCCOMB_X12_Y11_N28
\PC|sr_out~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~51_combout\ = (\PC|sr_out~50_combout\) # ((\ULA|Mux6~4_combout\ & (!\Controladora|pstate.jump_ex_st~regout\ & !\Controladora|pstate.branch_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux6~4_combout\,
	datab => \PC|sr_out~50_combout\,
	datac => \Controladora|pstate.jump_ex_st~regout\,
	datad => \Controladora|pstate.branch_ex_st~regout\,
	combout => \PC|sr_out~51_combout\);

-- Location: LCFF_X12_Y11_N29
\PC|sr_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~51_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(25));

-- Location: LCCOMB_X12_Y11_N30
\MUX_A_ALU|m_out[25]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A_ALU|m_out[25]~7_combout\ = (!\Controladora|pstate.c_mem_add_st~regout\ & (\PC|sr_out\(25) & (!\Controladora|pstate.rtype_ex_st~regout\ & !\Controladora|pstate.branch_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.c_mem_add_st~regout\,
	datab => \PC|sr_out\(25),
	datac => \Controladora|pstate.rtype_ex_st~regout\,
	datad => \Controladora|pstate.branch_ex_st~regout\,
	combout => \MUX_A_ALU|m_out[25]~7_combout\);

-- Location: LCCOMB_X13_Y9_N20
\ULA|tmp[26]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|tmp[26]~52_combout\ = ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ $ (\MUX_A_ALU|m_out[26]~6_combout\ $ (\ULA|tmp[25]~51\)))) # (GND)
-- \ULA|tmp[26]~53\ = CARRY((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (\MUX_A_ALU|m_out[26]~6_combout\ & !\ULA|tmp[25]~51\)) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & ((\MUX_A_ALU|m_out[26]~6_combout\) # (!\ULA|tmp[25]~51\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datab => \MUX_A_ALU|m_out[26]~6_combout\,
	datad => VCC,
	cin => \ULA|tmp[25]~51\,
	combout => \ULA|tmp[26]~52_combout\,
	cout => \ULA|tmp[26]~53\);

-- Location: LCCOMB_X10_Y9_N20
\ULA|Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~52_combout\ = ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ $ (\MUX_A_ALU|m_out[26]~6_combout\ $ (!\ULA|Add1~51\)))) # (GND)
-- \ULA|Add1~53\ = CARRY((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & ((\MUX_A_ALU|m_out[26]~6_combout\) # (!\ULA|Add1~51\))) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (\MUX_A_ALU|m_out[26]~6_combout\ & !\ULA|Add1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datab => \MUX_A_ALU|m_out[26]~6_combout\,
	datad => VCC,
	cin => \ULA|Add1~51\,
	combout => \ULA|Add1~52_combout\,
	cout => \ULA|Add1~53\);

-- Location: LCCOMB_X14_Y9_N28
\ULA|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux5~0_combout\ = (!\COntroladora_ULA|alu_ctr[0]~11_combout\ & \ULA|Add1~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	datad => \ULA|Add1~52_combout\,
	combout => \ULA|Mux5~0_combout\);

-- Location: LCCOMB_X14_Y9_N6
\ULA|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux5~1_combout\ = (\ULA|Mux2~0_combout\ & ((\ULA|Mux2~1_combout\ & (\ULA|tmp[26]~52_combout\)) # (!\ULA|Mux2~1_combout\ & ((\ULA|Mux5~0_combout\))))) # (!\ULA|Mux2~0_combout\ & (!\ULA|Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux2~0_combout\,
	datab => \ULA|Mux2~1_combout\,
	datac => \ULA|tmp[26]~52_combout\,
	datad => \ULA|Mux5~0_combout\,
	combout => \ULA|Mux5~1_combout\);

-- Location: LCCOMB_X14_Y9_N4
\ULA|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux5~2_combout\ = (\ULA|Mux31~5_combout\ & ((\MUX_A_ALU|m_out[26]~6_combout\ & ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\) # (!\ULA|Mux5~1_combout\))) # (!\MUX_A_ALU|m_out[26]~6_combout\ & (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & 
-- !\ULA|Mux5~1_combout\)))) # (!\ULA|Mux31~5_combout\ & (((\ULA|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux31~5_combout\,
	datab => \MUX_A_ALU|m_out[26]~6_combout\,
	datac => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datad => \ULA|Mux5~1_combout\,
	combout => \ULA|Mux5~2_combout\);

-- Location: LCCOMB_X12_Y12_N22
\ULA|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux5~4_combout\ = (\ULA|Mux5~3_combout\ & ((\ULA|Mux30~2_combout\) # ((!\COntroladora_ULA|alu_ctr[3]~9_combout\ & \ULA|Mux5~2_combout\)))) # (!\ULA|Mux5~3_combout\ & (!\COntroladora_ULA|alu_ctr[3]~9_combout\ & ((\ULA|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux5~3_combout\,
	datab => \COntroladora_ULA|alu_ctr[3]~9_combout\,
	datac => \ULA|Mux30~2_combout\,
	datad => \ULA|Mux5~2_combout\,
	combout => \ULA|Mux5~4_combout\);

-- Location: LCCOMB_X12_Y12_N26
\PC|sr_out~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~53_combout\ = (\PC|sr_out~52_combout\) # ((!\Controladora|pstate.branch_ex_st~regout\ & (!\Controladora|pstate.jump_ex_st~regout\ & \ULA|Mux5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \Controladora|pstate.jump_ex_st~regout\,
	datac => \PC|sr_out~52_combout\,
	datad => \ULA|Mux5~4_combout\,
	combout => \PC|sr_out~53_combout\);

-- Location: LCFF_X12_Y12_N27
\PC|sr_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~53_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(26));

-- Location: LCCOMB_X12_Y12_N24
\MUX_A_ALU|m_out[26]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A_ALU|m_out[26]~6_combout\ = (!\Controladora|pstate.branch_ex_st~regout\ & (\PC|sr_out\(26) & (!\Controladora|pstate.c_mem_add_st~regout\ & !\Controladora|pstate.rtype_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \PC|sr_out\(26),
	datac => \Controladora|pstate.c_mem_add_st~regout\,
	datad => \Controladora|pstate.rtype_ex_st~regout\,
	combout => \MUX_A_ALU|m_out[26]~6_combout\);

-- Location: LCCOMB_X13_Y9_N22
\ULA|tmp[27]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|tmp[27]~54_combout\ = (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & ((\MUX_A_ALU|m_out[27]~5_combout\ & (!\ULA|tmp[26]~53\)) # (!\MUX_A_ALU|m_out[27]~5_combout\ & ((\ULA|tmp[26]~53\) # (GND))))) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & 
-- ((\MUX_A_ALU|m_out[27]~5_combout\ & (\ULA|tmp[26]~53\ & VCC)) # (!\MUX_A_ALU|m_out[27]~5_combout\ & (!\ULA|tmp[26]~53\))))
-- \ULA|tmp[27]~55\ = CARRY((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & ((!\ULA|tmp[26]~53\) # (!\MUX_A_ALU|m_out[27]~5_combout\))) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (!\MUX_A_ALU|m_out[27]~5_combout\ & !\ULA|tmp[26]~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datab => \MUX_A_ALU|m_out[27]~5_combout\,
	datad => VCC,
	cin => \ULA|tmp[26]~53\,
	combout => \ULA|tmp[27]~54_combout\,
	cout => \ULA|tmp[27]~55\);

-- Location: LCCOMB_X10_Y9_N22
\ULA|Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~54_combout\ = (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & ((\MUX_A_ALU|m_out[27]~5_combout\ & (\ULA|Add1~53\ & VCC)) # (!\MUX_A_ALU|m_out[27]~5_combout\ & (!\ULA|Add1~53\)))) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & 
-- ((\MUX_A_ALU|m_out[27]~5_combout\ & (!\ULA|Add1~53\)) # (!\MUX_A_ALU|m_out[27]~5_combout\ & ((\ULA|Add1~53\) # (GND)))))
-- \ULA|Add1~55\ = CARRY((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (!\MUX_A_ALU|m_out[27]~5_combout\ & !\ULA|Add1~53\)) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & ((!\ULA|Add1~53\) # (!\MUX_A_ALU|m_out[27]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datab => \MUX_A_ALU|m_out[27]~5_combout\,
	datad => VCC,
	cin => \ULA|Add1~53\,
	combout => \ULA|Add1~54_combout\,
	cout => \ULA|Add1~55\);

-- Location: LCCOMB_X14_Y9_N30
\ULA|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux4~2_combout\ = (!\COntroladora_ULA|alu_ctr[0]~11_combout\ & \ULA|Add1~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	datad => \ULA|Add1~54_combout\,
	combout => \ULA|Mux4~2_combout\);

-- Location: LCCOMB_X14_Y9_N12
\ULA|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux4~3_combout\ = (\ULA|Mux2~0_combout\ & ((\ULA|Mux2~1_combout\ & (\ULA|tmp[27]~54_combout\)) # (!\ULA|Mux2~1_combout\ & ((\ULA|Mux4~2_combout\))))) # (!\ULA|Mux2~0_combout\ & (((!\ULA|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux2~0_combout\,
	datab => \ULA|tmp[27]~54_combout\,
	datac => \ULA|Mux2~1_combout\,
	datad => \ULA|Mux4~2_combout\,
	combout => \ULA|Mux4~3_combout\);

-- Location: LCCOMB_X14_Y9_N2
\ULA|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux4~4_combout\ = (\ULA|Mux31~5_combout\ & ((\MUX_A_ALU|m_out[27]~5_combout\ & ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\) # (!\ULA|Mux4~3_combout\))) # (!\MUX_A_ALU|m_out[27]~5_combout\ & (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & 
-- !\ULA|Mux4~3_combout\)))) # (!\ULA|Mux31~5_combout\ & (((\ULA|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux31~5_combout\,
	datab => \MUX_A_ALU|m_out[27]~5_combout\,
	datac => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datad => \ULA|Mux4~3_combout\,
	combout => \ULA|Mux4~4_combout\);

-- Location: LCCOMB_X14_Y9_N20
\ULA|Mux4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux4~6_combout\ = (\ULA|Mux4~5_combout\) # ((\ULA|Mux4~4_combout\ & ((!\COntroladora_ULA|alu_ctr[3]~6_combout\) # (!\Controladora|pstate.rtype_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux4~5_combout\,
	datab => \Controladora|pstate.rtype_ex_st~regout\,
	datac => \COntroladora_ULA|alu_ctr[3]~6_combout\,
	datad => \ULA|Mux4~4_combout\,
	combout => \ULA|Mux4~6_combout\);

-- Location: LCCOMB_X8_Y10_N16
\RI|sr_out~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~26_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(25),
	combout => \RI|sr_out~26_combout\);

-- Location: LCFF_X8_Y10_N17
\RI|sr_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~26_combout\,
	ena => \RI|sr_out[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(25));

-- Location: LCFF_X14_Y9_N21
\SaidaAlu|sr_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ULA|Mux4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SaidaAlu|sr_out\(27));

-- Location: LCCOMB_X14_Y9_N18
\PC|sr_out~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~54_combout\ = (\Controladora|pstate.jump_ex_st~regout\ & (!\Controladora|pstate.branch_ex_st~regout\ & (\RI|sr_out\(25)))) # (!\Controladora|pstate.jump_ex_st~regout\ & (\Controladora|pstate.branch_ex_st~regout\ & ((\SaidaAlu|sr_out\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.jump_ex_st~regout\,
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \RI|sr_out\(25),
	datad => \SaidaAlu|sr_out\(27),
	combout => \PC|sr_out~54_combout\);

-- Location: LCCOMB_X14_Y9_N14
\PC|sr_out~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~55_combout\ = (\PC|sr_out~54_combout\) # ((!\Controladora|pstate.jump_ex_st~regout\ & (!\Controladora|pstate.branch_ex_st~regout\ & \ULA|Mux4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.jump_ex_st~regout\,
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \ULA|Mux4~6_combout\,
	datad => \PC|sr_out~54_combout\,
	combout => \PC|sr_out~55_combout\);

-- Location: LCFF_X14_Y9_N15
\PC|sr_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~55_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(27));

-- Location: LCCOMB_X14_Y9_N22
\MUX_A_ALU|m_out[27]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A_ALU|m_out[27]~5_combout\ = (!\Controladora|pstate.c_mem_add_st~regout\ & (!\Controladora|pstate.branch_ex_st~regout\ & (\PC|sr_out\(27) & !\Controladora|pstate.rtype_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.c_mem_add_st~regout\,
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \PC|sr_out\(27),
	datad => \Controladora|pstate.rtype_ex_st~regout\,
	combout => \MUX_A_ALU|m_out[27]~5_combout\);

-- Location: LCCOMB_X10_Y9_N24
\ULA|Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~56_combout\ = ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ $ (\MUX_A_ALU|m_out[28]~4_combout\ $ (!\ULA|Add1~55\)))) # (GND)
-- \ULA|Add1~57\ = CARRY((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & ((\MUX_A_ALU|m_out[28]~4_combout\) # (!\ULA|Add1~55\))) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (\MUX_A_ALU|m_out[28]~4_combout\ & !\ULA|Add1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datab => \MUX_A_ALU|m_out[28]~4_combout\,
	datad => VCC,
	cin => \ULA|Add1~55\,
	combout => \ULA|Add1~56_combout\,
	cout => \ULA|Add1~57\);

-- Location: LCCOMB_X12_Y9_N20
\ULA|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux3~1_combout\ = (!\COntroladora_ULA|alu_ctr[0]~11_combout\ & \ULA|Add1~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	datad => \ULA|Add1~56_combout\,
	combout => \ULA|Mux3~1_combout\);

-- Location: LCCOMB_X13_Y9_N24
\ULA|tmp[28]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|tmp[28]~56_combout\ = ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ $ (\MUX_A_ALU|m_out[28]~4_combout\ $ (\ULA|tmp[27]~55\)))) # (GND)
-- \ULA|tmp[28]~57\ = CARRY((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (\MUX_A_ALU|m_out[28]~4_combout\ & !\ULA|tmp[27]~55\)) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & ((\MUX_A_ALU|m_out[28]~4_combout\) # (!\ULA|tmp[27]~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datab => \MUX_A_ALU|m_out[28]~4_combout\,
	datad => VCC,
	cin => \ULA|tmp[27]~55\,
	combout => \ULA|tmp[28]~56_combout\,
	cout => \ULA|tmp[28]~57\);

-- Location: LCCOMB_X12_Y9_N2
\ULA|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux3~2_combout\ = (\ULA|Mux2~1_combout\ & (\ULA|Mux2~0_combout\ & ((\ULA|tmp[28]~56_combout\)))) # (!\ULA|Mux2~1_combout\ & (((\ULA|Mux3~1_combout\)) # (!\ULA|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux2~1_combout\,
	datab => \ULA|Mux2~0_combout\,
	datac => \ULA|Mux3~1_combout\,
	datad => \ULA|tmp[28]~56_combout\,
	combout => \ULA|Mux3~2_combout\);

-- Location: LCCOMB_X12_Y9_N28
\ULA|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux3~3_combout\ = (\ULA|Mux31~5_combout\ & ((\MUX_A_ALU|m_out[28]~4_combout\ & ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\) # (!\ULA|Mux3~2_combout\))) # (!\MUX_A_ALU|m_out[28]~4_combout\ & (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & 
-- !\ULA|Mux3~2_combout\)))) # (!\ULA|Mux31~5_combout\ & (((\ULA|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[28]~4_combout\,
	datab => \ULA|Mux31~5_combout\,
	datac => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datad => \ULA|Mux3~2_combout\,
	combout => \ULA|Mux3~3_combout\);

-- Location: LCCOMB_X12_Y9_N16
\ULA|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux3~4_combout\ = (\ULA|Mux3~0_combout\ & ((\ULA|Mux30~2_combout\) # ((!\COntroladora_ULA|alu_ctr[3]~9_combout\ & \ULA|Mux3~3_combout\)))) # (!\ULA|Mux3~0_combout\ & (!\COntroladora_ULA|alu_ctr[3]~9_combout\ & ((\ULA|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux3~0_combout\,
	datab => \COntroladora_ULA|alu_ctr[3]~9_combout\,
	datac => \ULA|Mux30~2_combout\,
	datad => \ULA|Mux3~3_combout\,
	combout => \ULA|Mux3~4_combout\);

-- Location: LCCOMB_X8_Y11_N2
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

-- Location: LCFF_X8_Y11_N3
\RI|sr_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~30_combout\,
	ena => \RI|sr_out[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(29));

-- Location: LCFF_X12_Y9_N27
\SaidaAlu|sr_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ULA|Mux2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SaidaAlu|sr_out\(29));

-- Location: LCCOMB_X8_Y8_N2
\PC|sr_out~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~58_combout\ = (\Controladora|pstate.jump_ex_st~regout\ & (\RI|sr_out\(29) & ((!\Controladora|pstate.branch_ex_st~regout\)))) # (!\Controladora|pstate.jump_ex_st~regout\ & (((\SaidaAlu|sr_out\(29) & \Controladora|pstate.branch_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.jump_ex_st~regout\,
	datab => \RI|sr_out\(29),
	datac => \SaidaAlu|sr_out\(29),
	datad => \Controladora|pstate.branch_ex_st~regout\,
	combout => \PC|sr_out~58_combout\);

-- Location: LCCOMB_X12_Y9_N18
\PC|sr_out~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~59_combout\ = (\PC|sr_out~58_combout\) # ((!\Controladora|pstate.branch_ex_st~regout\ & (!\Controladora|pstate.jump_ex_st~regout\ & \ULA|Mux2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \PC|sr_out~58_combout\,
	datac => \Controladora|pstate.jump_ex_st~regout\,
	datad => \ULA|Mux2~6_combout\,
	combout => \PC|sr_out~59_combout\);

-- Location: LCFF_X12_Y9_N19
\PC|sr_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~59_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(29));

-- Location: LCCOMB_X12_Y9_N4
\MUX_A_ALU|m_out[29]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A_ALU|m_out[29]~3_combout\ = (!\Controladora|pstate.branch_ex_st~regout\ & (\PC|sr_out\(29) & (!\Controladora|pstate.rtype_ex_st~regout\ & !\Controladora|pstate.c_mem_add_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \PC|sr_out\(29),
	datac => \Controladora|pstate.rtype_ex_st~regout\,
	datad => \Controladora|pstate.c_mem_add_st~regout\,
	combout => \MUX_A_ALU|m_out[29]~3_combout\);

-- Location: LCCOMB_X13_Y9_N26
\ULA|tmp[29]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|tmp[29]~58_combout\ = (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & ((\MUX_A_ALU|m_out[29]~3_combout\ & (!\ULA|tmp[28]~57\)) # (!\MUX_A_ALU|m_out[29]~3_combout\ & ((\ULA|tmp[28]~57\) # (GND))))) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & 
-- ((\MUX_A_ALU|m_out[29]~3_combout\ & (\ULA|tmp[28]~57\ & VCC)) # (!\MUX_A_ALU|m_out[29]~3_combout\ & (!\ULA|tmp[28]~57\))))
-- \ULA|tmp[29]~59\ = CARRY((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & ((!\ULA|tmp[28]~57\) # (!\MUX_A_ALU|m_out[29]~3_combout\))) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (!\MUX_A_ALU|m_out[29]~3_combout\ & !\ULA|tmp[28]~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datab => \MUX_A_ALU|m_out[29]~3_combout\,
	datad => VCC,
	cin => \ULA|tmp[28]~57\,
	combout => \ULA|tmp[29]~58_combout\,
	cout => \ULA|tmp[29]~59\);

-- Location: LCCOMB_X10_Y9_N26
\ULA|Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~58_combout\ = (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & ((\MUX_A_ALU|m_out[29]~3_combout\ & (\ULA|Add1~57\ & VCC)) # (!\MUX_A_ALU|m_out[29]~3_combout\ & (!\ULA|Add1~57\)))) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & 
-- ((\MUX_A_ALU|m_out[29]~3_combout\ & (!\ULA|Add1~57\)) # (!\MUX_A_ALU|m_out[29]~3_combout\ & ((\ULA|Add1~57\) # (GND)))))
-- \ULA|Add1~59\ = CARRY((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (!\MUX_A_ALU|m_out[29]~3_combout\ & !\ULA|Add1~57\)) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & ((!\ULA|Add1~57\) # (!\MUX_A_ALU|m_out[29]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datab => \MUX_A_ALU|m_out[29]~3_combout\,
	datad => VCC,
	cin => \ULA|Add1~57\,
	combout => \ULA|Add1~58_combout\,
	cout => \ULA|Add1~59\);

-- Location: LCCOMB_X12_Y9_N0
\ULA|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux2~3_combout\ = (!\COntroladora_ULA|alu_ctr[0]~11_combout\ & \ULA|Add1~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	datad => \ULA|Add1~58_combout\,
	combout => \ULA|Mux2~3_combout\);

-- Location: LCCOMB_X12_Y9_N30
\ULA|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux2~4_combout\ = (\ULA|Mux2~1_combout\ & (\ULA|Mux2~0_combout\ & (\ULA|tmp[29]~58_combout\))) # (!\ULA|Mux2~1_combout\ & (((\ULA|Mux2~3_combout\)) # (!\ULA|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux2~1_combout\,
	datab => \ULA|Mux2~0_combout\,
	datac => \ULA|tmp[29]~58_combout\,
	datad => \ULA|Mux2~3_combout\,
	combout => \ULA|Mux2~4_combout\);

-- Location: LCCOMB_X12_Y9_N12
\ULA|Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux2~5_combout\ = (\ULA|Mux31~5_combout\ & ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & ((\MUX_A_ALU|m_out[29]~3_combout\) # (!\ULA|Mux2~4_combout\))) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (\MUX_A_ALU|m_out[29]~3_combout\ & 
-- !\ULA|Mux2~4_combout\)))) # (!\ULA|Mux31~5_combout\ & (((\ULA|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datab => \MUX_A_ALU|m_out[29]~3_combout\,
	datac => \ULA|Mux31~5_combout\,
	datad => \ULA|Mux2~4_combout\,
	combout => \ULA|Mux2~5_combout\);

-- Location: LCCOMB_X12_Y9_N26
\ULA|Mux2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux2~6_combout\ = (\ULA|Mux2~2_combout\ & ((\ULA|Mux30~2_combout\) # ((!\COntroladora_ULA|alu_ctr[3]~9_combout\ & \ULA|Mux2~5_combout\)))) # (!\ULA|Mux2~2_combout\ & (!\COntroladora_ULA|alu_ctr[3]~9_combout\ & ((\ULA|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux2~2_combout\,
	datab => \COntroladora_ULA|alu_ctr[3]~9_combout\,
	datac => \ULA|Mux30~2_combout\,
	datad => \ULA|Mux2~5_combout\,
	combout => \ULA|Mux2~6_combout\);

-- Location: LCCOMB_X13_Y8_N8
\ULA|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Equal0~6_combout\ = (\ULA|Equal0~4_combout\ & (\ULA|Equal0~5_combout\ & (!\ULA|Mux3~4_combout\ & !\ULA|Mux2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Equal0~4_combout\,
	datab => \ULA|Equal0~5_combout\,
	datac => \ULA|Mux3~4_combout\,
	datad => \ULA|Mux2~6_combout\,
	combout => \ULA|Equal0~6_combout\);

-- Location: LCCOMB_X10_Y11_N18
\MUX_B_extsgn_ALU|m_out[15]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B_extsgn_ALU|m_out[15]~4_combout\ = (\RI|sr_out\(15) & (((\MUX_B_extsgn_ALU|m_out[16]~2_combout\ & \RI|sr_out\(13))) # (!\MUX_B_extsgn_ALU|Equal2~0_combout\))) # (!\RI|sr_out\(15) & (\MUX_B_extsgn_ALU|m_out[16]~2_combout\ & ((\RI|sr_out\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(15),
	datab => \MUX_B_extsgn_ALU|m_out[16]~2_combout\,
	datac => \MUX_B_extsgn_ALU|Equal2~0_combout\,
	datad => \RI|sr_out\(13),
	combout => \MUX_B_extsgn_ALU|m_out[15]~4_combout\);

-- Location: LCCOMB_X14_Y10_N14
\ULA|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux16~0_combout\ = (\MUX_A_ALU|m_out[15]~17_combout\ & (!\MUX_B_extsgn_ALU|m_out[15]~4_combout\ & !\COntroladora_ULA|alu_ctr[2]~8_combout\)) # (!\MUX_A_ALU|m_out[15]~17_combout\ & (\MUX_B_extsgn_ALU|m_out[15]~4_combout\ $ 
-- (\COntroladora_ULA|alu_ctr[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[15]~17_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[15]~4_combout\,
	datad => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	combout => \ULA|Mux16~0_combout\);

-- Location: LCCOMB_X14_Y10_N12
\ULA|Mux16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux16~1_combout\ = (!\COntroladora_ULA|alu_ctr[0]~11_combout\ & \ULA|Add1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	datad => \ULA|Add1~30_combout\,
	combout => \ULA|Mux16~1_combout\);

-- Location: LCCOMB_X14_Y10_N2
\ULA|Mux16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux16~2_combout\ = (\ULA|Mux2~0_combout\ & ((\ULA|Mux2~1_combout\ & (\ULA|tmp[15]~30_combout\)) # (!\ULA|Mux2~1_combout\ & ((\ULA|Mux16~1_combout\))))) # (!\ULA|Mux2~0_combout\ & (!\ULA|Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux2~0_combout\,
	datab => \ULA|Mux2~1_combout\,
	datac => \ULA|tmp[15]~30_combout\,
	datad => \ULA|Mux16~1_combout\,
	combout => \ULA|Mux16~2_combout\);

-- Location: LCCOMB_X14_Y10_N28
\ULA|Mux16~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux16~3_combout\ = (\ULA|Mux31~5_combout\ & ((\MUX_A_ALU|m_out[15]~17_combout\ & ((\MUX_B_extsgn_ALU|m_out[15]~4_combout\) # (!\ULA|Mux16~2_combout\))) # (!\MUX_A_ALU|m_out[15]~17_combout\ & (\MUX_B_extsgn_ALU|m_out[15]~4_combout\ & 
-- !\ULA|Mux16~2_combout\)))) # (!\ULA|Mux31~5_combout\ & (((\ULA|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[15]~17_combout\,
	datab => \ULA|Mux31~5_combout\,
	datac => \MUX_B_extsgn_ALU|m_out[15]~4_combout\,
	datad => \ULA|Mux16~2_combout\,
	combout => \ULA|Mux16~3_combout\);

-- Location: LCCOMB_X14_Y10_N0
\ULA|Mux16~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux16~4_combout\ = (\ULA|Mux30~2_combout\ & ((\ULA|Mux16~0_combout\) # ((!\COntroladora_ULA|alu_ctr[3]~9_combout\ & \ULA|Mux16~3_combout\)))) # (!\ULA|Mux30~2_combout\ & (!\COntroladora_ULA|alu_ctr[3]~9_combout\ & ((\ULA|Mux16~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux30~2_combout\,
	datab => \COntroladora_ULA|alu_ctr[3]~9_combout\,
	datac => \ULA|Mux16~0_combout\,
	datad => \ULA|Mux16~3_combout\,
	combout => \ULA|Mux16~4_combout\);

-- Location: LCCOMB_X13_Y7_N12
\ULA|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux15~1_combout\ = (!\COntroladora_ULA|alu_ctr[0]~11_combout\ & \ULA|Add1~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	datad => \ULA|Add1~32_combout\,
	combout => \ULA|Mux15~1_combout\);

-- Location: LCCOMB_X13_Y7_N2
\ULA|Mux15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux15~2_combout\ = (\ULA|Mux2~0_combout\ & ((\ULA|Mux2~1_combout\ & (\ULA|tmp[16]~32_combout\)) # (!\ULA|Mux2~1_combout\ & ((\ULA|Mux15~1_combout\))))) # (!\ULA|Mux2~0_combout\ & (!\ULA|Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux2~0_combout\,
	datab => \ULA|Mux2~1_combout\,
	datac => \ULA|tmp[16]~32_combout\,
	datad => \ULA|Mux15~1_combout\,
	combout => \ULA|Mux15~2_combout\);

-- Location: LCCOMB_X13_Y7_N28
\ULA|Mux15~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux15~3_combout\ = (\ULA|Mux31~5_combout\ & ((\MUX_A_ALU|m_out[16]~16_combout\ & ((\MUX_B_extsgn_ALU|m_out[16]~3_combout\) # (!\ULA|Mux15~2_combout\))) # (!\MUX_A_ALU|m_out[16]~16_combout\ & (\MUX_B_extsgn_ALU|m_out[16]~3_combout\ & 
-- !\ULA|Mux15~2_combout\)))) # (!\ULA|Mux31~5_combout\ & (((\ULA|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[16]~16_combout\,
	datab => \ULA|Mux31~5_combout\,
	datac => \MUX_B_extsgn_ALU|m_out[16]~3_combout\,
	datad => \ULA|Mux15~2_combout\,
	combout => \ULA|Mux15~3_combout\);

-- Location: LCCOMB_X13_Y7_N18
\ULA|Mux15~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux15~4_combout\ = (\ULA|Mux15~0_combout\ & ((\ULA|Mux30~2_combout\) # ((!\COntroladora_ULA|alu_ctr[3]~9_combout\ & \ULA|Mux15~3_combout\)))) # (!\ULA|Mux15~0_combout\ & (((!\COntroladora_ULA|alu_ctr[3]~9_combout\ & \ULA|Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux15~0_combout\,
	datab => \ULA|Mux30~2_combout\,
	datac => \COntroladora_ULA|alu_ctr[3]~9_combout\,
	datad => \ULA|Mux15~3_combout\,
	combout => \ULA|Mux15~4_combout\);

-- Location: LCCOMB_X13_Y8_N30
\ULA|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Equal0~9_combout\ = (!\ULA|Mux14~4_combout\ & (!\ULA|Mux18~4_combout\ & (!\ULA|Mux16~4_combout\ & !\ULA|Mux15~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux14~4_combout\,
	datab => \ULA|Mux18~4_combout\,
	datac => \ULA|Mux16~4_combout\,
	datad => \ULA|Mux15~4_combout\,
	combout => \ULA|Equal0~9_combout\);

-- Location: LCCOMB_X13_Y6_N10
\ULA|Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux31~0_combout\ = (\COntroladora_ULA|alu_ctr[1]~3_combout\ & ((!\COntroladora_ULA|alu_ctr[3]~6_combout\) # (!\Controladora|pstate.rtype_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COntroladora_ULA|alu_ctr[1]~3_combout\,
	datac => \Controladora|pstate.rtype_ex_st~regout\,
	datad => \COntroladora_ULA|alu_ctr[3]~6_combout\,
	combout => \ULA|Mux31~0_combout\);

-- Location: LCCOMB_X13_Y6_N16
\ULA|Mux31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux31~1_combout\ = (\ULA|Mux31~0_combout\ & ((\COntroladora_ULA|alu_ctr[2]~8_combout\ & (\ULA|tmp[0]~0_combout\)) # (!\COntroladora_ULA|alu_ctr[2]~8_combout\ & ((\ULA|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|tmp[0]~0_combout\,
	datab => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	datac => \ULA|Add1~0_combout\,
	datad => \ULA|Mux31~0_combout\,
	combout => \ULA|Mux31~1_combout\);

-- Location: LCCOMB_X13_Y6_N26
\ULA|Mux31~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux31~2_combout\ = (!\MUX_A_ALU|m_out[0]~0_combout\ & (!\MUX_B_extsgn_ALU|m_out[0]~0_combout\ & (!\COntroladora_ULA|alu_ctr[1]~3_combout\ & \COntroladora_ULA|alu_ctr[3]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[0]~0_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[0]~0_combout\,
	datac => \COntroladora_ULA|alu_ctr[1]~3_combout\,
	datad => \COntroladora_ULA|alu_ctr[3]~9_combout\,
	combout => \ULA|Mux31~2_combout\);

-- Location: LCCOMB_X13_Y6_N4
\ULA|Mux31~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux31~3_combout\ = (!\COntroladora_ULA|alu_ctr[0]~11_combout\ & ((\ULA|Mux31~1_combout\) # ((\COntroladora_ULA|alu_ctr[2]~8_combout\ & \ULA|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	datab => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	datac => \ULA|Mux31~1_combout\,
	datad => \ULA|Mux31~2_combout\,
	combout => \ULA|Mux31~3_combout\);

-- Location: LCCOMB_X13_Y6_N18
\ULA|Mux31~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux31~7_combout\ = (\COntroladora_ULA|alu_ctr[3]~9_combout\ & (((\ULA|Add1~0_combout\)))) # (!\COntroladora_ULA|alu_ctr[3]~9_combout\ & ((\MUX_A_ALU|m_out[0]~0_combout\) # ((\MUX_B_extsgn_ALU|m_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[0]~0_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[0]~0_combout\,
	datac => \ULA|Add1~0_combout\,
	datad => \COntroladora_ULA|alu_ctr[3]~9_combout\,
	combout => \ULA|Mux31~7_combout\);

-- Location: LCCOMB_X13_Y6_N8
\ULA|Mux31~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux31~8_combout\ = (\ULA|Mux31~5_combout\ & ((\ULA|Mux31~6_combout\) # ((\COntroladora_ULA|alu_ctr[0]~11_combout\ & \ULA|Mux31~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux31~6_combout\,
	datab => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	datac => \ULA|Mux31~5_combout\,
	datad => \ULA|Mux31~7_combout\,
	combout => \ULA|Mux31~8_combout\);

-- Location: LCCOMB_X12_Y10_N8
\ULA|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux1~0_combout\ = (\COntroladora_ULA|alu_ctr[2]~8_combout\ & (!\MUX_A_ALU|m_out[30]~2_combout\ & !\MUX_B_extsgn_ALU|m_out[31]~1_combout\)) # (!\COntroladora_ULA|alu_ctr[2]~8_combout\ & (\MUX_A_ALU|m_out[30]~2_combout\ $ 
-- (\MUX_B_extsgn_ALU|m_out[31]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	datac => \MUX_A_ALU|m_out[30]~2_combout\,
	datad => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	combout => \ULA|Mux1~0_combout\);

-- Location: LCCOMB_X13_Y9_N28
\ULA|tmp[30]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|tmp[30]~60_combout\ = ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ $ (\MUX_A_ALU|m_out[30]~2_combout\ $ (\ULA|tmp[29]~59\)))) # (GND)
-- \ULA|tmp[30]~61\ = CARRY((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (\MUX_A_ALU|m_out[30]~2_combout\ & !\ULA|tmp[29]~59\)) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & ((\MUX_A_ALU|m_out[30]~2_combout\) # (!\ULA|tmp[29]~59\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datab => \MUX_A_ALU|m_out[30]~2_combout\,
	datad => VCC,
	cin => \ULA|tmp[29]~59\,
	combout => \ULA|tmp[30]~60_combout\,
	cout => \ULA|tmp[30]~61\);

-- Location: LCCOMB_X10_Y9_N28
\ULA|Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~60_combout\ = ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ $ (\MUX_A_ALU|m_out[30]~2_combout\ $ (!\ULA|Add1~59\)))) # (GND)
-- \ULA|Add1~61\ = CARRY((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & ((\MUX_A_ALU|m_out[30]~2_combout\) # (!\ULA|Add1~59\))) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (\MUX_A_ALU|m_out[30]~2_combout\ & !\ULA|Add1~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datab => \MUX_A_ALU|m_out[30]~2_combout\,
	datad => VCC,
	cin => \ULA|Add1~59\,
	combout => \ULA|Add1~60_combout\,
	cout => \ULA|Add1~61\);

-- Location: LCCOMB_X12_Y10_N10
\ULA|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux1~1_combout\ = (!\COntroladora_ULA|alu_ctr[0]~11_combout\ & \ULA|Add1~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	datad => \ULA|Add1~60_combout\,
	combout => \ULA|Mux1~1_combout\);

-- Location: LCCOMB_X12_Y10_N28
\ULA|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux1~2_combout\ = (\ULA|Mux2~1_combout\ & (\ULA|Mux2~0_combout\ & (\ULA|tmp[30]~60_combout\))) # (!\ULA|Mux2~1_combout\ & (((\ULA|Mux1~1_combout\)) # (!\ULA|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux2~1_combout\,
	datab => \ULA|Mux2~0_combout\,
	datac => \ULA|tmp[30]~60_combout\,
	datad => \ULA|Mux1~1_combout\,
	combout => \ULA|Mux1~2_combout\);

-- Location: LCCOMB_X12_Y10_N30
\ULA|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux1~3_combout\ = (\ULA|Mux31~5_combout\ & ((\MUX_A_ALU|m_out[30]~2_combout\ & ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\) # (!\ULA|Mux1~2_combout\))) # (!\MUX_A_ALU|m_out[30]~2_combout\ & (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & 
-- !\ULA|Mux1~2_combout\)))) # (!\ULA|Mux31~5_combout\ & (((\ULA|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[30]~2_combout\,
	datab => \ULA|Mux31~5_combout\,
	datac => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datad => \ULA|Mux1~2_combout\,
	combout => \ULA|Mux1~3_combout\);

-- Location: LCCOMB_X12_Y10_N18
\ULA|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux1~4_combout\ = (\COntroladora_ULA|alu_ctr[3]~9_combout\ & (\ULA|Mux30~2_combout\ & (\ULA|Mux1~0_combout\))) # (!\COntroladora_ULA|alu_ctr[3]~9_combout\ & ((\ULA|Mux1~3_combout\) # ((\ULA|Mux30~2_combout\ & \ULA|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COntroladora_ULA|alu_ctr[3]~9_combout\,
	datab => \ULA|Mux30~2_combout\,
	datac => \ULA|Mux1~0_combout\,
	datad => \ULA|Mux1~3_combout\,
	combout => \ULA|Mux1~4_combout\);

-- Location: LCFF_X12_Y10_N19
\SaidaAlu|sr_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ULA|Mux1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SaidaAlu|sr_out\(30));

-- Location: LCCOMB_X12_Y10_N14
\PC|sr_out~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~60_combout\ = (\Controladora|pstate.jump_ex_st~regout\ & (\RI|sr_out\(30) & ((!\Controladora|pstate.branch_ex_st~regout\)))) # (!\Controladora|pstate.jump_ex_st~regout\ & (((\SaidaAlu|sr_out\(30) & \Controladora|pstate.branch_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(30),
	datab => \SaidaAlu|sr_out\(30),
	datac => \Controladora|pstate.jump_ex_st~regout\,
	datad => \Controladora|pstate.branch_ex_st~regout\,
	combout => \PC|sr_out~60_combout\);

-- Location: LCCOMB_X12_Y10_N2
\PC|sr_out~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~61_combout\ = (\PC|sr_out~60_combout\) # ((!\Controladora|pstate.branch_ex_st~regout\ & (!\Controladora|pstate.jump_ex_st~regout\ & \ULA|Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \PC|sr_out~60_combout\,
	datac => \Controladora|pstate.jump_ex_st~regout\,
	datad => \ULA|Mux1~4_combout\,
	combout => \PC|sr_out~61_combout\);

-- Location: LCFF_X12_Y10_N3
\PC|sr_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~61_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(30));

-- Location: LCCOMB_X12_Y10_N16
\MUX_A_ALU|m_out[30]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A_ALU|m_out[30]~2_combout\ = (!\Controladora|pstate.c_mem_add_st~regout\ & (!\Controladora|pstate.rtype_ex_st~regout\ & (!\Controladora|pstate.branch_ex_st~regout\ & \PC|sr_out\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.c_mem_add_st~regout\,
	datab => \Controladora|pstate.rtype_ex_st~regout\,
	datac => \Controladora|pstate.branch_ex_st~regout\,
	datad => \PC|sr_out\(30),
	combout => \MUX_A_ALU|m_out[30]~2_combout\);

-- Location: LCCOMB_X10_Y9_N30
\ULA|Add1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~62_combout\ = \MUX_B_extsgn_ALU|m_out[31]~1_combout\ $ (\ULA|Add1~61\ $ (\MUX_A_ALU|m_out[31]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datad => \MUX_A_ALU|m_out[31]~1_combout\,
	cin => \ULA|Add1~61\,
	combout => \ULA|Add1~62_combout\);

-- Location: LCCOMB_X13_Y6_N28
\ULA|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux0~0_combout\ = (\COntroladora_ULA|alu_ctr[2]~8_combout\ & (\ULA|tmp[31]~62_combout\)) # (!\COntroladora_ULA|alu_ctr[2]~8_combout\ & ((\ULA|Add1~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	datac => \ULA|tmp[31]~62_combout\,
	datad => \ULA|Add1~62_combout\,
	combout => \ULA|Mux0~0_combout\);

-- Location: LCCOMB_X13_Y6_N0
\ULA|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux0~1_combout\ = (\ULA|Mux0~3_combout\) # ((\ULA|Mux31~0_combout\ & (!\COntroladora_ULA|alu_ctr[0]~11_combout\ & \ULA|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux0~3_combout\,
	datab => \ULA|Mux31~0_combout\,
	datac => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	datad => \ULA|Mux0~0_combout\,
	combout => \ULA|Mux0~1_combout\);

-- Location: LCFF_X13_Y6_N1
\SaidaAlu|sr_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ULA|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SaidaAlu|sr_out\(31));

-- Location: LCCOMB_X12_Y8_N6
\PC|sr_out~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~62_combout\ = (!\Controladora|pstate.branch_ex_st~regout\ & ((\Controladora|pstate.jump_ex_st~regout\ & (\RI|sr_out\(31))) # (!\Controladora|pstate.jump_ex_st~regout\ & ((\ULA|Mux0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \Controladora|pstate.jump_ex_st~regout\,
	datac => \RI|sr_out\(31),
	datad => \ULA|Mux0~1_combout\,
	combout => \PC|sr_out~62_combout\);

-- Location: LCCOMB_X12_Y8_N22
\PC|sr_out~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~63_combout\ = (\PC|sr_out~62_combout\) # ((\Controladora|pstate.branch_ex_st~regout\ & (\SaidaAlu|sr_out\(31) & !\Controladora|pstate.jump_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \SaidaAlu|sr_out\(31),
	datac => \Controladora|pstate.jump_ex_st~regout\,
	datad => \PC|sr_out~62_combout\,
	combout => \PC|sr_out~63_combout\);

-- Location: LCFF_X12_Y8_N23
\PC|sr_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~63_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(31));

-- Location: LCCOMB_X12_Y8_N24
\MUX_A_ALU|m_out[31]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A_ALU|m_out[31]~1_combout\ = (!\Controladora|pstate.branch_ex_st~regout\ & (\PC|sr_out\(31) & (!\Controladora|pstate.c_mem_add_st~regout\ & !\Controladora|pstate.rtype_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \PC|sr_out\(31),
	datac => \Controladora|pstate.c_mem_add_st~regout\,
	datad => \Controladora|pstate.rtype_ex_st~regout\,
	combout => \MUX_A_ALU|m_out[31]~1_combout\);

-- Location: LCCOMB_X13_Y9_N30
\ULA|tmp[31]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|tmp[31]~62_combout\ = \MUX_B_extsgn_ALU|m_out[31]~1_combout\ $ (\ULA|tmp[30]~61\ $ (!\MUX_A_ALU|m_out[31]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datad => \MUX_A_ALU|m_out[31]~1_combout\,
	cin => \ULA|tmp[30]~61\,
	combout => \ULA|tmp[31]~62_combout\);

-- Location: LCCOMB_X13_Y6_N30
\ULA|Mux31~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux31~4_combout\ = (\COntroladora_ULA|alu_ctr[0]~11_combout\ & (\COntroladora_ULA|alu_ctr[2]~8_combout\ & (\ULA|tmp[31]~62_combout\ & \ULA|Mux31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	datab => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	datac => \ULA|tmp[31]~62_combout\,
	datad => \ULA|Mux31~0_combout\,
	combout => \ULA|Mux31~4_combout\);

-- Location: LCCOMB_X13_Y6_N20
\ULA|Mux31~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux31~9_combout\ = (\ULA|Mux31~3_combout\) # ((\ULA|Mux31~8_combout\) # (\ULA|Mux31~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|Mux31~3_combout\,
	datac => \ULA|Mux31~8_combout\,
	datad => \ULA|Mux31~4_combout\,
	combout => \ULA|Mux31~9_combout\);

-- Location: LCCOMB_X13_Y6_N22
\ULA|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Equal0~7_combout\ = (!\ULA|Mux30~7_combout\ & (!\ULA|Mux31~9_combout\ & !\ULA|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|Mux30~7_combout\,
	datac => \ULA|Mux31~9_combout\,
	datad => \ULA|Mux0~1_combout\,
	combout => \ULA|Equal0~7_combout\);

-- Location: LCCOMB_X14_Y9_N0
\MUX_A_ALU|m_out[21]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A_ALU|m_out[21]~11_combout\ = (\PC|sr_out\(21) & (!\Controladora|pstate.c_mem_add_st~regout\ & (!\Controladora|pstate.branch_ex_st~regout\ & !\Controladora|pstate.rtype_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|sr_out\(21),
	datab => \Controladora|pstate.c_mem_add_st~regout\,
	datac => \Controladora|pstate.branch_ex_st~regout\,
	datad => \Controladora|pstate.rtype_ex_st~regout\,
	combout => \MUX_A_ALU|m_out[21]~11_combout\);

-- Location: LCCOMB_X13_Y12_N16
\ULA|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux10~0_combout\ = (\MUX_A_ALU|m_out[21]~11_combout\ & (!\COntroladora_ULA|alu_ctr[2]~8_combout\ & !\MUX_B_extsgn_ALU|m_out[31]~1_combout\)) # (!\MUX_A_ALU|m_out[21]~11_combout\ & (\COntroladora_ULA|alu_ctr[2]~8_combout\ $ 
-- (\MUX_B_extsgn_ALU|m_out[31]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A_ALU|m_out[21]~11_combout\,
	datac => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	datad => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	combout => \ULA|Mux10~0_combout\);

-- Location: LCCOMB_X13_Y11_N26
\ULA|Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux10~1_combout\ = (!\COntroladora_ULA|alu_ctr[0]~11_combout\ & \ULA|Add1~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	datad => \ULA|Add1~42_combout\,
	combout => \ULA|Mux10~1_combout\);

-- Location: LCCOMB_X13_Y11_N12
\ULA|Mux10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux10~2_combout\ = (\ULA|Mux2~0_combout\ & ((\ULA|Mux2~1_combout\ & (\ULA|tmp[21]~42_combout\)) # (!\ULA|Mux2~1_combout\ & ((\ULA|Mux10~1_combout\))))) # (!\ULA|Mux2~0_combout\ & (((!\ULA|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|tmp[21]~42_combout\,
	datab => \ULA|Mux2~0_combout\,
	datac => \ULA|Mux2~1_combout\,
	datad => \ULA|Mux10~1_combout\,
	combout => \ULA|Mux10~2_combout\);

-- Location: LCCOMB_X13_Y11_N22
\ULA|Mux10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux10~3_combout\ = (\ULA|Mux31~5_combout\ & ((\MUX_A_ALU|m_out[21]~11_combout\ & ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\) # (!\ULA|Mux10~2_combout\))) # (!\MUX_A_ALU|m_out[21]~11_combout\ & (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & 
-- !\ULA|Mux10~2_combout\)))) # (!\ULA|Mux31~5_combout\ & (((\ULA|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[21]~11_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datac => \ULA|Mux31~5_combout\,
	datad => \ULA|Mux10~2_combout\,
	combout => \ULA|Mux10~3_combout\);

-- Location: LCCOMB_X13_Y11_N2
\ULA|Mux10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux10~4_combout\ = (\ULA|Mux30~2_combout\ & ((\ULA|Mux10~0_combout\) # ((!\COntroladora_ULA|alu_ctr[3]~9_combout\ & \ULA|Mux10~3_combout\)))) # (!\ULA|Mux30~2_combout\ & (!\COntroladora_ULA|alu_ctr[3]~9_combout\ & ((\ULA|Mux10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux30~2_combout\,
	datab => \COntroladora_ULA|alu_ctr[3]~9_combout\,
	datac => \ULA|Mux10~0_combout\,
	datad => \ULA|Mux10~3_combout\,
	combout => \ULA|Mux10~4_combout\);

-- Location: LCFF_X13_Y11_N17
\SaidaAlu|sr_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ULA|Mux11~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SaidaAlu|sr_out\(20));

-- Location: LCCOMB_X8_Y10_N20
\RI|sr_out~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~19_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(18),
	combout => \RI|sr_out~19_combout\);

-- Location: LCFF_X8_Y10_N21
\RI|sr_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~19_combout\,
	ena => \RI|sr_out[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(18));

-- Location: LCCOMB_X14_Y10_N26
\PC|sr_out~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~40_combout\ = (\Controladora|pstate.branch_ex_st~regout\ & (\SaidaAlu|sr_out\(20) & ((!\Controladora|pstate.jump_ex_st~regout\)))) # (!\Controladora|pstate.branch_ex_st~regout\ & (((\RI|sr_out\(18) & \Controladora|pstate.jump_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \SaidaAlu|sr_out\(20),
	datac => \RI|sr_out\(18),
	datad => \Controladora|pstate.jump_ex_st~regout\,
	combout => \PC|sr_out~40_combout\);

-- Location: LCCOMB_X14_Y10_N22
\PC|sr_out~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~41_combout\ = (\PC|sr_out~40_combout\) # ((!\Controladora|pstate.branch_ex_st~regout\ & (\ULA|Mux11~4_combout\ & !\Controladora|pstate.jump_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \PC|sr_out~40_combout\,
	datac => \ULA|Mux11~4_combout\,
	datad => \Controladora|pstate.jump_ex_st~regout\,
	combout => \PC|sr_out~41_combout\);

-- Location: LCFF_X14_Y10_N23
\PC|sr_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~41_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(20));

-- Location: LCCOMB_X9_Y10_N20
\MUX_A_ALU|m_out[20]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A_ALU|m_out[20]~12_combout\ = (!\Controladora|pstate.rtype_ex_st~regout\ & (!\Controladora|pstate.branch_ex_st~regout\ & (!\Controladora|pstate.c_mem_add_st~regout\ & \PC|sr_out\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.rtype_ex_st~regout\,
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \Controladora|pstate.c_mem_add_st~regout\,
	datad => \PC|sr_out\(20),
	combout => \MUX_A_ALU|m_out[20]~12_combout\);

-- Location: LCCOMB_X10_Y7_N24
\ULA|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux11~0_combout\ = (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (!\COntroladora_ULA|alu_ctr[2]~8_combout\ & !\MUX_A_ALU|m_out[20]~12_combout\)) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (\COntroladora_ULA|alu_ctr[2]~8_combout\ $ 
-- (\MUX_A_ALU|m_out[20]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datac => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	datad => \MUX_A_ALU|m_out[20]~12_combout\,
	combout => \ULA|Mux11~0_combout\);

-- Location: LCCOMB_X9_Y11_N18
\ULA|Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux11~1_combout\ = (!\COntroladora_ULA|alu_ctr[0]~11_combout\ & \ULA|Add1~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	datad => \ULA|Add1~40_combout\,
	combout => \ULA|Mux11~1_combout\);

-- Location: LCCOMB_X13_Y11_N28
\ULA|Mux11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux11~2_combout\ = (\ULA|Mux2~1_combout\ & (\ULA|tmp[20]~40_combout\ & (\ULA|Mux2~0_combout\))) # (!\ULA|Mux2~1_combout\ & (((\ULA|Mux11~1_combout\) # (!\ULA|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux2~1_combout\,
	datab => \ULA|tmp[20]~40_combout\,
	datac => \ULA|Mux2~0_combout\,
	datad => \ULA|Mux11~1_combout\,
	combout => \ULA|Mux11~2_combout\);

-- Location: LCCOMB_X13_Y11_N18
\ULA|Mux11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux11~3_combout\ = (\ULA|Mux31~5_combout\ & ((\MUX_A_ALU|m_out[20]~12_combout\ & ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\) # (!\ULA|Mux11~2_combout\))) # (!\MUX_A_ALU|m_out[20]~12_combout\ & (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & 
-- !\ULA|Mux11~2_combout\)))) # (!\ULA|Mux31~5_combout\ & (((\ULA|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[20]~12_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datac => \ULA|Mux31~5_combout\,
	datad => \ULA|Mux11~2_combout\,
	combout => \ULA|Mux11~3_combout\);

-- Location: LCCOMB_X13_Y11_N16
\ULA|Mux11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux11~4_combout\ = (\ULA|Mux30~2_combout\ & ((\ULA|Mux11~0_combout\) # ((!\COntroladora_ULA|alu_ctr[3]~9_combout\ & \ULA|Mux11~3_combout\)))) # (!\ULA|Mux30~2_combout\ & (!\COntroladora_ULA|alu_ctr[3]~9_combout\ & ((\ULA|Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux30~2_combout\,
	datab => \COntroladora_ULA|alu_ctr[3]~9_combout\,
	datac => \ULA|Mux11~0_combout\,
	datad => \ULA|Mux11~3_combout\,
	combout => \ULA|Mux11~4_combout\);

-- Location: LCCOMB_X12_Y8_N0
\MUX_A_ALU|m_out[19]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A_ALU|m_out[19]~13_combout\ = (\PC|sr_out\(19) & (!\Controladora|pstate.c_mem_add_st~regout\ & (!\Controladora|pstate.branch_ex_st~regout\ & !\Controladora|pstate.rtype_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|sr_out\(19),
	datab => \Controladora|pstate.c_mem_add_st~regout\,
	datac => \Controladora|pstate.branch_ex_st~regout\,
	datad => \Controladora|pstate.rtype_ex_st~regout\,
	combout => \MUX_A_ALU|m_out[19]~13_combout\);

-- Location: LCCOMB_X10_Y7_N26
\ULA|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux12~0_combout\ = (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (!\COntroladora_ULA|alu_ctr[2]~8_combout\ & !\MUX_A_ALU|m_out[19]~13_combout\)) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (\COntroladora_ULA|alu_ctr[2]~8_combout\ $ 
-- (\MUX_A_ALU|m_out[19]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datac => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	datad => \MUX_A_ALU|m_out[19]~13_combout\,
	combout => \ULA|Mux12~0_combout\);

-- Location: LCCOMB_X9_Y9_N18
\ULA|Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux12~1_combout\ = (!\COntroladora_ULA|alu_ctr[0]~11_combout\ & \ULA|Add1~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	datad => \ULA|Add1~38_combout\,
	combout => \ULA|Mux12~1_combout\);

-- Location: LCCOMB_X13_Y11_N0
\ULA|Mux12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux12~2_combout\ = (\ULA|Mux2~1_combout\ & (\ULA|tmp[19]~38_combout\ & (\ULA|Mux2~0_combout\))) # (!\ULA|Mux2~1_combout\ & (((\ULA|Mux12~1_combout\) # (!\ULA|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|tmp[19]~38_combout\,
	datab => \ULA|Mux2~1_combout\,
	datac => \ULA|Mux2~0_combout\,
	datad => \ULA|Mux12~1_combout\,
	combout => \ULA|Mux12~2_combout\);

-- Location: LCCOMB_X13_Y11_N6
\ULA|Mux12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux12~3_combout\ = (\ULA|Mux31~5_combout\ & ((\MUX_A_ALU|m_out[19]~13_combout\ & ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\) # (!\ULA|Mux12~2_combout\))) # (!\MUX_A_ALU|m_out[19]~13_combout\ & (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & 
-- !\ULA|Mux12~2_combout\)))) # (!\ULA|Mux31~5_combout\ & (((\ULA|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[19]~13_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datac => \ULA|Mux31~5_combout\,
	datad => \ULA|Mux12~2_combout\,
	combout => \ULA|Mux12~3_combout\);

-- Location: LCCOMB_X13_Y11_N10
\ULA|Mux12~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux12~4_combout\ = (\ULA|Mux30~2_combout\ & ((\ULA|Mux12~0_combout\) # ((!\COntroladora_ULA|alu_ctr[3]~9_combout\ & \ULA|Mux12~3_combout\)))) # (!\ULA|Mux30~2_combout\ & (((!\COntroladora_ULA|alu_ctr[3]~9_combout\ & \ULA|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux30~2_combout\,
	datab => \ULA|Mux12~0_combout\,
	datac => \COntroladora_ULA|alu_ctr[3]~9_combout\,
	datad => \ULA|Mux12~3_combout\,
	combout => \ULA|Mux12~4_combout\);

-- Location: LCCOMB_X13_Y11_N14
\ULA|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Equal0~8_combout\ = (!\ULA|Mux13~4_combout\ & (!\ULA|Mux10~4_combout\ & (!\ULA|Mux11~4_combout\ & !\ULA|Mux12~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux13~4_combout\,
	datab => \ULA|Mux10~4_combout\,
	datac => \ULA|Mux11~4_combout\,
	datad => \ULA|Mux12~4_combout\,
	combout => \ULA|Equal0~8_combout\);

-- Location: LCCOMB_X13_Y8_N14
\ULA|Equal0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Equal0~11_combout\ = (\ULA|Equal0~10_combout\ & (\ULA|Equal0~9_combout\ & (\ULA|Equal0~7_combout\ & \ULA|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Equal0~10_combout\,
	datab => \ULA|Equal0~9_combout\,
	datac => \ULA|Equal0~7_combout\,
	datad => \ULA|Equal0~8_combout\,
	combout => \ULA|Equal0~11_combout\);

-- Location: LCCOMB_X12_Y12_N0
\ULA|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux5~3_combout\ = (\MUX_A_ALU|m_out[26]~6_combout\ & (!\COntroladora_ULA|alu_ctr[2]~8_combout\ & !\MUX_B_extsgn_ALU|m_out[31]~1_combout\)) # (!\MUX_A_ALU|m_out[26]~6_combout\ & (\COntroladora_ULA|alu_ctr[2]~8_combout\ $ 
-- (\MUX_B_extsgn_ALU|m_out[31]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[26]~6_combout\,
	datac => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	datad => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	combout => \ULA|Mux5~3_combout\);

-- Location: LCCOMB_X14_Y9_N10
\ULA|Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux4~5_combout\ = (\ULA|Mux30~2_combout\ & ((\COntroladora_ULA|alu_ctr[2]~8_combout\ & (!\MUX_A_ALU|m_out[27]~5_combout\ & !\MUX_B_extsgn_ALU|m_out[31]~1_combout\)) # (!\COntroladora_ULA|alu_ctr[2]~8_combout\ & (\MUX_A_ALU|m_out[27]~5_combout\ $ 
-- (\MUX_B_extsgn_ALU|m_out[31]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	datab => \MUX_A_ALU|m_out[27]~5_combout\,
	datac => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datad => \ULA|Mux30~2_combout\,
	combout => \ULA|Mux4~5_combout\);

-- Location: LCCOMB_X14_Y9_N8
\ULA|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Equal0~1_combout\ = (!\ULA|Mux4~5_combout\ & ((!\ULA|Mux5~3_combout\) # (!\ULA|Mux30~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux30~2_combout\,
	datac => \ULA|Mux5~3_combout\,
	datad => \ULA|Mux4~5_combout\,
	combout => \ULA|Equal0~1_combout\);

-- Location: LCCOMB_X14_Y9_N26
\ULA|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Equal0~2_combout\ = (\ULA|Equal0~1_combout\ & ((\COntroladora_ULA|alu_ctr[3]~9_combout\) # ((!\ULA|Mux5~2_combout\ & !\ULA|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COntroladora_ULA|alu_ctr[3]~9_combout\,
	datab => \ULA|Equal0~1_combout\,
	datac => \ULA|Mux5~2_combout\,
	datad => \ULA|Mux4~4_combout\,
	combout => \ULA|Equal0~2_combout\);

-- Location: LCCOMB_X13_Y8_N10
\ULA|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Equal0~3_combout\ = (!\ULA|Mux29~4_combout\ & (!\ULA|Mux17~6_combout\ & (\ULA|Equal0~2_combout\ & !\ULA|Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux29~4_combout\,
	datab => \ULA|Mux17~6_combout\,
	datac => \ULA|Equal0~2_combout\,
	datad => \ULA|Mux1~4_combout\,
	combout => \ULA|Equal0~3_combout\);

-- Location: LCCOMB_X13_Y8_N12
\ULA|Equal0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Equal0~12_combout\ = (\ULA|Equal0~0_combout\ & (\ULA|Equal0~6_combout\ & (\ULA|Equal0~11_combout\ & \ULA|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Equal0~0_combout\,
	datab => \ULA|Equal0~6_combout\,
	datac => \ULA|Equal0~11_combout\,
	datad => \ULA|Equal0~3_combout\,
	combout => \ULA|Equal0~12_combout\);

-- Location: LCCOMB_X13_Y8_N26
\PC|sr_out[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out[0]~2_combout\ = ((\Controladora|pstate.branch_ex_st~regout\ & (\Controladora|Equal0~1_combout\ $ (!\ULA|Equal0~12_combout\)))) # (!\PC|sr_out[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|sr_out[0]~1_combout\,
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \Controladora|Equal0~1_combout\,
	datad => \ULA|Equal0~12_combout\,
	combout => \PC|sr_out[0]~2_combout\);

-- Location: LCFF_X10_Y8_N13
\PC|sr_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~5_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(2));

-- Location: LCCOMB_X9_Y10_N2
\MUX_A_ALU|m_out[2]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A_ALU|m_out[2]~30_combout\ = (!\Controladora|pstate.rtype_ex_st~regout\ & (!\Controladora|pstate.branch_ex_st~regout\ & (!\Controladora|pstate.c_mem_add_st~regout\ & \PC|sr_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.rtype_ex_st~regout\,
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \Controladora|pstate.c_mem_add_st~regout\,
	datad => \PC|sr_out\(2),
	combout => \MUX_A_ALU|m_out[2]~30_combout\);

-- Location: LCCOMB_X10_Y10_N6
\ULA|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~6_combout\ = (\MUX_A_ALU|m_out[3]~29_combout\ & ((\MUX_B_extsgn_ALU|m_out[3]~16_combout\ & (\ULA|Add1~5\ & VCC)) # (!\MUX_B_extsgn_ALU|m_out[3]~16_combout\ & (!\ULA|Add1~5\)))) # (!\MUX_A_ALU|m_out[3]~29_combout\ & 
-- ((\MUX_B_extsgn_ALU|m_out[3]~16_combout\ & (!\ULA|Add1~5\)) # (!\MUX_B_extsgn_ALU|m_out[3]~16_combout\ & ((\ULA|Add1~5\) # (GND)))))
-- \ULA|Add1~7\ = CARRY((\MUX_A_ALU|m_out[3]~29_combout\ & (!\MUX_B_extsgn_ALU|m_out[3]~16_combout\ & !\ULA|Add1~5\)) # (!\MUX_A_ALU|m_out[3]~29_combout\ & ((!\ULA|Add1~5\) # (!\MUX_B_extsgn_ALU|m_out[3]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[3]~29_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[3]~16_combout\,
	datad => VCC,
	cin => \ULA|Add1~5\,
	combout => \ULA|Add1~6_combout\,
	cout => \ULA|Add1~7\);

-- Location: LCCOMB_X10_Y10_N8
\ULA|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~8_combout\ = ((\MUX_A_ALU|m_out[4]~28_combout\ $ (\MUX_B_extsgn_ALU|m_out[4]~15_combout\ $ (!\ULA|Add1~7\)))) # (GND)
-- \ULA|Add1~9\ = CARRY((\MUX_A_ALU|m_out[4]~28_combout\ & ((\MUX_B_extsgn_ALU|m_out[4]~15_combout\) # (!\ULA|Add1~7\))) # (!\MUX_A_ALU|m_out[4]~28_combout\ & (\MUX_B_extsgn_ALU|m_out[4]~15_combout\ & !\ULA|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[4]~28_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[4]~15_combout\,
	datad => VCC,
	cin => \ULA|Add1~7\,
	combout => \ULA|Add1~8_combout\,
	cout => \ULA|Add1~9\);

-- Location: LCCOMB_X10_Y10_N10
\ULA|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~10_combout\ = (\MUX_B_extsgn_ALU|m_out[5]~14_combout\ & ((\MUX_A_ALU|m_out[5]~27_combout\ & (\ULA|Add1~9\ & VCC)) # (!\MUX_A_ALU|m_out[5]~27_combout\ & (!\ULA|Add1~9\)))) # (!\MUX_B_extsgn_ALU|m_out[5]~14_combout\ & 
-- ((\MUX_A_ALU|m_out[5]~27_combout\ & (!\ULA|Add1~9\)) # (!\MUX_A_ALU|m_out[5]~27_combout\ & ((\ULA|Add1~9\) # (GND)))))
-- \ULA|Add1~11\ = CARRY((\MUX_B_extsgn_ALU|m_out[5]~14_combout\ & (!\MUX_A_ALU|m_out[5]~27_combout\ & !\ULA|Add1~9\)) # (!\MUX_B_extsgn_ALU|m_out[5]~14_combout\ & ((!\ULA|Add1~9\) # (!\MUX_A_ALU|m_out[5]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[5]~14_combout\,
	datab => \MUX_A_ALU|m_out[5]~27_combout\,
	datad => VCC,
	cin => \ULA|Add1~9\,
	combout => \ULA|Add1~10_combout\,
	cout => \ULA|Add1~11\);

-- Location: LCCOMB_X10_Y10_N12
\ULA|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~12_combout\ = ((\MUX_B_extsgn_ALU|m_out[6]~13_combout\ $ (\MUX_A_ALU|m_out[6]~26_combout\ $ (!\ULA|Add1~11\)))) # (GND)
-- \ULA|Add1~13\ = CARRY((\MUX_B_extsgn_ALU|m_out[6]~13_combout\ & ((\MUX_A_ALU|m_out[6]~26_combout\) # (!\ULA|Add1~11\))) # (!\MUX_B_extsgn_ALU|m_out[6]~13_combout\ & (\MUX_A_ALU|m_out[6]~26_combout\ & !\ULA|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[6]~13_combout\,
	datab => \MUX_A_ALU|m_out[6]~26_combout\,
	datad => VCC,
	cin => \ULA|Add1~11\,
	combout => \ULA|Add1~12_combout\,
	cout => \ULA|Add1~13\);

-- Location: LCCOMB_X9_Y8_N14
\ULA|Mux24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux24~1_combout\ = (!\COntroladora_ULA|alu_ctr[0]~11_combout\ & \ULA|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	datad => \ULA|Add1~14_combout\,
	combout => \ULA|Mux24~1_combout\);

-- Location: LCCOMB_X9_Y8_N28
\ULA|Mux24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux24~2_combout\ = (\ULA|Mux2~1_combout\ & (((\ULA|tmp[7]~14_combout\ & \ULA|Mux2~0_combout\)))) # (!\ULA|Mux2~1_combout\ & ((\ULA|Mux24~1_combout\) # ((!\ULA|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux2~1_combout\,
	datab => \ULA|Mux24~1_combout\,
	datac => \ULA|tmp[7]~14_combout\,
	datad => \ULA|Mux2~0_combout\,
	combout => \ULA|Mux24~2_combout\);

-- Location: LCCOMB_X9_Y8_N6
\ULA|Mux24~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux24~3_combout\ = (\ULA|Mux31~5_combout\ & ((\MUX_B_extsgn_ALU|m_out[7]~12_combout\ & ((\MUX_A_ALU|m_out[7]~25_combout\) # (!\ULA|Mux24~2_combout\))) # (!\MUX_B_extsgn_ALU|m_out[7]~12_combout\ & (\MUX_A_ALU|m_out[7]~25_combout\ & 
-- !\ULA|Mux24~2_combout\)))) # (!\ULA|Mux31~5_combout\ & (((\ULA|Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[7]~12_combout\,
	datab => \MUX_A_ALU|m_out[7]~25_combout\,
	datac => \ULA|Mux31~5_combout\,
	datad => \ULA|Mux24~2_combout\,
	combout => \ULA|Mux24~3_combout\);

-- Location: LCCOMB_X9_Y8_N18
\ULA|Mux24~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux24~4_combout\ = (\ULA|Mux24~0_combout\ & ((\ULA|Mux30~2_combout\) # ((!\COntroladora_ULA|alu_ctr[3]~9_combout\ & \ULA|Mux24~3_combout\)))) # (!\ULA|Mux24~0_combout\ & (((!\COntroladora_ULA|alu_ctr[3]~9_combout\ & \ULA|Mux24~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux24~0_combout\,
	datab => \ULA|Mux30~2_combout\,
	datac => \COntroladora_ULA|alu_ctr[3]~9_combout\,
	datad => \ULA|Mux24~3_combout\,
	combout => \ULA|Mux24~4_combout\);

-- Location: LCFF_X9_Y8_N19
\SaidaAlu|sr_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ULA|Mux24~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SaidaAlu|sr_out\(7));

-- Location: LCCOMB_X9_Y8_N4
\PC|sr_out~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~14_combout\ = (\Controladora|pstate.jump_ex_st~regout\ & (!\Controladora|pstate.branch_ex_st~regout\ & (\RI|sr_out\(5)))) # (!\Controladora|pstate.jump_ex_st~regout\ & (\Controladora|pstate.branch_ex_st~regout\ & ((\SaidaAlu|sr_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.jump_ex_st~regout\,
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \RI|sr_out\(5),
	datad => \SaidaAlu|sr_out\(7),
	combout => \PC|sr_out~14_combout\);

-- Location: LCCOMB_X9_Y8_N2
\PC|sr_out~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~15_combout\ = (\PC|sr_out~14_combout\) # ((!\Controladora|pstate.jump_ex_st~regout\ & (!\Controladora|pstate.branch_ex_st~regout\ & \ULA|Mux24~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.jump_ex_st~regout\,
	datab => \PC|sr_out~14_combout\,
	datac => \Controladora|pstate.branch_ex_st~regout\,
	datad => \ULA|Mux24~4_combout\,
	combout => \PC|sr_out~15_combout\);

-- Location: LCFF_X9_Y8_N3
\PC|sr_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~15_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(7));

-- Location: LCCOMB_X9_Y11_N28
\MUX_PC_MEM|m_out[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_PC_MEM|m_out[7]~7_combout\ = (\Controladora|pstate.readmem_st~regout\ & (\SaidaAlu|sr_out\(7))) # (!\Controladora|pstate.readmem_st~regout\ & ((\Controladora|pstate.writemem_st~regout\ & (\SaidaAlu|sr_out\(7))) # 
-- (!\Controladora|pstate.writemem_st~regout\ & ((\PC|sr_out\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SaidaAlu|sr_out\(7),
	datab => \Controladora|pstate.readmem_st~regout\,
	datac => \PC|sr_out\(7),
	datad => \Controladora|pstate.writemem_st~regout\,
	combout => \MUX_PC_MEM|m_out[7]~7_combout\);

-- Location: LCCOMB_X9_Y9_N0
\RI|sr_out~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~5_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(4),
	combout => \RI|sr_out~5_combout\);

-- Location: LCFF_X9_Y9_N1
\RI|sr_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~5_combout\,
	ena => \RI|sr_out[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(4));

-- Location: LCCOMB_X14_Y8_N26
\PC|sr_out~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~12_combout\ = (\Controladora|pstate.branch_ex_st~regout\ & (\SaidaAlu|sr_out\(6) & (!\Controladora|pstate.jump_ex_st~regout\))) # (!\Controladora|pstate.branch_ex_st~regout\ & (((\Controladora|pstate.jump_ex_st~regout\ & \RI|sr_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SaidaAlu|sr_out\(6),
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \Controladora|pstate.jump_ex_st~regout\,
	datad => \RI|sr_out\(4),
	combout => \PC|sr_out~12_combout\);

-- Location: LCCOMB_X14_Y8_N20
\PC|sr_out~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~13_combout\ = (\PC|sr_out~12_combout\) # ((\ULA|Mux25~4_combout\ & (!\Controladora|pstate.branch_ex_st~regout\ & !\Controladora|pstate.jump_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux25~4_combout\,
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \Controladora|pstate.jump_ex_st~regout\,
	datad => \PC|sr_out~12_combout\,
	combout => \PC|sr_out~13_combout\);

-- Location: LCFF_X14_Y8_N21
\PC|sr_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~13_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(6));

-- Location: LCCOMB_X14_Y8_N30
\MUX_PC_MEM|m_out[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_PC_MEM|m_out[6]~6_combout\ = (\Controladora|pstate.writemem_st~regout\ & (\SaidaAlu|sr_out\(6))) # (!\Controladora|pstate.writemem_st~regout\ & ((\Controladora|pstate.readmem_st~regout\ & (\SaidaAlu|sr_out\(6))) # 
-- (!\Controladora|pstate.readmem_st~regout\ & ((\PC|sr_out\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SaidaAlu|sr_out\(6),
	datab => \Controladora|pstate.writemem_st~regout\,
	datac => \PC|sr_out\(6),
	datad => \Controladora|pstate.readmem_st~regout\,
	combout => \MUX_PC_MEM|m_out[6]~6_combout\);

-- Location: LCCOMB_X8_Y10_N4
\RI|sr_out~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~31_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(30),
	combout => \RI|sr_out~31_combout\);

-- Location: LCFF_X8_Y10_N5
\RI|sr_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~31_combout\,
	ena => \RI|sr_out[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(30));

-- Location: LCCOMB_X9_Y11_N6
\Controladora|nstate.c_mem_add_st~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|nstate.c_mem_add_st~1_combout\ = (\Controladora|nstate.c_mem_add_st~0_combout\ & (!\RI|sr_out\(30) & \Controladora|pstate.decode_st~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controladora|nstate.c_mem_add_st~0_combout\,
	datac => \RI|sr_out\(30),
	datad => \Controladora|pstate.decode_st~regout\,
	combout => \Controladora|nstate.c_mem_add_st~1_combout\);

-- Location: LCFF_X10_Y11_N17
\Controladora|pstate.c_mem_add_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Controladora|nstate.c_mem_add_st~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Controladora|pstate.c_mem_add_st~regout\);

-- Location: LCCOMB_X8_Y11_N20
\Controladora|WideNor0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|WideNor0~0_combout\ = (\Controladora|pstate.fetch_st~regout\ & (!\Controladora|pstate.c_mem_add_st~regout\ & (!\Controladora|pstate.decode_st~regout\ & !\Controladora|pstate.rtype_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.fetch_st~regout\,
	datab => \Controladora|pstate.c_mem_add_st~regout\,
	datac => \Controladora|pstate.decode_st~regout\,
	datad => \Controladora|pstate.rtype_ex_st~regout\,
	combout => \Controladora|WideNor0~0_combout\);

-- Location: LCCOMB_X8_Y10_N0
\Controladora|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|Selector0~0_combout\ = (\RI|sr_out\(30)) # ((\RI|sr_out\(29) & ((!\Controladora|nstate.c_mem_add_st~0_combout\))) # (!\RI|sr_out\(29) & (\Controladora|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|Mux0~0_combout\,
	datab => \Controladora|nstate.c_mem_add_st~0_combout\,
	datac => \RI|sr_out\(30),
	datad => \RI|sr_out\(29),
	combout => \Controladora|Selector0~0_combout\);

-- Location: LCCOMB_X8_Y11_N26
\Controladora|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|Selector0~1_combout\ = (\Controladora|pstate.readmem_st~regout\ & (((!\Controladora|Selector0~0_combout\)) # (!\Controladora|pstate.decode_st~regout\))) # (!\Controladora|pstate.readmem_st~regout\ & (!\Controladora|WideNor0~0_combout\ & 
-- ((!\Controladora|Selector0~0_combout\) # (!\Controladora|pstate.decode_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.readmem_st~regout\,
	datab => \Controladora|pstate.decode_st~regout\,
	datac => \Controladora|WideNor0~0_combout\,
	datad => \Controladora|Selector0~0_combout\,
	combout => \Controladora|Selector0~1_combout\);

-- Location: LCFF_X10_Y11_N1
\Controladora|pstate.fetch_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Controladora|Selector0~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Controladora|pstate.fetch_st~regout\);

-- Location: LCCOMB_X10_Y11_N14
\MUX_B_extsgn_ALU|m_out[16]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B_extsgn_ALU|m_out[16]~2_combout\ = (\Controladora|pstate.decode_st~regout\) # ((!\Controladora|pstate.fetch_st~regout\ & \Controladora|pstate.c_mem_add_st~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controladora|pstate.fetch_st~regout\,
	datac => \Controladora|pstate.c_mem_add_st~regout\,
	datad => \Controladora|pstate.decode_st~regout\,
	combout => \MUX_B_extsgn_ALU|m_out[16]~2_combout\);

-- Location: LCCOMB_X10_Y11_N12
\MUX_B_extsgn_ALU|m_out[5]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B_extsgn_ALU|m_out[5]~14_combout\ = (\MUX_B_extsgn_ALU|Equal2~0_combout\ & (\MUX_B_extsgn_ALU|m_out[16]~2_combout\ & ((\RI|sr_out\(3))))) # (!\MUX_B_extsgn_ALU|Equal2~0_combout\ & ((\RI|sr_out\(5)) # ((\MUX_B_extsgn_ALU|m_out[16]~2_combout\ & 
-- \RI|sr_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|Equal2~0_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[16]~2_combout\,
	datac => \RI|sr_out\(5),
	datad => \RI|sr_out\(3),
	combout => \MUX_B_extsgn_ALU|m_out[5]~14_combout\);

-- Location: LCCOMB_X14_Y11_N4
\ULA|Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux26~0_combout\ = (\MUX_B_extsgn_ALU|m_out[5]~14_combout\ & (!\MUX_A_ALU|m_out[5]~27_combout\ & !\COntroladora_ULA|alu_ctr[2]~8_combout\)) # (!\MUX_B_extsgn_ALU|m_out[5]~14_combout\ & (\MUX_A_ALU|m_out[5]~27_combout\ $ 
-- (\COntroladora_ULA|alu_ctr[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_B_extsgn_ALU|m_out[5]~14_combout\,
	datac => \MUX_A_ALU|m_out[5]~27_combout\,
	datad => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	combout => \ULA|Mux26~0_combout\);

-- Location: LCCOMB_X14_Y11_N14
\ULA|Mux26~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux26~1_combout\ = (!\COntroladora_ULA|alu_ctr[0]~11_combout\ & \ULA|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	datad => \ULA|Add1~10_combout\,
	combout => \ULA|Mux26~1_combout\);

-- Location: LCCOMB_X14_Y11_N28
\ULA|Mux26~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux26~2_combout\ = (\ULA|Mux2~0_combout\ & ((\ULA|Mux2~1_combout\ & ((\ULA|tmp[5]~10_combout\))) # (!\ULA|Mux2~1_combout\ & (\ULA|Mux26~1_combout\)))) # (!\ULA|Mux2~0_combout\ & (!\ULA|Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux2~0_combout\,
	datab => \ULA|Mux2~1_combout\,
	datac => \ULA|Mux26~1_combout\,
	datad => \ULA|tmp[5]~10_combout\,
	combout => \ULA|Mux26~2_combout\);

-- Location: LCCOMB_X14_Y11_N10
\ULA|Mux26~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux26~3_combout\ = (\ULA|Mux31~5_combout\ & ((\MUX_B_extsgn_ALU|m_out[5]~14_combout\ & ((\MUX_A_ALU|m_out[5]~27_combout\) # (!\ULA|Mux26~2_combout\))) # (!\MUX_B_extsgn_ALU|m_out[5]~14_combout\ & (\MUX_A_ALU|m_out[5]~27_combout\ & 
-- !\ULA|Mux26~2_combout\)))) # (!\ULA|Mux31~5_combout\ & (((\ULA|Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[5]~14_combout\,
	datab => \ULA|Mux31~5_combout\,
	datac => \MUX_A_ALU|m_out[5]~27_combout\,
	datad => \ULA|Mux26~2_combout\,
	combout => \ULA|Mux26~3_combout\);

-- Location: LCCOMB_X14_Y11_N2
\ULA|Mux26~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux26~4_combout\ = (\COntroladora_ULA|alu_ctr[3]~9_combout\ & (\ULA|Mux26~0_combout\ & (\ULA|Mux30~2_combout\))) # (!\COntroladora_ULA|alu_ctr[3]~9_combout\ & ((\ULA|Mux26~3_combout\) # ((\ULA|Mux26~0_combout\ & \ULA|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COntroladora_ULA|alu_ctr[3]~9_combout\,
	datab => \ULA|Mux26~0_combout\,
	datac => \ULA|Mux30~2_combout\,
	datad => \ULA|Mux26~3_combout\,
	combout => \ULA|Mux26~4_combout\);

-- Location: LCFF_X14_Y11_N3
\SaidaAlu|sr_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ULA|Mux26~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SaidaAlu|sr_out\(5));

-- Location: LCCOMB_X14_Y11_N8
\PC|sr_out~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~10_combout\ = (\Controladora|pstate.branch_ex_st~regout\ & (((!\Controladora|pstate.jump_ex_st~regout\ & \SaidaAlu|sr_out\(5))))) # (!\Controladora|pstate.branch_ex_st~regout\ & (\RI|sr_out\(3) & (\Controladora|pstate.jump_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(3),
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \Controladora|pstate.jump_ex_st~regout\,
	datad => \SaidaAlu|sr_out\(5),
	combout => \PC|sr_out~10_combout\);

-- Location: LCCOMB_X12_Y11_N14
\PC|sr_out~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~11_combout\ = (\PC|sr_out~10_combout\) # ((!\Controladora|pstate.jump_ex_st~regout\ & (!\Controladora|pstate.branch_ex_st~regout\ & \ULA|Mux26~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.jump_ex_st~regout\,
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \ULA|Mux26~4_combout\,
	datad => \PC|sr_out~10_combout\,
	combout => \PC|sr_out~11_combout\);

-- Location: LCFF_X12_Y11_N15
\PC|sr_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~11_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(5));

-- Location: LCCOMB_X12_Y11_N18
\MUX_PC_MEM|m_out[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_PC_MEM|m_out[5]~5_combout\ = (\Controladora|pstate.readmem_st~regout\ & (\SaidaAlu|sr_out\(5))) # (!\Controladora|pstate.readmem_st~regout\ & ((\Controladora|pstate.writemem_st~regout\ & (\SaidaAlu|sr_out\(5))) # 
-- (!\Controladora|pstate.writemem_st~regout\ & ((\PC|sr_out\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SaidaAlu|sr_out\(5),
	datab => \Controladora|pstate.readmem_st~regout\,
	datac => \PC|sr_out\(5),
	datad => \Controladora|pstate.writemem_st~regout\,
	combout => \MUX_PC_MEM|m_out[5]~5_combout\);

-- Location: LCCOMB_X8_Y10_N2
\RI|sr_out~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~32_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datac => \Memoria|altsyncram_component|auto_generated|q_a\(31),
	combout => \RI|sr_out~32_combout\);

-- Location: LCFF_X8_Y10_N3
\RI|sr_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~32_combout\,
	ena => \RI|sr_out[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(31));

-- Location: LCCOMB_X8_Y10_N14
\Controladora|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|Equal0~0_combout\ = (!\RI|sr_out\(31) & (!\RI|sr_out\(30) & !\RI|sr_out\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RI|sr_out\(31),
	datac => \RI|sr_out\(30),
	datad => \RI|sr_out\(29),
	combout => \Controladora|Equal0~0_combout\);

-- Location: LCCOMB_X8_Y10_N6
\Controladora|nstate.rtype_ex_st~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|nstate.rtype_ex_st~0_combout\ = (!\RI|sr_out\(26) & (!\RI|sr_out\(28) & (\Controladora|Equal0~0_combout\ & \Controladora|pstate.decode_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(26),
	datab => \RI|sr_out\(28),
	datac => \Controladora|Equal0~0_combout\,
	datad => \Controladora|pstate.decode_st~regout\,
	combout => \Controladora|nstate.rtype_ex_st~0_combout\);

-- Location: LCCOMB_X9_Y10_N6
\Controladora|nstate.rtype_ex_st~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|nstate.rtype_ex_st~1_combout\ = (\Controladora|nstate.rtype_ex_st~0_combout\ & !\RI|sr_out\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Controladora|nstate.rtype_ex_st~0_combout\,
	datad => \RI|sr_out\(27),
	combout => \Controladora|nstate.rtype_ex_st~1_combout\);

-- Location: LCFF_X9_Y10_N7
\Controladora|pstate.rtype_ex_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Controladora|nstate.rtype_ex_st~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Controladora|pstate.rtype_ex_st~regout\);

-- Location: LCCOMB_X13_Y7_N4
\COntroladora_ULA|alu_ctr[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \COntroladora_ULA|alu_ctr[3]~9_combout\ = (\Controladora|pstate.rtype_ex_st~regout\ & \COntroladora_ULA|alu_ctr[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Controladora|pstate.rtype_ex_st~regout\,
	datad => \COntroladora_ULA|alu_ctr[3]~6_combout\,
	combout => \COntroladora_ULA|alu_ctr[3]~9_combout\);

-- Location: LCCOMB_X12_Y6_N18
\ULA|Mux27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux27~1_combout\ = (!\COntroladora_ULA|alu_ctr[0]~11_combout\ & \ULA|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	datad => \ULA|Add1~8_combout\,
	combout => \ULA|Mux27~1_combout\);

-- Location: LCCOMB_X12_Y6_N12
\ULA|Mux27~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux27~2_combout\ = (\ULA|Mux2~0_combout\ & ((\ULA|Mux2~1_combout\ & (\ULA|tmp[4]~8_combout\)) # (!\ULA|Mux2~1_combout\ & ((\ULA|Mux27~1_combout\))))) # (!\ULA|Mux2~0_combout\ & (((!\ULA|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux2~0_combout\,
	datab => \ULA|tmp[4]~8_combout\,
	datac => \ULA|Mux2~1_combout\,
	datad => \ULA|Mux27~1_combout\,
	combout => \ULA|Mux27~2_combout\);

-- Location: LCCOMB_X12_Y6_N10
\ULA|Mux27~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux27~3_combout\ = (\ULA|Mux31~5_combout\ & ((\MUX_B_extsgn_ALU|m_out[4]~15_combout\ & ((\MUX_A_ALU|m_out[4]~28_combout\) # (!\ULA|Mux27~2_combout\))) # (!\MUX_B_extsgn_ALU|m_out[4]~15_combout\ & (\MUX_A_ALU|m_out[4]~28_combout\ & 
-- !\ULA|Mux27~2_combout\)))) # (!\ULA|Mux31~5_combout\ & (((\ULA|Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux31~5_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[4]~15_combout\,
	datac => \MUX_A_ALU|m_out[4]~28_combout\,
	datad => \ULA|Mux27~2_combout\,
	combout => \ULA|Mux27~3_combout\);

-- Location: LCCOMB_X12_Y6_N2
\ULA|Mux27~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux27~4_combout\ = (\ULA|Mux27~0_combout\ & ((\ULA|Mux30~2_combout\) # ((!\COntroladora_ULA|alu_ctr[3]~9_combout\ & \ULA|Mux27~3_combout\)))) # (!\ULA|Mux27~0_combout\ & (((!\COntroladora_ULA|alu_ctr[3]~9_combout\ & \ULA|Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux27~0_combout\,
	datab => \ULA|Mux30~2_combout\,
	datac => \COntroladora_ULA|alu_ctr[3]~9_combout\,
	datad => \ULA|Mux27~3_combout\,
	combout => \ULA|Mux27~4_combout\);

-- Location: LCFF_X12_Y6_N3
\SaidaAlu|sr_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ULA|Mux27~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SaidaAlu|sr_out\(4));

-- Location: LCCOMB_X12_Y6_N14
\MUX_PC_MEM|m_out[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_PC_MEM|m_out[4]~4_combout\ = (\Controladora|pstate.writemem_st~regout\ & (\SaidaAlu|sr_out\(4))) # (!\Controladora|pstate.writemem_st~regout\ & ((\Controladora|pstate.readmem_st~regout\ & (\SaidaAlu|sr_out\(4))) # 
-- (!\Controladora|pstate.readmem_st~regout\ & ((\PC|sr_out\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.writemem_st~regout\,
	datab => \SaidaAlu|sr_out\(4),
	datac => \PC|sr_out\(4),
	datad => \Controladora|pstate.readmem_st~regout\,
	combout => \MUX_PC_MEM|m_out[4]~4_combout\);

-- Location: LCCOMB_X9_Y9_N22
\RI|sr_out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~2_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(1),
	combout => \RI|sr_out~2_combout\);

-- Location: LCFF_X9_Y9_N23
\RI|sr_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~2_combout\,
	ena => \RI|sr_out[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(1));

-- Location: LCCOMB_X9_Y9_N14
\COntroladora_ULA|alu_ctr[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \COntroladora_ULA|alu_ctr[2]~7_combout\ = (\RI|sr_out\(2) & (\RI|sr_out\(1) & (\RI|sr_out\(0)))) # (!\RI|sr_out\(2) & ((\RI|sr_out\(0)) # ((\RI|sr_out\(1) & \RI|sr_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(2),
	datab => \RI|sr_out\(1),
	datac => \RI|sr_out\(0),
	datad => \RI|sr_out\(5),
	combout => \COntroladora_ULA|alu_ctr[2]~7_combout\);

-- Location: LCCOMB_X9_Y9_N20
\COntroladora_ULA|alu_ctr[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \COntroladora_ULA|alu_ctr[2]~8_combout\ = (\Controladora|pstate.rtype_ex_st~regout\ & (((\COntroladora_ULA|alu_ctr[2]~7_combout\)) # (!\COntroladora_ULA|alu_ctr[1]~2_combout\))) # (!\Controladora|pstate.rtype_ex_st~regout\ & 
-- (((\Controladora|pstate.branch_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COntroladora_ULA|alu_ctr[1]~2_combout\,
	datab => \COntroladora_ULA|alu_ctr[2]~7_combout\,
	datac => \Controladora|pstate.rtype_ex_st~regout\,
	datad => \Controladora|pstate.branch_ex_st~regout\,
	combout => \COntroladora_ULA|alu_ctr[2]~8_combout\);

-- Location: LCCOMB_X13_Y7_N8
\ULA|Mux30~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux30~2_combout\ = (!\COntroladora_ULA|alu_ctr[1]~3_combout\ & (\COntroladora_ULA|alu_ctr[3]~9_combout\ & (\COntroladora_ULA|alu_ctr[2]~8_combout\ $ (\COntroladora_ULA|alu_ctr[0]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COntroladora_ULA|alu_ctr[1]~3_combout\,
	datab => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	datac => \COntroladora_ULA|alu_ctr[3]~9_combout\,
	datad => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	combout => \ULA|Mux30~2_combout\);

-- Location: LCCOMB_X9_Y10_N8
\MUX_A_ALU|m_out[3]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A_ALU|m_out[3]~29_combout\ = (!\Controladora|pstate.rtype_ex_st~regout\ & (!\Controladora|pstate.branch_ex_st~regout\ & (!\Controladora|pstate.c_mem_add_st~regout\ & \PC|sr_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.rtype_ex_st~regout\,
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \Controladora|pstate.c_mem_add_st~regout\,
	datad => \PC|sr_out\(3),
	combout => \MUX_A_ALU|m_out[3]~29_combout\);

-- Location: LCCOMB_X12_Y6_N4
\ULA|Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux28~0_combout\ = (\MUX_B_extsgn_ALU|m_out[3]~16_combout\ & (!\COntroladora_ULA|alu_ctr[2]~8_combout\ & !\MUX_A_ALU|m_out[3]~29_combout\)) # (!\MUX_B_extsgn_ALU|m_out[3]~16_combout\ & (\COntroladora_ULA|alu_ctr[2]~8_combout\ $ 
-- (\MUX_A_ALU|m_out[3]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_B_extsgn_ALU|m_out[3]~16_combout\,
	datac => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	datad => \MUX_A_ALU|m_out[3]~29_combout\,
	combout => \ULA|Mux28~0_combout\);

-- Location: LCCOMB_X12_Y6_N26
\ULA|Mux28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux28~1_combout\ = (!\COntroladora_ULA|alu_ctr[0]~11_combout\ & \ULA|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	datad => \ULA|Add1~6_combout\,
	combout => \ULA|Mux28~1_combout\);

-- Location: LCCOMB_X12_Y6_N28
\ULA|Mux28~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux28~2_combout\ = (\ULA|Mux2~0_combout\ & ((\ULA|Mux2~1_combout\ & (\ULA|tmp[3]~6_combout\)) # (!\ULA|Mux2~1_combout\ & ((\ULA|Mux28~1_combout\))))) # (!\ULA|Mux2~0_combout\ & (((!\ULA|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|tmp[3]~6_combout\,
	datab => \ULA|Mux2~0_combout\,
	datac => \ULA|Mux2~1_combout\,
	datad => \ULA|Mux28~1_combout\,
	combout => \ULA|Mux28~2_combout\);

-- Location: LCCOMB_X12_Y6_N30
\ULA|Mux28~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux28~3_combout\ = (\ULA|Mux31~5_combout\ & ((\MUX_B_extsgn_ALU|m_out[3]~16_combout\ & ((\MUX_A_ALU|m_out[3]~29_combout\) # (!\ULA|Mux28~2_combout\))) # (!\MUX_B_extsgn_ALU|m_out[3]~16_combout\ & (\MUX_A_ALU|m_out[3]~29_combout\ & 
-- !\ULA|Mux28~2_combout\)))) # (!\ULA|Mux31~5_combout\ & (((\ULA|Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[3]~16_combout\,
	datab => \MUX_A_ALU|m_out[3]~29_combout\,
	datac => \ULA|Mux31~5_combout\,
	datad => \ULA|Mux28~2_combout\,
	combout => \ULA|Mux28~3_combout\);

-- Location: LCCOMB_X12_Y6_N20
\ULA|Mux28~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux28~4_combout\ = (\COntroladora_ULA|alu_ctr[3]~9_combout\ & (\ULA|Mux30~2_combout\ & (\ULA|Mux28~0_combout\))) # (!\COntroladora_ULA|alu_ctr[3]~9_combout\ & ((\ULA|Mux28~3_combout\) # ((\ULA|Mux30~2_combout\ & \ULA|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COntroladora_ULA|alu_ctr[3]~9_combout\,
	datab => \ULA|Mux30~2_combout\,
	datac => \ULA|Mux28~0_combout\,
	datad => \ULA|Mux28~3_combout\,
	combout => \ULA|Mux28~4_combout\);

-- Location: LCFF_X12_Y6_N21
\SaidaAlu|sr_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ULA|Mux28~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SaidaAlu|sr_out\(3));

-- Location: LCCOMB_X10_Y8_N8
\PC|sr_out~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~6_combout\ = (\Controladora|pstate.jump_ex_st~regout\ & (\RI|sr_out\(1) & ((!\Controladora|pstate.branch_ex_st~regout\)))) # (!\Controladora|pstate.jump_ex_st~regout\ & (((\SaidaAlu|sr_out\(3) & \Controladora|pstate.branch_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(1),
	datab => \SaidaAlu|sr_out\(3),
	datac => \Controladora|pstate.jump_ex_st~regout\,
	datad => \Controladora|pstate.branch_ex_st~regout\,
	combout => \PC|sr_out~6_combout\);

-- Location: LCCOMB_X8_Y8_N28
\PC|sr_out~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~7_combout\ = (\PC|sr_out~6_combout\) # ((!\Controladora|pstate.jump_ex_st~regout\ & (!\Controladora|pstate.branch_ex_st~regout\ & \ULA|Mux28~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.jump_ex_st~regout\,
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \ULA|Mux28~4_combout\,
	datad => \PC|sr_out~6_combout\,
	combout => \PC|sr_out~7_combout\);

-- Location: LCFF_X8_Y8_N29
\PC|sr_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~7_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(3));

-- Location: LCCOMB_X12_Y6_N8
\MUX_PC_MEM|m_out[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_PC_MEM|m_out[3]~3_combout\ = (\Controladora|pstate.readmem_st~regout\ & (\SaidaAlu|sr_out\(3))) # (!\Controladora|pstate.readmem_st~regout\ & ((\Controladora|pstate.writemem_st~regout\ & (\SaidaAlu|sr_out\(3))) # 
-- (!\Controladora|pstate.writemem_st~regout\ & ((\PC|sr_out\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SaidaAlu|sr_out\(3),
	datab => \Controladora|pstate.readmem_st~regout\,
	datac => \PC|sr_out\(3),
	datad => \Controladora|pstate.writemem_st~regout\,
	combout => \MUX_PC_MEM|m_out[3]~3_combout\);

-- Location: LCCOMB_X8_Y10_N28
\RI|sr_out~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~28_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(27),
	combout => \RI|sr_out~28_combout\);

-- Location: LCFF_X8_Y10_N29
\RI|sr_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~28_combout\,
	ena => \RI|sr_out[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(27));

-- Location: LCCOMB_X8_Y10_N30
\Controladora|nstate.c_mem_add_st~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|nstate.c_mem_add_st~0_combout\ = (\RI|sr_out\(26) & (\RI|sr_out\(27) & (!\RI|sr_out\(28) & \RI|sr_out\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(26),
	datab => \RI|sr_out\(27),
	datac => \RI|sr_out\(28),
	datad => \RI|sr_out\(31),
	combout => \Controladora|nstate.c_mem_add_st~0_combout\);

-- Location: LCCOMB_X8_Y10_N22
\Controladora|nstate.readmem_st~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|nstate.readmem_st~0_combout\ = (\Controladora|pstate.c_mem_add_st~regout\ & (\Controladora|nstate.c_mem_add_st~0_combout\ & (!\RI|sr_out\(30) & !\RI|sr_out\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.c_mem_add_st~regout\,
	datab => \Controladora|nstate.c_mem_add_st~0_combout\,
	datac => \RI|sr_out\(30),
	datad => \RI|sr_out\(29),
	combout => \Controladora|nstate.readmem_st~0_combout\);

-- Location: LCFF_X8_Y10_N23
\Controladora|pstate.readmem_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Controladora|nstate.readmem_st~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Controladora|pstate.readmem_st~regout\);

-- Location: LCCOMB_X12_Y11_N4
\MUX_PC_MEM|m_out[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_PC_MEM|m_out[2]~2_combout\ = (\Controladora|pstate.readmem_st~regout\ & (\SaidaAlu|sr_out\(2))) # (!\Controladora|pstate.readmem_st~regout\ & ((\Controladora|pstate.writemem_st~regout\ & (\SaidaAlu|sr_out\(2))) # 
-- (!\Controladora|pstate.writemem_st~regout\ & ((\PC|sr_out\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SaidaAlu|sr_out\(2),
	datab => \Controladora|pstate.readmem_st~regout\,
	datac => \PC|sr_out\(2),
	datad => \Controladora|pstate.writemem_st~regout\,
	combout => \MUX_PC_MEM|m_out[2]~2_combout\);

-- Location: LCCOMB_X9_Y9_N30
\RI|sr_out~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~4_combout\ = (\Memoria|altsyncram_component|auto_generated|q_a\(3) & !\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Memoria|altsyncram_component|auto_generated|q_a\(3),
	datac => \reset~combout\,
	combout => \RI|sr_out~4_combout\);

-- Location: LCFF_X9_Y9_N31
\RI|sr_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~4_combout\,
	ena => \RI|sr_out[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(3));

-- Location: LCCOMB_X13_Y7_N16
\COntroladora_ULA|alu_ctr[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \COntroladora_ULA|alu_ctr[3]~5_combout\ = (\RI|sr_out\(5) & (\RI|sr_out\(1) & (!\RI|sr_out\(0) & !\RI|sr_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(5),
	datab => \RI|sr_out\(1),
	datac => \RI|sr_out\(0),
	datad => \RI|sr_out\(2),
	combout => \COntroladora_ULA|alu_ctr[3]~5_combout\);

-- Location: LCCOMB_X13_Y7_N22
\COntroladora_ULA|alu_ctr[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \COntroladora_ULA|alu_ctr[3]~4_combout\ = (\RI|sr_out\(5) & ((\RI|sr_out\(2) & (!\RI|sr_out\(1))) # (!\RI|sr_out\(2) & ((!\RI|sr_out\(0)))))) # (!\RI|sr_out\(5) & (\RI|sr_out\(1) & ((!\RI|sr_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(5),
	datab => \RI|sr_out\(1),
	datac => \RI|sr_out\(0),
	datad => \RI|sr_out\(2),
	combout => \COntroladora_ULA|alu_ctr[3]~4_combout\);

-- Location: LCCOMB_X13_Y7_N6
\COntroladora_ULA|alu_ctr[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \COntroladora_ULA|alu_ctr[3]~6_combout\ = (\RI|sr_out\(4)) # ((\RI|sr_out\(3) & (!\COntroladora_ULA|alu_ctr[3]~5_combout\)) # (!\RI|sr_out\(3) & ((!\COntroladora_ULA|alu_ctr[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(4),
	datab => \RI|sr_out\(3),
	datac => \COntroladora_ULA|alu_ctr[3]~5_combout\,
	datad => \COntroladora_ULA|alu_ctr[3]~4_combout\,
	combout => \COntroladora_ULA|alu_ctr[3]~6_combout\);

-- Location: LCCOMB_X14_Y10_N8
\ULA|Mux30~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux30~4_combout\ = (!\COntroladora_ULA|alu_ctr[0]~11_combout\ & \ULA|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	datad => \ULA|Add1~2_combout\,
	combout => \ULA|Mux30~4_combout\);

-- Location: LCCOMB_X14_Y10_N30
\ULA|Mux30~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux30~5_combout\ = (\ULA|Mux2~1_combout\ & (\ULA|tmp[1]~2_combout\ & ((\ULA|Mux2~0_combout\)))) # (!\ULA|Mux2~1_combout\ & (((\ULA|Mux30~4_combout\) # (!\ULA|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|tmp[1]~2_combout\,
	datab => \ULA|Mux30~4_combout\,
	datac => \ULA|Mux2~1_combout\,
	datad => \ULA|Mux2~0_combout\,
	combout => \ULA|Mux30~5_combout\);

-- Location: LCCOMB_X14_Y10_N16
\ULA|Mux30~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux30~6_combout\ = (\ULA|Mux31~5_combout\ & (!\ULA|Mux30~5_combout\ & ((\MUX_A_ALU|m_out[1]~31_combout\) # (\MUX_B_extsgn_ALU|m_out[1]~18_combout\)))) # (!\ULA|Mux31~5_combout\ & (((\ULA|Mux30~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[1]~31_combout\,
	datab => \ULA|Mux31~5_combout\,
	datac => \MUX_B_extsgn_ALU|m_out[1]~18_combout\,
	datad => \ULA|Mux30~5_combout\,
	combout => \ULA|Mux30~6_combout\);

-- Location: LCCOMB_X13_Y6_N2
\ULA|Mux30~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux30~3_combout\ = (\ULA|Mux30~2_combout\ & (\COntroladora_ULA|alu_ctr[2]~8_combout\ $ (((\MUX_A_ALU|m_out[1]~31_combout\) # (\MUX_B_extsgn_ALU|m_out[1]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[1]~31_combout\,
	datab => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	datac => \ULA|Mux30~2_combout\,
	datad => \MUX_B_extsgn_ALU|m_out[1]~18_combout\,
	combout => \ULA|Mux30~3_combout\);

-- Location: LCCOMB_X13_Y6_N14
\ULA|Mux30~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux30~7_combout\ = (\ULA|Mux30~3_combout\) # ((\ULA|Mux30~6_combout\ & ((!\COntroladora_ULA|alu_ctr[3]~6_combout\) # (!\Controladora|pstate.rtype_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.rtype_ex_st~regout\,
	datab => \COntroladora_ULA|alu_ctr[3]~6_combout\,
	datac => \ULA|Mux30~6_combout\,
	datad => \ULA|Mux30~3_combout\,
	combout => \ULA|Mux30~7_combout\);

-- Location: LCFF_X13_Y6_N15
\SaidaAlu|sr_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ULA|Mux30~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SaidaAlu|sr_out\(1));

-- Location: LCCOMB_X9_Y8_N0
\PC|sr_out~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~3_combout\ = (!\Controladora|pstate.jump_ex_st~regout\ & ((\Controladora|pstate.branch_ex_st~regout\ & (\SaidaAlu|sr_out\(1))) # (!\Controladora|pstate.branch_ex_st~regout\ & ((\ULA|Mux30~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.jump_ex_st~regout\,
	datab => \SaidaAlu|sr_out\(1),
	datac => \Controladora|pstate.branch_ex_st~regout\,
	datad => \ULA|Mux30~7_combout\,
	combout => \PC|sr_out~3_combout\);

-- Location: LCFF_X9_Y8_N1
\PC|sr_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~3_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(1));

-- Location: LCCOMB_X12_Y11_N26
\MUX_PC_MEM|m_out[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_PC_MEM|m_out[1]~1_combout\ = (\Controladora|pstate.readmem_st~regout\ & (\SaidaAlu|sr_out\(1))) # (!\Controladora|pstate.readmem_st~regout\ & ((\Controladora|pstate.writemem_st~regout\ & (\SaidaAlu|sr_out\(1))) # 
-- (!\Controladora|pstate.writemem_st~regout\ & ((\PC|sr_out\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SaidaAlu|sr_out\(1),
	datab => \PC|sr_out\(1),
	datac => \Controladora|pstate.readmem_st~regout\,
	datad => \Controladora|pstate.writemem_st~regout\,
	combout => \MUX_PC_MEM|m_out[1]~1_combout\);

-- Location: LCCOMB_X8_Y10_N26
\RI|sr_out~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~29_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(28),
	combout => \RI|sr_out~29_combout\);

-- Location: LCFF_X8_Y10_N27
\RI|sr_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~29_combout\,
	ena => \RI|sr_out[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(28));

-- Location: LCCOMB_X9_Y10_N0
\Controladora|nstate.branch_ex_st~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Controladora|nstate.branch_ex_st~0_combout\ = (\Controladora|Equal0~0_combout\ & (\RI|sr_out\(28) & (\Controladora|pstate.decode_st~regout\ & !\RI|sr_out\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|Equal0~0_combout\,
	datab => \RI|sr_out\(28),
	datac => \Controladora|pstate.decode_st~regout\,
	datad => \RI|sr_out\(27),
	combout => \Controladora|nstate.branch_ex_st~0_combout\);

-- Location: LCFF_X9_Y10_N1
\Controladora|pstate.branch_ex_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Controladora|nstate.branch_ex_st~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Controladora|pstate.branch_ex_st~regout\);

-- Location: LCFF_X13_Y6_N21
\SaidaAlu|sr_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ULA|Mux31~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SaidaAlu|sr_out\(0));

-- Location: LCCOMB_X12_Y11_N0
\PC|sr_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~0_combout\ = (!\Controladora|pstate.jump_ex_st~regout\ & ((\Controladora|pstate.branch_ex_st~regout\ & ((\SaidaAlu|sr_out\(0)))) # (!\Controladora|pstate.branch_ex_st~regout\ & (\ULA|Mux31~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.jump_ex_st~regout\,
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \ULA|Mux31~9_combout\,
	datad => \SaidaAlu|sr_out\(0),
	combout => \PC|sr_out~0_combout\);

-- Location: LCFF_X12_Y11_N1
\PC|sr_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~0_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(0));

-- Location: LCCOMB_X12_Y11_N12
\MUX_PC_MEM|m_out[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_PC_MEM|m_out[0]~0_combout\ = (\Controladora|pstate.writemem_st~regout\ & (((\SaidaAlu|sr_out\(0))))) # (!\Controladora|pstate.writemem_st~regout\ & ((\Controladora|pstate.readmem_st~regout\ & ((\SaidaAlu|sr_out\(0)))) # 
-- (!\Controladora|pstate.readmem_st~regout\ & (\PC|sr_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.writemem_st~regout\,
	datab => \PC|sr_out\(0),
	datac => \Controladora|pstate.readmem_st~regout\,
	datad => \SaidaAlu|sr_out\(0),
	combout => \MUX_PC_MEM|m_out[0]~0_combout\);

-- Location: LCCOMB_X9_Y9_N24
\RI|sr_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~0_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(0),
	combout => \RI|sr_out~0_combout\);

-- Location: LCFF_X9_Y9_N25
\RI|sr_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~0_combout\,
	ena => \RI|sr_out[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(0));

-- Location: LCCOMB_X9_Y11_N12
\RI|sr_out~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~9_combout\ = (\Memoria|altsyncram_component|auto_generated|q_a\(8) & !\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Memoria|altsyncram_component|auto_generated|q_a\(8),
	datad => \reset~combout\,
	combout => \RI|sr_out~9_combout\);

-- Location: LCFF_X9_Y11_N13
\RI|sr_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~9_combout\,
	ena => \RI|sr_out[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(8));

-- Location: LCCOMB_X12_Y11_N2
\RI|sr_out~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~17_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(16),
	combout => \RI|sr_out~17_combout\);

-- Location: LCFF_X12_Y11_N3
\RI|sr_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~17_combout\,
	ena => \RI|sr_out[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(16));

-- Location: LCCOMB_X12_Y11_N8
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

-- Location: LCFF_X12_Y11_N9
\RI|sr_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~18_combout\,
	ena => \RI|sr_out[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(17));

-- Location: LCCOMB_X8_Y10_N18
\RI|sr_out~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~20_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(19),
	combout => \RI|sr_out~20_combout\);

-- Location: LCFF_X8_Y10_N19
\RI|sr_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~20_combout\,
	ena => \RI|sr_out[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(19));

-- Location: LCCOMB_X8_Y8_N18
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

-- Location: LCFF_X8_Y8_N19
\RI|sr_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~21_combout\,
	ena => \RI|sr_out[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(20));

-- Location: LCCOMB_X12_Y8_N20
\RI|sr_out~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~22_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(21),
	combout => \RI|sr_out~22_combout\);

-- Location: LCFF_X12_Y8_N21
\RI|sr_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~22_combout\,
	ena => \RI|sr_out[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(21));

-- Location: LCCOMB_X8_Y10_N10
\RI|sr_out~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \RI|sr_out~27_combout\ = (!\reset~combout\ & \Memoria|altsyncram_component|auto_generated|q_a\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datad => \Memoria|altsyncram_component|auto_generated|q_a\(26),
	combout => \RI|sr_out~27_combout\);

-- Location: LCFF_X8_Y10_N11
\RI|sr_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \RI|sr_out~27_combout\,
	ena => \RI|sr_out[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI|sr_out\(26));

-- Location: LCCOMB_X12_Y10_N20
\PC|sr_out~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~20_combout\ = (\Controladora|pstate.jump_ex_st~regout\ & (((\RI|sr_out\(8) & !\Controladora|pstate.branch_ex_st~regout\)))) # (!\Controladora|pstate.jump_ex_st~regout\ & (\SaidaAlu|sr_out\(10) & ((\Controladora|pstate.branch_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SaidaAlu|sr_out\(10),
	datab => \RI|sr_out\(8),
	datac => \Controladora|pstate.jump_ex_st~regout\,
	datad => \Controladora|pstate.branch_ex_st~regout\,
	combout => \PC|sr_out~20_combout\);

-- Location: LCCOMB_X12_Y10_N26
\MUX_A_ALU|m_out[10]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A_ALU|m_out[10]~22_combout\ = (!\Controladora|pstate.rtype_ex_st~regout\ & (\PC|sr_out\(10) & (!\Controladora|pstate.branch_ex_st~regout\ & !\Controladora|pstate.c_mem_add_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.rtype_ex_st~regout\,
	datab => \PC|sr_out\(10),
	datac => \Controladora|pstate.branch_ex_st~regout\,
	datad => \Controladora|pstate.c_mem_add_st~regout\,
	combout => \MUX_A_ALU|m_out[10]~22_combout\);

-- Location: LCCOMB_X12_Y10_N24
\ULA|Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux21~0_combout\ = (\MUX_B_extsgn_ALU|m_out[10]~9_combout\ & (!\MUX_A_ALU|m_out[10]~22_combout\ & !\COntroladora_ULA|alu_ctr[2]~8_combout\)) # (!\MUX_B_extsgn_ALU|m_out[10]~9_combout\ & (\MUX_A_ALU|m_out[10]~22_combout\ $ 
-- (\COntroladora_ULA|alu_ctr[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_B_extsgn_ALU|m_out[10]~9_combout\,
	datac => \MUX_A_ALU|m_out[10]~22_combout\,
	datad => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	combout => \ULA|Mux21~0_combout\);

-- Location: LCCOMB_X12_Y10_N6
\ULA|Mux21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux21~1_combout\ = (\ULA|Add1~20_combout\ & !\COntroladora_ULA|alu_ctr[0]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ULA|Add1~20_combout\,
	datad => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	combout => \ULA|Mux21~1_combout\);

-- Location: LCCOMB_X12_Y10_N4
\ULA|Mux21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux21~2_combout\ = (\ULA|Mux2~1_combout\ & (\ULA|tmp[10]~20_combout\ & (\ULA|Mux2~0_combout\))) # (!\ULA|Mux2~1_combout\ & (((\ULA|Mux21~1_combout\) # (!\ULA|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux2~1_combout\,
	datab => \ULA|tmp[10]~20_combout\,
	datac => \ULA|Mux2~0_combout\,
	datad => \ULA|Mux21~1_combout\,
	combout => \ULA|Mux21~2_combout\);

-- Location: LCCOMB_X12_Y10_N22
\ULA|Mux21~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux21~3_combout\ = (\ULA|Mux21~2_combout\ & (((\MUX_A_ALU|m_out[10]~22_combout\ & \MUX_B_extsgn_ALU|m_out[10]~9_combout\)) # (!\ULA|Mux31~5_combout\))) # (!\ULA|Mux21~2_combout\ & (\ULA|Mux31~5_combout\ & ((\MUX_A_ALU|m_out[10]~22_combout\) # 
-- (\MUX_B_extsgn_ALU|m_out[10]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[10]~22_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[10]~9_combout\,
	datac => \ULA|Mux21~2_combout\,
	datad => \ULA|Mux31~5_combout\,
	combout => \ULA|Mux21~3_combout\);

-- Location: LCCOMB_X12_Y10_N12
\ULA|Mux21~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux21~4_combout\ = (\COntroladora_ULA|alu_ctr[3]~9_combout\ & (\ULA|Mux30~2_combout\ & (\ULA|Mux21~0_combout\))) # (!\COntroladora_ULA|alu_ctr[3]~9_combout\ & ((\ULA|Mux21~3_combout\) # ((\ULA|Mux30~2_combout\ & \ULA|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COntroladora_ULA|alu_ctr[3]~9_combout\,
	datab => \ULA|Mux30~2_combout\,
	datac => \ULA|Mux21~0_combout\,
	datad => \ULA|Mux21~3_combout\,
	combout => \ULA|Mux21~4_combout\);

-- Location: LCCOMB_X12_Y10_N0
\PC|sr_out~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~21_combout\ = (\PC|sr_out~20_combout\) # ((!\Controladora|pstate.branch_ex_st~regout\ & (!\Controladora|pstate.jump_ex_st~regout\ & \ULA|Mux21~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \PC|sr_out~20_combout\,
	datac => \Controladora|pstate.jump_ex_st~regout\,
	datad => \ULA|Mux21~4_combout\,
	combout => \PC|sr_out~21_combout\);

-- Location: LCFF_X12_Y10_N1
\PC|sr_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~21_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(10));

-- Location: LCFF_X14_Y10_N1
\SaidaAlu|sr_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ULA|Mux16~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SaidaAlu|sr_out\(15));

-- Location: LCCOMB_X14_Y10_N4
\PC|sr_out~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~30_combout\ = (\Controladora|pstate.branch_ex_st~regout\ & (((\SaidaAlu|sr_out\(15) & !\Controladora|pstate.jump_ex_st~regout\)))) # (!\Controladora|pstate.branch_ex_st~regout\ & (\RI|sr_out\(13) & ((\Controladora|pstate.jump_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(13),
	datab => \SaidaAlu|sr_out\(15),
	datac => \Controladora|pstate.branch_ex_st~regout\,
	datad => \Controladora|pstate.jump_ex_st~regout\,
	combout => \PC|sr_out~30_combout\);

-- Location: LCCOMB_X14_Y10_N20
\PC|sr_out~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~31_combout\ = (\PC|sr_out~30_combout\) # ((!\Controladora|pstate.branch_ex_st~regout\ & (\ULA|Mux16~4_combout\ & !\Controladora|pstate.jump_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \PC|sr_out~30_combout\,
	datac => \ULA|Mux16~4_combout\,
	datad => \Controladora|pstate.jump_ex_st~regout\,
	combout => \PC|sr_out~31_combout\);

-- Location: LCFF_X14_Y10_N21
\PC|sr_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~31_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(15));

-- Location: LCFF_X13_Y7_N19
\SaidaAlu|sr_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ULA|Mux15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SaidaAlu|sr_out\(16));

-- Location: LCCOMB_X13_Y7_N14
\PC|sr_out~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~32_combout\ = (\Controladora|pstate.branch_ex_st~regout\ & (!\Controladora|pstate.jump_ex_st~regout\ & ((\SaidaAlu|sr_out\(16))))) # (!\Controladora|pstate.branch_ex_st~regout\ & (\Controladora|pstate.jump_ex_st~regout\ & (\RI|sr_out\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \Controladora|pstate.jump_ex_st~regout\,
	datac => \RI|sr_out\(14),
	datad => \SaidaAlu|sr_out\(16),
	combout => \PC|sr_out~32_combout\);

-- Location: LCCOMB_X13_Y7_N24
\PC|sr_out~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~33_combout\ = (\PC|sr_out~32_combout\) # ((!\Controladora|pstate.branch_ex_st~regout\ & (!\Controladora|pstate.jump_ex_st~regout\ & \ULA|Mux15~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \Controladora|pstate.jump_ex_st~regout\,
	datac => \PC|sr_out~32_combout\,
	datad => \ULA|Mux15~4_combout\,
	combout => \PC|sr_out~33_combout\);

-- Location: LCFF_X13_Y7_N25
\PC|sr_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~33_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(16));

-- Location: LCCOMB_X9_Y9_N26
\MUX_A_ALU|m_out[17]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A_ALU|m_out[17]~15_combout\ = (!\Controladora|pstate.rtype_ex_st~regout\ & (!\Controladora|pstate.branch_ex_st~regout\ & (!\Controladora|pstate.c_mem_add_st~regout\ & \PC|sr_out\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.rtype_ex_st~regout\,
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \Controladora|pstate.c_mem_add_st~regout\,
	datad => \PC|sr_out\(17),
	combout => \MUX_A_ALU|m_out[17]~15_combout\);

-- Location: LCCOMB_X10_Y8_N4
\ULA|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux14~0_combout\ = (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (!\MUX_A_ALU|m_out[17]~15_combout\ & !\COntroladora_ULA|alu_ctr[2]~8_combout\)) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (\MUX_A_ALU|m_out[17]~15_combout\ $ 
-- (\COntroladora_ULA|alu_ctr[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datac => \MUX_A_ALU|m_out[17]~15_combout\,
	datad => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	combout => \ULA|Mux14~0_combout\);

-- Location: LCCOMB_X10_Y8_N2
\ULA|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux14~1_combout\ = (!\COntroladora_ULA|alu_ctr[0]~11_combout\ & \ULA|Add1~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	datad => \ULA|Add1~34_combout\,
	combout => \ULA|Mux14~1_combout\);

-- Location: LCCOMB_X10_Y8_N0
\ULA|Mux14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux14~2_combout\ = (\ULA|Mux2~0_combout\ & ((\ULA|Mux2~1_combout\ & (\ULA|tmp[17]~34_combout\)) # (!\ULA|Mux2~1_combout\ & ((\ULA|Mux14~1_combout\))))) # (!\ULA|Mux2~0_combout\ & (!\ULA|Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux2~0_combout\,
	datab => \ULA|Mux2~1_combout\,
	datac => \ULA|tmp[17]~34_combout\,
	datad => \ULA|Mux14~1_combout\,
	combout => \ULA|Mux14~2_combout\);

-- Location: LCCOMB_X10_Y8_N6
\ULA|Mux14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux14~3_combout\ = (\ULA|Mux31~5_combout\ & ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & ((\MUX_A_ALU|m_out[17]~15_combout\) # (!\ULA|Mux14~2_combout\))) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (\MUX_A_ALU|m_out[17]~15_combout\ & 
-- !\ULA|Mux14~2_combout\)))) # (!\ULA|Mux31~5_combout\ & (((\ULA|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux31~5_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datac => \MUX_A_ALU|m_out[17]~15_combout\,
	datad => \ULA|Mux14~2_combout\,
	combout => \ULA|Mux14~3_combout\);

-- Location: LCCOMB_X10_Y8_N20
\ULA|Mux14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux14~4_combout\ = (\ULA|Mux30~2_combout\ & ((\ULA|Mux14~0_combout\) # ((!\COntroladora_ULA|alu_ctr[3]~9_combout\ & \ULA|Mux14~3_combout\)))) # (!\ULA|Mux30~2_combout\ & (!\COntroladora_ULA|alu_ctr[3]~9_combout\ & ((\ULA|Mux14~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux30~2_combout\,
	datab => \COntroladora_ULA|alu_ctr[3]~9_combout\,
	datac => \ULA|Mux14~0_combout\,
	datad => \ULA|Mux14~3_combout\,
	combout => \ULA|Mux14~4_combout\);

-- Location: LCFF_X10_Y8_N21
\SaidaAlu|sr_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ULA|Mux14~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SaidaAlu|sr_out\(17));

-- Location: LCCOMB_X12_Y8_N8
\PC|sr_out~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~34_combout\ = (\Controladora|pstate.branch_ex_st~regout\ & (((!\Controladora|pstate.jump_ex_st~regout\ & \SaidaAlu|sr_out\(17))))) # (!\Controladora|pstate.branch_ex_st~regout\ & (\RI|sr_out\(15) & (\Controladora|pstate.jump_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \RI|sr_out\(15),
	datac => \Controladora|pstate.jump_ex_st~regout\,
	datad => \SaidaAlu|sr_out\(17),
	combout => \PC|sr_out~34_combout\);

-- Location: LCCOMB_X10_Y8_N16
\PC|sr_out~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~35_combout\ = (\PC|sr_out~34_combout\) # ((!\Controladora|pstate.branch_ex_st~regout\ & (!\Controladora|pstate.jump_ex_st~regout\ & \ULA|Mux14~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \Controladora|pstate.jump_ex_st~regout\,
	datac => \ULA|Mux14~4_combout\,
	datad => \PC|sr_out~34_combout\,
	combout => \PC|sr_out~35_combout\);

-- Location: LCFF_X10_Y8_N17
\PC|sr_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~35_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(17));

-- Location: LCCOMB_X9_Y11_N20
\ULA|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux13~1_combout\ = (!\COntroladora_ULA|alu_ctr[0]~11_combout\ & \ULA|Add1~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	datad => \ULA|Add1~36_combout\,
	combout => \ULA|Mux13~1_combout\);

-- Location: LCCOMB_X13_Y11_N30
\ULA|Mux13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux13~2_combout\ = (\ULA|Mux2~1_combout\ & (\ULA|tmp[18]~36_combout\ & (\ULA|Mux2~0_combout\))) # (!\ULA|Mux2~1_combout\ & (((\ULA|Mux13~1_combout\) # (!\ULA|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|tmp[18]~36_combout\,
	datab => \ULA|Mux2~1_combout\,
	datac => \ULA|Mux2~0_combout\,
	datad => \ULA|Mux13~1_combout\,
	combout => \ULA|Mux13~2_combout\);

-- Location: LCCOMB_X13_Y11_N8
\ULA|Mux13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux13~3_combout\ = (\ULA|Mux31~5_combout\ & ((\MUX_A_ALU|m_out[18]~14_combout\ & ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\) # (!\ULA|Mux13~2_combout\))) # (!\MUX_A_ALU|m_out[18]~14_combout\ & (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & 
-- !\ULA|Mux13~2_combout\)))) # (!\ULA|Mux31~5_combout\ & (((\ULA|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[18]~14_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datac => \ULA|Mux31~5_combout\,
	datad => \ULA|Mux13~2_combout\,
	combout => \ULA|Mux13~3_combout\);

-- Location: LCCOMB_X13_Y11_N20
\ULA|Mux13~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux13~4_combout\ = (\ULA|Mux13~0_combout\ & ((\ULA|Mux30~2_combout\) # ((!\COntroladora_ULA|alu_ctr[3]~9_combout\ & \ULA|Mux13~3_combout\)))) # (!\ULA|Mux13~0_combout\ & (!\COntroladora_ULA|alu_ctr[3]~9_combout\ & (\ULA|Mux13~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux13~0_combout\,
	datab => \COntroladora_ULA|alu_ctr[3]~9_combout\,
	datac => \ULA|Mux13~3_combout\,
	datad => \ULA|Mux30~2_combout\,
	combout => \ULA|Mux13~4_combout\);

-- Location: LCFF_X13_Y11_N21
\SaidaAlu|sr_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ULA|Mux13~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SaidaAlu|sr_out\(18));

-- Location: LCCOMB_X12_Y11_N20
\PC|sr_out~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~36_combout\ = (\Controladora|pstate.jump_ex_st~regout\ & (\RI|sr_out\(16) & ((!\Controladora|pstate.branch_ex_st~regout\)))) # (!\Controladora|pstate.jump_ex_st~regout\ & (((\SaidaAlu|sr_out\(18) & \Controladora|pstate.branch_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(16),
	datab => \SaidaAlu|sr_out\(18),
	datac => \Controladora|pstate.jump_ex_st~regout\,
	datad => \Controladora|pstate.branch_ex_st~regout\,
	combout => \PC|sr_out~36_combout\);

-- Location: LCCOMB_X12_Y8_N26
\PC|sr_out~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~37_combout\ = (\PC|sr_out~36_combout\) # ((!\Controladora|pstate.branch_ex_st~regout\ & (!\Controladora|pstate.jump_ex_st~regout\ & \ULA|Mux13~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \PC|sr_out~36_combout\,
	datac => \Controladora|pstate.jump_ex_st~regout\,
	datad => \ULA|Mux13~4_combout\,
	combout => \PC|sr_out~37_combout\);

-- Location: LCFF_X12_Y8_N27
\PC|sr_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~37_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(18));

-- Location: LCFF_X13_Y11_N11
\SaidaAlu|sr_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ULA|Mux12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SaidaAlu|sr_out\(19));

-- Location: LCCOMB_X12_Y11_N22
\PC|sr_out~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~38_combout\ = (\Controladora|pstate.jump_ex_st~regout\ & (\RI|sr_out\(17) & ((!\Controladora|pstate.branch_ex_st~regout\)))) # (!\Controladora|pstate.jump_ex_st~regout\ & (((\SaidaAlu|sr_out\(19) & \Controladora|pstate.branch_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI|sr_out\(17),
	datab => \SaidaAlu|sr_out\(19),
	datac => \Controladora|pstate.jump_ex_st~regout\,
	datad => \Controladora|pstate.branch_ex_st~regout\,
	combout => \PC|sr_out~38_combout\);

-- Location: LCCOMB_X12_Y8_N12
\PC|sr_out~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~39_combout\ = (\PC|sr_out~38_combout\) # ((!\Controladora|pstate.branch_ex_st~regout\ & (!\Controladora|pstate.jump_ex_st~regout\ & \ULA|Mux12~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \Controladora|pstate.jump_ex_st~regout\,
	datac => \ULA|Mux12~4_combout\,
	datad => \PC|sr_out~38_combout\,
	combout => \PC|sr_out~39_combout\);

-- Location: LCFF_X12_Y8_N13
\PC|sr_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~39_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(19));

-- Location: LCFF_X13_Y11_N3
\SaidaAlu|sr_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ULA|Mux10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SaidaAlu|sr_out\(21));

-- Location: LCCOMB_X14_Y9_N16
\PC|sr_out~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~42_combout\ = (\Controladora|pstate.jump_ex_st~regout\ & (!\Controladora|pstate.branch_ex_st~regout\ & (\RI|sr_out\(19)))) # (!\Controladora|pstate.jump_ex_st~regout\ & (\Controladora|pstate.branch_ex_st~regout\ & ((\SaidaAlu|sr_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.jump_ex_st~regout\,
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \RI|sr_out\(19),
	datad => \SaidaAlu|sr_out\(21),
	combout => \PC|sr_out~42_combout\);

-- Location: LCCOMB_X14_Y9_N24
\PC|sr_out~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~43_combout\ = (\PC|sr_out~42_combout\) # ((!\Controladora|pstate.jump_ex_st~regout\ & (!\Controladora|pstate.branch_ex_st~regout\ & \ULA|Mux10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.jump_ex_st~regout\,
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \PC|sr_out~42_combout\,
	datad => \ULA|Mux10~4_combout\,
	combout => \PC|sr_out~43_combout\);

-- Location: LCFF_X14_Y9_N25
\PC|sr_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~43_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(21));

-- Location: LCCOMB_X12_Y7_N14
\MUX_A_ALU|m_out[22]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A_ALU|m_out[22]~10_combout\ = (\PC|sr_out\(22) & (!\Controladora|pstate.branch_ex_st~regout\ & (!\Controladora|pstate.rtype_ex_st~regout\ & !\Controladora|pstate.c_mem_add_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|sr_out\(22),
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \Controladora|pstate.rtype_ex_st~regout\,
	datad => \Controladora|pstate.c_mem_add_st~regout\,
	combout => \MUX_A_ALU|m_out[22]~10_combout\);

-- Location: LCCOMB_X10_Y7_N22
\ULA|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux9~0_combout\ = (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (!\COntroladora_ULA|alu_ctr[2]~8_combout\ & !\MUX_A_ALU|m_out[22]~10_combout\)) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (\COntroladora_ULA|alu_ctr[2]~8_combout\ $ 
-- (\MUX_A_ALU|m_out[22]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datac => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	datad => \MUX_A_ALU|m_out[22]~10_combout\,
	combout => \ULA|Mux9~0_combout\);

-- Location: LCCOMB_X9_Y9_N4
\ULA|Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux9~1_combout\ = (!\COntroladora_ULA|alu_ctr[0]~11_combout\ & \ULA|Add1~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	datac => \ULA|Add1~44_combout\,
	combout => \ULA|Mux9~1_combout\);

-- Location: LCCOMB_X12_Y7_N22
\ULA|Mux9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux9~2_combout\ = (\ULA|Mux2~1_combout\ & (\ULA|Mux2~0_combout\ & (\ULA|tmp[22]~44_combout\))) # (!\ULA|Mux2~1_combout\ & (((\ULA|Mux9~1_combout\)) # (!\ULA|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux2~1_combout\,
	datab => \ULA|Mux2~0_combout\,
	datac => \ULA|tmp[22]~44_combout\,
	datad => \ULA|Mux9~1_combout\,
	combout => \ULA|Mux9~2_combout\);

-- Location: LCCOMB_X12_Y7_N12
\ULA|Mux9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux9~3_combout\ = (\ULA|Mux31~5_combout\ & ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & ((\MUX_A_ALU|m_out[22]~10_combout\) # (!\ULA|Mux9~2_combout\))) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (\MUX_A_ALU|m_out[22]~10_combout\ & 
-- !\ULA|Mux9~2_combout\)))) # (!\ULA|Mux31~5_combout\ & (((\ULA|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datab => \MUX_A_ALU|m_out[22]~10_combout\,
	datac => \ULA|Mux31~5_combout\,
	datad => \ULA|Mux9~2_combout\,
	combout => \ULA|Mux9~3_combout\);

-- Location: LCCOMB_X12_Y7_N30
\ULA|Mux9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux9~4_combout\ = (\COntroladora_ULA|alu_ctr[3]~9_combout\ & (\ULA|Mux9~0_combout\ & (\ULA|Mux30~2_combout\))) # (!\COntroladora_ULA|alu_ctr[3]~9_combout\ & ((\ULA|Mux9~3_combout\) # ((\ULA|Mux9~0_combout\ & \ULA|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COntroladora_ULA|alu_ctr[3]~9_combout\,
	datab => \ULA|Mux9~0_combout\,
	datac => \ULA|Mux30~2_combout\,
	datad => \ULA|Mux9~3_combout\,
	combout => \ULA|Mux9~4_combout\);

-- Location: LCFF_X12_Y7_N31
\SaidaAlu|sr_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ULA|Mux9~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SaidaAlu|sr_out\(22));

-- Location: LCCOMB_X8_Y8_N16
\PC|sr_out~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~44_combout\ = (\Controladora|pstate.jump_ex_st~regout\ & (\RI|sr_out\(20) & (!\Controladora|pstate.branch_ex_st~regout\))) # (!\Controladora|pstate.jump_ex_st~regout\ & (((\Controladora|pstate.branch_ex_st~regout\ & \SaidaAlu|sr_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.jump_ex_st~regout\,
	datab => \RI|sr_out\(20),
	datac => \Controladora|pstate.branch_ex_st~regout\,
	datad => \SaidaAlu|sr_out\(22),
	combout => \PC|sr_out~44_combout\);

-- Location: LCCOMB_X12_Y7_N20
\PC|sr_out~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~45_combout\ = (\PC|sr_out~44_combout\) # ((!\Controladora|pstate.jump_ex_st~regout\ & (!\Controladora|pstate.branch_ex_st~regout\ & \ULA|Mux9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.jump_ex_st~regout\,
	datab => \Controladora|pstate.branch_ex_st~regout\,
	datac => \PC|sr_out~44_combout\,
	datad => \ULA|Mux9~4_combout\,
	combout => \PC|sr_out~45_combout\);

-- Location: LCFF_X12_Y7_N21
\PC|sr_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~45_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(22));

-- Location: LCCOMB_X12_Y8_N14
\PC|sr_out~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~46_combout\ = (\Controladora|pstate.jump_ex_st~regout\ & (((\RI|sr_out\(21) & !\Controladora|pstate.branch_ex_st~regout\)))) # (!\Controladora|pstate.jump_ex_st~regout\ & (\SaidaAlu|sr_out\(23) & ((\Controladora|pstate.branch_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SaidaAlu|sr_out\(23),
	datab => \Controladora|pstate.jump_ex_st~regout\,
	datac => \RI|sr_out\(21),
	datad => \Controladora|pstate.branch_ex_st~regout\,
	combout => \PC|sr_out~46_combout\);

-- Location: LCCOMB_X12_Y8_N2
\MUX_A_ALU|m_out[23]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A_ALU|m_out[23]~9_combout\ = (!\Controladora|pstate.branch_ex_st~regout\ & (\PC|sr_out\(23) & (!\Controladora|pstate.c_mem_add_st~regout\ & !\Controladora|pstate.rtype_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \PC|sr_out\(23),
	datac => \Controladora|pstate.c_mem_add_st~regout\,
	datad => \Controladora|pstate.rtype_ex_st~regout\,
	combout => \MUX_A_ALU|m_out[23]~9_combout\);

-- Location: LCCOMB_X12_Y9_N24
\ULA|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux8~1_combout\ = (!\COntroladora_ULA|alu_ctr[0]~11_combout\ & \ULA|Add1~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	datad => \ULA|Add1~46_combout\,
	combout => \ULA|Mux8~1_combout\);

-- Location: LCCOMB_X12_Y7_N26
\ULA|Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux8~2_combout\ = (\ULA|Mux2~1_combout\ & (\ULA|Mux2~0_combout\ & ((\ULA|tmp[23]~46_combout\)))) # (!\ULA|Mux2~1_combout\ & (((\ULA|Mux8~1_combout\)) # (!\ULA|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux2~1_combout\,
	datab => \ULA|Mux2~0_combout\,
	datac => \ULA|Mux8~1_combout\,
	datad => \ULA|tmp[23]~46_combout\,
	combout => \ULA|Mux8~2_combout\);

-- Location: LCCOMB_X12_Y7_N8
\ULA|Mux8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux8~3_combout\ = (\ULA|Mux31~5_combout\ & ((\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & ((\MUX_A_ALU|m_out[23]~9_combout\) # (!\ULA|Mux8~2_combout\))) # (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & (\MUX_A_ALU|m_out[23]~9_combout\ & 
-- !\ULA|Mux8~2_combout\)))) # (!\ULA|Mux31~5_combout\ & (((\ULA|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datab => \MUX_A_ALU|m_out[23]~9_combout\,
	datac => \ULA|Mux31~5_combout\,
	datad => \ULA|Mux8~2_combout\,
	combout => \ULA|Mux8~3_combout\);

-- Location: LCCOMB_X10_Y7_N12
\ULA|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux8~0_combout\ = (\MUX_A_ALU|m_out[23]~9_combout\ & (!\MUX_B_extsgn_ALU|m_out[31]~1_combout\ & !\COntroladora_ULA|alu_ctr[2]~8_combout\)) # (!\MUX_A_ALU|m_out[23]~9_combout\ & (\MUX_B_extsgn_ALU|m_out[31]~1_combout\ $ 
-- (\COntroladora_ULA|alu_ctr[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[23]~9_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[31]~1_combout\,
	datac => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	combout => \ULA|Mux8~0_combout\);

-- Location: LCCOMB_X12_Y7_N24
\ULA|Mux8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux8~4_combout\ = (\COntroladora_ULA|alu_ctr[3]~9_combout\ & (\ULA|Mux30~2_combout\ & ((\ULA|Mux8~0_combout\)))) # (!\COntroladora_ULA|alu_ctr[3]~9_combout\ & ((\ULA|Mux8~3_combout\) # ((\ULA|Mux30~2_combout\ & \ULA|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COntroladora_ULA|alu_ctr[3]~9_combout\,
	datab => \ULA|Mux30~2_combout\,
	datac => \ULA|Mux8~3_combout\,
	datad => \ULA|Mux8~0_combout\,
	combout => \ULA|Mux8~4_combout\);

-- Location: LCCOMB_X12_Y8_N18
\PC|sr_out~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC|sr_out~47_combout\ = (\PC|sr_out~46_combout\) # ((!\Controladora|pstate.branch_ex_st~regout\ & (!\Controladora|pstate.jump_ex_st~regout\ & \ULA|Mux8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controladora|pstate.branch_ex_st~regout\,
	datab => \Controladora|pstate.jump_ex_st~regout\,
	datac => \PC|sr_out~46_combout\,
	datad => \ULA|Mux8~4_combout\,
	combout => \PC|sr_out~47_combout\);

-- Location: LCFF_X12_Y8_N19
\PC|sr_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \PC|sr_out~47_combout\,
	sclr => \reset~combout\,
	ena => \PC|sr_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC|sr_out\(23));

-- Location: LCFF_X14_Y11_N17
\SaidaAlu|sr_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ULA|Mux29~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SaidaAlu|sr_out\(2));

-- Location: LCCOMB_X14_Y8_N14
\ULA|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux25~0_combout\ = (\MUX_B_extsgn_ALU|m_out[6]~13_combout\ & (!\MUX_A_ALU|m_out[6]~26_combout\ & !\COntroladora_ULA|alu_ctr[2]~8_combout\)) # (!\MUX_B_extsgn_ALU|m_out[6]~13_combout\ & (\MUX_A_ALU|m_out[6]~26_combout\ $ 
-- (\COntroladora_ULA|alu_ctr[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_B_extsgn_ALU|m_out[6]~13_combout\,
	datac => \MUX_A_ALU|m_out[6]~26_combout\,
	datad => \COntroladora_ULA|alu_ctr[2]~8_combout\,
	combout => \ULA|Mux25~0_combout\);

-- Location: LCCOMB_X14_Y8_N8
\ULA|Mux25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux25~1_combout\ = (!\COntroladora_ULA|alu_ctr[0]~11_combout\ & \ULA|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COntroladora_ULA|alu_ctr[0]~11_combout\,
	datad => \ULA|Add1~12_combout\,
	combout => \ULA|Mux25~1_combout\);

-- Location: LCCOMB_X14_Y8_N6
\ULA|Mux25~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux25~2_combout\ = (\ULA|Mux2~1_combout\ & (\ULA|Mux2~0_combout\ & ((\ULA|tmp[6]~12_combout\)))) # (!\ULA|Mux2~1_combout\ & (((\ULA|Mux25~1_combout\)) # (!\ULA|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux2~1_combout\,
	datab => \ULA|Mux2~0_combout\,
	datac => \ULA|Mux25~1_combout\,
	datad => \ULA|tmp[6]~12_combout\,
	combout => \ULA|Mux25~2_combout\);

-- Location: LCCOMB_X14_Y8_N28
\ULA|Mux25~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux25~3_combout\ = (\ULA|Mux31~5_combout\ & ((\MUX_A_ALU|m_out[6]~26_combout\ & ((\MUX_B_extsgn_ALU|m_out[6]~13_combout\) # (!\ULA|Mux25~2_combout\))) # (!\MUX_A_ALU|m_out[6]~26_combout\ & (\MUX_B_extsgn_ALU|m_out[6]~13_combout\ & 
-- !\ULA|Mux25~2_combout\)))) # (!\ULA|Mux31~5_combout\ & (((\ULA|Mux25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A_ALU|m_out[6]~26_combout\,
	datab => \MUX_B_extsgn_ALU|m_out[6]~13_combout\,
	datac => \ULA|Mux31~5_combout\,
	datad => \ULA|Mux25~2_combout\,
	combout => \ULA|Mux25~3_combout\);

-- Location: LCCOMB_X14_Y8_N16
\ULA|Mux25~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux25~4_combout\ = (\COntroladora_ULA|alu_ctr[3]~9_combout\ & (\ULA|Mux25~0_combout\ & (\ULA|Mux30~2_combout\))) # (!\COntroladora_ULA|alu_ctr[3]~9_combout\ & ((\ULA|Mux25~3_combout\) # ((\ULA|Mux25~0_combout\ & \ULA|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COntroladora_ULA|alu_ctr[3]~9_combout\,
	datab => \ULA|Mux25~0_combout\,
	datac => \ULA|Mux30~2_combout\,
	datad => \ULA|Mux25~3_combout\,
	combout => \ULA|Mux25~4_combout\);

-- Location: LCFF_X14_Y8_N17
\SaidaAlu|sr_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ULA|Mux25~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SaidaAlu|sr_out\(6));

-- Location: LCFF_X14_Y8_N19
\SaidaAlu|sr_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ULA|Mux23~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SaidaAlu|sr_out\(8));

-- Location: LCFF_X9_Y8_N9
\SaidaAlu|sr_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ULA|Mux22~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SaidaAlu|sr_out\(9));

-- Location: LCFF_X12_Y10_N13
\SaidaAlu|sr_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ULA|Mux21~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SaidaAlu|sr_out\(10));

-- Location: LCFF_X12_Y7_N25
\SaidaAlu|sr_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ULA|Mux8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SaidaAlu|sr_out\(23));

-- Location: LCFF_X12_Y12_N23
\SaidaAlu|sr_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ULA|Mux5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SaidaAlu|sr_out\(26));

-- Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[0]~I\ : cycloneii_io
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
	padio => ww_instruction(0));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[1]~I\ : cycloneii_io
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
	padio => ww_instruction(1));

-- Location: PIN_L14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[2]~I\ : cycloneii_io
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
	padio => ww_instruction(2));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[3]~I\ : cycloneii_io
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
	padio => ww_instruction(3));

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[4]~I\ : cycloneii_io
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
	padio => ww_instruction(4));

-- Location: PIN_N8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[5]~I\ : cycloneii_io
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
	padio => ww_instruction(5));

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[6]~I\ : cycloneii_io
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
	padio => ww_instruction(6));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[7]~I\ : cycloneii_io
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
	padio => ww_instruction(7));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[8]~I\ : cycloneii_io
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
	padio => ww_instruction(8));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[9]~I\ : cycloneii_io
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
	padio => ww_instruction(9));

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[10]~I\ : cycloneii_io
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
	padio => ww_instruction(10));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[11]~I\ : cycloneii_io
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
	padio => ww_instruction(11));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[12]~I\ : cycloneii_io
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
	padio => ww_instruction(12));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[13]~I\ : cycloneii_io
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
	padio => ww_instruction(13));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[14]~I\ : cycloneii_io
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
	padio => ww_instruction(14));

-- Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[15]~I\ : cycloneii_io
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
	padio => ww_instruction(15));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[16]~I\ : cycloneii_io
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
	padio => ww_instruction(16));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[17]~I\ : cycloneii_io
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
	padio => ww_instruction(17));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[18]~I\ : cycloneii_io
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
	padio => ww_instruction(18));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[19]~I\ : cycloneii_io
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
	padio => ww_instruction(19));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[20]~I\ : cycloneii_io
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
	padio => ww_instruction(20));

-- Location: PIN_L15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[21]~I\ : cycloneii_io
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
	padio => ww_instruction(21));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[22]~I\ : cycloneii_io
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
	padio => ww_instruction(22));

-- Location: PIN_E6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[23]~I\ : cycloneii_io
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
	padio => ww_instruction(23));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[24]~I\ : cycloneii_io
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
	padio => ww_instruction(24));

-- Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[25]~I\ : cycloneii_io
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
	padio => ww_instruction(25));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[26]~I\ : cycloneii_io
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
	padio => ww_instruction(26));

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[27]~I\ : cycloneii_io
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
	padio => ww_instruction(27));

-- Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[28]~I\ : cycloneii_io
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
	padio => ww_instruction(28));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[29]~I\ : cycloneii_io
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
	padio => ww_instruction(29));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[30]~I\ : cycloneii_io
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
	padio => ww_instruction(30));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\instruction[31]~I\ : cycloneii_io
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
	padio => ww_instruction(31));

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address[0]~I\ : cycloneii_io
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
	datain => \PC|sr_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address(0));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address[1]~I\ : cycloneii_io
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
	datain => \PC|sr_out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address(1));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address[2]~I\ : cycloneii_io
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
	datain => \PC|sr_out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address(2));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address[3]~I\ : cycloneii_io
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
	datain => \PC|sr_out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address(3));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address[4]~I\ : cycloneii_io
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
	datain => \PC|sr_out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address(4));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address[5]~I\ : cycloneii_io
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
	datain => \PC|sr_out\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address(5));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address[6]~I\ : cycloneii_io
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
	datain => \PC|sr_out\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address(6));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address[7]~I\ : cycloneii_io
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
	datain => \PC|sr_out\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address(7));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address[8]~I\ : cycloneii_io
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
	datain => \PC|sr_out\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address(8));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address[9]~I\ : cycloneii_io
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
	datain => \PC|sr_out\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address(9));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address[10]~I\ : cycloneii_io
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
	datain => \PC|sr_out\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address(10));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address[11]~I\ : cycloneii_io
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
	datain => \PC|sr_out\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address(11));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address[12]~I\ : cycloneii_io
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
	datain => \PC|sr_out\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address(12));

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address[13]~I\ : cycloneii_io
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
	datain => \PC|sr_out\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address(13));

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address[14]~I\ : cycloneii_io
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
	datain => \PC|sr_out\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address(14));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address[15]~I\ : cycloneii_io
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
	datain => \PC|sr_out\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address(15));

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address[16]~I\ : cycloneii_io
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
	datain => \PC|sr_out\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address(16));

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address[17]~I\ : cycloneii_io
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
	datain => \PC|sr_out\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address(17));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address[18]~I\ : cycloneii_io
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
	datain => \PC|sr_out\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address(18));

-- Location: PIN_K10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address[19]~I\ : cycloneii_io
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
	datain => \PC|sr_out\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address(19));

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address[20]~I\ : cycloneii_io
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
	datain => \PC|sr_out\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address(20));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address[21]~I\ : cycloneii_io
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
	datain => \PC|sr_out\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address(21));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address[22]~I\ : cycloneii_io
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
	datain => \PC|sr_out\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address(22));

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address[23]~I\ : cycloneii_io
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
	datain => \PC|sr_out\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address(23));

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address[24]~I\ : cycloneii_io
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
	datain => \PC|sr_out\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address(24));

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address[25]~I\ : cycloneii_io
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
	datain => \PC|sr_out\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address(25));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address[26]~I\ : cycloneii_io
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
	datain => \PC|sr_out\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address(26));

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address[27]~I\ : cycloneii_io
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
	datain => \PC|sr_out\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address(27));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address[28]~I\ : cycloneii_io
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
	datain => \PC|sr_out\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address(28));

-- Location: PIN_K11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address[29]~I\ : cycloneii_io
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
	datain => \PC|sr_out\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address(29));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address[30]~I\ : cycloneii_io
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
	datain => \PC|sr_out\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address(30));

-- Location: PIN_N11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\address[31]~I\ : cycloneii_io
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
	datain => \PC|sr_out\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_address(31));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_alu_teste[0]~I\ : cycloneii_io
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
	datain => \SaidaAlu|sr_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_alu_teste(0));

-- Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_alu_teste[1]~I\ : cycloneii_io
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
	datain => \SaidaAlu|sr_out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_alu_teste(1));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_alu_teste[2]~I\ : cycloneii_io
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
	datain => \SaidaAlu|sr_out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_alu_teste(2));

-- Location: PIN_N10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_alu_teste[3]~I\ : cycloneii_io
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
	datain => \SaidaAlu|sr_out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_alu_teste(3));

-- Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_alu_teste[4]~I\ : cycloneii_io
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
	datain => \SaidaAlu|sr_out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_alu_teste(4));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_alu_teste[5]~I\ : cycloneii_io
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
	datain => \SaidaAlu|sr_out\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_alu_teste(5));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_alu_teste[6]~I\ : cycloneii_io
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
	datain => \SaidaAlu|sr_out\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_alu_teste(6));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_alu_teste[7]~I\ : cycloneii_io
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
	datain => \SaidaAlu|sr_out\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_alu_teste(7));

-- Location: PIN_P13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_alu_teste[8]~I\ : cycloneii_io
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
	datain => \SaidaAlu|sr_out\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_alu_teste(8));

-- Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_alu_teste[9]~I\ : cycloneii_io
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
	datain => \SaidaAlu|sr_out\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_alu_teste(9));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_alu_teste[10]~I\ : cycloneii_io
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
	datain => \SaidaAlu|sr_out\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_alu_teste(10));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_alu_teste[11]~I\ : cycloneii_io
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
	datain => \SaidaAlu|sr_out\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_alu_teste(11));

-- Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_alu_teste[12]~I\ : cycloneii_io
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
	datain => \SaidaAlu|sr_out\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_alu_teste(12));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_alu_teste[13]~I\ : cycloneii_io
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
	datain => \SaidaAlu|sr_out\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_alu_teste(13));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_alu_teste[14]~I\ : cycloneii_io
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
	datain => \SaidaAlu|sr_out\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_alu_teste(14));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_alu_teste[15]~I\ : cycloneii_io
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
	datain => \SaidaAlu|sr_out\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_alu_teste(15));

-- Location: PIN_P12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_alu_teste[16]~I\ : cycloneii_io
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
	datain => \SaidaAlu|sr_out\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_alu_teste(16));

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_alu_teste[17]~I\ : cycloneii_io
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
	datain => \SaidaAlu|sr_out\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_alu_teste(17));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_alu_teste[18]~I\ : cycloneii_io
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
	datain => \SaidaAlu|sr_out\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_alu_teste(18));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_alu_teste[19]~I\ : cycloneii_io
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
	datain => \SaidaAlu|sr_out\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_alu_teste(19));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_alu_teste[20]~I\ : cycloneii_io
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
	datain => \SaidaAlu|sr_out\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_alu_teste(20));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_alu_teste[21]~I\ : cycloneii_io
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
	datain => \SaidaAlu|sr_out\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_alu_teste(21));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_alu_teste[22]~I\ : cycloneii_io
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
	datain => \SaidaAlu|sr_out\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_alu_teste(22));

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_alu_teste[23]~I\ : cycloneii_io
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
	datain => \SaidaAlu|sr_out\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_alu_teste(23));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_alu_teste[24]~I\ : cycloneii_io
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
	datain => \SaidaAlu|sr_out\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_alu_teste(24));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_alu_teste[25]~I\ : cycloneii_io
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
	datain => \SaidaAlu|sr_out\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_alu_teste(25));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_alu_teste[26]~I\ : cycloneii_io
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
	datain => \SaidaAlu|sr_out\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_alu_teste(26));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_alu_teste[27]~I\ : cycloneii_io
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
	datain => \SaidaAlu|sr_out\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_alu_teste(27));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_alu_teste[28]~I\ : cycloneii_io
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
	datain => \SaidaAlu|sr_out\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_alu_teste(28));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_alu_teste[29]~I\ : cycloneii_io
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
	datain => \SaidaAlu|sr_out\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_alu_teste(29));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_alu_teste[30]~I\ : cycloneii_io
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
	datain => \SaidaAlu|sr_out\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_alu_teste(30));

-- Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida_alu_teste[31]~I\ : cycloneii_io
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
	datain => \SaidaAlu|sr_out\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida_alu_teste(31));

-- Location: PIN_M14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RS_teste[0]~I\ : cycloneii_io
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
	padio => ww_RS_teste(0));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RS_teste[1]~I\ : cycloneii_io
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
	padio => ww_RS_teste(1));

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RS_teste[2]~I\ : cycloneii_io
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
	padio => ww_RS_teste(2));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RS_teste[3]~I\ : cycloneii_io
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
	padio => ww_RS_teste(3));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RS_teste[4]~I\ : cycloneii_io
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
	padio => ww_RS_teste(4));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RT_teste[0]~I\ : cycloneii_io
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
	padio => ww_RT_teste(0));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RT_teste[1]~I\ : cycloneii_io
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
	padio => ww_RT_teste(1));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RT_teste[2]~I\ : cycloneii_io
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
	padio => ww_RT_teste(2));

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RT_teste[3]~I\ : cycloneii_io
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
	padio => ww_RT_teste(3));

-- Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RT_teste[4]~I\ : cycloneii_io
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
	padio => ww_RT_teste(4));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD_teste[0]~I\ : cycloneii_io
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
	padio => ww_RD_teste(0));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD_teste[1]~I\ : cycloneii_io
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
	padio => ww_RD_teste(1));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD_teste[2]~I\ : cycloneii_io
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
	padio => ww_RD_teste(2));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD_teste[3]~I\ : cycloneii_io
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
	padio => ww_RD_teste(3));

-- Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD_teste[4]~I\ : cycloneii_io
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
	padio => ww_RD_teste(4));

-- Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\imm[0]~I\ : cycloneii_io
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
	padio => ww_imm(0));

-- Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\imm[1]~I\ : cycloneii_io
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
	padio => ww_imm(1));

-- Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\imm[2]~I\ : cycloneii_io
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
	padio => ww_imm(2));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\imm[3]~I\ : cycloneii_io
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
	padio => ww_imm(3));

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\imm[4]~I\ : cycloneii_io
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
	padio => ww_imm(4));

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\imm[5]~I\ : cycloneii_io
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
	padio => ww_imm(5));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\imm[6]~I\ : cycloneii_io
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
	padio => ww_imm(6));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\imm[7]~I\ : cycloneii_io
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
	padio => ww_imm(7));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\imm[8]~I\ : cycloneii_io
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
	padio => ww_imm(8));

-- Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\imm[9]~I\ : cycloneii_io
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
	padio => ww_imm(9));

-- Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\imm[10]~I\ : cycloneii_io
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
	padio => ww_imm(10));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\imm[11]~I\ : cycloneii_io
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
	padio => ww_imm(11));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\imm[12]~I\ : cycloneii_io
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
	padio => ww_imm(12));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\imm[13]~I\ : cycloneii_io
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
	padio => ww_imm(13));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\imm[14]~I\ : cycloneii_io
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
	padio => ww_imm(14));

-- Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\imm[15]~I\ : cycloneii_io
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
	padio => ww_imm(15));
END structure;



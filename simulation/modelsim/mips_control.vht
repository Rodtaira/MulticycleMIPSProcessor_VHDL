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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "11/24/2015 19:03:16"
                                                            
-- Vhdl Test Bench template for design  :  mips_control
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mips_control_vhd_tst IS
END mips_control_vhd_tst;
ARCHITECTURE mips_control_arch OF mips_control_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL is_beq : STD_LOGIC;
SIGNAL is_bne : STD_LOGIC;
SIGNAL op_alu : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL opcode : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
SIGNAL s_aluAin : STD_LOGIC;
SIGNAL s_aluBin : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL s_datareg : STD_LOGIC;
SIGNAL s_mem_add : STD_LOGIC;
SIGNAL s_PCin : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL s_reg_add : STD_LOGIC;
SIGNAL wr_breg : STD_LOGIC;
SIGNAL wr_ir : STD_LOGIC;
SIGNAL wr_mem : STD_LOGIC;
SIGNAL wr_pc : STD_LOGIC;
COMPONENT mips_control
	PORT (
	clk : IN STD_LOGIC;
	is_beq : OUT STD_LOGIC;
	is_bne : OUT STD_LOGIC;
	op_alu : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	opcode : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	rst : IN STD_LOGIC;
	s_aluAin : OUT STD_LOGIC;
	s_aluBin : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	s_datareg : OUT STD_LOGIC;
	s_mem_add : OUT STD_LOGIC;
	s_PCin : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	s_reg_add : OUT STD_LOGIC;
	wr_breg : OUT STD_LOGIC;
	wr_ir : OUT STD_LOGIC;
	wr_mem : OUT STD_LOGIC;
	wr_pc : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mips_control
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	is_beq => is_beq,
	is_bne => is_bne,
	op_alu => op_alu,
	opcode => opcode,
	rst => rst,
	s_aluAin => s_aluAin,
	s_aluBin => s_aluBin,
	s_datareg => s_datareg,
	s_mem_add => s_mem_add,
	s_PCin => s_PCin,
	s_reg_add => s_reg_add,
	wr_breg => wr_breg,
	wr_ir => wr_ir,
	wr_mem => wr_mem,
	wr_pc => wr_pc
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END mips_control_arch;

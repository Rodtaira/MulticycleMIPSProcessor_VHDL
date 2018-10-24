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
-- Generated on "12/11/2015 10:50:46"
                                                            
-- Vhdl Test Bench template for design  :  MIPS_Multiciclo
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MIPS_Multiciclo_vhd_tst IS
END MIPS_Multiciclo_vhd_tst;
ARCHITECTURE MIPS_Multiciclo_arch OF MIPS_Multiciclo_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A_teste : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL address : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL B_teste : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL datA_Write2_teste : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Endereco_MEM_teste : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL EscreveReg_teste : STD_LOGIC;
SIGNAL imm : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL instruction : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL louD_teste : STD_LOGIC;
SIGNAL MemparaReg_teste : STD_LOGIC;
SIGNAL OrigBAlu_teste : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL RD_teste : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL RDM_out_teste : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL REg_Write3_5 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL Reg_Write3_teste : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL regDST_test : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL RS_teste : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL RT_teste : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL saida_alu_teste : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT MIPS_Multiciclo
	PORT (
	A_teste : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	address : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	B_teste : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	clk : IN STD_LOGIC;
	datA_Write2_teste : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	Endereco_MEM_teste : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	EscreveReg_teste : OUT STD_LOGIC;
	imm : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	instruction : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	louD_teste : OUT STD_LOGIC;
	MemparaReg_teste : OUT STD_LOGIC;
	OrigBAlu_teste : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	RD_teste : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	RDM_out_teste : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	REg_Write3_5 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	Reg_Write3_teste : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	regDST_test : OUT STD_LOGIC;
	reset : IN STD_LOGIC;
	RS_teste : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	RT_teste : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	saida_alu_teste : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MIPS_Multiciclo
	PORT MAP (
-- list connections between master ports and signals
	A_teste => A_teste,
	address => address,
	B_teste => B_teste,
	clk => clk,
	datA_Write2_teste => datA_Write2_teste,
	Endereco_MEM_teste => Endereco_MEM_teste,
	EscreveReg_teste => EscreveReg_teste,
	imm => imm,
	instruction => instruction,
	louD_teste => louD_teste,
	MemparaReg_teste => MemparaReg_teste,
	OrigBAlu_teste => OrigBAlu_teste,
	RD_teste => RD_teste,
	RDM_out_teste => RDM_out_teste,
	REg_Write3_5 => REg_Write3_5,
	Reg_Write3_teste => Reg_Write3_teste,
	regDST_test => regDST_test,
	reset => reset,
	RS_teste => RS_teste,
	RT_teste => RT_teste,
	saida_alu_teste => saida_alu_teste
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
END MIPS_Multiciclo_arch;

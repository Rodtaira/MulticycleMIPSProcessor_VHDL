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
-- Generated on "11/24/2015 18:54:11"
                                                            
-- Vhdl Test Bench template for design  :  contr_MEF
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY contr_MEF_vhd_tst IS
END contr_MEF_vhd_tst;
ARCHITECTURE contr_MEF_arch OF contr_MEF_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL BNE : STD_LOGIC;
SIGNAL EscreveIR : STD_LOGIC;
SIGNAL EscreveMem : STD_LOGIC;
SIGNAL EscrevePC : STD_LOGIC;
SIGNAL EscrevePCCond : STD_LOGIC;
SIGNAL EscreveReg : STD_LOGIC;
SIGNAL IouD : STD_LOGIC;
SIGNAL LeMem : STD_LOGIC;
SIGNAL LUI : STD_LOGIC;
SIGNAL MemparaReg : STD_LOGIC;
SIGNAL NS : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Op : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL OpALU : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL OrigAALU : STD_LOGIC;
SIGNAL OrigBALU : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL OrigPc : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL RegDst : STD_LOGIC;
SIGNAL S : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT contr_MEF
	PORT (
	BNE : OUT STD_LOGIC;
	EscreveIR : OUT STD_LOGIC;
	EscreveMem : OUT STD_LOGIC;
	EscrevePC : OUT STD_LOGIC;
	EscrevePCCond : OUT STD_LOGIC;
	EscreveReg : OUT STD_LOGIC;
	IouD : OUT STD_LOGIC;
	LeMem : OUT STD_LOGIC;
	LUI : OUT STD_LOGIC;
	MemparaReg : OUT STD_LOGIC;
	NS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Op : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	OpALU : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	OrigAALU : OUT STD_LOGIC;
	OrigBALU : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	OrigPc : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	RegDst : OUT STD_LOGIC;
	S : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : contr_MEF
	PORT MAP (
-- list connections between master ports and signals
	BNE => BNE,
	EscreveIR => EscreveIR,
	EscreveMem => EscreveMem,
	EscrevePC => EscrevePC,
	EscrevePCCond => EscrevePCCond,
	EscreveReg => EscreveReg,
	IouD => IouD,
	LeMem => LeMem,
	LUI => LUI,
	MemparaReg => MemparaReg,
	NS => NS,
	Op => Op,
	OpALU => OpALU,
	OrigAALU => OrigAALU,
	OrigBALU => OrigBALU,
	OrigPc => OrigPc,
	RegDst => RegDst,
	S => S
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
END contr_MEF_arch;

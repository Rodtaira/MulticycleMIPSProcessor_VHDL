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
-- Generated on "11/24/2015 16:15:35"
                                                            
-- Vhdl Test Bench template for design  :  2bit_ShifterL_32
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY 2bit_ShifterL_32_vhd_tst IS
END 2bit_ShifterL_32_vhd_tst;
ARCHITECTURE 2bit_ShifterL_32_arch OF 2bit_ShifterL_32_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL E : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL S : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT 2bit_ShifterL_32
	PORT (
	E : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	S : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : 2bit_ShifterL_32
	PORT MAP (
-- list connections between master ports and signals
	E => E,
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
END 2bit_ShifterL_32_arch;

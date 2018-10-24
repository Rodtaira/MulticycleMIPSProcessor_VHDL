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

ENTITY DESLOCADOR_2BITS_TB IS
END DESLOCADOR_2BITS_TB;
ARCHITECTURE DESLOCADOR_2BITS_arch OF DESLOCADOR_2BITS_TB IS
-- constants                                                 
-- signals                                                   
SIGNAL E : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL S : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT DESLOCADOR_2BITS
	PORT (
	E : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	S : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : DESLOCADOR_2BITS
	PORT MAP (
-- list connections between master ports and signals
	E => E,
	S => S
	);
init : PROCESS                                               
-- variable declarations  

                                
BEGIN 

E <= X"00000001";
wait for 0.2 ns; 

E <= X"00000100" ;
wait for 0.2 ns;                                                        
                         
WAIT;                                                       
END PROCESS init;                                     
END DESLOCADOR_2BITS_arch;
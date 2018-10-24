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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"
-- CREATED		"Tue Nov 24 14:15:16 2015"

LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mips_pkg.all; 



ENTITY DESLOCADOR_2BITS IS 
	PORT
	(
		E :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		S :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END DESLOCADOR_2BITS;

ARCHITECTURE comportamental OF DESLOCADOR_2BITS IS 

SIGNAL	tmp :  STD_LOGIC_VECTOR(31 DOWNTO 0);


BEGIN 

tmp(31 DOWNTO 2) <= E(29 DOWNTO 0);


S <= tmp;

tmp(1) <= '0';
tmp(0) <= '0';

 END comportamental;
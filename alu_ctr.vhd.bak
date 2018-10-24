-- Quartus II VHDL Template
-- Basic Shift Register

library ieee;
use ieee.std_logic_1164.all;
use work.mips_pkg.all;

entity alu_ctr is
	port 
	(
		op_alu		: in std_logic_vector(1 downto 0);
		funct			: in std_logic_vector(5 downto 0);
		alu_ctr	   : out std_logic_vector(3 downto 0)
	);
end entity;

architecture behav of alu_ctr is

begin

alu_ctr <= 	ULA_AND when (op_alu="10" and funct=iAND) else
				ULA_OR  when (op_alu="10" and funct=iOR)  else
				ULA_XOR  when (op_alu="10" and funct=iXOR)  else
				ULA_SLL  when (op_alu="10" and funct=iSLL)  else
				ULA_SRA  when (op_alu="10" and funct=iSRA)  else
				ULA_SRL  when (op_alu="10" and funct=iSRL)  else
				ULA_ADD when (op_alu="10" and funct=iADD) else
				ULA_ADD when (op_alu="00") else
				ULA_SUB when (op_alu="10" and funct=iSUB) else
				ULA_SUB when (op_alu="01") else
				ULA_SLT when (op_alu="10" and funct=iSLT) else
				ULA_NOR when (op_alu="10" and funct=iNOR) else
				ULA_NOP;
end architecture;
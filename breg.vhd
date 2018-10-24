-- Quartus II VHDL Template
-- Basic Shift Register

library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.mips_pkg.all;

entity breg is
	generic (
		SIZE : natural := 32;
		ADDR : natural := 5
	);
	port 
	(
		clk		: in  std_logic;
		enable	: in  std_logic;
		idxA		: in  std_logic_vector(ADDR-1 downto 0);
		idxB		: in  std_logic_vector(ADDR-1 downto 0);
		idxwr		: in  std_logic_vector(ADDR-1 downto 0);
		data_in	: in  std_logic_vector(SIZE-1 downto 0);
		regA 		: out std_logic_vector(SIZE-1 downto 0);
		regB 		: out std_logic_vector(SIZE-1 downto 0)
	);
end entity;

architecture rtl of breg is

signal breg32: word_array(31 downto 0);

begin
	regA <= ZERO32 when (idxA="00000") else breg32(conv_integer(idxA));
	regB <= ZERO32 when (idxB="00000") else breg32(conv_integer(idxB));
	process (clk)
	begin
		if (rising_edge(clk)) then
			if (enable = '1') then
				breg32(conv_integer(idxwr)) <= data_in;
			end if;
		end if;
	end process;
end rtl;

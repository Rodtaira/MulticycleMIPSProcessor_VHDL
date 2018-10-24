-- Quartus II VHDL Template
-- Basic Shift Register

library ieee;
use ieee.std_logic_1164.all;

entity regbuf is
	generic (
		SIZE : natural := 32
	);
	port 
	(
		clk		: in std_logic;
		sr_in	   : in std_logic_vector(SIZE-1 downto 0);
		sr_out	: out std_logic_vector(SIZE-1 downto 0)
	);
end entity;

architecture rtl of regbuf is
begin
	process (clk)
	begin
		if (rising_edge(clk)) then
				sr_out <= sr_in;
		end if;
	end process;
end rtl;

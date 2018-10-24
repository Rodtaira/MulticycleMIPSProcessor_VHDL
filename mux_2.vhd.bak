library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use work.mips_pkg.all;

entity mux_2 is
	generic (
		SIZE : natural := 32 );
	port (
	 	in0, in1	: in std_logic_vector(SIZE-1 downto 0);
		sel		: in std_logic;
		m_out		: out std_logic_vector(SIZE-1 downto 0));
end entity;

architecture rtl of mux_2 is 
begin
	m_out <= in0 when (sel = '0')	else in1;
end architecture;
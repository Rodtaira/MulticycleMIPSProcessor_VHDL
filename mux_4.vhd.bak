library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use work.mips_pkg.all;

entity mux_4 is
	generic (
		W_SIZE 	: natural := 32
			);
	port (
	 	in0, in1, in2, in3	: in std_logic_vector(W_SIZE-1 downto 0);
		sel						: in std_logic_vector(1 downto 0);
		m_out						: out std_logic_vector(W_SIZE-1 downto 0));
end entity;

architecture rtl of mux_4 is 
begin
	m_out <= in0 when (sel = "00") else 
				in1 when (sel = "01") else
				in2 when (sel = "10") else
				in3;
end architecture;
-- Quartus II VHDL Template
-- Basic Shift Register

library ieee;
use ieee.std_logic_1164.all;

entity reg is
	generic (
		SIZE : natural := 32
	);
	port 
	(
		clk		: in std_logic;
		enable	: in std_logic;
		rst		: in std_logic;
		sr_in	   : in std_logic_vector(SIZE-1 downto 0);
		sr_out	: out std_logic_vector(SIZE-1 downto 0)
	);
end entity;

architecture rtl of reg is

constant ZERO : std_logic_vector(SIZE-1 downto 0) := (others => '0');

begin
	process (clk)
	begin
		if (rising_edge(clk)) then
			if (rst = '1') then
				sr_out <= ZERO;
			elsif (enable = '1') then
				sr_out <= sr_in;
			end if;
		end if;
	end process;
end rtl;

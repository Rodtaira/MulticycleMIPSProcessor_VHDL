-- Quartus II VHDL Template
-- Single-Port ROM

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mips_pkg.all;

library altera_mf;
use altera_mf.altera_mf_components.all;

entity mips_mem is
	generic (
		WIDTH : natural := 32;
		WADDR : natural := 8);
	port (
		address	: IN STD_LOGIC_VECTOR (WADDR-1 DOWNTO 0);
		clk		: IN STD_LOGIC;
		data		: IN STD_LOGIC_VECTOR (WIDTH-1 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q			: OUT STD_LOGIC_VECTOR (WIDTH-1 DOWNTO 0));
end entity;

architecture rtl of mips_mem is

--component clk_div 
--	port (
--		clk	  : in std_logic;
--		clk64   : out std_logic
--	);
--end component;

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (31 DOWNTO 0);

	COMPONENT altsyncram
	GENERIC (
		clock_enable_input_a			: STRING;
		clock_enable_output_a		: STRING;
		init_file						: STRING;
		intended_device_family		: STRING;
		lpm_hint							: STRING;
		lpm_type							: STRING;
		numwords_a						: NATURAL;
		operation_mode					: STRING;
		outdata_aclr_a					: STRING;
		outdata_reg_a					: STRING;
		power_up_uninitialized		: STRING;
		widthad_a						: NATURAL;
		width_a							: NATURAL;
		width_byteena_a				: NATURAL
	);
	PORT (
			address_a	: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			clock0		: IN STD_LOGIC ;
			data_a		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			wren_a		: IN STD_LOGIC ;
			q_a			: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
	END COMPONENT;


--	signal clk64 : std_logic;

	begin

	q <= sub_wire0;
	
	altsyncram_component : altsyncram
	GENERIC MAP (
		clock_enable_input_a => "BYPASS",
		clock_enable_output_a => "BYPASS",
		init_file => "mem.mif", 
		intended_device_family => "Cyclone II",
		lpm_hint => "ENABLE_RUNTIME_MOD=NO",
		lpm_type => "altsyncram",
		numwords_a => 256,
		operation_mode => "SINGLE_PORT",
		outdata_aclr_a => "NONE",
		outdata_reg_a => "UNREGISTERED",
		power_up_uninitialized => "FALSE",
		widthad_a => 8,
		width_a => 32,
		width_byteena_a => 1
	)
	PORT MAP (
		address_a => address,
		clock0 => clk, --clk64,
		data_a => data,
		wren_a => wren,
		q_a => sub_wire0
	);
	
--	clock: clk_div 
--		 port map (
--			clk=>clk,
--			clk64=>clk64
--		 );
end rtl;

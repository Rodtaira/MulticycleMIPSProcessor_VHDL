library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.mips_pkg.all;

entity MIPS_Multiciclo_tb is
end MIPS_Multiciclo_tb;

architecture mips_multiciclo_arch_tb of Mips_multiciclo_tb is
	
	                            
SIGNAL address : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL instruction : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL RD_teste : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL RS_teste : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL RT_teste : STD_LOGIC_VECTOR(4 DOWNTO 0);
signal saida_alu_teste: std_LOGIC_VECTOR(31 downto 0); 
signal imm: std_logic_VECTOR (15 dowNTO 0); 
	
COMPONENT MIPS_Multiciclo
	port( clk: in std_logic; 
			reset: in std_logic;
		   instruction: out std_logic_vector (31 downto 0)	;
			address, saida_alu_teste: out std_logic_vector (31 downto 0 ); 
			RS_teste, RT_teste, RD_teste: out std_logic_vector (4 downto 0); 
			imm: out std_logic_vector(15 downto 0)	
	);
end compoNENT; 	

begin 
	i1: MIPS_Multiciclo
	PORT MAP (
-- list connections between master ports and signals
	address => address,
	clk => clk,
	instruction => instruction,
	RD_teste => RD_teste,
	reset => reset,
	RS_teste => RS_teste,
	RT_teste => RT_teste,
	imm => imm ,
	saida_alu_teste => saida_alu_teste
	);
		

		
clk_process: process
	
	begin
		clk <= '0'; 
		wait for 5 ps ;
		clk <= '1';
		reset <= '1'; 
		wait for 4 ps;
		reset <= '0';
		wait for 6 ps; 
		clk <= '0';
		wait for 10 ps;
		clk <= '1'; 
		wait for 10 ps; 
		clk <= '0'; 
		wait for 10 ps; 
	end process
	;

	-- end process;
end mips_multiciclo_arch_tb;
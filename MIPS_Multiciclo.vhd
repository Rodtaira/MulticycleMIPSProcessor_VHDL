
-- Trabalho 5 - Organização e Arquitetura de COmputadores 
-- Professor Ricardo Jacobi
-- Alunos: Rodrigo T. Taira 10/0122710 e André Vargas 10/0025072

library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 
use work.mips_pkg.all; 

entity MIPS_Multiciclo is 
	port( clk: in std_logic; 
			reset: in std_logic;
		   instruction: out std_logic_vector (31 downto 0)	;
			address, saida_alu_teste: out std_logic_vector (31 downto 0 ); 
			RS_teste, RT_teste, RD_teste,REg_Write3_5: out std_logic_vector (4 downto 0); 
			imm: out std_logic_vector(15 downto 0);			
			 A_teste, B_teste, datA_Write2_teste, RDM_out_teste, Endereco_MEM_teste, Reg_Write3_teste: out std_logic_vector (31 downto 0);
			 OrigBAlu_teste: out std_logic_vector (1 downto 0); 
			 louD_teste, MemparaReg_teste, EscreveReg_teste,regDST_test, EnablePC_teste, is_bgez_teste: out std_logic;
			 op_alu_test: out std_logic_vector (3 downto 0) 			--OrigAAlu_teste, EnablePC_teste :out std_logic
			--hex0, hex1, hex2, hex3, hex4, hex5, hex6, hex7: out std_logic_vector(6 downto 0)
			); 
end entity; 

architecture MIPS_Multiciclo_Arch of MIpS_Multiciclo is 

signal Endereco_In, Endereco_out: std_logic_vector(31 downto 0); -- Sinais usados em PC, Unidade de Controle e Mux de 4 Entradas
--signal m_out: std_logic_vector(31 downto 0);
signal saida_alu, Endereco_MEM: std_logic_vector (31 downto 0 ); -- Sinais usados no Multiplexador entre PC e a Memoria e SaidaAlu
signal louD, NCLk: std_logic ; -- Sinal utilizado no Multiplexador entre PC e a Memoria e na Unidade COntroladora
signal EnablePC, EscrevePCCond, zero, EscrevePC, LeMEM, EscreveMEM, EscreveIR, EscreveReg, RegDST, MEMparaReg, OrigAAlu, is_beq, is_bne, is_bltz, is_bgez: std_logic; -- Sinais usados na Unidade Controladora , no PC e no Registrador de Instrucao   
signal DATA_Write, DATA_Write2, DATa_MEM, RDM_out: std_logic_vector(31 downto 0); -- Sinais usados na MEmoria, REgistrador de dados de memoria e no Banco de Registradores 
signal Instrucao: std_logic_vector (31 downto 0); -- Sinal usado no Registrador de Instrucao
signal Op, Funct: std_logic_vector (5 downto 0); 
signal RS, RT, RD, Shamt: std_logic_vector (4 downto 0); 
signal k16: std_logic_vector (15 downto 0); 
signal k26: std_logic_vector (25 downto 0);
signal constante1, constante2: std_logic_vector (31 downto 0);  -- Sinais usados no primeiro Deslocador_2BITS 
signal Reg_Read1, Reg_Read2: std_logic_vector (31 downto 0); -- Sinais Usados no Banco de Registradores 
signal REG_Write1, REg_Write2, REG_Write3, regA,regB, DATa_READ1, data_READ2, k32,k32_sll, A, B, ALU_IN_1, ALU_IN_2: std_logic_vector (31 downto 0) ; -- SInais usados no primeio Mux entre o RI e o Banco_de_Registradores e no Banco_de_Registradores
signal alu_control, op_alu: std_logic_vector(3 downto 0);
signal alu_out: std_logic_vector (31 downto 0);
signal IMM_LOAD: std_logic_vector (31 downto 0);  
signal OrigPC, OrigBAlu: std_logic_vector(1 downto 0); 


begin 

nclk <= not clk;

EnablePC <= (is_beq and zero) or (is_bne and not(zero)) or ( alu_out(31) and is_bltz )  or EscrevePC  or ( (is_bgez and not(alu_out(31)))); --or ( (is_bgez and not(alu_out(31))and RT(0))  



PC: reg port map(clk => clk , enable => EnablePC, rst => reset, sr_in => Endereco_In, sr_out => ENdereco_out  );   			

IMM_LOAD <= X"00000" & "00"  & '1' & saida_alu(8 downto 2) & "00"; 

MUX_PC_MEM: mux_2 port map( in0 => Endereco_out, in1 => IMM_LOAD, sel => louD, m_out => Endereco_MEM );

Memoria: mips_mem port map (address => Endereco_MEM(9 downto 2), clk => nclk, data => B, wren => EscreveMEM, q => Data_MEM ); 

REG_DATA_MEM: regbuf port map (clk => clk , sr_in => DATa_MEM, sr_out => RDM_out ); 

RI: reg port map (clk => clk, enable => EscreveIR,rst => reset, sr_in => DATa_MEM, sr_out => Instrucao); 
 
Op <= Instrucao(31 downto 26); 
RS <= Instrucao(25 downto 21); 
RT <= Instrucao(20 downto 16); 
RD <= Instrucao(15 downto 11);
Shamt <= Instrucao(10 downto 6); 
Funct <= Instrucao (5 downto 0); 
k16 <= Instrucao (15 downto 0); 
k26 <= Instrucao (25 downto 0);

constante1 <= "00" & Instrucao( 31 downto 28) & k26; 

--Deslocamento_de_2BITS: DESLOCADOR_2BITS port map ( E => constante1, S => constante2 );  

constante2 <= constante1(29 downto 0) & "00"; 

Reg_Write1 <= X"000000" & "000" & RT;
Reg_Write2 <= X"000000" & "000" & RD;

MUX1_RI_BR: mux_2 port map ( in0 => REg_Write1, in1 => REg_Write2 , sel => RegDST, m_out => REG_Write3 );
MUX2_RI_BR: mux_2 port map ( in0 => saida_alu, in1 => RDM_out , sel => MemparaReg, m_out => DatA_Write2);


Banco_de_Registradores: breg port map (clk => clk , enable => EscreveReg, idxA => RS, idxB => RT, idxwr => REG_Write3(4 downto 0), data_in => DATA_Write2, regA => DATA_READ1, regB => DATA_READ2) ;

Extensor_de_Sinal: extsgn port map ( input => k16, output => k32);

REG_A: regbuf port map (clk => clk, sr_in => DATa_READ1, sr_out => A); 
REG_B: regbuf port map (clk => clk, sr_in => DATA_READ2, sr_out => B);

--DESlocamento_de_2BITS_EXTSGN: DESlocador_2BITS port map ( E => k32, S => k32_sll); 
k32_sll <= k32 (29 downto 0 ) & "00";

MUX_A_ALU: mux_2 port map (in0 => Endereco_out, in1 => A, sel => OrigAAlu, m_out => ALU_IN_1 );

MUX_B_extsgn_ALU: mux_4 port map (in0 => B, in1 => X"00000004", in2 => k32, in3 => k32_sll, sel => OrigBAlu, m_out => ALu_IN_2); 

COntroladora_ULA: alu_ctr port map (op_alu => op_alu, funct => instrucao(5 downto 0), alu_ctr => alu_control);

ULA: ulamips port map (aluctl => alu_control, shamt => shamt , A => ALU_IN_1, B => ALU_IN_2, aluout => alu_out , zero => zero ); 

SaidaAlu: regbuf port map ( clk => clk, sr_in => alu_out, sr_out => saida_alu);

MUX_de_4_Entradas: mux_4 port map (in0 => alu_out, in1 => saida_alu, in2 => constante2, in3 => X"80000180", sel => OrigPC, m_out => Endereco_In ) ; 

Controladora: mips_control port map ( clk => clk, rst => reset, opcode => op, RT => RT, wr_ir => EscreveIR, wr_pc => EscrevePC, wr_mem => EscreveMEM, is_beq => is_beq, is_bne => is_bne, is_bltz => is_bltz, is_bgez => is_bgez , s_datareg => MEMparaReg, op_alu => op_alu, s_mem_add => louD, s_PCin => OrigPC, s_aluAin => OrigAAlu, s_aluBin => OrigBAlu, wr_breg => EscreveReg, s_reg_add => RegDST); 
 
  
process(clk)

begin 

instruction <= Instrucao ; 
address <= Endereco_out; 
saida_alu_teste <= saida_alu; 
--ula_teste <= alu_out ;
--OrigPC1 <= OrigPC; 
OrigBAlu_teste <= OrigBAlu; 
--OrigAAlu_teste <= OrigAAlu ;
--EnablePC_teste <= EnablePC; 
--op_alu_test <= op_alu; 
A_teste <= ALU_IN_1; 
B_teste <= ALU_IN_2;
RS_teste <= RS; 
RT_teste <= RT; 
RD_teste <= RD;  
Imm <= k16; 
datA_Write2_teste <= datA_Write2; 
louD_teste <= louD ; 
RDM_out_teste <= RDM_out ; 
endereco_MEM_teste <= endereco_MEM; 
MemparaReg_teste <= MemparaReg; 
EscreveReg_teste <= escreveReg; 
Reg_Write3_teste <= Reg_Write3;
regDST_test <= regDST;
Reg_Write3_5 <= Reg_Write3 (4 downto 0);  
enablePC_teste <= EnablePC; 
is_bgez_teste <= is_bgez; 
op_alu_test <= op_alu; 
end process ; 

end; 
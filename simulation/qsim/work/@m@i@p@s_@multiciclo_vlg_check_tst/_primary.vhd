library verilog;
use verilog.vl_types.all;
entity MIPS_Multiciclo_vlg_check_tst is
    port(
        A_teste         : in     vl_logic_vector(31 downto 0);
        address         : in     vl_logic_vector(31 downto 0);
        B_teste         : in     vl_logic_vector(31 downto 0);
        datA_Write2_teste: in     vl_logic_vector(31 downto 0);
        EnablePC_teste  : in     vl_logic;
        Endereco_MEM_teste: in     vl_logic_vector(31 downto 0);
        EscreveReg_teste: in     vl_logic;
        imm             : in     vl_logic_vector(15 downto 0);
        instruction     : in     vl_logic_vector(31 downto 0);
        is_bgez_teste   : in     vl_logic;
        louD_teste      : in     vl_logic;
        MemparaReg_teste: in     vl_logic;
        op_alu_test     : in     vl_logic_vector(3 downto 0);
        OrigBAlu_teste  : in     vl_logic_vector(1 downto 0);
        RD_teste        : in     vl_logic_vector(4 downto 0);
        RDM_out_teste   : in     vl_logic_vector(31 downto 0);
        REg_Write3_5    : in     vl_logic_vector(4 downto 0);
        Reg_Write3_teste: in     vl_logic_vector(31 downto 0);
        regDST_test     : in     vl_logic;
        RS_teste        : in     vl_logic_vector(4 downto 0);
        RT_teste        : in     vl_logic_vector(4 downto 0);
        saida_alu_teste : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end MIPS_Multiciclo_vlg_check_tst;

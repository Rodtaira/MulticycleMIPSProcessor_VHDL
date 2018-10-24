library verilog;
use verilog.vl_types.all;
entity MIPS_Multiciclo is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        instruction     : out    vl_logic_vector(31 downto 0);
        address         : out    vl_logic_vector(31 downto 0);
        saida_alu_teste : out    vl_logic_vector(31 downto 0);
        RS_teste        : out    vl_logic_vector(4 downto 0);
        RT_teste        : out    vl_logic_vector(4 downto 0);
        RD_teste        : out    vl_logic_vector(4 downto 0);
        REg_Write3_5    : out    vl_logic_vector(4 downto 0);
        imm             : out    vl_logic_vector(15 downto 0);
        A_teste         : out    vl_logic_vector(31 downto 0);
        B_teste         : out    vl_logic_vector(31 downto 0);
        datA_Write2_teste: out    vl_logic_vector(31 downto 0);
        RDM_out_teste   : out    vl_logic_vector(31 downto 0);
        Endereco_MEM_teste: out    vl_logic_vector(31 downto 0);
        Reg_Write3_teste: out    vl_logic_vector(31 downto 0);
        OrigBAlu_teste  : out    vl_logic_vector(1 downto 0);
        louD_teste      : out    vl_logic;
        MemparaReg_teste: out    vl_logic;
        EscreveReg_teste: out    vl_logic;
        regDST_test     : out    vl_logic;
        EnablePC_teste  : out    vl_logic;
        is_bgez_teste   : out    vl_logic
    );
end MIPS_Multiciclo;

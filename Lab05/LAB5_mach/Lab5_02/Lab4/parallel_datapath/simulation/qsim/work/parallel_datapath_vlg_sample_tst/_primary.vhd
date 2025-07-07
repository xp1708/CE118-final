library verilog;
use verilog.vl_types.all;
entity parallel_datapath_vlg_sample_tst is
    port(
        ALU_ope         : in     vl_logic_vector(2 downto 0);
        CLK             : in     vl_logic;
        DATA            : in     vl_logic_vector(3 downto 0);
        IE              : in     vl_logic;
        OE              : in     vl_logic;
        PASS            : in     vl_logic;
        RAA             : in     vl_logic_vector(1 downto 0);
        RBB             : in     vl_logic_vector(1 downto 0);
        REA             : in     vl_logic;
        REB             : in     vl_logic;
        WA              : in     vl_logic_vector(1 downto 0);
        WB              : in     vl_logic_vector(1 downto 0);
        WEA             : in     vl_logic;
        WEB             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end parallel_datapath_vlg_sample_tst;

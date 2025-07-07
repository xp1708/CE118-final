library verilog;
use verilog.vl_types.all;
entity parallel_datapath is
    port(
        Data_0          : out    vl_logic;
        PASS            : in     vl_logic;
        REA             : in     vl_logic;
        WEA             : in     vl_logic;
        REB             : in     vl_logic;
        WEB             : in     vl_logic;
        CLK             : in     vl_logic;
        IE              : in     vl_logic;
        ALU_ope         : in     vl_logic_vector(2 downto 0);
        DATA            : in     vl_logic_vector(3 downto 0);
        RAA             : in     vl_logic_vector(1 downto 0);
        RBB             : in     vl_logic_vector(1 downto 0);
        WA              : in     vl_logic_vector(1 downto 0);
        WB              : in     vl_logic_vector(1 downto 0);
        RESULT          : out    vl_logic_vector(3 downto 0);
        OE              : in     vl_logic
    );
end parallel_datapath;

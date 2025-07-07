library verilog;
use verilog.vl_types.all;
entity datapath_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        DATA            : in     vl_logic_vector(3 downto 0);
        IE              : in     vl_logic;
        OE              : in     vl_logic;
        PASS            : in     vl_logic;
        RAA             : in     vl_logic_vector(1 downto 0);
        RBB             : in     vl_logic_vector(1 downto 0);
        REA             : in     vl_logic;
        REB             : in     vl_logic;
        S               : in     vl_logic_vector(2 downto 0);
        WA              : in     vl_logic_vector(1 downto 0);
        WE              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end datapath_vlg_sample_tst;

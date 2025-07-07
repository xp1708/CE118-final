library verilog;
use verilog.vl_types.all;
entity one_counter_op_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        DataIn          : in     vl_logic_vector(15 downto 0);
        IE              : in     vl_logic;
        OE              : in     vl_logic;
        RAA             : in     vl_logic_vector(3 downto 0);
        RAB             : in     vl_logic_vector(3 downto 0);
        REA             : in     vl_logic;
        REB             : in     vl_logic;
        S_ALU1          : in     vl_logic_vector(3 downto 0);
        S_ALU2          : in     vl_logic_vector(3 downto 0);
        WAA             : in     vl_logic_vector(3 downto 0);
        WAB             : in     vl_logic_vector(3 downto 0);
        WEA             : in     vl_logic;
        WEB             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end one_counter_op_vlg_sample_tst;

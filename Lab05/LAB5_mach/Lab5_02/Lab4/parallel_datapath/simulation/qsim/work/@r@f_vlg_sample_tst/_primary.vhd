library verilog;
use verilog.vl_types.all;
entity RF_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        I1              : in     vl_logic_vector(3 downto 0);
        I2              : in     vl_logic_vector(3 downto 0);
        RAA             : in     vl_logic_vector(1 downto 0);
        RBB             : in     vl_logic_vector(1 downto 0);
        REA             : in     vl_logic;
        REB             : in     vl_logic;
        WA1             : in     vl_logic_vector(1 downto 0);
        WA2             : in     vl_logic_vector(1 downto 0);
        WE1             : in     vl_logic;
        WE2             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end RF_vlg_sample_tst;

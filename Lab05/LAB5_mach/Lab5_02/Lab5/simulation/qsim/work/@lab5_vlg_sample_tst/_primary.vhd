library verilog;
use verilog.vl_types.all;
entity Lab5_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        DATA            : in     vl_logic_vector(3 downto 0);
        Start           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Lab5_vlg_sample_tst;

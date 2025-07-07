library verilog;
use verilog.vl_types.all;
entity Control_Unit_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        Datapath        : in     vl_logic_vector(15 downto 0);
        Start           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Control_Unit_vlg_sample_tst;

library verilog;
use verilog.vl_types.all;
entity FSM_vlg_sample_tst is
    port(
        X               : in     vl_logic;
        clk             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end FSM_vlg_sample_tst;

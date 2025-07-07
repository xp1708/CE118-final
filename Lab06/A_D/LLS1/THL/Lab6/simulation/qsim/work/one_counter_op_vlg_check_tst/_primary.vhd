library verilog;
use verilog.vl_types.all;
entity one_counter_op_vlg_check_tst is
    port(
        Datapath        : in     vl_logic_vector(15 downto 0);
        \Out\           : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end one_counter_op_vlg_check_tst;

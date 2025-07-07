library verilog;
use verilog.vl_types.all;
entity parallel_datapath_vlg_check_tst is
    port(
        RESULT          : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end parallel_datapath_vlg_check_tst;

library verilog;
use verilog.vl_types.all;
entity parallel_datapath_vlg_check_tst is
    port(
        Data_0          : in     vl_logic;
        RESULT          : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end parallel_datapath_vlg_check_tst;

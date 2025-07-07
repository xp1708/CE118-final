library verilog;
use verilog.vl_types.all;
entity datapath_vlg_check_tst is
    port(
        RESULT          : in     vl_logic_vector(3 downto 0);
        Zero            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end datapath_vlg_check_tst;

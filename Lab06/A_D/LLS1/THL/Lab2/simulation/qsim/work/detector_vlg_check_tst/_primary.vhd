library verilog;
use verilog.vl_types.all;
entity detector_vlg_check_tst is
    port(
        A               : in     vl_logic;
        Z               : in     vl_logic;
        c_state         : in     vl_logic_vector(1 downto 0);
        n_state         : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end detector_vlg_check_tst;

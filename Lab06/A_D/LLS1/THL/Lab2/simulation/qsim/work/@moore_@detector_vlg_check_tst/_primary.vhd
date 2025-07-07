library verilog;
use verilog.vl_types.all;
entity Moore_Detector_vlg_check_tst is
    port(
        Cstate          : in     vl_logic_vector(2 downto 0);
        Nstate          : in     vl_logic_vector(2 downto 0);
        Z               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Moore_Detector_vlg_check_tst;

library verilog;
use verilog.vl_types.all;
entity RF_vlg_check_tst is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end RF_vlg_check_tst;

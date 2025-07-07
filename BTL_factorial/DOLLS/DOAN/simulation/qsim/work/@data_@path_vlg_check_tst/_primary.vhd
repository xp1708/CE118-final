library verilog;
use verilog.vl_types.all;
entity Data_Path_vlg_check_tst is
    port(
        Datapath        : in     vl_logic_vector(15 downto 0);
        \Out\           : in     vl_logic_vector(15 downto 0);
        mux_to_rf       : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end Data_Path_vlg_check_tst;

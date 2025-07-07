library verilog;
use verilog.vl_types.all;
entity Data_Path_vlg_check_tst is
    port(
        Datapath        : in     vl_logic;
        \Out\           : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end Data_Path_vlg_check_tst;

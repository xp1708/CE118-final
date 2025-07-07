library verilog;
use verilog.vl_types.all;
entity One_Counter_vlg_check_tst is
    port(
        Done            : in     vl_logic;
        \Out\           : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end One_Counter_vlg_check_tst;

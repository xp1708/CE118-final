library verilog;
use verilog.vl_types.all;
entity Lab5_vlg_check_tst is
    port(
        done            : in     vl_logic;
        RESULT          : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end Lab5_vlg_check_tst;

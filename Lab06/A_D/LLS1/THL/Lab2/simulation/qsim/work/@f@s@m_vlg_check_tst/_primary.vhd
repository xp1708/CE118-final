library verilog;
use verilog.vl_types.all;
entity FSM_vlg_check_tst is
    port(
        Z               : in     vl_logic;
        ledout1         : in     vl_logic_vector(6 downto 0);
        ledout2         : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end FSM_vlg_check_tst;

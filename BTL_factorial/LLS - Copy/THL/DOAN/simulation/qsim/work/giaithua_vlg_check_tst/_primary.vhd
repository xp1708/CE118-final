library verilog;
use verilog.vl_types.all;
entity giaithua_vlg_check_tst is
    port(
        Datapath        : in     vl_logic_vector(15 downto 0);
        Done            : in     vl_logic;
        \Out\           : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end giaithua_vlg_check_tst;

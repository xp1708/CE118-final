library verilog;
use verilog.vl_types.all;
entity Top_module_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        DataIn          : in     vl_logic_vector(15 downto 0);
        Start           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Top_module_vlg_sample_tst;

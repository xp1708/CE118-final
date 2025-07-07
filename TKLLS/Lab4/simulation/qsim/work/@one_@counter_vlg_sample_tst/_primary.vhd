library verilog;
use verilog.vl_types.all;
entity One_Counter_vlg_sample_tst is
    port(
        CLK1            : in     vl_logic;
        CLK2            : in     vl_logic;
        DataIn          : in     vl_logic_vector(3 downto 0);
        Start           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end One_Counter_vlg_sample_tst;

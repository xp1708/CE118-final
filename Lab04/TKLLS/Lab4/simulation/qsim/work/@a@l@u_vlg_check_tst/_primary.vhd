library verilog;
use verilog.vl_types.all;
entity ALU_vlg_check_tst is
    port(
        add_sub_overflow: in     vl_logic;
        mul_overflow    : in     vl_logic;
        \out\           : in     vl_logic_vector(3 downto 0);
        zero            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end ALU_vlg_check_tst;

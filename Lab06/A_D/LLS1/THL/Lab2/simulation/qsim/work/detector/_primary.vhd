library verilog;
use verilog.vl_types.all;
entity detector is
    port(
        X               : in     vl_logic;
        Z               : out    vl_logic;
        clk             : in     vl_logic;
        n_state         : out    vl_logic_vector(1 downto 0);
        c_state         : out    vl_logic_vector(1 downto 0);
        A               : out    vl_logic
    );
end detector;

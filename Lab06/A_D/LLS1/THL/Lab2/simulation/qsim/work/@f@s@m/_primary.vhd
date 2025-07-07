library verilog;
use verilog.vl_types.all;
entity FSM is
    port(
        clk             : in     vl_logic;
        X               : in     vl_logic;
        Z               : out    vl_logic;
        ledout1         : out    vl_logic_vector(6 downto 0);
        ledout2         : out    vl_logic_vector(6 downto 0)
    );
end FSM;

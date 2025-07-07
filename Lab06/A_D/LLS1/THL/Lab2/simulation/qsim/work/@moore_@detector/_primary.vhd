library verilog;
use verilog.vl_types.all;
entity Moore_Detector is
    port(
        X               : in     vl_logic;
        Z               : out    vl_logic;
        CLK             : in     vl_logic;
        Cstate          : out    vl_logic_vector(2 downto 0);
        Nstate          : out    vl_logic_vector(2 downto 0)
    );
end Moore_Detector;

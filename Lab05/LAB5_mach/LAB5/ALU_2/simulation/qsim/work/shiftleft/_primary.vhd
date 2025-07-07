library verilog;
use verilog.vl_types.all;
entity shiftleft is
    port(
        R               : out    vl_logic_vector(3 downto 0);
        A               : in     vl_logic_vector(3 downto 0)
    );
end shiftleft;

library verilog;
use verilog.vl_types.all;
entity \Or\ is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        \Or\            : out    vl_logic_vector(3 downto 0)
    );
end \Or\;

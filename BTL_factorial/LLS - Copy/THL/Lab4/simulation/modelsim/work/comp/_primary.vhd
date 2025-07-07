library verilog;
use verilog.vl_types.all;
entity comp is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        comp            : out    vl_logic_vector(3 downto 0)
    );
end comp;

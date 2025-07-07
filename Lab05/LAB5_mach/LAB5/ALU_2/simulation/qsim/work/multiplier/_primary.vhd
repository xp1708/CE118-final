library verilog;
use verilog.vl_types.all;
entity multiplier is
    port(
        R               : out    vl_logic_vector(6 downto 0);
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0)
    );
end multiplier;

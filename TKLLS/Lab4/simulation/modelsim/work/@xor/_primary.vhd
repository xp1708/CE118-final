library verilog;
use verilog.vl_types.all;
entity \Xor\ is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        \Xor\           : out    vl_logic_vector(3 downto 0)
    );
end \Xor\;

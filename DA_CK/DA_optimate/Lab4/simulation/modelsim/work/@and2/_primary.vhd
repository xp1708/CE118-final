library verilog;
use verilog.vl_types.all;
entity And2 is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        \And\           : out    vl_logic_vector(3 downto 0)
    );
end And2;

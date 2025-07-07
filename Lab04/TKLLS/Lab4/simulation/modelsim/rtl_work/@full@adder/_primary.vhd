library verilog;
use verilog.vl_types.all;
entity FullAdder is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        ci              : in     vl_logic;
        s               : out    vl_logic_vector(3 downto 0);
        add_overflow    : out    vl_logic;
        zero            : out    vl_logic
    );
end FullAdder;

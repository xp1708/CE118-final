library verilog;
use verilog.vl_types.all;
entity counter is
    port(
        KEY             : in     vl_logic_vector(1 downto 0);
        SW              : in     vl_logic_vector(2 downto 0);
        HEX0            : out    vl_logic_vector(6 downto 0);
        LEDG            : out    vl_logic_vector(2 downto 0)
    );
end counter;

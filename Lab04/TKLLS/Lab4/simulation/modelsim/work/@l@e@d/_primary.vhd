library verilog;
use verilog.vl_types.all;
entity LED is
    port(
        bcd             : in     vl_logic_vector(2 downto 0);
        led             : out    vl_logic_vector(6 downto 0)
    );
end LED;

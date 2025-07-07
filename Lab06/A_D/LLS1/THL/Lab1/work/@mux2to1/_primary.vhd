library verilog;
use verilog.vl_types.all;
entity Mux2to1 is
    port(
        bcd             : in     vl_logic_vector(2 downto 0);
        led             : out    vl_logic_vector(6 downto 0)
    );
end Mux2to1;

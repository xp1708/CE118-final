library verilog;
use verilog.vl_types.all;
entity Mux2_1 is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        sel             : in     vl_logic;
        muxout          : out    vl_logic_vector(3 downto 0)
    );
end Mux2_1;

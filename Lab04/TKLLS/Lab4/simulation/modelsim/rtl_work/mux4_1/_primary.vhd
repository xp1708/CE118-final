library verilog;
use verilog.vl_types.all;
entity mux4_1 is
    port(
        add             : in     vl_logic;
        sub             : in     vl_logic;
        incre           : in     vl_logic;
        decre           : in     vl_logic;
        sel             : in     vl_logic_vector(3 downto 0);
        \out\           : out    vl_logic;
        mul             : in     vl_logic
    );
end mux4_1;

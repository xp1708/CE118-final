library verilog;
use verilog.vl_types.all;
entity mux16_1 is
    port(
        comp            : in     vl_logic_vector(3 downto 0);
        \And\           : in     vl_logic_vector(3 downto 0);
        exor            : in     vl_logic_vector(3 downto 0);
        \Or\            : in     vl_logic_vector(3 downto 0);
        decre           : in     vl_logic_vector(3 downto 0);
        add             : in     vl_logic_vector(3 downto 0);
        sub             : in     vl_logic_vector(3 downto 0);
        incre           : in     vl_logic_vector(3 downto 0);
        shiftL          : in     vl_logic_vector(3 downto 0);
        shiftR          : in     vl_logic_vector(3 downto 0);
        mul             : in     vl_logic_vector(3 downto 0);
        sel             : in     vl_logic_vector(3 downto 0);
        \out\           : out    vl_logic_vector(3 downto 0)
    );
end mux16_1;

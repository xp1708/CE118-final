library verilog;
use verilog.vl_types.all;
entity Multiplier is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        \out\           : out    vl_logic_vector(3 downto 0);
        mul_overflow    : out    vl_logic;
        zero            : out    vl_logic
    );
end Multiplier;

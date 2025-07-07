library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        sel             : in     vl_logic_vector(3 downto 0);
        \out\           : out    vl_logic_vector(3 downto 0);
        cin             : in     vl_logic;
        add_sub_overflow: out    vl_logic;
        mul_overflow    : out    vl_logic;
        zero            : out    vl_logic
    );
end ALU;

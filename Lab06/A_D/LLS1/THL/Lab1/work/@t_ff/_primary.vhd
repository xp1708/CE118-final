library verilog;
use verilog.vl_types.all;
entity T_ff is
    port(
        CLK             : in     vl_logic;
        LE              : in     vl_logic;
        SW              : in     vl_logic_vector(2 downto 0);
        Q               : out    vl_logic_vector(2 downto 0)
    );
end T_ff;

library verilog;
use verilog.vl_types.all;
entity Lab5 is
    port(
        done            : out    vl_logic;
        CLK             : in     vl_logic;
        Start           : in     vl_logic;
        DATA            : in     vl_logic_vector(3 downto 0);
        RESULT          : out    vl_logic_vector(3 downto 0)
    );
end Lab5;

library verilog;
use verilog.vl_types.all;
entity One_Counter is
    port(
        CLK1            : in     vl_logic;
        CLK2            : in     vl_logic;
        Start           : in     vl_logic;
        DataIn          : in     vl_logic_vector(3 downto 0);
        \Out\           : out    vl_logic_vector(3 downto 0);
        Done            : out    vl_logic
    );
end One_Counter;

library verilog;
use verilog.vl_types.all;
entity Register4Bit is
    port(
        data_in         : in     vl_logic_vector(3 downto 0);
        load_enable     : in     vl_logic;
        CLK             : in     vl_logic;
        data_out        : out    vl_logic_vector(3 downto 0)
    );
end Register4Bit;

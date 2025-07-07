library verilog;
use verilog.vl_types.all;
entity parallel_datapath is
    port(
        RESULT          : out    vl_logic_vector(3 downto 0);
        OE              : in     vl_logic;
        PASS            : in     vl_logic;
        REA             : in     vl_logic;
        WE              : in     vl_logic;
        CLK             : in     vl_logic;
        REB             : in     vl_logic;
        DATA            : in     vl_logic_vector(3 downto 0);
        S               : in     vl_logic_vector(2 downto 0);
        IE              : in     vl_logic_vector(1 downto 0);
        RAA             : in     vl_logic_vector(1 downto 0);
        RBB             : in     vl_logic_vector(1 downto 0);
        WA              : in     vl_logic_vector(1 downto 0)
    );
end parallel_datapath;

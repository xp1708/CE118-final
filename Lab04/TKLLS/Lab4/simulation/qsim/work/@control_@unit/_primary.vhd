library verilog;
use verilog.vl_types.all;
entity Control_Unit is
    port(
        CLK             : in     vl_logic;
        Start           : in     vl_logic;
        IE              : out    vl_logic;
        WA              : out    vl_logic_vector(3 downto 0);
        WE              : out    vl_logic;
        RAA             : out    vl_logic_vector(3 downto 0);
        REA             : out    vl_logic;
        RAB             : out    vl_logic_vector(3 downto 0);
        REB             : out    vl_logic;
        OE              : out    vl_logic;
        S_ALU1          : out    vl_logic_vector(3 downto 0);
        S_shift         : out    vl_logic_vector(1 downto 0);
        Done            : out    vl_logic;
        Datapath        : in     vl_logic
    );
end Control_Unit;

library verilog;
use verilog.vl_types.all;
entity Control_Unit_vlg_check_tst is
    port(
        Done            : in     vl_logic;
        IE              : in     vl_logic;
        OE              : in     vl_logic;
        RAA             : in     vl_logic_vector(3 downto 0);
        RAB             : in     vl_logic_vector(3 downto 0);
        REA             : in     vl_logic;
        REB             : in     vl_logic;
        S_ALU1          : in     vl_logic_vector(3 downto 0);
        S_shift         : in     vl_logic_vector(1 downto 0);
        WA              : in     vl_logic_vector(3 downto 0);
        WE              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Control_Unit_vlg_check_tst;

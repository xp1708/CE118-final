library verilog;
use verilog.vl_types.all;
entity controler_vlg_check_tst is
    port(
        Done            : in     vl_logic;
        IE              : in     vl_logic;
        OE              : in     vl_logic;
        RAA             : in     vl_logic_vector(3 downto 0);
        RAB             : in     vl_logic_vector(3 downto 0);
        REA             : in     vl_logic;
        REB             : in     vl_logic;
        S_ALU1          : in     vl_logic_vector(3 downto 0);
        S_ALU2          : in     vl_logic_vector(3 downto 0);
        WAA             : in     vl_logic_vector(3 downto 0);
        WAB             : in     vl_logic_vector(3 downto 0);
        WEA             : in     vl_logic;
        WEB             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end controler_vlg_check_tst;

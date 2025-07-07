library verilog;
use verilog.vl_types.all;
entity controler is
    port(
        CLK             : in     vl_logic;
        Datapath        : in     vl_logic_vector(15 downto 0);
        IE              : out    vl_logic;
        WAA             : out    vl_logic_vector(3 downto 0);
        WAB             : out    vl_logic_vector(3 downto 0);
        WEA             : out    vl_logic;
        WEB             : out    vl_logic;
        RAA             : out    vl_logic_vector(3 downto 0);
        REA             : out    vl_logic;
        RAB             : out    vl_logic_vector(3 downto 0);
        REB             : out    vl_logic;
        OE              : out    vl_logic;
        S_ALU1          : out    vl_logic_vector(3 downto 0);
        S_ALU2          : out    vl_logic_vector(3 downto 0);
        Done            : out    vl_logic;
        Start           : in     vl_logic
    );
end controler;

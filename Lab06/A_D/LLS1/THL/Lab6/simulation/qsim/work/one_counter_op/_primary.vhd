library verilog;
use verilog.vl_types.all;
entity one_counter_op is
    port(
        CLK             : in     vl_logic;
        DataIn          : in     vl_logic_vector(15 downto 0);
        IE              : in     vl_logic;
        WAA             : in     vl_logic_vector(3 downto 0);
        WAB             : in     vl_logic_vector(3 downto 0);
        WEA             : in     vl_logic;
        WEB             : in     vl_logic;
        RAA             : in     vl_logic_vector(3 downto 0);
        REA             : in     vl_logic;
        RAB             : in     vl_logic_vector(3 downto 0);
        REB             : in     vl_logic;
        OE              : in     vl_logic;
        S_ALU1          : in     vl_logic_vector(3 downto 0);
        S_ALU2          : in     vl_logic_vector(3 downto 0);
        \Out\           : out    vl_logic_vector(15 downto 0);
        Datapath        : out    vl_logic_vector(15 downto 0)
    );
end one_counter_op;

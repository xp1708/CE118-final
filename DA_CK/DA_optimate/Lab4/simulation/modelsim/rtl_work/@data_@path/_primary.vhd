library verilog;
use verilog.vl_types.all;
entity Data_Path is
    port(
        CLK             : in     vl_logic;
        DataIn          : in     vl_logic_vector(3 downto 0);
        IE              : in     vl_logic;
        WA              : in     vl_logic_vector(3 downto 0);
        WE              : in     vl_logic;
        RAA             : in     vl_logic_vector(3 downto 0);
        REA             : in     vl_logic;
        RAB             : in     vl_logic_vector(3 downto 0);
        REB             : in     vl_logic;
        OE              : in     vl_logic;
        S_ALU1          : in     vl_logic_vector(3 downto 0);
        S_shift         : in     vl_logic_vector(1 downto 0);
        \Out\           : out    vl_logic_vector(3 downto 0);
        Datapath        : out    vl_logic
    );
end Data_Path;

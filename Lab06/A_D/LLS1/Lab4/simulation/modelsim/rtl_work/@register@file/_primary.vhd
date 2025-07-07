library verilog;
use verilog.vl_types.all;
entity RegisterFile is
    port(
        CLK             : in     vl_logic;
        WA              : in     vl_logic_vector(3 downto 0);
        WD              : in     vl_logic_vector(3 downto 0);
        WE              : in     vl_logic;
        RAA             : in     vl_logic_vector(3 downto 0);
        RDA             : out    vl_logic_vector(3 downto 0);
        REA             : in     vl_logic;
        RAB             : in     vl_logic_vector(3 downto 0);
        RDB             : out    vl_logic_vector(3 downto 0);
        REB             : in     vl_logic
    );
end RegisterFile;

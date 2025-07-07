library verilog;
use verilog.vl_types.all;
entity RF is
    port(
        A               : out    vl_logic_vector(3 downto 0);
        I1              : in     vl_logic_vector(3 downto 0);
        I2              : in     vl_logic_vector(3 downto 0);
        WE1             : in     vl_logic;
        WA1             : in     vl_logic_vector(1 downto 0);
        WE2             : in     vl_logic;
        WA2             : in     vl_logic_vector(1 downto 0);
        CLK             : in     vl_logic;
        REA             : in     vl_logic;
        RAA             : in     vl_logic_vector(1 downto 0);
        REB             : in     vl_logic;
        RBB             : in     vl_logic_vector(1 downto 0);
        B               : out    vl_logic_vector(3 downto 0)
    );
end RF;

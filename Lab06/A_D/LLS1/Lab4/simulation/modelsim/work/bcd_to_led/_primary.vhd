library verilog;
use verilog.vl_types.all;
entity bcd_to_led is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        sel             : in     vl_logic_vector(3 downto 0);
        cin             : in     vl_logic;
        add_sub_overflow: out    vl_logic;
        mul_overflow    : out    vl_logic;
        zero            : out    vl_logic;
        leda            : out    vl_logic_vector(6 downto 0);
        ledb            : out    vl_logic_vector(6 downto 0);
        ledcin1         : out    vl_logic_vector(6 downto 0);
        ledcin2         : out    vl_logic_vector(6 downto 0);
        ledout          : out    vl_logic_vector(6 downto 0);
        daua            : out    vl_logic_vector(6 downto 0);
        daub            : out    vl_logic_vector(6 downto 0);
        dauout          : out    vl_logic_vector(6 downto 0);
        la              : out    vl_logic_vector(3 downto 0);
        lb              : out    vl_logic_vector(3 downto 0);
        lout            : out    vl_logic_vector(3 downto 0)
    );
end bcd_to_led;

library verilog;
use verilog.vl_types.all;
entity Control_Unit is
    generic(
        state0          : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        state1          : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        state2          : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        state3          : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        state4          : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0);
        state5          : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi1);
        state6          : vl_logic_vector(0 to 2) := (Hi1, Hi1, Hi0);
        state7          : vl_logic_vector(0 to 2) := (Hi1, Hi1, Hi1)
    );
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
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of state0 : constant is 1;
    attribute mti_svvh_generic_type of state1 : constant is 1;
    attribute mti_svvh_generic_type of state2 : constant is 1;
    attribute mti_svvh_generic_type of state3 : constant is 1;
    attribute mti_svvh_generic_type of state4 : constant is 1;
    attribute mti_svvh_generic_type of state5 : constant is 1;
    attribute mti_svvh_generic_type of state6 : constant is 1;
    attribute mti_svvh_generic_type of state7 : constant is 1;
end Control_Unit;

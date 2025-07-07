library verilog;
use verilog.vl_types.all;
entity Top_module is
    port(
        CLK             : in     vl_logic;
        Start           : in     vl_logic;
        DataIn          : in     vl_logic_vector(15 downto 0);
        \Out\           : out    vl_logic_vector(15 downto 0);
        Done            : out    vl_logic;
        Datapath1       : out    vl_logic_vector(15 downto 0)
    );
end Top_module;

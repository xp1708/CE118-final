library verilog;
use verilog.vl_types.all;
entity Shift_Register is
    port(
        data_in         : in     vl_logic_vector(3 downto 0);
        shift_ctrl      : in     vl_logic_vector(1 downto 0);
        data_out        : out    vl_logic_vector(3 downto 0)
    );
end Shift_Register;

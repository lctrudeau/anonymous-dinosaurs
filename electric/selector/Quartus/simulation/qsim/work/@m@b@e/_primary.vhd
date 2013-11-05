library verilog;
use verilog.vl_types.all;
entity MBE is
    port(
        Negate          : out    vl_logic;
        Xn_p1           : in     vl_logic;
        Double          : out    vl_logic;
        Xn              : in     vl_logic;
        Xn_m1           : in     vl_logic;
        Single          : out    vl_logic
    );
end MBE;

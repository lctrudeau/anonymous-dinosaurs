library verilog;
use verilog.vl_types.all;
entity MBE_vlg_sample_tst is
    port(
        Xn              : in     vl_logic;
        Xn_m1           : in     vl_logic;
        Xn_p1           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end MBE_vlg_sample_tst;

library verilog;
use verilog.vl_types.all;
entity MBE_vlg_check_tst is
    port(
        Double          : in     vl_logic;
        Negate          : in     vl_logic;
        Single          : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end MBE_vlg_check_tst;

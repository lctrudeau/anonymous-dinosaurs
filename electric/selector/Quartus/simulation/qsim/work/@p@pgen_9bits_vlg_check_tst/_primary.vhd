library verilog;
use verilog.vl_types.all;
entity PPgen_9bits_vlg_check_tst is
    port(
        PP              : in     vl_logic_vector(8 downto 0);
        Sign            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end PPgen_9bits_vlg_check_tst;

library verilog;
use verilog.vl_types.all;
entity MBE_wordslice_vlg_check_tst is
    port(
        Double          : in     vl_logic_vector(3 downto 0);
        Negate          : in     vl_logic_vector(3 downto 0);
        Single          : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end MBE_wordslice_vlg_check_tst;

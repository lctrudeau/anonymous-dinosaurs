library verilog;
use verilog.vl_types.all;
entity CRA_wordslice_vlg_check_tst is
    port(
        C               : in     vl_logic_vector(12 downto 0);
        S               : in     vl_logic_vector(12 downto 0);
        sampler_rx      : in     vl_logic
    );
end CRA_wordslice_vlg_check_tst;

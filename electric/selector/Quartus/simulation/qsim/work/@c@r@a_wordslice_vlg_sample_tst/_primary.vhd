library verilog;
use verilog.vl_types.all;
entity CRA_wordslice_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(12 downto 0);
        B               : in     vl_logic_vector(12 downto 0);
        sampler_tx      : out    vl_logic
    );
end CRA_wordslice_vlg_sample_tst;

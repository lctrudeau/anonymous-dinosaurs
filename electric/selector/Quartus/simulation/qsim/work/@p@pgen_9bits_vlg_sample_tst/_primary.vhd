library verilog;
use verilog.vl_types.all;
entity PPgen_9bits_vlg_sample_tst is
    port(
        Double          : in     vl_logic;
        Negate          : in     vl_logic;
        Single          : in     vl_logic;
        Y               : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end PPgen_9bits_vlg_sample_tst;

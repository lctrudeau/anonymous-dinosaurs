library verilog;
use verilog.vl_types.all;
entity MBE_wordslice is
    port(
        Double          : out    vl_logic_vector(3 downto 0);
        X               : in     vl_logic_vector(7 downto 0);
        Negate          : out    vl_logic_vector(3 downto 0);
        Single          : out    vl_logic_vector(3 downto 0)
    );
end MBE_wordslice;

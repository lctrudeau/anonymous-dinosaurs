library verilog;
use verilog.vl_types.all;
entity CRA_wordslice is
    port(
        C               : out    vl_logic_vector(12 downto 0);
        A               : in     vl_logic_vector(12 downto 0);
        B               : in     vl_logic_vector(12 downto 0);
        S               : out    vl_logic_vector(12 downto 0)
    );
end CRA_wordslice;

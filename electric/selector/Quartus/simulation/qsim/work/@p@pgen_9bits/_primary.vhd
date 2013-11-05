library verilog;
use verilog.vl_types.all;
entity PPgen_9bits is
    port(
        Sign            : out    vl_logic;
        Negate          : in     vl_logic;
        Double          : in     vl_logic;
        Y               : in     vl_logic_vector(7 downto 0);
        PP              : out    vl_logic_vector(8 downto 0);
        Single          : in     vl_logic
    );
end PPgen_9bits;

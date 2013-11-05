library verilog;
use verilog.vl_types.all;
entity DUT is
    port(
        Sign3           : out    vl_logic;
        X               : in     vl_logic_vector(7 downto 0);
        Y               : in     vl_logic_vector(7 downto 0);
        Sign2           : out    vl_logic;
        Sign1           : out    vl_logic;
        Sign0           : out    vl_logic;
        DBL             : out    vl_logic_vector(3 downto 0);
        Error           : out    vl_logic_vector(15 downto 0);
        NEG             : out    vl_logic_vector(3 downto 0);
        PP0             : out    vl_logic_vector(8 downto 0);
        PP1             : out    vl_logic_vector(8 downto 0);
        PP2             : out    vl_logic_vector(8 downto 0);
        PP3             : out    vl_logic_vector(8 downto 0);
        Result          : out    vl_logic_vector(15 downto 0);
        Result_Compare  : out    vl_logic_vector(15 downto 0);
        SGL             : out    vl_logic_vector(3 downto 0)
    );
end DUT;

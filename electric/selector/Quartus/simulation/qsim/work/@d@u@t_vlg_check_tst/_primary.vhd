library verilog;
use verilog.vl_types.all;
entity DUT_vlg_check_tst is
    port(
        DBL             : in     vl_logic_vector(3 downto 0);
        Error           : in     vl_logic_vector(15 downto 0);
        NEG             : in     vl_logic_vector(3 downto 0);
        PP0             : in     vl_logic_vector(8 downto 0);
        PP1             : in     vl_logic_vector(8 downto 0);
        PP2             : in     vl_logic_vector(8 downto 0);
        PP3             : in     vl_logic_vector(8 downto 0);
        Result          : in     vl_logic_vector(15 downto 0);
        Result_Compare  : in     vl_logic_vector(15 downto 0);
        SGL             : in     vl_logic_vector(3 downto 0);
        Sign0           : in     vl_logic;
        Sign1           : in     vl_logic;
        Sign2           : in     vl_logic;
        Sign3           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end DUT_vlg_check_tst;

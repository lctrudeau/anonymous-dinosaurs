library verilog;
use verilog.vl_types.all;
entity regfile is
    generic(
        WIDTH           : integer := 8;
        REGBITS         : integer := 3
    );
    port(
        clk             : in     vl_logic;
        regwrite        : in     vl_logic;
        ra1             : in     vl_logic_vector;
        ra2             : in     vl_logic_vector;
        wa              : in     vl_logic_vector;
        wd              : in     vl_logic_vector;
        rd1             : out    vl_logic_vector;
        rd2             : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
    attribute mti_svvh_generic_type of REGBITS : constant is 1;
end regfile;

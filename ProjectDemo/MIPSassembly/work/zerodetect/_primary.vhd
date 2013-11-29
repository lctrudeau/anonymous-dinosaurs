library verilog;
use verilog.vl_types.all;
entity zerodetect is
    generic(
        WIDTH           : integer := 8
    );
    port(
        a               : in     vl_logic_vector;
        y               : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
end zerodetect;

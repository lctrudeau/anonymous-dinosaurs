library verilog;
use verilog.vl_types.all;
entity PosPosLH is
    generic(
        WIDTH           : integer := 8;
        REGBITS         : integer := 3
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
    attribute mti_svvh_generic_type of REGBITS : constant is 1;
end PosPosLH;

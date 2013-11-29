library verilog;
use verilog.vl_types.all;
entity exmemory is
    generic(
        WIDTH           : integer := 8
    );
    port(
        clk             : in     vl_logic;
        memwrite        : in     vl_logic;
        adr             : in     vl_logic_vector;
        writedata       : in     vl_logic_vector;
        memdata         : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
end exmemory;

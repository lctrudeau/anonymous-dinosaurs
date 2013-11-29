library verilog;
use verilog.vl_types.all;
entity mips is
    generic(
        WIDTH           : integer := 8;
        REGBITS         : integer := 3
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        memdata         : in     vl_logic_vector;
        memread         : out    vl_logic;
        memwrite        : out    vl_logic;
        adr             : out    vl_logic_vector;
        writedata       : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
    attribute mti_svvh_generic_type of REGBITS : constant is 1;
end mips;

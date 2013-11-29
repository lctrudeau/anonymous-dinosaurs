library verilog;
use verilog.vl_types.all;
library work;
entity datapath is
    generic(
        WIDTH           : integer := 8;
        REGBITS         : integer := 3
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        memdata         : in     vl_logic_vector;
        alusrca         : in     vl_logic;
        memtoreg        : in     vl_logic;
        iord            : in     vl_logic;
        muldst          : in     vl_logic;
        lb              : in     vl_logic;
        mulop           : in     vl_logic;
        pcen            : in     vl_logic;
        regwrite        : in     vl_logic;
        regdst          : in     vl_logic;
        pcsrc           : in     vl_logic_vector(1 downto 0);
        alusrcb         : in     vl_logic_vector(1 downto 0);
        irwrite         : in     vl_logic_vector(3 downto 0);
        alucontrol      : in     vl_logic_vector(2 downto 0);
        zero            : out    vl_logic;
        op              : out    work.\PosNegUH_sv_unit\.opcode;
        funct           : out    work.\PosNegUH_sv_unit\.functcode;
        adr             : out    vl_logic_vector;
        writedata       : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
    attribute mti_svvh_generic_type of REGBITS : constant is 1;
end datapath;

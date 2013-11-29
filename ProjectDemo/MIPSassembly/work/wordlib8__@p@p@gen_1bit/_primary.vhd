library verilog;
use verilog.vl_types.all;
entity \wordlib8__PPGen_1bit\ is
    port(
        Double          : in     vl_logic;
        Negate          : in     vl_logic;
        Single          : in     vl_logic;
        Yi              : in     vl_logic;
        Yi_m1           : in     vl_logic;
        PPi             : out    vl_logic;
        vdd             : in     vl_logic;
        gnd             : in     vl_logic
    );
end \wordlib8__PPGen_1bit\;

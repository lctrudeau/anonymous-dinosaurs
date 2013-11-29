library verilog;
use verilog.vl_types.all;
entity \wordlib8__mbe_4x\ is
    port(
        x               : in     vl_logic_vector(0 downto 0);
        x_1             : in     vl_logic_vector(1 downto 1);
        x_2             : in     vl_logic_vector(2 downto 2);
        x_3             : in     vl_logic_vector(3 downto 3);
        x_4             : in     vl_logic_vector(4 downto 4);
        x_5             : in     vl_logic_vector(5 downto 5);
        x_6             : in     vl_logic_vector(6 downto 6);
        x_7             : in     vl_logic_vector(7 downto 7);
        double          : out    vl_logic_vector(0 downto 0);
        double_1        : out    vl_logic_vector(1 downto 1);
        double_2        : out    vl_logic_vector(2 downto 2);
        double_3        : out    vl_logic_vector(3 downto 3);
        neg             : out    vl_logic_vector(0 downto 0);
        neg_1           : out    vl_logic_vector(1 downto 1);
        neg_2           : out    vl_logic_vector(2 downto 2);
        neg_3           : out    vl_logic_vector(3 downto 3);
        single          : out    vl_logic_vector(0 downto 0);
        single_1        : out    vl_logic_vector(1 downto 1);
        single_2        : out    vl_logic_vector(2 downto 2);
        single_3        : out    vl_logic_vector(3 downto 3);
        vdd             : in     vl_logic;
        gnd             : in     vl_logic
    );
end \wordlib8__mbe_4x\;

library verilog;
use verilog.vl_types.all;
entity \wordlib8__NAND8_reducer\ is
    port(
        inY             : in     vl_logic_vector(0 downto 0);
        inY_1           : in     vl_logic_vector(1 downto 1);
        inY_2           : in     vl_logic_vector(2 downto 2);
        inY_3           : in     vl_logic_vector(3 downto 3);
        inY_4           : in     vl_logic_vector(4 downto 4);
        inY_5           : in     vl_logic_vector(5 downto 5);
        inY_6           : in     vl_logic_vector(6 downto 6);
        inY_7           : in     vl_logic_vector(7 downto 7);
        reduced_AND     : out    vl_logic;
        vdd             : in     vl_logic;
        gnd             : in     vl_logic
    );
end \wordlib8__NAND8_reducer\;

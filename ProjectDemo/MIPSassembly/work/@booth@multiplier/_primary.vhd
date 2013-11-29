library verilog;
use verilog.vl_types.all;
entity BoothMultiplier is
    port(
        x               : in     vl_logic_vector(0 downto 0);
        x_1             : in     vl_logic_vector(1 downto 1);
        x_2             : in     vl_logic_vector(2 downto 2);
        x_3             : in     vl_logic_vector(3 downto 3);
        x_4             : in     vl_logic_vector(4 downto 4);
        x_5             : in     vl_logic_vector(5 downto 5);
        x_6             : in     vl_logic_vector(6 downto 6);
        x_7             : in     vl_logic_vector(7 downto 7);
        y               : in     vl_logic_vector(0 downto 0);
        y_1             : in     vl_logic_vector(1 downto 1);
        y_2             : in     vl_logic_vector(2 downto 2);
        y_3             : in     vl_logic_vector(3 downto 3);
        y_4             : in     vl_logic_vector(4 downto 4);
        y_5             : in     vl_logic_vector(5 downto 5);
        y_6             : in     vl_logic_vector(6 downto 6);
        y_7             : in     vl_logic_vector(7 downto 7);
        s0              : out    vl_logic;
        s1              : out    vl_logic;
        s10             : out    vl_logic;
        s11             : out    vl_logic;
        s12             : out    vl_logic;
        s13             : out    vl_logic;
        s14             : out    vl_logic;
        s15             : out    vl_logic;
        s2              : out    vl_logic;
        s3              : out    vl_logic;
        s4              : out    vl_logic;
        s5              : out    vl_logic;
        s6              : out    vl_logic;
        s7              : out    vl_logic;
        s8              : out    vl_logic;
        s9              : out    vl_logic
    );
end BoothMultiplier;

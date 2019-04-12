library verilog;
use verilog.vl_types.all;
entity Calculadora is
    port(
        x1              : in     vl_logic_vector(3 downto 0);
        x2              : in     vl_logic_vector(3 downto 0);
        s2              : in     vl_logic;
        s1              : in     vl_logic;
        s0              : in     vl_logic;
        ld              : in     vl_logic;
        ctrl            : out    vl_logic_vector(1 downto 0);
        c0              : out    vl_logic;
        y               : out    vl_logic_vector(3 downto 0)
    );
end Calculadora;

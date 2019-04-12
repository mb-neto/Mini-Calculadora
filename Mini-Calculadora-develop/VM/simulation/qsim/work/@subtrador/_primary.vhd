library verilog;
use verilog.vl_types.all;
entity Subtrador is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        b_in            : in     vl_logic;
        s               : out    vl_logic_vector(3 downto 0);
        b_out           : out    vl_logic
    );
end Subtrador;

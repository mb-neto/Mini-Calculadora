library verilog;
use verilog.vl_types.all;
entity Calculadora_vlg_sample_tst is
    port(
        ld              : in     vl_logic;
        s0              : in     vl_logic;
        s1              : in     vl_logic;
        s2              : in     vl_logic;
        x1              : in     vl_logic_vector(3 downto 0);
        x2              : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end Calculadora_vlg_sample_tst;

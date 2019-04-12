library verilog;
use verilog.vl_types.all;
entity Calculadora_vlg_check_tst is
    port(
        c0              : in     vl_logic;
        ctrl            : in     vl_logic_vector(1 downto 0);
        y               : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end Calculadora_vlg_check_tst;

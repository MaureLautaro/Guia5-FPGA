library verilog;
use verilog.vl_types.all;
entity sumador_completo_vlg_sample_tst is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        Cin             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end sumador_completo_vlg_sample_tst;

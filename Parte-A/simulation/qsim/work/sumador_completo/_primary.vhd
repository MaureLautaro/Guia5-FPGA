library verilog;
use verilog.vl_types.all;
entity sumador_completo is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        Cin             : in     vl_logic;
        S               : out    vl_logic;
        Cout            : out    vl_logic
    );
end sumador_completo;

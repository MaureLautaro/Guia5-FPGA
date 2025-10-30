library verilog;
use verilog.vl_types.all;
entity mult2x2_Ca2 is
    port(
        V               : out    vl_logic;
        clk             : in     vl_logic;
        B1              : in     vl_logic;
        A1              : in     vl_logic;
        A0              : in     vl_logic;
        B0              : in     vl_logic;
        r0              : out    vl_logic;
        r1              : out    vl_logic;
        r2              : out    vl_logic;
        r3              : out    vl_logic
    );
end mult2x2_Ca2;

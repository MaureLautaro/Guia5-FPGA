library verilog;
use verilog.vl_types.all;
entity mult2x2 is
    port(
        P0              : out    vl_logic;
        B0              : in     vl_logic;
        A0              : in     vl_logic;
        P1              : out    vl_logic;
        B1              : in     vl_logic;
        A1              : in     vl_logic;
        P2              : out    vl_logic;
        P3              : out    vl_logic
    );
end mult2x2;

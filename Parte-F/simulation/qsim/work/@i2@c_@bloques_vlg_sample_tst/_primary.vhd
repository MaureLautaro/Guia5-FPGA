library verilog;
use verilog.vl_types.all;
entity I2C_Bloques_vlg_sample_tst is
    port(
        Hab_Dato        : in     vl_logic;
        Hab_Dir         : in     vl_logic;
        SCL             : in     vl_logic;
        SDA             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end I2C_Bloques_vlg_sample_tst;

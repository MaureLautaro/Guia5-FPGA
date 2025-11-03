library verilog;
use verilog.vl_types.all;
entity I2C_Bloques_vlg_check_tst is
    port(
        fin_dato        : in     vl_logic_vector(2 downto 0);
        fin_dir         : in     vl_logic_vector(2 downto 0);
        soy             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end I2C_Bloques_vlg_check_tst;

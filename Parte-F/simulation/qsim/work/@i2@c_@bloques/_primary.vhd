library verilog;
use verilog.vl_types.all;
entity I2C_Bloques is
    port(
        soy             : out    vl_logic;
        Hab_Dir         : in     vl_logic;
        SCL             : in     vl_logic;
        SDA             : in     vl_logic;
        fin_dato        : out    vl_logic_vector(2 downto 0);
        Hab_Dato        : in     vl_logic;
        fin_dir         : out    vl_logic_vector(2 downto 0)
    );
end I2C_Bloques;

onerror {quit -f}
vlib work
vlog -work work Parte-F.vo
vlog -work work Parte-F.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.I2C_Bloques_vlg_vec_tst
vcd file -direction Parte-F.msim.vcd
vcd add -internal I2C_Bloques_vlg_vec_tst/*
vcd add -internal I2C_Bloques_vlg_vec_tst/i1/*
add wave /*
run -all

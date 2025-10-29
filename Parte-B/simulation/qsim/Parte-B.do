onerror {quit -f}
vlib work
vlog -work work Parte-B.vo
vlog -work work Parte-B.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.mult2x2_vlg_vec_tst
vcd file -direction Parte-B.msim.vcd
vcd add -internal mult2x2_vlg_vec_tst/*
vcd add -internal mult2x2_vlg_vec_tst/i1/*
add wave /*
run -all

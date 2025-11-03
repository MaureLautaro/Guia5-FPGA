transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Parte-B.vho}

vcom -93 -work work {C:/Users/Lautaro21/Desktop/Guia5-FPGA/Parte-B/mult2x2_testbench.vhd}

vsim -t 1ps -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  mult2x2_testbench

add wave *
view structure
view signals
run 40 sec

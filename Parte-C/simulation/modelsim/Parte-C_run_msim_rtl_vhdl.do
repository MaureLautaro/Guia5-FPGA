transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Lautaro21/Desktop/Guia5-FPGA/Parte-C/mult2x2_Ca2.vhd}
vcom -93 -work work {C:/Users/Lautaro21/Desktop/Guia5-FPGA/Parte-C/sumador_completo.vhd}

vcom -93 -work work {C:/Users/Lautaro21/Desktop/Guia5-FPGA/Parte-C/mult2x2_Ca2_testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  mult2x2_Ca2_testbench

add wave *
view structure
view signals
run -all

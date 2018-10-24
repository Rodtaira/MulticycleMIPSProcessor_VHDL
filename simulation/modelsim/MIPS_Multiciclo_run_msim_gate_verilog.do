transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {MIPS_Multiciclo.vo}

vcom -93 -work work {C:/Users/rodtairaunb.RODTAIRA/Desktop/MIPS_Multiciclo/simulation/modelsim/MIPS_Multiciclo_vhd_tst.vhd}

vsim -t 1ps -L cycloneii_ver -L gate_work -L work -voptargs="+acc"  MIPS_Multiciclo_vhd_tst

add wave *
view structure
view signals
run 2000 ps

onerror {quit -f}
vlib work
vlog -work work MIPS_Multiciclo.vo
vlog -work work MIPS_Multiciclo.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.MIPS_Multiciclo_vlg_vec_tst
vcd file -direction MIPS_Multiciclo.msim.vcd
vcd add -internal MIPS_Multiciclo_vlg_vec_tst/*
vcd add -internal MIPS_Multiciclo_vlg_vec_tst/i1/*
add wave /*
run -all

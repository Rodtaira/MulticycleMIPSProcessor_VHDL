onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /mips_multiciclo_vhd_tst/clk
add wave -noupdate -radix hexadecimal /mips_multiciclo_vhd_tst/reset
add wave -noupdate -radix hexadecimal /mips_multiciclo_vhd_tst/address
add wave -noupdate -radix hexadecimal /mips_multiciclo_vhd_tst/imm
add wave -noupdate -radix hexadecimal /mips_multiciclo_vhd_tst/instruction
add wave -noupdate -radix decimal /mips_multiciclo_vhd_tst/RS_teste
add wave -noupdate -radix decimal /mips_multiciclo_vhd_tst/RT_teste
add wave -noupdate -radix decimal /mips_multiciclo_vhd_tst/RD_teste
add wave -noupdate -radix decimal /mips_multiciclo_vhd_tst/A_teste
add wave -noupdate -radix decimal /mips_multiciclo_vhd_tst/B_teste
add wave -noupdate -radix decimal /mips_multiciclo_vhd_tst/saida_alu_teste
add wave -noupdate -radix decimal /mips_multiciclo_vhd_tst/datA_Write2_teste
add wave -noupdate -radix hexadecimal /mips_multiciclo_vhd_tst/EscreveReg_teste
add wave -noupdate -radix decimal /mips_multiciclo_vhd_tst/datA_Write2_teste
add wave -noupdate -radix hexadecimal /mips_multiciclo_vhd_tst/Endereco_MEM_teste
add wave -noupdate -radix hexadecimal /mips_multiciclo_vhd_tst/louD_teste
add wave -noupdate -radix hexadecimal /mips_multiciclo_vhd_tst/MemparaReg_teste
add wave -noupdate -radix hexadecimal /mips_multiciclo_vhd_tst/OrigBAlu_teste
add wave -noupdate -radix hexadecimal /mips_multiciclo_vhd_tst/RDM_out_teste
add wave -noupdate -radix hexadecimal /mips_multiciclo_vhd_tst/REg_Write3_5
add wave -noupdate -radix hexadecimal /mips_multiciclo_vhd_tst/Reg_Write3_teste
add wave -noupdate -radix hexadecimal /mips_multiciclo_vhd_tst/regDST_test
add wave -noupdate -radix decimal /mips_multiciclo_vhd_tst/i1/DATa_READ1
add wave -noupdate -radix decimal /mips_multiciclo_vhd_tst/i1/data_READ2
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {437 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 293
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {198 ps} {232 ps}

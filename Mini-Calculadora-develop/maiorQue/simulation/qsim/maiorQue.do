onerror {quit -f}
vlib work
vlog -work work maiorQue.vo
vlog -work work maiorQue.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.maiorQue_vlg_vec_tst
vcd file -direction maiorQue.msim.vcd
vcd add -internal maiorQue_vlg_vec_tst/*
vcd add -internal maiorQue_vlg_vec_tst/i1/*
add wave /*
run -all

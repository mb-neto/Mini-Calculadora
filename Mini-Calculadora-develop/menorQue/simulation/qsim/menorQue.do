onerror {quit -f}
vlib work
vlog -work work menorQue.vo
vlog -work work menorQue.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.menorQue_vlg_vec_tst
vcd file -direction menorQue.msim.vcd
vcd add -internal menorQue_vlg_vec_tst/*
vcd add -internal menorQue_vlg_vec_tst/i1/*
add wave /*
run -all

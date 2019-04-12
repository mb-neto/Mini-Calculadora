onerror {quit -f}
vlib work
vlog -work work Subtrador.vo
vlog -work work Subtrador.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Subtrador_vlg_vec_tst
vcd file -direction Subtrador.msim.vcd
vcd add -internal Subtrador_vlg_vec_tst/*
vcd add -internal Subtrador_vlg_vec_tst/i1/*
add wave /*
run -all

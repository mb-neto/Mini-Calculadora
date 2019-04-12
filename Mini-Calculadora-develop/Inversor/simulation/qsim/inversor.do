onerror {quit -f}
vlib work
vlog -work work inversor.vo
vlog -work work inversor.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.inversor_vlg_vec_tst
vcd file -direction inversor.msim.vcd
vcd add -internal inversor_vlg_vec_tst/*
vcd add -internal inversor_vlg_vec_tst/i1/*
add wave /*
run -all

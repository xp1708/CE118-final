onerror {quit -f}
vlib work
vlog -work work factorial.vo
vlog -work work factorial.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.factorial_vlg_vec_tst
vcd file -direction factorial.msim.vcd
vcd add -internal factorial_vlg_vec_tst/*
vcd add -internal factorial_vlg_vec_tst/i1/*
add wave /*
run -all

onerror {quit -f}
vlib work
vlog -work work FSM.vo
vlog -work work FSM.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.FSM_vlg_vec_tst
vcd file -direction FSM.msim.vcd
vcd add -internal FSM_vlg_vec_tst/*
vcd add -internal FSM_vlg_vec_tst/i1/*
add wave /*
run -all

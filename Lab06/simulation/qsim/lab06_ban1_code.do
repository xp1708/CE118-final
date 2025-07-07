onerror {quit -f}
vlib work
vlog -work work lab06_ban1_code.vo
vlog -work work lab06_ban1_code.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Data_Path_vlg_vec_tst
vcd file -direction lab06_ban1_code.msim.vcd
vcd add -internal Data_Path_vlg_vec_tst/*
vcd add -internal Data_Path_vlg_vec_tst/i1/*
add wave /*
run -all

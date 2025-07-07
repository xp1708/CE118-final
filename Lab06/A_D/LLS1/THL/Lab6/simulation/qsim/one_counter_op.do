onerror {quit -f}
vlib work
vlog -work work one_counter_op.vo
vlog -work work one_counter_op.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Top_module_vlg_vec_tst
vcd file -direction one_counter_op.msim.vcd
vcd add -internal Top_module_vlg_vec_tst/*
vcd add -internal Top_module_vlg_vec_tst/i1/*
add wave /*
run -all

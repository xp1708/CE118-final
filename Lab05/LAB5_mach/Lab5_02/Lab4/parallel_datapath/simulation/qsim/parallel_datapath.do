onerror {quit -f}
vlib work
vlog -work work parallel_datapath.vo
vlog -work work parallel_datapath.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.parallel_datapath_vlg_vec_tst
vcd file -direction parallel_datapath.msim.vcd
vcd add -internal parallel_datapath_vlg_vec_tst/*
vcd add -internal parallel_datapath_vlg_vec_tst/i1/*
add wave /*
run -all

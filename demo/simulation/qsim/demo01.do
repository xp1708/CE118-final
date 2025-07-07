onerror {quit -f}
vlib work
vlog -work work demo01.vo
vlog -work work demo01.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.demo01_vlg_vec_tst
vcd file -direction demo01.msim.vcd
vcd add -internal demo01_vlg_vec_tst/*
vcd add -internal demo01_vlg_vec_tst/i1/*
add wave /*
run -all

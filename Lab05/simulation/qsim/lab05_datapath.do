onerror {quit -f}
vlib work
vlog -work work lab05_datapath.vo
vlog -work work lab05_datapath.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.mux_vlg_vec_tst
vcd file -direction lab05_datapath.msim.vcd
vcd add -internal mux_vlg_vec_tst/*
vcd add -internal mux_vlg_vec_tst/i1/*
add wave /*
run -all

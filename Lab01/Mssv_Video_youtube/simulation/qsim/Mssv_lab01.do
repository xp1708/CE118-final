onerror {quit -f}
vlib work
vlog -work work Mssv_lab01.vo
vlog -work work Mssv_lab01.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.DFF_MSSV_vlg_vec_tst
vcd file -direction Mssv_lab01.msim.vcd
vcd add -internal DFF_MSSV_vlg_vec_tst/*
vcd add -internal DFF_MSSV_vlg_vec_tst/i1/*
add wave /*
run -all

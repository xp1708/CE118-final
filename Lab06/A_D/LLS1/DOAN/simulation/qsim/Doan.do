onerror {quit -f}
vlib work
vlog -work work Doan.vo
vlog -work work Doan.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.giaithua_vlg_vec_tst
vcd file -direction Doan.msim.vcd
vcd add -internal giaithua_vlg_vec_tst/*
vcd add -internal giaithua_vlg_vec_tst/i1/*
add wave /*
run -all

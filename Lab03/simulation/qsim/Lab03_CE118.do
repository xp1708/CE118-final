onerror {quit -f}
vlib work
vlog -work work Lab03_CE118.vo
vlog -work work Lab03_CE118.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.shilf_right_vlg_vec_tst
vcd file -direction Lab03_CE118.msim.vcd
vcd add -internal shilf_right_vlg_vec_tst/*
vcd add -internal shilf_right_vlg_vec_tst/i1/*
add wave /*
run -all

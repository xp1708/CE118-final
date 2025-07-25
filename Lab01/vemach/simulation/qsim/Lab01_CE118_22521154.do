onerror {quit -f}
vlib work
vlog -work work Lab01_CE118_22521154.vo
vlog -work work Lab01_CE118_22521154.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Lab01_CE118_22521154_vlg_vec_tst
vcd file -direction Lab01_CE118_22521154.msim.vcd
vcd add -internal Lab01_CE118_22521154_vlg_vec_tst/*
vcd add -internal Lab01_CE118_22521154_vlg_vec_tst/i1/*
add wave /*
run -all

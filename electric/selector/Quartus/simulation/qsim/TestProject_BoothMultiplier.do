onerror {quit -f}
vlib work
vlog -work work TestProject_BoothMultiplier.vo
vlog -work work TestProject_BoothMultiplier.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.DUT_vlg_vec_tst
vcd file -direction TestProject_BoothMultiplier.msim.vcd
vcd add -internal DUT_vlg_vec_tst/*
vcd add -internal DUT_vlg_vec_tst/i1/*
add wave /*
run -all

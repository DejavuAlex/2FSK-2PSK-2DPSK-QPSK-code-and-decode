onerror {exit -code 1}
vlib work
vlog -work work QPSK.vo
vlog -work work QPSKcodedecode.vwf.vt
vsim -novopt -c -t 1ps -L fiftyfivenm_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.QPSKcodedecode_vlg_vec_tst -voptargs="+acc"
vcd file -direction QPSK.msim.vcd
vcd add -internal QPSKcodedecode_vlg_vec_tst/*
vcd add -internal QPSKcodedecode_vlg_vec_tst/i1/*
run -all
quit -f

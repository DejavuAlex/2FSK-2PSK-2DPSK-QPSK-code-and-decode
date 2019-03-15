onerror {exit -code 1}
vlib work
vlog -work work DPSK.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L fiftyfivenm_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.DPSK_vlg_vec_tst -voptargs="+acc"
vcd file -direction DPSK.msim.vcd
vcd add -internal DPSK_vlg_vec_tst/*
vcd add -internal DPSK_vlg_vec_tst/i1/*
run -all
quit -f

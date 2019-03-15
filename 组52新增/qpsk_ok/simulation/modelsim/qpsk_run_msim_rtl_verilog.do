transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/Communication/Quartus/Work/qpsk_test {E:/Communication/Quartus/Work/qpsk_test/qpsk.v}
vlog -vlog01compat -work work +incdir+E:/Communication/Quartus/Work/qpsk_test {E:/Communication/Quartus/Work/qpsk_test/NRZ.v}
vlog -vlog01compat -work work +incdir+E:/Communication/Quartus/Work/qpsk_test {E:/Communication/Quartus/Work/qpsk_test/LookUpTable.v}
vlog -vlog01compat -work work +incdir+E:/Communication/Quartus/Work/qpsk_test {E:/Communication/Quartus/Work/qpsk_test/counter.v}
vlog -vlog01compat -work work +incdir+E:/Communication/Quartus/Work/qpsk_test {E:/Communication/Quartus/Work/qpsk_test/Controller.v}
vlog -vlog01compat -work work +incdir+E:/Communication/Quartus/Work/qpsk_test {E:/Communication/Quartus/Work/qpsk_test/counter1.v}
vlog -vlog01compat -work work +incdir+E:/Communication/Quartus/Work/qpsk_test {E:/Communication/Quartus/Work/qpsk_test/NRZ1.v}

vlog -vlog01compat -work work +incdir+E:/Communication/Quartus/Work/qpsk_test/simulation/modelsim {E:/Communication/Quartus/Work/qpsk_test/simulation/modelsim/qpsk.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  qpsk_vlg_tst

add wave *
view structure
view signals
run -all

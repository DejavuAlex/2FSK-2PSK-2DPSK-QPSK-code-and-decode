transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/Communication/Quartus/Work/bpsk-ok {E:/Communication/Quartus/Work/bpsk-ok/bpsk.v}
vlog -vlog01compat -work work +incdir+E:/Communication/Quartus/Work/bpsk-ok {E:/Communication/Quartus/Work/bpsk-ok/counter.v}
vlog -vlog01compat -work work +incdir+E:/Communication/Quartus/Work/bpsk-ok {E:/Communication/Quartus/Work/bpsk-ok/PN_Seq.v}
vlog -vlog01compat -work work +incdir+E:/Communication/Quartus/Work/bpsk-ok {E:/Communication/Quartus/Work/bpsk-ok/Controller.v}
vlog -vlog01compat -work work +incdir+E:/Communication/Quartus/Work/bpsk-ok {E:/Communication/Quartus/Work/bpsk-ok/LookUpTable.v}
vlog -vlog01compat -work work +incdir+E:/Communication/Quartus/Work/bpsk-ok {E:/Communication/Quartus/Work/bpsk-ok/depsk.v}

vlog -vlog01compat -work work +incdir+E:/Communication/Quartus/Work/bpsk-ok/simulation/modelsim {E:/Communication/Quartus/Work/bpsk-ok/simulation/modelsim/bpsk.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  bpsk_vlg_tst

add wave *
view structure
view signals
run -all

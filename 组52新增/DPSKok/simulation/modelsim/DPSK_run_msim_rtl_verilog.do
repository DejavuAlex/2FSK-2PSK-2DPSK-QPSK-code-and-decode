transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/DPSK {E:/DPSK/dpsk_tz.v}
vlog -vlog01compat -work work +incdir+E:/DPSK {E:/DPSK/adder#.v}
vlog -vlog01compat -work work +incdir+E:/DPSK {E:/DPSK/dpsk_jt.v}
vlog -vlog01compat -work work +incdir+E:/DPSK {E:/DPSK/dpsk.v}
vlog -vlog01compat -work work +incdir+E:/DPSK {E:/DPSK/pll.v}
vlog -vlog01compat -work work +incdir+E:/DPSK/db {E:/DPSK/db/pll_altpll.v}
vlog -vlog01compat -work work +incdir+E:/DPSK {E:/DPSK/dds.v}
vlog -vlog01compat -work work +incdir+E:/DPSK {E:/DPSK/rom_sine0.v}
vlog -vlog01compat -work work +incdir+E:/DPSK {E:/DPSK/qseq.v}
vlog -vlog01compat -work work +incdir+E:/DPSK {E:/DPSK/mac.v}


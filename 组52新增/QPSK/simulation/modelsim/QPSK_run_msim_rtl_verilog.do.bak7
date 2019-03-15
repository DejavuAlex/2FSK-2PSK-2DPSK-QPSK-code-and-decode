transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/Communication/Quartus/Work/QPSK {E:/Communication/Quartus/Work/QPSK/QPSKcodedecode.v}
vlog -vlog01compat -work work +incdir+E:/Communication/Quartus/Work/QPSK {E:/Communication/Quartus/Work/QPSK/Verilog7.v}
vlog -vlog01compat -work work +incdir+E:/Communication/Quartus/Work/QPSK {E:/Communication/Quartus/Work/QPSK/Verilog6.v}
vlog -vlog01compat -work work +incdir+E:/Communication/Quartus/Work/QPSK {E:/Communication/Quartus/Work/QPSK/Verilog5.v}
vlog -vlog01compat -work work +incdir+E:/Communication/Quartus/Work/QPSK {E:/Communication/Quartus/Work/QPSK/Verilog4.v}
vlog -vlog01compat -work work +incdir+E:/Communication/Quartus/Work/QPSK {E:/Communication/Quartus/Work/QPSK/Verilog3.v}
vlog -vlog01compat -work work +incdir+E:/Communication/Quartus/Work/QPSK {E:/Communication/Quartus/Work/QPSK/Verilog2.v}
vlog -vlog01compat -work work +incdir+E:/Communication/Quartus/Work/QPSK {E:/Communication/Quartus/Work/QPSK/Verilog1.v}
vlog -vlog01compat -work work +incdir+E:/Communication/Quartus/Work/QPSK {E:/Communication/Quartus/Work/QPSK/test1.v}
vlog -vlog01compat -work work +incdir+E:/Communication/Quartus/Work/QPSK {E:/Communication/Quartus/Work/QPSK/LPM.v}
vlib FIR
vmap FIR FIR
vlog -vlog01compat -work FIR +incdir+E:/Communication/Quartus/Work/QPSK/FIR/synthesis {E:/Communication/Quartus/Work/QPSK/FIR/synthesis/FIR.v}
vlib NCO
vmap NCO NCO
vlog -vlog01compat -work NCO +incdir+E:/Communication/Quartus/Work/QPSK/NCO/synthesis {E:/Communication/Quartus/Work/QPSK/NCO/synthesis/NCO.v}
vlog -vlog01compat -work NCO +incdir+E:/Communication/Quartus/Work/QPSK/NCO/synthesis/submodules {E:/Communication/Quartus/Work/QPSK/NCO/synthesis/submodules/NCO_nco_ii_0.v}
vcom -93 -work FIR {E:/Communication/Quartus/Work/QPSK/FIR/synthesis/submodules/dspba_library_package.vhd}
vcom -93 -work FIR {E:/Communication/Quartus/Work/QPSK/FIR/synthesis/submodules/auk_dspip_math_pkg_hpfir.vhd}
vcom -93 -work FIR {E:/Communication/Quartus/Work/QPSK/FIR/synthesis/submodules/auk_dspip_avalon_streaming_controller_hpfir.vhd}
vcom -93 -work FIR {E:/Communication/Quartus/Work/QPSK/FIR/synthesis/submodules/auk_dspip_roundsat_hpfir.vhd}
vcom -93 -work FIR {E:/Communication/Quartus/Work/QPSK/FIR/synthesis/submodules/dspba_library.vhd}
vcom -93 -work FIR {E:/Communication/Quartus/Work/QPSK/FIR/synthesis/submodules/auk_dspip_lib_pkg_hpfir.vhd}
vcom -93 -work FIR {E:/Communication/Quartus/Work/QPSK/FIR/synthesis/submodules/auk_dspip_avalon_streaming_source_hpfir.vhd}
vcom -93 -work FIR {E:/Communication/Quartus/Work/QPSK/FIR/synthesis/submodules/FIR_fir_compiler_ii_0_rtl_core.vhd}
vcom -93 -work FIR {E:/Communication/Quartus/Work/QPSK/FIR/synthesis/submodules/auk_dspip_avalon_streaming_sink_hpfir.vhd}
vcom -93 -work FIR {E:/Communication/Quartus/Work/QPSK/FIR/synthesis/submodules/FIR_fir_compiler_ii_0_ast.vhd}
vcom -93 -work FIR {E:/Communication/Quartus/Work/QPSK/FIR/synthesis/submodules/FIR_fir_compiler_ii_0.vhd}

vlog -vlog01compat -work work +incdir+E:/Communication/Quartus/Work/QPSK/simulation/modelsim {E:/Communication/Quartus/Work/QPSK/simulation/modelsim/QPSKcodedecode.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -L FIR -L NCO -voptargs="+acc"  QPSKcodedecode_vlg_tst

add wave *
view structure
view signals
run -all

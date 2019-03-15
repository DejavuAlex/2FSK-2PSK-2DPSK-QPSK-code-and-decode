-- ------------------------------------------------------------------------- 
-- Altera DSP Builder Advanced Flow Tools Release Version 16.0
-- Quartus Prime development tool and MATLAB/Simulink Interface
-- 
-- Legal Notice: Copyright 2016 Altera Corporation.  All rights reserved.
-- Your use of  Altera  Corporation's design tools,  logic functions and other
-- software and tools,  and its AMPP  partner logic functions, and  any output
-- files  any of the  foregoing  device programming or simulation files),  and
-- any associated  documentation or information are expressly subject  to  the
-- terms and conditions  of the Altera Program License Subscription Agreement,
-- Altera  MegaCore  Function  License  Agreement, or other applicable license
-- agreement,  including,  without limitation,  that your use  is for the sole
-- purpose of  programming  logic  devices  manufactured by Altera and sold by
-- Altera or its authorized  distributors.  Please  refer  to  the  applicable
-- agreement for further details.
-- ---------------------------------------------------------------------------

-- VHDL created from FIR_fir_compiler_ii_0_rtl_core
-- VHDL created on Thu Feb 21 14:46:50 2019


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY lpm;
USE lpm.lpm_components.all;

entity FIR_fir_compiler_ii_0_rtl_core is
    port (
        xIn_v : in std_logic_vector(0 downto 0);  -- sfix1
        xIn_c : in std_logic_vector(7 downto 0);  -- sfix8
        xIn_0 : in std_logic_vector(23 downto 0);  -- sfix24
        xOut_v : out std_logic_vector(0 downto 0);  -- ufix1
        xOut_c : out std_logic_vector(7 downto 0);  -- ufix8
        xOut_0 : out std_logic_vector(34 downto 0);  -- sfix35
        clk : in std_logic;
        areset : in std_logic
    );
end FIR_fir_compiler_ii_0_rtl_core;

architecture normal of FIR_fir_compiler_ii_0_rtl_core is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_memread_q_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_memread_q_14_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_14_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_18_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_wi0_r0_phasedelay0_q_16_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr1_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr2_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr3_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr4_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr4_q_15_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr5_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr5_q_12_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr6_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr7_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr7_q_12_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr8_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr8_q_12_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr9_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr9_q_13_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr10_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr11_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr11_q_11_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr12_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr12_q_11_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr13_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr13_q_12_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr14_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr15_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr15_q_12_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr16_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr16_q_11_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr17_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr18_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr18_q_11_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr19_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr19_q_11_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr20_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr21_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr21_q_13_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr22_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr23_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr24_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr25_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr25_q_12_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr26_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr27_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr27_q_12_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr28_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr28_q_12_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr29_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr29_q_13_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr30_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr31_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr32_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr32_q_14_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr33_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr34_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr35_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr36_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add0_2_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add0_2_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add0_2_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add0_2_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add0_4_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add0_4_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add0_4_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add0_4_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add0_6_a : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add0_6_b : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add0_6_o : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add0_6_q : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add0_8_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_8_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_8_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_8_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_9_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_9_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_9_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_9_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_10_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_10_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_10_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_10_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_12_a : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add0_12_b : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add0_12_o : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add0_12_q : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add0_14_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add0_14_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add0_14_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add0_14_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_1_a : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add1_1_b : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add1_1_o : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add1_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add1_2_a : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add1_2_b : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add1_2_o : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add1_2_q : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add1_3_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add1_3_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add1_3_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add1_3_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add1_4_a : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_4_b : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_4_o : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_4_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_5_a : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_5_b : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_5_o : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_5_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_6_a : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add1_6_b : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add1_6_o : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add1_6_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add1_7_a : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add1_7_b : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add1_7_o : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add1_7_q : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_0_a : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add2_0_b : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add2_0_o : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add2_0_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add2_1_a : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add2_1_b : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add2_1_o : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add2_1_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add2_2_a : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add2_2_b : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add2_2_o : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add2_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add2_3_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add2_3_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add2_3_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add2_3_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add2_4_a : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add2_4_b : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add2_4_o : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add2_4_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add3_0_a : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add3_0_b : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add3_0_o : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add3_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add3_1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_add3_1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_add3_1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_add3_1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_add4_0_a : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_add4_0_b : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_add4_0_o : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_add4_0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_add5_0_a : STD_LOGIC_VECTOR (34 downto 0);
    signal u0_m0_wo0_mtree_add5_0_b : STD_LOGIC_VECTOR (34 downto 0);
    signal u0_m0_wo0_mtree_add5_0_o : STD_LOGIC_VECTOR (34 downto 0);
    signal u0_m0_wo0_mtree_add5_0_q : STD_LOGIC_VECTOR (34 downto 0);
    signal u0_m0_wo0_oseq_gated_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_result_add_0_0_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_result_add_0_0_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_result_add_0_0_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_result_add_0_0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_result_add_0_0_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_result_add_0_0_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_result_add_0_0_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_result_add_0_0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_result_add_0_0_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_result_add_0_0_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_result_add_0_0_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_result_add_0_0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_result_add_0_0_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_result_add_0_0_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_result_add_0_0_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_result_add_0_0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_result_add_0_0_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_result_add_0_0_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_result_add_0_0_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_result_add_0_0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_result_add_0_0_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_result_add_0_0_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_result_add_0_0_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_result_add_0_0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_result_add_0_0_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_result_add_0_0_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_result_add_0_0_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_result_add_0_0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_result_add_0_0_a : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_result_add_0_0_b : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_result_add_0_0_o : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_result_add_0_0_q : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_result_add_0_0_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_result_add_0_0_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_result_add_0_0_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_result_add_0_0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_result_add_0_0_a : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_result_add_0_0_b : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_result_add_0_0_o : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_result_add_0_0_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_result_add_0_0_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_result_add_0_0_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_result_add_0_0_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_result_add_0_0_q : STD_LOGIC_VECTOR (29 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_19_bjB3_q_11_q : STD_LOGIC_VECTOR (17 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_19_bs6_b_11_q : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_result_add_0_0_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_result_add_0_0_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_result_add_0_0_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_result_add_0_0_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_result_add_0_0_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_result_add_0_0_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_result_add_0_0_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_result_add_0_0_q : STD_LOGIC_VECTOR (29 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_17_bjB3_q_11_q : STD_LOGIC_VECTOR (17 downto 0);
    signal d_u0_m0_wo0_mtree_mult1_17_bs6_b_11_q : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_result_add_0_0_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_result_add_0_0_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_result_add_0_0_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_result_add_0_0_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_result_add_0_0_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_result_add_0_0_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_result_add_0_0_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_result_add_0_0_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_result_add_0_0_a : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_result_add_0_0_b : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_result_add_0_0_o : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_result_add_0_0_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_result_add_0_0_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_result_add_0_0_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_result_add_0_0_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_result_add_0_0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_result_add_0_0_a : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_result_add_0_0_b : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_result_add_0_0_o : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_result_add_0_0_q : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_result_add_0_0_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_result_add_0_0_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_result_add_0_0_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_result_add_0_0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_result_add_0_0_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_result_add_0_0_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_result_add_0_0_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_result_add_0_0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_result_add_0_0_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_result_add_0_0_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_result_add_0_0_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_result_add_0_0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_result_add_0_0_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_result_add_0_0_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_result_add_0_0_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_result_add_0_0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_result_add_0_0_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_result_add_0_0_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_result_add_0_0_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_result_add_0_0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_result_add_0_0_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_result_add_0_0_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_result_add_0_0_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_result_add_0_0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_0_0_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_0_0_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_0_0_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_0_0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im0_sub_0_a : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im0_sub_0_b : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im0_sub_0_o : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im0_sub_0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im4_sub_0_a : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im4_sub_0_b : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im4_sub_0_o : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im4_sub_0_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im0_sub_0_a : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im0_sub_0_b : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im0_sub_0_o : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im0_sub_0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im4_sub_0_a : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im4_sub_0_b : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im4_sub_0_o : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im4_sub_0_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im0_sub_0_a : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im0_sub_0_b : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im0_sub_0_o : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im0_sub_0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im4_sub_0_a : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im4_sub_0_b : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im4_sub_0_o : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im4_sub_0_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im0_sub_1_a : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im0_sub_1_b : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im0_sub_1_o : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im0_sub_1_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im4_sub_1_a : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im4_sub_1_b : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im4_sub_1_o : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im4_sub_1_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im0_sub_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im0_sub_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im0_sub_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im0_sub_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im4_sub_1_a : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im4_sub_1_b : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im4_sub_1_o : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im4_sub_1_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im0_add_1_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im0_add_1_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im0_add_1_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im0_add_1_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im4_add_1_a : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im4_add_1_b : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im4_add_1_o : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im4_add_1_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_add_1_a : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_add_1_b : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_add_1_o : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_add_1_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_add_3_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_add_3_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_add_3_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_add_3_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im4_add_1_a : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im4_add_1_b : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im4_add_1_o : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im4_add_1_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im4_add_3_a : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im4_add_3_b : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im4_add_3_o : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im4_add_3_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im0_sub_1_a : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im0_sub_1_b : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im0_sub_1_o : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im0_sub_1_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im4_sub_1_a : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im4_sub_1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im4_sub_1_o : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im4_sub_1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_add_1_a : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_add_1_b : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_add_1_o : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_add_1_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_add_3_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_add_3_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_add_3_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_add_3_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im4_add_1_a : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im4_add_1_b : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im4_add_1_o : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im4_add_1_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im4_add_3_a : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im4_add_3_b : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im4_add_3_o : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im4_add_3_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im0_add_1_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im0_add_1_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im0_add_1_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im0_add_1_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im4_add_1_a : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im4_add_1_b : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im4_add_1_o : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im4_add_1_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im0_sub_1_a : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im0_sub_1_b : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im0_sub_1_o : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im0_sub_1_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im4_sub_1_a : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im4_sub_1_b : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im4_sub_1_o : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im4_sub_1_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im0_sub_1_a : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im0_sub_1_b : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im0_sub_1_o : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im0_sub_1_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im4_sub_1_a : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im4_sub_1_b : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im4_sub_1_o : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im4_sub_1_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im0_sub_0_a : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im0_sub_0_b : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im0_sub_0_o : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im0_sub_0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im4_sub_0_a : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im4_sub_0_b : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im4_sub_0_o : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im4_sub_0_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im0_sub_0_a : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im0_sub_0_b : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im0_sub_0_o : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im0_sub_0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im4_sub_0_a : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im4_sub_0_b : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im4_sub_0_o : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im4_sub_0_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im0_sub_0_a : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im0_sub_0_b : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im0_sub_0_o : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im0_sub_0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im4_sub_0_a : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im4_sub_0_b : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im4_sub_0_o : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im4_sub_0_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_bs2_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_bs2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_bs6_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_bs6_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_shift2_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_shift2_qint : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im4_shift2_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im4_shift2_qint : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_shift2_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_shift2_qint : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im4_shift2_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im4_shift2_qint : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_align_8_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_align_8_qint : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_align_8_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_align_8_qint : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_align_8_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_align_8_qint : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_align_8_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_align_8_qint : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_align_8_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_align_8_qint : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_align_8_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_align_8_qint : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_align_8_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_align_8_qint : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_align_8_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_align_8_qint : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_align_8_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_align_8_qint : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_align_8_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_align_8_qint : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_align_8_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_align_8_qint : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_align_8_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_align_8_qint : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_align_8_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_align_8_qint : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_align_8_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_align_8_qint : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_align_8_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_align_8_qint : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_bjB3_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_align_8_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_align_8_qint : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_bjB3_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_bjB3_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_bjB3_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_align_8_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_align_8_qint : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_bjB3_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_align_8_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_align_8_qint : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_bjB3_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_align_8_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_align_8_qint : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_bjB3_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_bjB3_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im4_shift0_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im4_shift0_qint : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_bjB3_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im4_shift0_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im4_shift0_qint : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_bjB3_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im4_shift0_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im4_shift0_qint : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_bjB3_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im4_shift0_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im4_shift0_qint : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_bjB3_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im4_shift0_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im4_shift0_qint : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_bjB3_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im4_shift0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im4_shift0_qint : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_bjB3_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im4_shift0_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im4_shift0_qint : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_bjB3_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im4_shift0_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im4_shift0_qint : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_bjB3_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im4_shift0_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im4_shift0_qint : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_bjB3_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im4_shift0_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im4_shift0_qint : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_bjB3_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im4_shift0_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im4_shift0_qint : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_bjB3_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_bjB3_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_align_8_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_align_8_qint : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_bjB3_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_align_8_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_align_8_qint : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_bjB3_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_align_8_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_align_8_qint : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_bjB3_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_bjB3_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_bjB3_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_align_8_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_align_8_qint : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im0_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im0_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im0_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im0_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_align_8_q : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_align_8_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im0_shift0_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im0_shift0_qint : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im0_shift0_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im0_shift0_qint : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im0_shift0_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im0_shift0_qint : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im0_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im0_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_align_8_q : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_align_8_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im0_shift0_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im0_shift0_qint : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im0_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im0_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);

begin


    -- VCC(CONSTANT,1)@0
    VCC_q <= "1";

    -- xIn(PORTIN,2)@10

    -- d_u0_m0_wo0_wi0_r0_phasedelay0_q_16(DELAY,520)@10 + 6
    d_u0_m0_wo0_wi0_r0_phasedelay0_q_16 : dspba_delay
    GENERIC MAP ( width => 24, depth => 6, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_0, xout => d_u0_m0_wo0_wi0_r0_phasedelay0_q_16_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_36_bs6(BITSELECT,186)@16
    u0_m0_wo0_mtree_mult1_36_bs6_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_phasedelay0_q_16_q);
    u0_m0_wo0_mtree_mult1_36_bs6_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_36_bs6_in(23 downto 17));

    -- u0_m0_wo0_mtree_mult1_36_align_8(BITSHIFT,188)@16
    u0_m0_wo0_mtree_mult1_36_align_8_qint <= STD_LOGIC_VECTOR((8 downto 7 => u0_m0_wo0_mtree_mult1_36_bs6_b(6)) & u0_m0_wo0_mtree_mult1_36_bs6_b) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_36_align_8_q <= u0_m0_wo0_mtree_mult1_36_align_8_qint(25 downto 0);

    -- u0_m0_wo0_mtree_mult1_36_bs2(BITSELECT,182)@16
    u0_m0_wo0_mtree_mult1_36_bs2_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_phasedelay0_q_16_q(16 downto 0));
    u0_m0_wo0_mtree_mult1_36_bs2_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_36_bs2_in(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_36_bjB3(BITJOIN,183)@16
    u0_m0_wo0_mtree_mult1_36_bjB3_q <= GND_q & u0_m0_wo0_mtree_mult1_36_bs2_b;

    -- u0_m0_wo0_mtree_mult1_36_result_add_0_0(ADD,190)@16 + 1
    u0_m0_wo0_mtree_mult1_36_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 18 => u0_m0_wo0_mtree_mult1_36_bjB3_q(17)) & u0_m0_wo0_mtree_mult1_36_bjB3_q));
    u0_m0_wo0_mtree_mult1_36_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_mult1_36_align_8_q(25)) & u0_m0_wo0_mtree_mult1_36_align_8_q));
    u0_m0_wo0_mtree_mult1_36_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_36_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_36_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_36_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_36_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_36_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_36_result_add_0_0_o(26 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr1(DELAY,14)@10
    u0_m0_wo0_wi0_r0_delayr1 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_0, xout => u0_m0_wo0_wi0_r0_delayr1_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr2(DELAY,15)@10
    u0_m0_wo0_wi0_r0_delayr2 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr1_q, xout => u0_m0_wo0_wi0_r0_delayr2_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr3(DELAY,16)@10
    u0_m0_wo0_wi0_r0_delayr3 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr2_q, xout => u0_m0_wo0_wi0_r0_delayr3_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr4(DELAY,17)@10
    u0_m0_wo0_wi0_r0_delayr4 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr3_q, xout => u0_m0_wo0_wi0_r0_delayr4_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr4_q_15(DELAY,521)@10 + 5
    d_u0_m0_wo0_wi0_r0_delayr4_q_15 : dspba_delay
    GENERIC MAP ( width => 24, depth => 5, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr4_q, xout => d_u0_m0_wo0_wi0_r0_delayr4_q_15_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_32_bs6(BITSELECT,197)@15
    u0_m0_wo0_mtree_mult1_32_bs6_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr4_q_15_q);
    u0_m0_wo0_mtree_mult1_32_bs6_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_32_bs6_in(23 downto 17));

    -- u0_m0_wo0_mtree_mult1_32_im4_sub_0(SUB,456)@15 + 1
    u0_m0_wo0_mtree_mult1_32_im4_sub_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_32_im4_sub_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 7 => u0_m0_wo0_mtree_mult1_32_bs6_b(6)) & u0_m0_wo0_mtree_mult1_32_bs6_b));
    u0_m0_wo0_mtree_mult1_32_im4_sub_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_32_im4_sub_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_32_im4_sub_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_32_im4_sub_0_a) - SIGNED(u0_m0_wo0_mtree_mult1_32_im4_sub_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_32_im4_sub_0_q <= u0_m0_wo0_mtree_mult1_32_im4_sub_0_o(7 downto 0);

    -- u0_m0_wo0_mtree_mult1_32_align_8(BITSHIFT,199)@16
    u0_m0_wo0_mtree_mult1_32_align_8_qint <= STD_LOGIC_VECTOR((8 downto 8 => u0_m0_wo0_mtree_mult1_32_im4_sub_0_q(7)) & u0_m0_wo0_mtree_mult1_32_im4_sub_0_q) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_32_align_8_q <= u0_m0_wo0_mtree_mult1_32_align_8_qint(25 downto 0);

    -- u0_m0_wo0_mtree_mult1_32_bs2(BITSELECT,193)@15
    u0_m0_wo0_mtree_mult1_32_bs2_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr4_q_15_q(16 downto 0));
    u0_m0_wo0_mtree_mult1_32_bs2_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_32_bs2_in(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_32_bjB3(BITJOIN,194)@15
    u0_m0_wo0_mtree_mult1_32_bjB3_q <= GND_q & u0_m0_wo0_mtree_mult1_32_bs2_b;

    -- u0_m0_wo0_mtree_mult1_32_im0_sub_0(SUB,455)@15 + 1
    u0_m0_wo0_mtree_mult1_32_im0_sub_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_32_im0_sub_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => u0_m0_wo0_mtree_mult1_32_bjB3_q(17)) & u0_m0_wo0_mtree_mult1_32_bjB3_q));
    u0_m0_wo0_mtree_mult1_32_im0_sub_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_32_im0_sub_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_32_im0_sub_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_32_im0_sub_0_a) - SIGNED(u0_m0_wo0_mtree_mult1_32_im0_sub_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_32_im0_sub_0_q <= u0_m0_wo0_mtree_mult1_32_im0_sub_0_o(18 downto 0);

    -- u0_m0_wo0_mtree_mult1_32_result_add_0_0(ADD,201)@16 + 1
    u0_m0_wo0_mtree_mult1_32_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 19 => u0_m0_wo0_mtree_mult1_32_im0_sub_0_q(18)) & u0_m0_wo0_mtree_mult1_32_im0_sub_0_q));
    u0_m0_wo0_mtree_mult1_32_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_mult1_32_align_8_q(25)) & u0_m0_wo0_mtree_mult1_32_align_8_q));
    u0_m0_wo0_mtree_mult1_32_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_32_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_32_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_32_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_32_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_32_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_32_result_add_0_0_o(26 downto 0);

    -- u0_m0_wo0_mtree_add2_4(ADD,155)@17 + 1
    u0_m0_wo0_mtree_add2_4_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((28 downto 27 => u0_m0_wo0_mtree_mult1_32_result_add_0_0_q(26)) & u0_m0_wo0_mtree_mult1_32_result_add_0_0_q));
    u0_m0_wo0_mtree_add2_4_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((28 downto 27 => u0_m0_wo0_mtree_mult1_36_result_add_0_0_q(26)) & u0_m0_wo0_mtree_mult1_36_result_add_0_0_q));
    u0_m0_wo0_mtree_add2_4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_4_a) + SIGNED(u0_m0_wo0_mtree_add2_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_4_q <= u0_m0_wo0_mtree_add2_4_o(28 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr5(DELAY,18)@10
    u0_m0_wo0_wi0_r0_delayr5 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr4_q, xout => u0_m0_wo0_wi0_r0_delayr5_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr5_q_12(DELAY,522)@10 + 2
    d_u0_m0_wo0_wi0_r0_delayr5_q_12 : dspba_delay
    GENERIC MAP ( width => 24, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr5_q, xout => d_u0_m0_wo0_wi0_r0_delayr5_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_31_bs6(BITSELECT,208)@12
    u0_m0_wo0_mtree_mult1_31_bs6_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr5_q_12_q);
    u0_m0_wo0_mtree_mult1_31_bs6_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_31_bs6_in(23 downto 17));

    -- u0_m0_wo0_mtree_mult1_31_im4_sub_0(SUB,458)@12 + 1
    u0_m0_wo0_mtree_mult1_31_im4_sub_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_31_im4_sub_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 7 => u0_m0_wo0_mtree_mult1_31_bs6_b(6)) & u0_m0_wo0_mtree_mult1_31_bs6_b));
    u0_m0_wo0_mtree_mult1_31_im4_sub_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_31_im4_sub_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_31_im4_sub_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_31_im4_sub_0_a) - SIGNED(u0_m0_wo0_mtree_mult1_31_im4_sub_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_31_im4_sub_0_q <= u0_m0_wo0_mtree_mult1_31_im4_sub_0_o(7 downto 0);

    -- u0_m0_wo0_mtree_mult1_31_align_8(BITSHIFT,210)@13
    u0_m0_wo0_mtree_mult1_31_align_8_qint <= STD_LOGIC_VECTOR((8 downto 8 => u0_m0_wo0_mtree_mult1_31_im4_sub_0_q(7)) & u0_m0_wo0_mtree_mult1_31_im4_sub_0_q) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_31_align_8_q <= u0_m0_wo0_mtree_mult1_31_align_8_qint(25 downto 0);

    -- u0_m0_wo0_mtree_mult1_31_bs2(BITSELECT,204)@12
    u0_m0_wo0_mtree_mult1_31_bs2_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr5_q_12_q(16 downto 0));
    u0_m0_wo0_mtree_mult1_31_bs2_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_31_bs2_in(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_31_bjB3(BITJOIN,205)@12
    u0_m0_wo0_mtree_mult1_31_bjB3_q <= GND_q & u0_m0_wo0_mtree_mult1_31_bs2_b;

    -- u0_m0_wo0_mtree_mult1_31_im0_sub_0(SUB,457)@12 + 1
    u0_m0_wo0_mtree_mult1_31_im0_sub_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_31_im0_sub_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => u0_m0_wo0_mtree_mult1_31_bjB3_q(17)) & u0_m0_wo0_mtree_mult1_31_bjB3_q));
    u0_m0_wo0_mtree_mult1_31_im0_sub_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_31_im0_sub_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_31_im0_sub_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_31_im0_sub_0_a) - SIGNED(u0_m0_wo0_mtree_mult1_31_im0_sub_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_31_im0_sub_0_q <= u0_m0_wo0_mtree_mult1_31_im0_sub_0_o(18 downto 0);

    -- u0_m0_wo0_mtree_mult1_31_result_add_0_0(ADD,212)@13 + 1
    u0_m0_wo0_mtree_mult1_31_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 19 => u0_m0_wo0_mtree_mult1_31_im0_sub_0_q(18)) & u0_m0_wo0_mtree_mult1_31_im0_sub_0_q));
    u0_m0_wo0_mtree_mult1_31_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_mult1_31_align_8_q(25)) & u0_m0_wo0_mtree_mult1_31_align_8_q));
    u0_m0_wo0_mtree_mult1_31_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_31_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_31_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_31_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_31_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_31_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_31_result_add_0_0_o(26 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr6(DELAY,19)@10
    u0_m0_wo0_wi0_r0_delayr6 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr5_q, xout => u0_m0_wo0_wi0_r0_delayr6_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr7(DELAY,20)@10
    u0_m0_wo0_wi0_r0_delayr7 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr6_q, xout => u0_m0_wo0_wi0_r0_delayr7_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr7_q_12(DELAY,523)@10 + 2
    d_u0_m0_wo0_wi0_r0_delayr7_q_12 : dspba_delay
    GENERIC MAP ( width => 24, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr7_q, xout => d_u0_m0_wo0_wi0_r0_delayr7_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_29_bs6(BITSELECT,219)@12
    u0_m0_wo0_mtree_mult1_29_bs6_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr7_q_12_q);
    u0_m0_wo0_mtree_mult1_29_bs6_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_29_bs6_in(23 downto 17));

    -- u0_m0_wo0_mtree_mult1_29_align_8(BITSHIFT,221)@12
    u0_m0_wo0_mtree_mult1_29_align_8_qint <= STD_LOGIC_VECTOR((8 downto 7 => u0_m0_wo0_mtree_mult1_29_bs6_b(6)) & u0_m0_wo0_mtree_mult1_29_bs6_b) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_29_align_8_q <= u0_m0_wo0_mtree_mult1_29_align_8_qint(25 downto 0);

    -- u0_m0_wo0_mtree_mult1_29_bs2(BITSELECT,215)@12
    u0_m0_wo0_mtree_mult1_29_bs2_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr7_q_12_q(16 downto 0));
    u0_m0_wo0_mtree_mult1_29_bs2_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_29_bs2_in(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_29_bjB3(BITJOIN,216)@12
    u0_m0_wo0_mtree_mult1_29_bjB3_q <= GND_q & u0_m0_wo0_mtree_mult1_29_bs2_b;

    -- u0_m0_wo0_mtree_mult1_29_result_add_0_0(ADD,223)@12 + 1
    u0_m0_wo0_mtree_mult1_29_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 18 => u0_m0_wo0_mtree_mult1_29_bjB3_q(17)) & u0_m0_wo0_mtree_mult1_29_bjB3_q));
    u0_m0_wo0_mtree_mult1_29_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_mult1_29_align_8_q(25)) & u0_m0_wo0_mtree_mult1_29_align_8_q));
    u0_m0_wo0_mtree_mult1_29_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_29_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_29_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_29_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_29_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_29_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_29_result_add_0_0_o(26 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr8(DELAY,21)@10
    u0_m0_wo0_wi0_r0_delayr8 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr7_q, xout => u0_m0_wo0_wi0_r0_delayr8_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr8_q_12(DELAY,524)@10 + 2
    d_u0_m0_wo0_wi0_r0_delayr8_q_12 : dspba_delay
    GENERIC MAP ( width => 24, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr8_q, xout => d_u0_m0_wo0_wi0_r0_delayr8_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_28_bs6(BITSELECT,230)@12
    u0_m0_wo0_mtree_mult1_28_bs6_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr8_q_12_q);
    u0_m0_wo0_mtree_mult1_28_bs6_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_28_bs6_in(23 downto 17));

    -- u0_m0_wo0_mtree_mult1_28_align_8(BITSHIFT,232)@12
    u0_m0_wo0_mtree_mult1_28_align_8_qint <= STD_LOGIC_VECTOR((8 downto 7 => u0_m0_wo0_mtree_mult1_28_bs6_b(6)) & u0_m0_wo0_mtree_mult1_28_bs6_b) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_28_align_8_q <= u0_m0_wo0_mtree_mult1_28_align_8_qint(25 downto 0);

    -- u0_m0_wo0_mtree_mult1_28_bs2(BITSELECT,226)@12
    u0_m0_wo0_mtree_mult1_28_bs2_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr8_q_12_q(16 downto 0));
    u0_m0_wo0_mtree_mult1_28_bs2_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_28_bs2_in(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_28_bjB3(BITJOIN,227)@12
    u0_m0_wo0_mtree_mult1_28_bjB3_q <= GND_q & u0_m0_wo0_mtree_mult1_28_bs2_b;

    -- u0_m0_wo0_mtree_mult1_28_result_add_0_0(ADD,234)@12 + 1
    u0_m0_wo0_mtree_mult1_28_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 18 => u0_m0_wo0_mtree_mult1_28_bjB3_q(17)) & u0_m0_wo0_mtree_mult1_28_bjB3_q));
    u0_m0_wo0_mtree_mult1_28_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_mult1_28_align_8_q(25)) & u0_m0_wo0_mtree_mult1_28_align_8_q));
    u0_m0_wo0_mtree_mult1_28_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_28_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_28_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_28_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_28_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_28_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_28_result_add_0_0_o(26 downto 0);

    -- u0_m0_wo0_mtree_add0_14(ADD,138)@13 + 1
    u0_m0_wo0_mtree_add0_14_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_28_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_14_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_29_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_14_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_14_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_14_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_14_a) + SIGNED(u0_m0_wo0_mtree_add0_14_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_14_q <= u0_m0_wo0_mtree_add0_14_o(26 downto 0);

    -- u0_m0_wo0_mtree_add1_7(ADD,149)@14 + 1
    u0_m0_wo0_mtree_add1_7_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_add0_14_q(26)) & u0_m0_wo0_mtree_add0_14_q));
    u0_m0_wo0_mtree_add1_7_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_mult1_31_result_add_0_0_q(26)) & u0_m0_wo0_mtree_mult1_31_result_add_0_0_q));
    u0_m0_wo0_mtree_add1_7_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_7_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_7_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_7_a) + SIGNED(u0_m0_wo0_mtree_add1_7_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_7_q <= u0_m0_wo0_mtree_add1_7_o(27 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr9(DELAY,22)@10
    u0_m0_wo0_wi0_r0_delayr9 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr8_q, xout => u0_m0_wo0_wi0_r0_delayr9_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr9_q_13(DELAY,525)@10 + 3
    d_u0_m0_wo0_wi0_r0_delayr9_q_13 : dspba_delay
    GENERIC MAP ( width => 24, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr9_q, xout => d_u0_m0_wo0_wi0_r0_delayr9_q_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_27_bs6(BITSELECT,241)@13
    u0_m0_wo0_mtree_mult1_27_bs6_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr9_q_13_q);
    u0_m0_wo0_mtree_mult1_27_bs6_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_27_bs6_in(23 downto 17));

    -- u0_m0_wo0_mtree_mult1_27_align_8(BITSHIFT,243)@13
    u0_m0_wo0_mtree_mult1_27_align_8_qint <= STD_LOGIC_VECTOR((8 downto 7 => u0_m0_wo0_mtree_mult1_27_bs6_b(6)) & u0_m0_wo0_mtree_mult1_27_bs6_b) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_27_align_8_q <= u0_m0_wo0_mtree_mult1_27_align_8_qint(25 downto 0);

    -- u0_m0_wo0_mtree_mult1_27_bs2(BITSELECT,237)@13
    u0_m0_wo0_mtree_mult1_27_bs2_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr9_q_13_q(16 downto 0));
    u0_m0_wo0_mtree_mult1_27_bs2_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_27_bs2_in(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_27_bjB3(BITJOIN,238)@13
    u0_m0_wo0_mtree_mult1_27_bjB3_q <= GND_q & u0_m0_wo0_mtree_mult1_27_bs2_b;

    -- u0_m0_wo0_mtree_mult1_27_result_add_0_0(ADD,245)@13 + 1
    u0_m0_wo0_mtree_mult1_27_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 18 => u0_m0_wo0_mtree_mult1_27_bjB3_q(17)) & u0_m0_wo0_mtree_mult1_27_bjB3_q));
    u0_m0_wo0_mtree_mult1_27_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_mult1_27_align_8_q(25)) & u0_m0_wo0_mtree_mult1_27_align_8_q));
    u0_m0_wo0_mtree_mult1_27_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_27_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_27_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_27_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_27_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_27_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_27_result_add_0_0_o(26 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr10(DELAY,23)@10
    u0_m0_wo0_wi0_r0_delayr10 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr9_q, xout => u0_m0_wo0_wi0_r0_delayr10_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr11(DELAY,24)@10
    u0_m0_wo0_wi0_r0_delayr11 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr10_q, xout => u0_m0_wo0_wi0_r0_delayr11_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr11_q_11(DELAY,526)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr11_q_11 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr11_q, xout => d_u0_m0_wo0_wi0_r0_delayr11_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_25_bs6(BITSELECT,252)@11
    u0_m0_wo0_mtree_mult1_25_bs6_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr11_q_11_q);
    u0_m0_wo0_mtree_mult1_25_bs6_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_25_bs6_in(23 downto 17));

    -- u0_m0_wo0_mtree_mult1_25_im4_sub_0(SUB,460)@11 + 1
    u0_m0_wo0_mtree_mult1_25_im4_sub_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_25_im4_sub_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 7 => u0_m0_wo0_mtree_mult1_25_bs6_b(6)) & u0_m0_wo0_mtree_mult1_25_bs6_b));
    u0_m0_wo0_mtree_mult1_25_im4_sub_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_25_im4_sub_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_25_im4_sub_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_25_im4_sub_0_a) - SIGNED(u0_m0_wo0_mtree_mult1_25_im4_sub_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_25_im4_sub_0_q <= u0_m0_wo0_mtree_mult1_25_im4_sub_0_o(7 downto 0);

    -- u0_m0_wo0_mtree_mult1_25_align_8(BITSHIFT,254)@12
    u0_m0_wo0_mtree_mult1_25_align_8_qint <= STD_LOGIC_VECTOR((8 downto 8 => u0_m0_wo0_mtree_mult1_25_im4_sub_0_q(7)) & u0_m0_wo0_mtree_mult1_25_im4_sub_0_q) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_25_align_8_q <= u0_m0_wo0_mtree_mult1_25_align_8_qint(25 downto 0);

    -- u0_m0_wo0_mtree_mult1_25_bs2(BITSELECT,248)@11
    u0_m0_wo0_mtree_mult1_25_bs2_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr11_q_11_q(16 downto 0));
    u0_m0_wo0_mtree_mult1_25_bs2_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_25_bs2_in(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_25_bjB3(BITJOIN,249)@11
    u0_m0_wo0_mtree_mult1_25_bjB3_q <= GND_q & u0_m0_wo0_mtree_mult1_25_bs2_b;

    -- u0_m0_wo0_mtree_mult1_25_im0_sub_0(SUB,459)@11 + 1
    u0_m0_wo0_mtree_mult1_25_im0_sub_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_25_im0_sub_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => u0_m0_wo0_mtree_mult1_25_bjB3_q(17)) & u0_m0_wo0_mtree_mult1_25_bjB3_q));
    u0_m0_wo0_mtree_mult1_25_im0_sub_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_25_im0_sub_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_25_im0_sub_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_25_im0_sub_0_a) - SIGNED(u0_m0_wo0_mtree_mult1_25_im0_sub_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_25_im0_sub_0_q <= u0_m0_wo0_mtree_mult1_25_im0_sub_0_o(18 downto 0);

    -- u0_m0_wo0_mtree_mult1_25_result_add_0_0(ADD,256)@12 + 1
    u0_m0_wo0_mtree_mult1_25_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 19 => u0_m0_wo0_mtree_mult1_25_im0_sub_0_q(18)) & u0_m0_wo0_mtree_mult1_25_im0_sub_0_q));
    u0_m0_wo0_mtree_mult1_25_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_mult1_25_align_8_q(25)) & u0_m0_wo0_mtree_mult1_25_align_8_q));
    u0_m0_wo0_mtree_mult1_25_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_25_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_25_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_25_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_25_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_25_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_25_result_add_0_0_o(26 downto 0);

    -- u0_m0_wo0_mtree_mult1_24_im4_shift0(BITSHIFT,463)@11
    u0_m0_wo0_mtree_mult1_24_im4_shift0_qint <= u0_m0_wo0_mtree_mult1_24_bs6_b & "00";
    u0_m0_wo0_mtree_mult1_24_im4_shift0_q <= u0_m0_wo0_mtree_mult1_24_im4_shift0_qint(8 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr12(DELAY,25)@10
    u0_m0_wo0_wi0_r0_delayr12 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr11_q, xout => u0_m0_wo0_wi0_r0_delayr12_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr12_q_11(DELAY,527)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr12_q_11 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr12_q, xout => d_u0_m0_wo0_wi0_r0_delayr12_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_24_bs6(BITSELECT,263)@11
    u0_m0_wo0_mtree_mult1_24_bs6_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr12_q_11_q);
    u0_m0_wo0_mtree_mult1_24_bs6_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_24_bs6_in(23 downto 17));

    -- u0_m0_wo0_mtree_mult1_24_im4_sub_1(SUB,464)@11 + 1
    u0_m0_wo0_mtree_mult1_24_im4_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 7 => u0_m0_wo0_mtree_mult1_24_bs6_b(6)) & u0_m0_wo0_mtree_mult1_24_bs6_b));
    u0_m0_wo0_mtree_mult1_24_im4_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 9 => u0_m0_wo0_mtree_mult1_24_im4_shift0_q(8)) & u0_m0_wo0_mtree_mult1_24_im4_shift0_q));
    u0_m0_wo0_mtree_mult1_24_im4_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_24_im4_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_24_im4_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_24_im4_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_24_im4_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_24_im4_sub_1_q <= u0_m0_wo0_mtree_mult1_24_im4_sub_1_o(9 downto 0);

    -- u0_m0_wo0_mtree_mult1_24_align_8(BITSHIFT,265)@12
    u0_m0_wo0_mtree_mult1_24_align_8_qint <= u0_m0_wo0_mtree_mult1_24_im4_sub_1_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_24_align_8_q <= u0_m0_wo0_mtree_mult1_24_align_8_qint(26 downto 0);

    -- u0_m0_wo0_mtree_mult1_24_im0_shift0(BITSHIFT,461)@11
    u0_m0_wo0_mtree_mult1_24_im0_shift0_qint <= u0_m0_wo0_mtree_mult1_24_bjB3_q & "00";
    u0_m0_wo0_mtree_mult1_24_im0_shift0_q <= u0_m0_wo0_mtree_mult1_24_im0_shift0_qint(19 downto 0);

    -- u0_m0_wo0_mtree_mult1_24_bs2(BITSELECT,259)@11
    u0_m0_wo0_mtree_mult1_24_bs2_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr12_q_11_q(16 downto 0));
    u0_m0_wo0_mtree_mult1_24_bs2_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_24_bs2_in(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_24_bjB3(BITJOIN,260)@11
    u0_m0_wo0_mtree_mult1_24_bjB3_q <= GND_q & u0_m0_wo0_mtree_mult1_24_bs2_b;

    -- u0_m0_wo0_mtree_mult1_24_im0_sub_1(SUB,462)@11 + 1
    u0_m0_wo0_mtree_mult1_24_im0_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 18 => u0_m0_wo0_mtree_mult1_24_bjB3_q(17)) & u0_m0_wo0_mtree_mult1_24_bjB3_q));
    u0_m0_wo0_mtree_mult1_24_im0_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => u0_m0_wo0_mtree_mult1_24_im0_shift0_q(19)) & u0_m0_wo0_mtree_mult1_24_im0_shift0_q));
    u0_m0_wo0_mtree_mult1_24_im0_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_24_im0_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_24_im0_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_24_im0_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_24_im0_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_24_im0_sub_1_q <= u0_m0_wo0_mtree_mult1_24_im0_sub_1_o(20 downto 0);

    -- u0_m0_wo0_mtree_mult1_24_result_add_0_0(ADD,267)@12 + 1
    u0_m0_wo0_mtree_mult1_24_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 21 => u0_m0_wo0_mtree_mult1_24_im0_sub_1_q(20)) & u0_m0_wo0_mtree_mult1_24_im0_sub_1_q));
    u0_m0_wo0_mtree_mult1_24_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_mult1_24_align_8_q(26)) & u0_m0_wo0_mtree_mult1_24_align_8_q));
    u0_m0_wo0_mtree_mult1_24_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_24_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_24_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_24_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_24_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_24_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_24_result_add_0_0_o(27 downto 0);

    -- u0_m0_wo0_mtree_add0_12(ADD,136)@13 + 1
    u0_m0_wo0_mtree_add0_12_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_24_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_12_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_mult1_25_result_add_0_0_q(26)) & u0_m0_wo0_mtree_mult1_25_result_add_0_0_q));
    u0_m0_wo0_mtree_add0_12_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_12_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_12_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_12_a) + SIGNED(u0_m0_wo0_mtree_add0_12_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_12_q <= u0_m0_wo0_mtree_add0_12_o(27 downto 0);

    -- u0_m0_wo0_mtree_add1_6(ADD,148)@14 + 1
    u0_m0_wo0_mtree_add1_6_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((28 downto 28 => u0_m0_wo0_mtree_add0_12_q(27)) & u0_m0_wo0_mtree_add0_12_q));
    u0_m0_wo0_mtree_add1_6_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((28 downto 27 => u0_m0_wo0_mtree_mult1_27_result_add_0_0_q(26)) & u0_m0_wo0_mtree_mult1_27_result_add_0_0_q));
    u0_m0_wo0_mtree_add1_6_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_6_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_6_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_6_a) + SIGNED(u0_m0_wo0_mtree_add1_6_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_6_q <= u0_m0_wo0_mtree_add1_6_o(28 downto 0);

    -- u0_m0_wo0_mtree_add2_3(ADD,154)@15 + 1
    u0_m0_wo0_mtree_add2_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_add1_6_q(28)) & u0_m0_wo0_mtree_add1_6_q));
    u0_m0_wo0_mtree_add2_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 28 => u0_m0_wo0_mtree_add1_7_q(27)) & u0_m0_wo0_mtree_add1_7_q));
    u0_m0_wo0_mtree_add2_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_3_a) + SIGNED(u0_m0_wo0_mtree_add2_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_3_q <= u0_m0_wo0_mtree_add2_3_o(29 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr13(DELAY,26)@10
    u0_m0_wo0_wi0_r0_delayr13 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr12_q, xout => u0_m0_wo0_wi0_r0_delayr13_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr13_q_12(DELAY,528)@10 + 2
    d_u0_m0_wo0_wi0_r0_delayr13_q_12 : dspba_delay
    GENERIC MAP ( width => 24, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr13_q, xout => d_u0_m0_wo0_wi0_r0_delayr13_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_23_bs6(BITSELECT,274)@12
    u0_m0_wo0_mtree_mult1_23_bs6_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr13_q_12_q);
    u0_m0_wo0_mtree_mult1_23_bs6_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_23_bs6_in(23 downto 17));

    -- u0_m0_wo0_mtree_mult1_23_im4_shift0(BITSHIFT,467)@12
    u0_m0_wo0_mtree_mult1_23_im4_shift0_qint <= u0_m0_wo0_mtree_mult1_23_bs6_b & "0";
    u0_m0_wo0_mtree_mult1_23_im4_shift0_q <= u0_m0_wo0_mtree_mult1_23_im4_shift0_qint(7 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_im4_sub_1(SUB,468)@12 + 1
    u0_m0_wo0_mtree_mult1_23_im4_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((8 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_23_im4_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((8 downto 8 => u0_m0_wo0_mtree_mult1_23_im4_shift0_q(7)) & u0_m0_wo0_mtree_mult1_23_im4_shift0_q));
    u0_m0_wo0_mtree_mult1_23_im4_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_23_im4_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_23_im4_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_23_im4_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_23_im4_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_23_im4_sub_1_q <= u0_m0_wo0_mtree_mult1_23_im4_sub_1_o(8 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_align_8(BITSHIFT,276)@13
    u0_m0_wo0_mtree_mult1_23_align_8_qint <= u0_m0_wo0_mtree_mult1_23_im4_sub_1_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_23_align_8_q <= u0_m0_wo0_mtree_mult1_23_align_8_qint(25 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_bs2(BITSELECT,270)@12
    u0_m0_wo0_mtree_mult1_23_bs2_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr13_q_12_q(16 downto 0));
    u0_m0_wo0_mtree_mult1_23_bs2_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_23_bs2_in(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_23_bjB3(BITJOIN,271)@12
    u0_m0_wo0_mtree_mult1_23_bjB3_q <= GND_q & u0_m0_wo0_mtree_mult1_23_bs2_b;

    -- u0_m0_wo0_mtree_mult1_23_im0_shift0(BITSHIFT,465)@12
    u0_m0_wo0_mtree_mult1_23_im0_shift0_qint <= u0_m0_wo0_mtree_mult1_23_bjB3_q & "0";
    u0_m0_wo0_mtree_mult1_23_im0_shift0_q <= u0_m0_wo0_mtree_mult1_23_im0_shift0_qint(18 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_im0_sub_1(SUB,466)@12 + 1
    u0_m0_wo0_mtree_mult1_23_im0_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_23_im0_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_mult1_23_im0_shift0_q(18)) & u0_m0_wo0_mtree_mult1_23_im0_shift0_q));
    u0_m0_wo0_mtree_mult1_23_im0_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_23_im0_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_23_im0_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_23_im0_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_23_im0_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_23_im0_sub_1_q <= u0_m0_wo0_mtree_mult1_23_im0_sub_1_o(19 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_result_add_0_0(ADD,278)@13 + 1
    u0_m0_wo0_mtree_mult1_23_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 20 => u0_m0_wo0_mtree_mult1_23_im0_sub_1_q(19)) & u0_m0_wo0_mtree_mult1_23_im0_sub_1_q));
    u0_m0_wo0_mtree_mult1_23_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_mult1_23_align_8_q(25)) & u0_m0_wo0_mtree_mult1_23_align_8_q));
    u0_m0_wo0_mtree_mult1_23_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_23_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_23_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_23_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_23_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_23_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_23_result_add_0_0_o(26 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr14(DELAY,27)@10
    u0_m0_wo0_wi0_r0_delayr14 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr13_q, xout => u0_m0_wo0_wi0_r0_delayr14_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr15(DELAY,28)@10
    u0_m0_wo0_wi0_r0_delayr15 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr14_q, xout => u0_m0_wo0_wi0_r0_delayr15_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr15_q_12(DELAY,529)@10 + 2
    d_u0_m0_wo0_wi0_r0_delayr15_q_12 : dspba_delay
    GENERIC MAP ( width => 24, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr15_q, xout => d_u0_m0_wo0_wi0_r0_delayr15_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_21_bs6(BITSELECT,285)@12
    u0_m0_wo0_mtree_mult1_21_bs6_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr15_q_12_q);
    u0_m0_wo0_mtree_mult1_21_bs6_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_21_bs6_in(23 downto 17));

    -- u0_m0_wo0_mtree_mult1_21_im4_shift0(BITSHIFT,470)@12
    u0_m0_wo0_mtree_mult1_21_im4_shift0_qint <= u0_m0_wo0_mtree_mult1_21_bs6_b & "00";
    u0_m0_wo0_mtree_mult1_21_im4_shift0_q <= u0_m0_wo0_mtree_mult1_21_im4_shift0_qint(8 downto 0);

    -- u0_m0_wo0_mtree_mult1_21_align_8(BITSHIFT,287)@12
    u0_m0_wo0_mtree_mult1_21_align_8_qint <= STD_LOGIC_VECTOR((10 downto 9 => u0_m0_wo0_mtree_mult1_21_im4_shift0_q(8)) & u0_m0_wo0_mtree_mult1_21_im4_shift0_q) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_21_align_8_q <= u0_m0_wo0_mtree_mult1_21_align_8_qint(27 downto 0);

    -- u0_m0_wo0_mtree_mult1_21_bs2(BITSELECT,281)@12
    u0_m0_wo0_mtree_mult1_21_bs2_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr15_q_12_q(16 downto 0));
    u0_m0_wo0_mtree_mult1_21_bs2_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_21_bs2_in(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_21_bjB3(BITJOIN,282)@12
    u0_m0_wo0_mtree_mult1_21_bjB3_q <= GND_q & u0_m0_wo0_mtree_mult1_21_bs2_b;

    -- u0_m0_wo0_mtree_mult1_21_im0_shift0(BITSHIFT,469)@12
    u0_m0_wo0_mtree_mult1_21_im0_shift0_qint <= u0_m0_wo0_mtree_mult1_21_bjB3_q & "00";
    u0_m0_wo0_mtree_mult1_21_im0_shift0_q <= u0_m0_wo0_mtree_mult1_21_im0_shift0_qint(19 downto 0);

    -- u0_m0_wo0_mtree_mult1_21_result_add_0_0(ADD,289)@12 + 1
    u0_m0_wo0_mtree_mult1_21_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((28 downto 20 => u0_m0_wo0_mtree_mult1_21_im0_shift0_q(19)) & u0_m0_wo0_mtree_mult1_21_im0_shift0_q));
    u0_m0_wo0_mtree_mult1_21_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((28 downto 28 => u0_m0_wo0_mtree_mult1_21_align_8_q(27)) & u0_m0_wo0_mtree_mult1_21_align_8_q));
    u0_m0_wo0_mtree_mult1_21_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_21_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_21_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_21_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_21_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_21_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_21_result_add_0_0_o(28 downto 0);

    -- u0_m0_wo0_mtree_mult1_20_im4_shift0(BITSHIFT,473)@11
    u0_m0_wo0_mtree_mult1_20_im4_shift0_qint <= u0_m0_wo0_mtree_mult1_20_bs6_b & "000";
    u0_m0_wo0_mtree_mult1_20_im4_shift0_q <= u0_m0_wo0_mtree_mult1_20_im4_shift0_qint(9 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr16(DELAY,29)@10
    u0_m0_wo0_wi0_r0_delayr16 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr15_q, xout => u0_m0_wo0_wi0_r0_delayr16_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr16_q_11(DELAY,530)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr16_q_11 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr16_q, xout => d_u0_m0_wo0_wi0_r0_delayr16_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_20_bs6(BITSELECT,296)@11
    u0_m0_wo0_mtree_mult1_20_bs6_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr16_q_11_q);
    u0_m0_wo0_mtree_mult1_20_bs6_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_20_bs6_in(23 downto 17));

    -- u0_m0_wo0_mtree_mult1_20_im4_add_1(ADD,474)@11 + 1
    u0_m0_wo0_mtree_mult1_20_im4_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 7 => u0_m0_wo0_mtree_mult1_20_bs6_b(6)) & u0_m0_wo0_mtree_mult1_20_bs6_b));
    u0_m0_wo0_mtree_mult1_20_im4_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 10 => u0_m0_wo0_mtree_mult1_20_im4_shift0_q(9)) & u0_m0_wo0_mtree_mult1_20_im4_shift0_q));
    u0_m0_wo0_mtree_mult1_20_im4_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_20_im4_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_20_im4_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_20_im4_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_20_im4_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_20_im4_add_1_q <= u0_m0_wo0_mtree_mult1_20_im4_add_1_o(10 downto 0);

    -- u0_m0_wo0_mtree_mult1_20_align_8(BITSHIFT,298)@12
    u0_m0_wo0_mtree_mult1_20_align_8_qint <= STD_LOGIC_VECTOR((11 downto 11 => u0_m0_wo0_mtree_mult1_20_im4_add_1_q(10)) & u0_m0_wo0_mtree_mult1_20_im4_add_1_q) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_20_align_8_q <= u0_m0_wo0_mtree_mult1_20_align_8_qint(28 downto 0);

    -- u0_m0_wo0_mtree_mult1_20_im0_shift0(BITSHIFT,471)@11
    u0_m0_wo0_mtree_mult1_20_im0_shift0_qint <= u0_m0_wo0_mtree_mult1_20_bjB3_q & "000";
    u0_m0_wo0_mtree_mult1_20_im0_shift0_q <= u0_m0_wo0_mtree_mult1_20_im0_shift0_qint(20 downto 0);

    -- u0_m0_wo0_mtree_mult1_20_bs2(BITSELECT,292)@11
    u0_m0_wo0_mtree_mult1_20_bs2_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr16_q_11_q(16 downto 0));
    u0_m0_wo0_mtree_mult1_20_bs2_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_20_bs2_in(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_20_bjB3(BITJOIN,293)@11
    u0_m0_wo0_mtree_mult1_20_bjB3_q <= GND_q & u0_m0_wo0_mtree_mult1_20_bs2_b;

    -- u0_m0_wo0_mtree_mult1_20_im0_add_1(ADD,472)@11 + 1
    u0_m0_wo0_mtree_mult1_20_im0_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 18 => u0_m0_wo0_mtree_mult1_20_bjB3_q(17)) & u0_m0_wo0_mtree_mult1_20_bjB3_q));
    u0_m0_wo0_mtree_mult1_20_im0_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_20_im0_shift0_q(20)) & u0_m0_wo0_mtree_mult1_20_im0_shift0_q));
    u0_m0_wo0_mtree_mult1_20_im0_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_20_im0_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_20_im0_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_20_im0_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_20_im0_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_20_im0_add_1_q <= u0_m0_wo0_mtree_mult1_20_im0_add_1_o(21 downto 0);

    -- u0_m0_wo0_mtree_mult1_20_result_add_0_0(ADD,300)@12 + 1
    u0_m0_wo0_mtree_mult1_20_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 22 => u0_m0_wo0_mtree_mult1_20_im0_add_1_q(21)) & u0_m0_wo0_mtree_mult1_20_im0_add_1_q));
    u0_m0_wo0_mtree_mult1_20_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_20_align_8_q(28)) & u0_m0_wo0_mtree_mult1_20_align_8_q));
    u0_m0_wo0_mtree_mult1_20_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_20_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_20_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_20_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_20_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_20_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_20_result_add_0_0_o(29 downto 0);

    -- u0_m0_wo0_mtree_add0_10(ADD,134)@13 + 1
    u0_m0_wo0_mtree_add0_10_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_20_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_10_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_21_result_add_0_0_q(28)) & u0_m0_wo0_mtree_mult1_21_result_add_0_0_q));
    u0_m0_wo0_mtree_add0_10_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_10_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_10_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_10_a) + SIGNED(u0_m0_wo0_mtree_add0_10_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_10_q <= u0_m0_wo0_mtree_add0_10_o(29 downto 0);

    -- u0_m0_wo0_mtree_add1_5(ADD,147)@14 + 1
    u0_m0_wo0_mtree_add1_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_add0_10_q(29)) & u0_m0_wo0_mtree_add0_10_q));
    u0_m0_wo0_mtree_add1_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 27 => u0_m0_wo0_mtree_mult1_23_result_add_0_0_q(26)) & u0_m0_wo0_mtree_mult1_23_result_add_0_0_q));
    u0_m0_wo0_mtree_add1_5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_5_a) + SIGNED(u0_m0_wo0_mtree_add1_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_5_q <= u0_m0_wo0_mtree_add1_5_o(30 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr17(DELAY,30)@10
    u0_m0_wo0_wi0_r0_delayr17 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr16_q, xout => u0_m0_wo0_wi0_r0_delayr17_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_19_bs6(BITSELECT,307)@10
    u0_m0_wo0_mtree_mult1_19_bs6_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr17_q);
    u0_m0_wo0_mtree_mult1_19_bs6_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_19_bs6_in(23 downto 17));

    -- d_u0_m0_wo0_mtree_mult1_19_bs6_b_11(DELAY,540)@10 + 1
    d_u0_m0_wo0_mtree_mult1_19_bs6_b_11 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_19_bs6_b, xout => d_u0_m0_wo0_mtree_mult1_19_bs6_b_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_19_im4_shift2(BITSHIFT,481)@11
    u0_m0_wo0_mtree_mult1_19_im4_shift2_qint <= d_u0_m0_wo0_mtree_mult1_19_bs6_b_11_q & "000";
    u0_m0_wo0_mtree_mult1_19_im4_shift2_q <= u0_m0_wo0_mtree_mult1_19_im4_shift2_qint(9 downto 0);

    -- u0_m0_wo0_mtree_mult1_19_im4_shift0(BITSHIFT,479)@10
    u0_m0_wo0_mtree_mult1_19_im4_shift0_qint <= u0_m0_wo0_mtree_mult1_19_bs6_b & "00";
    u0_m0_wo0_mtree_mult1_19_im4_shift0_q <= u0_m0_wo0_mtree_mult1_19_im4_shift0_qint(8 downto 0);

    -- u0_m0_wo0_mtree_mult1_19_im4_add_1(ADD,480)@10 + 1
    u0_m0_wo0_mtree_mult1_19_im4_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 7 => u0_m0_wo0_mtree_mult1_19_bs6_b(6)) & u0_m0_wo0_mtree_mult1_19_bs6_b));
    u0_m0_wo0_mtree_mult1_19_im4_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 9 => u0_m0_wo0_mtree_mult1_19_im4_shift0_q(8)) & u0_m0_wo0_mtree_mult1_19_im4_shift0_q));
    u0_m0_wo0_mtree_mult1_19_im4_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_19_im4_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_19_im4_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_19_im4_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_19_im4_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_19_im4_add_1_q <= u0_m0_wo0_mtree_mult1_19_im4_add_1_o(9 downto 0);

    -- u0_m0_wo0_mtree_mult1_19_im4_add_3(ADD,482)@11 + 1
    u0_m0_wo0_mtree_mult1_19_im4_add_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 10 => u0_m0_wo0_mtree_mult1_19_im4_add_1_q(9)) & u0_m0_wo0_mtree_mult1_19_im4_add_1_q));
    u0_m0_wo0_mtree_mult1_19_im4_add_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 10 => u0_m0_wo0_mtree_mult1_19_im4_shift2_q(9)) & u0_m0_wo0_mtree_mult1_19_im4_shift2_q));
    u0_m0_wo0_mtree_mult1_19_im4_add_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_19_im4_add_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_19_im4_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_19_im4_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_19_im4_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_19_im4_add_3_q <= u0_m0_wo0_mtree_mult1_19_im4_add_3_o(10 downto 0);

    -- u0_m0_wo0_mtree_mult1_19_align_8(BITSHIFT,309)@12
    u0_m0_wo0_mtree_mult1_19_align_8_qint <= STD_LOGIC_VECTOR((11 downto 11 => u0_m0_wo0_mtree_mult1_19_im4_add_3_q(10)) & u0_m0_wo0_mtree_mult1_19_im4_add_3_q) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_19_align_8_q <= u0_m0_wo0_mtree_mult1_19_align_8_qint(28 downto 0);

    -- u0_m0_wo0_mtree_mult1_19_bs2(BITSELECT,303)@10
    u0_m0_wo0_mtree_mult1_19_bs2_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr17_q(16 downto 0));
    u0_m0_wo0_mtree_mult1_19_bs2_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_19_bs2_in(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_19_bjB3(BITJOIN,304)@10
    u0_m0_wo0_mtree_mult1_19_bjB3_q <= GND_q & u0_m0_wo0_mtree_mult1_19_bs2_b;

    -- d_u0_m0_wo0_mtree_mult1_19_bjB3_q_11(DELAY,539)@10 + 1
    d_u0_m0_wo0_mtree_mult1_19_bjB3_q_11 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_19_bjB3_q, xout => d_u0_m0_wo0_mtree_mult1_19_bjB3_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_19_im0_shift2(BITSHIFT,477)@11
    u0_m0_wo0_mtree_mult1_19_im0_shift2_qint <= d_u0_m0_wo0_mtree_mult1_19_bjB3_q_11_q & "000";
    u0_m0_wo0_mtree_mult1_19_im0_shift2_q <= u0_m0_wo0_mtree_mult1_19_im0_shift2_qint(20 downto 0);

    -- u0_m0_wo0_mtree_mult1_19_im0_shift0(BITSHIFT,475)@10
    u0_m0_wo0_mtree_mult1_19_im0_shift0_qint <= u0_m0_wo0_mtree_mult1_19_bjB3_q & "00";
    u0_m0_wo0_mtree_mult1_19_im0_shift0_q <= u0_m0_wo0_mtree_mult1_19_im0_shift0_qint(19 downto 0);

    -- u0_m0_wo0_mtree_mult1_19_im0_add_1(ADD,476)@10 + 1
    u0_m0_wo0_mtree_mult1_19_im0_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 18 => u0_m0_wo0_mtree_mult1_19_bjB3_q(17)) & u0_m0_wo0_mtree_mult1_19_bjB3_q));
    u0_m0_wo0_mtree_mult1_19_im0_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => u0_m0_wo0_mtree_mult1_19_im0_shift0_q(19)) & u0_m0_wo0_mtree_mult1_19_im0_shift0_q));
    u0_m0_wo0_mtree_mult1_19_im0_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_19_im0_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_19_im0_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_19_im0_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_19_im0_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_19_im0_add_1_q <= u0_m0_wo0_mtree_mult1_19_im0_add_1_o(20 downto 0);

    -- u0_m0_wo0_mtree_mult1_19_im0_add_3(ADD,478)@11 + 1
    u0_m0_wo0_mtree_mult1_19_im0_add_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_19_im0_add_1_q(20)) & u0_m0_wo0_mtree_mult1_19_im0_add_1_q));
    u0_m0_wo0_mtree_mult1_19_im0_add_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_19_im0_shift2_q(20)) & u0_m0_wo0_mtree_mult1_19_im0_shift2_q));
    u0_m0_wo0_mtree_mult1_19_im0_add_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_19_im0_add_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_19_im0_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_19_im0_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_19_im0_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_19_im0_add_3_q <= u0_m0_wo0_mtree_mult1_19_im0_add_3_o(21 downto 0);

    -- u0_m0_wo0_mtree_mult1_19_result_add_0_0(ADD,311)@12 + 1
    u0_m0_wo0_mtree_mult1_19_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 22 => u0_m0_wo0_mtree_mult1_19_im0_add_3_q(21)) & u0_m0_wo0_mtree_mult1_19_im0_add_3_q));
    u0_m0_wo0_mtree_mult1_19_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_19_align_8_q(28)) & u0_m0_wo0_mtree_mult1_19_align_8_q));
    u0_m0_wo0_mtree_mult1_19_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_19_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_19_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_19_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_19_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_19_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_19_result_add_0_0_o(29 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr18(DELAY,31)@10
    u0_m0_wo0_wi0_r0_delayr18 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr17_q, xout => u0_m0_wo0_wi0_r0_delayr18_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr18_q_11(DELAY,531)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr18_q_11 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr18_q, xout => d_u0_m0_wo0_wi0_r0_delayr18_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_18_bs6(BITSELECT,318)@11
    u0_m0_wo0_mtree_mult1_18_bs6_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr18_q_11_q);
    u0_m0_wo0_mtree_mult1_18_bs6_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_18_bs6_in(23 downto 17));

    -- u0_m0_wo0_mtree_mult1_18_im4_shift0(BITSHIFT,485)@11
    u0_m0_wo0_mtree_mult1_18_im4_shift0_qint <= u0_m0_wo0_mtree_mult1_18_bs6_b & "0000";
    u0_m0_wo0_mtree_mult1_18_im4_shift0_q <= u0_m0_wo0_mtree_mult1_18_im4_shift0_qint(10 downto 0);

    -- u0_m0_wo0_mtree_mult1_18_im4_sub_1(SUB,486)@11 + 1
    u0_m0_wo0_mtree_mult1_18_im4_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 11 => u0_m0_wo0_mtree_mult1_18_im4_shift0_q(10)) & u0_m0_wo0_mtree_mult1_18_im4_shift0_q));
    u0_m0_wo0_mtree_mult1_18_im4_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 7 => u0_m0_wo0_mtree_mult1_18_bs6_b(6)) & u0_m0_wo0_mtree_mult1_18_bs6_b));
    u0_m0_wo0_mtree_mult1_18_im4_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_18_im4_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_18_im4_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_18_im4_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_18_im4_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_18_im4_sub_1_q <= u0_m0_wo0_mtree_mult1_18_im4_sub_1_o(11 downto 0);

    -- u0_m0_wo0_mtree_mult1_18_align_8(BITSHIFT,320)@12
    u0_m0_wo0_mtree_mult1_18_align_8_qint <= u0_m0_wo0_mtree_mult1_18_im4_sub_1_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_18_align_8_q <= u0_m0_wo0_mtree_mult1_18_align_8_qint(28 downto 0);

    -- u0_m0_wo0_mtree_mult1_18_bs2(BITSELECT,314)@11
    u0_m0_wo0_mtree_mult1_18_bs2_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr18_q_11_q(16 downto 0));
    u0_m0_wo0_mtree_mult1_18_bs2_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_18_bs2_in(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_18_bjB3(BITJOIN,315)@11
    u0_m0_wo0_mtree_mult1_18_bjB3_q <= GND_q & u0_m0_wo0_mtree_mult1_18_bs2_b;

    -- u0_m0_wo0_mtree_mult1_18_im0_shift0(BITSHIFT,483)@11
    u0_m0_wo0_mtree_mult1_18_im0_shift0_qint <= u0_m0_wo0_mtree_mult1_18_bjB3_q & "0000";
    u0_m0_wo0_mtree_mult1_18_im0_shift0_q <= u0_m0_wo0_mtree_mult1_18_im0_shift0_qint(21 downto 0);

    -- u0_m0_wo0_mtree_mult1_18_im0_sub_1(SUB,484)@11 + 1
    u0_m0_wo0_mtree_mult1_18_im0_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_mult1_18_im0_shift0_q(21)) & u0_m0_wo0_mtree_mult1_18_im0_shift0_q));
    u0_m0_wo0_mtree_mult1_18_im0_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 18 => u0_m0_wo0_mtree_mult1_18_bjB3_q(17)) & u0_m0_wo0_mtree_mult1_18_bjB3_q));
    u0_m0_wo0_mtree_mult1_18_im0_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_18_im0_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_18_im0_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_18_im0_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_18_im0_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_18_im0_sub_1_q <= u0_m0_wo0_mtree_mult1_18_im0_sub_1_o(22 downto 0);

    -- u0_m0_wo0_mtree_mult1_18_result_add_0_0(ADD,322)@12 + 1
    u0_m0_wo0_mtree_mult1_18_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 23 => u0_m0_wo0_mtree_mult1_18_im0_sub_1_q(22)) & u0_m0_wo0_mtree_mult1_18_im0_sub_1_q));
    u0_m0_wo0_mtree_mult1_18_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_18_align_8_q(28)) & u0_m0_wo0_mtree_mult1_18_align_8_q));
    u0_m0_wo0_mtree_mult1_18_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_18_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_18_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_18_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_18_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_18_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_18_result_add_0_0_o(29 downto 0);

    -- u0_m0_wo0_mtree_add0_9(ADD,133)@13 + 1
    u0_m0_wo0_mtree_add0_9_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_18_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_9_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_19_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_9_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_9_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_9_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_9_a) + SIGNED(u0_m0_wo0_mtree_add0_9_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_9_q <= u0_m0_wo0_mtree_add0_9_o(29 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr19(DELAY,32)@10
    u0_m0_wo0_wi0_r0_delayr19 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr18_q, xout => u0_m0_wo0_wi0_r0_delayr19_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_17_bs6(BITSELECT,329)@10
    u0_m0_wo0_mtree_mult1_17_bs6_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr19_q);
    u0_m0_wo0_mtree_mult1_17_bs6_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_17_bs6_in(23 downto 17));

    -- d_u0_m0_wo0_mtree_mult1_17_bs6_b_11(DELAY,542)@10 + 1
    d_u0_m0_wo0_mtree_mult1_17_bs6_b_11 : dspba_delay
    GENERIC MAP ( width => 7, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_17_bs6_b, xout => d_u0_m0_wo0_mtree_mult1_17_bs6_b_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_17_im4_shift2(BITSHIFT,493)@11
    u0_m0_wo0_mtree_mult1_17_im4_shift2_qint <= d_u0_m0_wo0_mtree_mult1_17_bs6_b_11_q & "000";
    u0_m0_wo0_mtree_mult1_17_im4_shift2_q <= u0_m0_wo0_mtree_mult1_17_im4_shift2_qint(9 downto 0);

    -- u0_m0_wo0_mtree_mult1_17_im4_shift0(BITSHIFT,491)@10
    u0_m0_wo0_mtree_mult1_17_im4_shift0_qint <= u0_m0_wo0_mtree_mult1_17_bs6_b & "00";
    u0_m0_wo0_mtree_mult1_17_im4_shift0_q <= u0_m0_wo0_mtree_mult1_17_im4_shift0_qint(8 downto 0);

    -- u0_m0_wo0_mtree_mult1_17_im4_add_1(ADD,492)@10 + 1
    u0_m0_wo0_mtree_mult1_17_im4_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 7 => u0_m0_wo0_mtree_mult1_17_bs6_b(6)) & u0_m0_wo0_mtree_mult1_17_bs6_b));
    u0_m0_wo0_mtree_mult1_17_im4_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 9 => u0_m0_wo0_mtree_mult1_17_im4_shift0_q(8)) & u0_m0_wo0_mtree_mult1_17_im4_shift0_q));
    u0_m0_wo0_mtree_mult1_17_im4_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_17_im4_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_17_im4_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_17_im4_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_17_im4_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_17_im4_add_1_q <= u0_m0_wo0_mtree_mult1_17_im4_add_1_o(9 downto 0);

    -- u0_m0_wo0_mtree_mult1_17_im4_add_3(ADD,494)@11 + 1
    u0_m0_wo0_mtree_mult1_17_im4_add_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 10 => u0_m0_wo0_mtree_mult1_17_im4_add_1_q(9)) & u0_m0_wo0_mtree_mult1_17_im4_add_1_q));
    u0_m0_wo0_mtree_mult1_17_im4_add_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 10 => u0_m0_wo0_mtree_mult1_17_im4_shift2_q(9)) & u0_m0_wo0_mtree_mult1_17_im4_shift2_q));
    u0_m0_wo0_mtree_mult1_17_im4_add_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_17_im4_add_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_17_im4_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_17_im4_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_17_im4_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_17_im4_add_3_q <= u0_m0_wo0_mtree_mult1_17_im4_add_3_o(10 downto 0);

    -- u0_m0_wo0_mtree_mult1_17_align_8(BITSHIFT,331)@12
    u0_m0_wo0_mtree_mult1_17_align_8_qint <= STD_LOGIC_VECTOR((11 downto 11 => u0_m0_wo0_mtree_mult1_17_im4_add_3_q(10)) & u0_m0_wo0_mtree_mult1_17_im4_add_3_q) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_17_align_8_q <= u0_m0_wo0_mtree_mult1_17_align_8_qint(28 downto 0);

    -- u0_m0_wo0_mtree_mult1_17_bs2(BITSELECT,325)@10
    u0_m0_wo0_mtree_mult1_17_bs2_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr19_q(16 downto 0));
    u0_m0_wo0_mtree_mult1_17_bs2_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_17_bs2_in(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_17_bjB3(BITJOIN,326)@10
    u0_m0_wo0_mtree_mult1_17_bjB3_q <= GND_q & u0_m0_wo0_mtree_mult1_17_bs2_b;

    -- d_u0_m0_wo0_mtree_mult1_17_bjB3_q_11(DELAY,541)@10 + 1
    d_u0_m0_wo0_mtree_mult1_17_bjB3_q_11 : dspba_delay
    GENERIC MAP ( width => 18, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_mtree_mult1_17_bjB3_q, xout => d_u0_m0_wo0_mtree_mult1_17_bjB3_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_17_im0_shift2(BITSHIFT,489)@11
    u0_m0_wo0_mtree_mult1_17_im0_shift2_qint <= d_u0_m0_wo0_mtree_mult1_17_bjB3_q_11_q & "000";
    u0_m0_wo0_mtree_mult1_17_im0_shift2_q <= u0_m0_wo0_mtree_mult1_17_im0_shift2_qint(20 downto 0);

    -- u0_m0_wo0_mtree_mult1_17_im0_shift0(BITSHIFT,487)@10
    u0_m0_wo0_mtree_mult1_17_im0_shift0_qint <= u0_m0_wo0_mtree_mult1_17_bjB3_q & "00";
    u0_m0_wo0_mtree_mult1_17_im0_shift0_q <= u0_m0_wo0_mtree_mult1_17_im0_shift0_qint(19 downto 0);

    -- u0_m0_wo0_mtree_mult1_17_im0_add_1(ADD,488)@10 + 1
    u0_m0_wo0_mtree_mult1_17_im0_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 18 => u0_m0_wo0_mtree_mult1_17_bjB3_q(17)) & u0_m0_wo0_mtree_mult1_17_bjB3_q));
    u0_m0_wo0_mtree_mult1_17_im0_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => u0_m0_wo0_mtree_mult1_17_im0_shift0_q(19)) & u0_m0_wo0_mtree_mult1_17_im0_shift0_q));
    u0_m0_wo0_mtree_mult1_17_im0_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_17_im0_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_17_im0_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_17_im0_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_17_im0_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_17_im0_add_1_q <= u0_m0_wo0_mtree_mult1_17_im0_add_1_o(20 downto 0);

    -- u0_m0_wo0_mtree_mult1_17_im0_add_3(ADD,490)@11 + 1
    u0_m0_wo0_mtree_mult1_17_im0_add_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_17_im0_add_1_q(20)) & u0_m0_wo0_mtree_mult1_17_im0_add_1_q));
    u0_m0_wo0_mtree_mult1_17_im0_add_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_17_im0_shift2_q(20)) & u0_m0_wo0_mtree_mult1_17_im0_shift2_q));
    u0_m0_wo0_mtree_mult1_17_im0_add_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_17_im0_add_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_17_im0_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_17_im0_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_17_im0_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_17_im0_add_3_q <= u0_m0_wo0_mtree_mult1_17_im0_add_3_o(21 downto 0);

    -- u0_m0_wo0_mtree_mult1_17_result_add_0_0(ADD,333)@12 + 1
    u0_m0_wo0_mtree_mult1_17_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 22 => u0_m0_wo0_mtree_mult1_17_im0_add_3_q(21)) & u0_m0_wo0_mtree_mult1_17_im0_add_3_q));
    u0_m0_wo0_mtree_mult1_17_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_17_align_8_q(28)) & u0_m0_wo0_mtree_mult1_17_align_8_q));
    u0_m0_wo0_mtree_mult1_17_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_17_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_17_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_17_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_17_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_17_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_17_result_add_0_0_o(29 downto 0);

    -- u0_m0_wo0_mtree_mult1_16_im4_shift0(BITSHIFT,497)@11
    u0_m0_wo0_mtree_mult1_16_im4_shift0_qint <= u0_m0_wo0_mtree_mult1_16_bs6_b & "000";
    u0_m0_wo0_mtree_mult1_16_im4_shift0_q <= u0_m0_wo0_mtree_mult1_16_im4_shift0_qint(9 downto 0);

    -- d_u0_m0_wo0_memread_q_11(DELAY,515)@10 + 1
    d_u0_m0_wo0_memread_q_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_v, xout => d_u0_m0_wo0_memread_q_11_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_compute_q_11(DELAY,517)@10 + 1
    d_u0_m0_wo0_compute_q_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_v, xout => d_u0_m0_wo0_compute_q_11_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr19_q_11(DELAY,532)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr19_q_11 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr19_q, xout => d_u0_m0_wo0_wi0_r0_delayr19_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr20(DELAY,33)@11
    u0_m0_wo0_wi0_r0_delayr20 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_wi0_r0_delayr19_q_11_q, xout => u0_m0_wo0_wi0_r0_delayr20_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_16_bs6(BITSELECT,340)@11
    u0_m0_wo0_mtree_mult1_16_bs6_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr20_q);
    u0_m0_wo0_mtree_mult1_16_bs6_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_16_bs6_in(23 downto 17));

    -- u0_m0_wo0_mtree_mult1_16_im4_add_1(ADD,498)@11 + 1
    u0_m0_wo0_mtree_mult1_16_im4_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 7 => u0_m0_wo0_mtree_mult1_16_bs6_b(6)) & u0_m0_wo0_mtree_mult1_16_bs6_b));
    u0_m0_wo0_mtree_mult1_16_im4_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((10 downto 10 => u0_m0_wo0_mtree_mult1_16_im4_shift0_q(9)) & u0_m0_wo0_mtree_mult1_16_im4_shift0_q));
    u0_m0_wo0_mtree_mult1_16_im4_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_16_im4_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_16_im4_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_16_im4_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_16_im4_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_16_im4_add_1_q <= u0_m0_wo0_mtree_mult1_16_im4_add_1_o(10 downto 0);

    -- u0_m0_wo0_mtree_mult1_16_align_8(BITSHIFT,342)@12
    u0_m0_wo0_mtree_mult1_16_align_8_qint <= STD_LOGIC_VECTOR((11 downto 11 => u0_m0_wo0_mtree_mult1_16_im4_add_1_q(10)) & u0_m0_wo0_mtree_mult1_16_im4_add_1_q) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_16_align_8_q <= u0_m0_wo0_mtree_mult1_16_align_8_qint(28 downto 0);

    -- u0_m0_wo0_mtree_mult1_16_im0_shift0(BITSHIFT,495)@11
    u0_m0_wo0_mtree_mult1_16_im0_shift0_qint <= u0_m0_wo0_mtree_mult1_16_bjB3_q & "000";
    u0_m0_wo0_mtree_mult1_16_im0_shift0_q <= u0_m0_wo0_mtree_mult1_16_im0_shift0_qint(20 downto 0);

    -- u0_m0_wo0_mtree_mult1_16_bs2(BITSELECT,336)@11
    u0_m0_wo0_mtree_mult1_16_bs2_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr20_q(16 downto 0));
    u0_m0_wo0_mtree_mult1_16_bs2_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_16_bs2_in(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_16_bjB3(BITJOIN,337)@11
    u0_m0_wo0_mtree_mult1_16_bjB3_q <= GND_q & u0_m0_wo0_mtree_mult1_16_bs2_b;

    -- u0_m0_wo0_mtree_mult1_16_im0_add_1(ADD,496)@11 + 1
    u0_m0_wo0_mtree_mult1_16_im0_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 18 => u0_m0_wo0_mtree_mult1_16_bjB3_q(17)) & u0_m0_wo0_mtree_mult1_16_bjB3_q));
    u0_m0_wo0_mtree_mult1_16_im0_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_16_im0_shift0_q(20)) & u0_m0_wo0_mtree_mult1_16_im0_shift0_q));
    u0_m0_wo0_mtree_mult1_16_im0_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_16_im0_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_16_im0_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_16_im0_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_16_im0_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_16_im0_add_1_q <= u0_m0_wo0_mtree_mult1_16_im0_add_1_o(21 downto 0);

    -- u0_m0_wo0_mtree_mult1_16_result_add_0_0(ADD,344)@12 + 1
    u0_m0_wo0_mtree_mult1_16_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 22 => u0_m0_wo0_mtree_mult1_16_im0_add_1_q(21)) & u0_m0_wo0_mtree_mult1_16_im0_add_1_q));
    u0_m0_wo0_mtree_mult1_16_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_16_align_8_q(28)) & u0_m0_wo0_mtree_mult1_16_align_8_q));
    u0_m0_wo0_mtree_mult1_16_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_16_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_16_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_16_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_16_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_16_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_16_result_add_0_0_o(29 downto 0);

    -- u0_m0_wo0_mtree_add0_8(ADD,132)@13 + 1
    u0_m0_wo0_mtree_add0_8_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_16_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_8_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_17_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_8_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_8_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_8_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_8_a) + SIGNED(u0_m0_wo0_mtree_add0_8_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_8_q <= u0_m0_wo0_mtree_add0_8_o(29 downto 0);

    -- u0_m0_wo0_mtree_add1_4(ADD,146)@14 + 1
    u0_m0_wo0_mtree_add1_4_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_add0_8_q(29)) & u0_m0_wo0_mtree_add0_8_q));
    u0_m0_wo0_mtree_add1_4_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_add0_9_q(29)) & u0_m0_wo0_mtree_add0_9_q));
    u0_m0_wo0_mtree_add1_4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_4_a) + SIGNED(u0_m0_wo0_mtree_add1_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_4_q <= u0_m0_wo0_mtree_add1_4_o(30 downto 0);

    -- u0_m0_wo0_mtree_add2_2(ADD,153)@15 + 1
    u0_m0_wo0_mtree_add2_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 31 => u0_m0_wo0_mtree_add1_4_q(30)) & u0_m0_wo0_mtree_add1_4_q));
    u0_m0_wo0_mtree_add2_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 31 => u0_m0_wo0_mtree_add1_5_q(30)) & u0_m0_wo0_mtree_add1_5_q));
    u0_m0_wo0_mtree_add2_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_2_a) + SIGNED(u0_m0_wo0_mtree_add2_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_2_q <= u0_m0_wo0_mtree_add2_2_o(31 downto 0);

    -- u0_m0_wo0_mtree_add3_1(ADD,157)@16 + 1
    u0_m0_wo0_mtree_add3_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_add2_2_q(31)) & u0_m0_wo0_mtree_add2_2_q));
    u0_m0_wo0_mtree_add3_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 30 => u0_m0_wo0_mtree_add2_3_q(29)) & u0_m0_wo0_mtree_add2_3_q));
    u0_m0_wo0_mtree_add3_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_1_a) + SIGNED(u0_m0_wo0_mtree_add3_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_1_q <= u0_m0_wo0_mtree_add3_1_o(32 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr21(DELAY,34)@11
    u0_m0_wo0_wi0_r0_delayr21 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr20_q, xout => u0_m0_wo0_wi0_r0_delayr21_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr21_q_13(DELAY,533)@11 + 2
    d_u0_m0_wo0_wi0_r0_delayr21_q_13 : dspba_delay
    GENERIC MAP ( width => 24, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr21_q, xout => d_u0_m0_wo0_wi0_r0_delayr21_q_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_15_bs6(BITSELECT,351)@13
    u0_m0_wo0_mtree_mult1_15_bs6_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr21_q_13_q);
    u0_m0_wo0_mtree_mult1_15_bs6_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_15_bs6_in(23 downto 17));

    -- u0_m0_wo0_mtree_mult1_15_im4_shift0(BITSHIFT,500)@13
    u0_m0_wo0_mtree_mult1_15_im4_shift0_qint <= u0_m0_wo0_mtree_mult1_15_bs6_b & "00";
    u0_m0_wo0_mtree_mult1_15_im4_shift0_q <= u0_m0_wo0_mtree_mult1_15_im4_shift0_qint(8 downto 0);

    -- u0_m0_wo0_mtree_mult1_15_align_8(BITSHIFT,353)@13
    u0_m0_wo0_mtree_mult1_15_align_8_qint <= STD_LOGIC_VECTOR((10 downto 9 => u0_m0_wo0_mtree_mult1_15_im4_shift0_q(8)) & u0_m0_wo0_mtree_mult1_15_im4_shift0_q) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_15_align_8_q <= u0_m0_wo0_mtree_mult1_15_align_8_qint(27 downto 0);

    -- u0_m0_wo0_mtree_mult1_15_bs2(BITSELECT,347)@13
    u0_m0_wo0_mtree_mult1_15_bs2_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr21_q_13_q(16 downto 0));
    u0_m0_wo0_mtree_mult1_15_bs2_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_15_bs2_in(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_15_bjB3(BITJOIN,348)@13
    u0_m0_wo0_mtree_mult1_15_bjB3_q <= GND_q & u0_m0_wo0_mtree_mult1_15_bs2_b;

    -- u0_m0_wo0_mtree_mult1_15_im0_shift0(BITSHIFT,499)@13
    u0_m0_wo0_mtree_mult1_15_im0_shift0_qint <= u0_m0_wo0_mtree_mult1_15_bjB3_q & "00";
    u0_m0_wo0_mtree_mult1_15_im0_shift0_q <= u0_m0_wo0_mtree_mult1_15_im0_shift0_qint(19 downto 0);

    -- u0_m0_wo0_mtree_mult1_15_result_add_0_0(ADD,355)@13 + 1
    u0_m0_wo0_mtree_mult1_15_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((28 downto 20 => u0_m0_wo0_mtree_mult1_15_im0_shift0_q(19)) & u0_m0_wo0_mtree_mult1_15_im0_shift0_q));
    u0_m0_wo0_mtree_mult1_15_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((28 downto 28 => u0_m0_wo0_mtree_mult1_15_align_8_q(27)) & u0_m0_wo0_mtree_mult1_15_align_8_q));
    u0_m0_wo0_mtree_mult1_15_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_15_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_15_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_15_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_15_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_15_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_15_result_add_0_0_o(28 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr22(DELAY,35)@11
    u0_m0_wo0_wi0_r0_delayr22 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr21_q, xout => u0_m0_wo0_wi0_r0_delayr22_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr23(DELAY,36)@11
    u0_m0_wo0_wi0_r0_delayr23 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr22_q, xout => u0_m0_wo0_wi0_r0_delayr23_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_13_bs6(BITSELECT,362)@11
    u0_m0_wo0_mtree_mult1_13_bs6_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr23_q);
    u0_m0_wo0_mtree_mult1_13_bs6_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_13_bs6_in(23 downto 17));

    -- u0_m0_wo0_mtree_mult1_13_im4_shift0(BITSHIFT,503)@11
    u0_m0_wo0_mtree_mult1_13_im4_shift0_qint <= u0_m0_wo0_mtree_mult1_13_bs6_b & "0";
    u0_m0_wo0_mtree_mult1_13_im4_shift0_q <= u0_m0_wo0_mtree_mult1_13_im4_shift0_qint(7 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_im4_sub_1(SUB,504)@11 + 1
    u0_m0_wo0_mtree_mult1_13_im4_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((8 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_13_im4_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((8 downto 8 => u0_m0_wo0_mtree_mult1_13_im4_shift0_q(7)) & u0_m0_wo0_mtree_mult1_13_im4_shift0_q));
    u0_m0_wo0_mtree_mult1_13_im4_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_13_im4_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_13_im4_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_13_im4_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_13_im4_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_13_im4_sub_1_q <= u0_m0_wo0_mtree_mult1_13_im4_sub_1_o(8 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_align_8(BITSHIFT,364)@12
    u0_m0_wo0_mtree_mult1_13_align_8_qint <= u0_m0_wo0_mtree_mult1_13_im4_sub_1_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_13_align_8_q <= u0_m0_wo0_mtree_mult1_13_align_8_qint(25 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_bs2(BITSELECT,358)@11
    u0_m0_wo0_mtree_mult1_13_bs2_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr23_q(16 downto 0));
    u0_m0_wo0_mtree_mult1_13_bs2_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_13_bs2_in(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_13_bjB3(BITJOIN,359)@11
    u0_m0_wo0_mtree_mult1_13_bjB3_q <= GND_q & u0_m0_wo0_mtree_mult1_13_bs2_b;

    -- u0_m0_wo0_mtree_mult1_13_im0_shift0(BITSHIFT,501)@11
    u0_m0_wo0_mtree_mult1_13_im0_shift0_qint <= u0_m0_wo0_mtree_mult1_13_bjB3_q & "0";
    u0_m0_wo0_mtree_mult1_13_im0_shift0_q <= u0_m0_wo0_mtree_mult1_13_im0_shift0_qint(18 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_im0_sub_1(SUB,502)@11 + 1
    u0_m0_wo0_mtree_mult1_13_im0_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_13_im0_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_mult1_13_im0_shift0_q(18)) & u0_m0_wo0_mtree_mult1_13_im0_shift0_q));
    u0_m0_wo0_mtree_mult1_13_im0_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_13_im0_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_13_im0_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_13_im0_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_13_im0_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_13_im0_sub_1_q <= u0_m0_wo0_mtree_mult1_13_im0_sub_1_o(19 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_result_add_0_0(ADD,366)@12 + 1
    u0_m0_wo0_mtree_mult1_13_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 20 => u0_m0_wo0_mtree_mult1_13_im0_sub_1_q(19)) & u0_m0_wo0_mtree_mult1_13_im0_sub_1_q));
    u0_m0_wo0_mtree_mult1_13_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_mult1_13_align_8_q(25)) & u0_m0_wo0_mtree_mult1_13_align_8_q));
    u0_m0_wo0_mtree_mult1_13_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_13_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_13_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_13_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_13_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_13_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_13_result_add_0_0_o(26 downto 0);

    -- u0_m0_wo0_mtree_mult1_12_im4_shift0(BITSHIFT,507)@11
    u0_m0_wo0_mtree_mult1_12_im4_shift0_qint <= u0_m0_wo0_mtree_mult1_12_bs6_b & "00";
    u0_m0_wo0_mtree_mult1_12_im4_shift0_q <= u0_m0_wo0_mtree_mult1_12_im4_shift0_qint(8 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr24(DELAY,37)@11
    u0_m0_wo0_wi0_r0_delayr24 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr23_q, xout => u0_m0_wo0_wi0_r0_delayr24_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_12_bs6(BITSELECT,373)@11
    u0_m0_wo0_mtree_mult1_12_bs6_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr24_q);
    u0_m0_wo0_mtree_mult1_12_bs6_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_12_bs6_in(23 downto 17));

    -- u0_m0_wo0_mtree_mult1_12_im4_sub_1(SUB,508)@11 + 1
    u0_m0_wo0_mtree_mult1_12_im4_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 7 => u0_m0_wo0_mtree_mult1_12_bs6_b(6)) & u0_m0_wo0_mtree_mult1_12_bs6_b));
    u0_m0_wo0_mtree_mult1_12_im4_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((9 downto 9 => u0_m0_wo0_mtree_mult1_12_im4_shift0_q(8)) & u0_m0_wo0_mtree_mult1_12_im4_shift0_q));
    u0_m0_wo0_mtree_mult1_12_im4_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_12_im4_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_12_im4_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_12_im4_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_12_im4_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_12_im4_sub_1_q <= u0_m0_wo0_mtree_mult1_12_im4_sub_1_o(9 downto 0);

    -- u0_m0_wo0_mtree_mult1_12_align_8(BITSHIFT,375)@12
    u0_m0_wo0_mtree_mult1_12_align_8_qint <= u0_m0_wo0_mtree_mult1_12_im4_sub_1_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_12_align_8_q <= u0_m0_wo0_mtree_mult1_12_align_8_qint(26 downto 0);

    -- u0_m0_wo0_mtree_mult1_12_im0_shift0(BITSHIFT,505)@11
    u0_m0_wo0_mtree_mult1_12_im0_shift0_qint <= u0_m0_wo0_mtree_mult1_12_bjB3_q & "00";
    u0_m0_wo0_mtree_mult1_12_im0_shift0_q <= u0_m0_wo0_mtree_mult1_12_im0_shift0_qint(19 downto 0);

    -- u0_m0_wo0_mtree_mult1_12_bs2(BITSELECT,369)@11
    u0_m0_wo0_mtree_mult1_12_bs2_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr24_q(16 downto 0));
    u0_m0_wo0_mtree_mult1_12_bs2_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_12_bs2_in(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_12_bjB3(BITJOIN,370)@11
    u0_m0_wo0_mtree_mult1_12_bjB3_q <= GND_q & u0_m0_wo0_mtree_mult1_12_bs2_b;

    -- u0_m0_wo0_mtree_mult1_12_im0_sub_1(SUB,506)@11 + 1
    u0_m0_wo0_mtree_mult1_12_im0_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 18 => u0_m0_wo0_mtree_mult1_12_bjB3_q(17)) & u0_m0_wo0_mtree_mult1_12_bjB3_q));
    u0_m0_wo0_mtree_mult1_12_im0_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => u0_m0_wo0_mtree_mult1_12_im0_shift0_q(19)) & u0_m0_wo0_mtree_mult1_12_im0_shift0_q));
    u0_m0_wo0_mtree_mult1_12_im0_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_12_im0_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_12_im0_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_12_im0_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_12_im0_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_12_im0_sub_1_q <= u0_m0_wo0_mtree_mult1_12_im0_sub_1_o(20 downto 0);

    -- u0_m0_wo0_mtree_mult1_12_result_add_0_0(ADD,377)@12 + 1
    u0_m0_wo0_mtree_mult1_12_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 21 => u0_m0_wo0_mtree_mult1_12_im0_sub_1_q(20)) & u0_m0_wo0_mtree_mult1_12_im0_sub_1_q));
    u0_m0_wo0_mtree_mult1_12_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_mult1_12_align_8_q(26)) & u0_m0_wo0_mtree_mult1_12_align_8_q));
    u0_m0_wo0_mtree_mult1_12_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_12_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_12_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_12_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_12_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_12_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_12_result_add_0_0_o(27 downto 0);

    -- u0_m0_wo0_mtree_add0_6(ADD,130)@13 + 1
    u0_m0_wo0_mtree_add0_6_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_12_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_6_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_mult1_13_result_add_0_0_q(26)) & u0_m0_wo0_mtree_mult1_13_result_add_0_0_q));
    u0_m0_wo0_mtree_add0_6_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_6_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_6_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_6_a) + SIGNED(u0_m0_wo0_mtree_add0_6_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_6_q <= u0_m0_wo0_mtree_add0_6_o(27 downto 0);

    -- u0_m0_wo0_mtree_add1_3(ADD,145)@14 + 1
    u0_m0_wo0_mtree_add1_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 28 => u0_m0_wo0_mtree_add0_6_q(27)) & u0_m0_wo0_mtree_add0_6_q));
    u0_m0_wo0_mtree_add1_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_15_result_add_0_0_q(28)) & u0_m0_wo0_mtree_mult1_15_result_add_0_0_q));
    u0_m0_wo0_mtree_add1_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_3_a) + SIGNED(u0_m0_wo0_mtree_add1_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_3_q <= u0_m0_wo0_mtree_add1_3_o(29 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr25(DELAY,38)@11
    u0_m0_wo0_wi0_r0_delayr25 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr24_q, xout => u0_m0_wo0_wi0_r0_delayr25_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr25_q_12(DELAY,534)@11 + 1
    d_u0_m0_wo0_wi0_r0_delayr25_q_12 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr25_q, xout => d_u0_m0_wo0_wi0_r0_delayr25_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_11_bs6(BITSELECT,384)@12
    u0_m0_wo0_mtree_mult1_11_bs6_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr25_q_12_q);
    u0_m0_wo0_mtree_mult1_11_bs6_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_11_bs6_in(23 downto 17));

    -- u0_m0_wo0_mtree_mult1_11_im4_sub_0(SUB,510)@12 + 1
    u0_m0_wo0_mtree_mult1_11_im4_sub_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_11_im4_sub_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 7 => u0_m0_wo0_mtree_mult1_11_bs6_b(6)) & u0_m0_wo0_mtree_mult1_11_bs6_b));
    u0_m0_wo0_mtree_mult1_11_im4_sub_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_11_im4_sub_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_11_im4_sub_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_11_im4_sub_0_a) - SIGNED(u0_m0_wo0_mtree_mult1_11_im4_sub_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_11_im4_sub_0_q <= u0_m0_wo0_mtree_mult1_11_im4_sub_0_o(7 downto 0);

    -- u0_m0_wo0_mtree_mult1_11_align_8(BITSHIFT,386)@13
    u0_m0_wo0_mtree_mult1_11_align_8_qint <= STD_LOGIC_VECTOR((8 downto 8 => u0_m0_wo0_mtree_mult1_11_im4_sub_0_q(7)) & u0_m0_wo0_mtree_mult1_11_im4_sub_0_q) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_11_align_8_q <= u0_m0_wo0_mtree_mult1_11_align_8_qint(25 downto 0);

    -- u0_m0_wo0_mtree_mult1_11_bs2(BITSELECT,380)@12
    u0_m0_wo0_mtree_mult1_11_bs2_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr25_q_12_q(16 downto 0));
    u0_m0_wo0_mtree_mult1_11_bs2_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_11_bs2_in(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_11_bjB3(BITJOIN,381)@12
    u0_m0_wo0_mtree_mult1_11_bjB3_q <= GND_q & u0_m0_wo0_mtree_mult1_11_bs2_b;

    -- u0_m0_wo0_mtree_mult1_11_im0_sub_0(SUB,509)@12 + 1
    u0_m0_wo0_mtree_mult1_11_im0_sub_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_11_im0_sub_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => u0_m0_wo0_mtree_mult1_11_bjB3_q(17)) & u0_m0_wo0_mtree_mult1_11_bjB3_q));
    u0_m0_wo0_mtree_mult1_11_im0_sub_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_11_im0_sub_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_11_im0_sub_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_11_im0_sub_0_a) - SIGNED(u0_m0_wo0_mtree_mult1_11_im0_sub_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_11_im0_sub_0_q <= u0_m0_wo0_mtree_mult1_11_im0_sub_0_o(18 downto 0);

    -- u0_m0_wo0_mtree_mult1_11_result_add_0_0(ADD,388)@13 + 1
    u0_m0_wo0_mtree_mult1_11_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 19 => u0_m0_wo0_mtree_mult1_11_im0_sub_0_q(18)) & u0_m0_wo0_mtree_mult1_11_im0_sub_0_q));
    u0_m0_wo0_mtree_mult1_11_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_mult1_11_align_8_q(25)) & u0_m0_wo0_mtree_mult1_11_align_8_q));
    u0_m0_wo0_mtree_mult1_11_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_11_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_11_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_11_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_11_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_11_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_11_result_add_0_0_o(26 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr26(DELAY,39)@11
    u0_m0_wo0_wi0_r0_delayr26 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr25_q, xout => u0_m0_wo0_wi0_r0_delayr26_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr27(DELAY,40)@11
    u0_m0_wo0_wi0_r0_delayr27 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr26_q, xout => u0_m0_wo0_wi0_r0_delayr27_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr27_q_12(DELAY,535)@11 + 1
    d_u0_m0_wo0_wi0_r0_delayr27_q_12 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr27_q, xout => d_u0_m0_wo0_wi0_r0_delayr27_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_9_bs6(BITSELECT,395)@12
    u0_m0_wo0_mtree_mult1_9_bs6_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr27_q_12_q);
    u0_m0_wo0_mtree_mult1_9_bs6_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_9_bs6_in(23 downto 17));

    -- u0_m0_wo0_mtree_mult1_9_align_8(BITSHIFT,397)@12
    u0_m0_wo0_mtree_mult1_9_align_8_qint <= STD_LOGIC_VECTOR((8 downto 7 => u0_m0_wo0_mtree_mult1_9_bs6_b(6)) & u0_m0_wo0_mtree_mult1_9_bs6_b) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_9_align_8_q <= u0_m0_wo0_mtree_mult1_9_align_8_qint(25 downto 0);

    -- u0_m0_wo0_mtree_mult1_9_bs2(BITSELECT,391)@12
    u0_m0_wo0_mtree_mult1_9_bs2_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr27_q_12_q(16 downto 0));
    u0_m0_wo0_mtree_mult1_9_bs2_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_9_bs2_in(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_9_bjB3(BITJOIN,392)@12
    u0_m0_wo0_mtree_mult1_9_bjB3_q <= GND_q & u0_m0_wo0_mtree_mult1_9_bs2_b;

    -- u0_m0_wo0_mtree_mult1_9_result_add_0_0(ADD,399)@12 + 1
    u0_m0_wo0_mtree_mult1_9_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 18 => u0_m0_wo0_mtree_mult1_9_bjB3_q(17)) & u0_m0_wo0_mtree_mult1_9_bjB3_q));
    u0_m0_wo0_mtree_mult1_9_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_mult1_9_align_8_q(25)) & u0_m0_wo0_mtree_mult1_9_align_8_q));
    u0_m0_wo0_mtree_mult1_9_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_9_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_9_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_9_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_9_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_9_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_9_result_add_0_0_o(26 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr28(DELAY,41)@11
    u0_m0_wo0_wi0_r0_delayr28 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr27_q, xout => u0_m0_wo0_wi0_r0_delayr28_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr28_q_12(DELAY,536)@11 + 1
    d_u0_m0_wo0_wi0_r0_delayr28_q_12 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr28_q, xout => d_u0_m0_wo0_wi0_r0_delayr28_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_8_bs6(BITSELECT,406)@12
    u0_m0_wo0_mtree_mult1_8_bs6_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr28_q_12_q);
    u0_m0_wo0_mtree_mult1_8_bs6_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_8_bs6_in(23 downto 17));

    -- u0_m0_wo0_mtree_mult1_8_align_8(BITSHIFT,408)@12
    u0_m0_wo0_mtree_mult1_8_align_8_qint <= STD_LOGIC_VECTOR((8 downto 7 => u0_m0_wo0_mtree_mult1_8_bs6_b(6)) & u0_m0_wo0_mtree_mult1_8_bs6_b) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_8_align_8_q <= u0_m0_wo0_mtree_mult1_8_align_8_qint(25 downto 0);

    -- u0_m0_wo0_mtree_mult1_8_bs2(BITSELECT,402)@12
    u0_m0_wo0_mtree_mult1_8_bs2_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr28_q_12_q(16 downto 0));
    u0_m0_wo0_mtree_mult1_8_bs2_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_8_bs2_in(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_8_bjB3(BITJOIN,403)@12
    u0_m0_wo0_mtree_mult1_8_bjB3_q <= GND_q & u0_m0_wo0_mtree_mult1_8_bs2_b;

    -- u0_m0_wo0_mtree_mult1_8_result_add_0_0(ADD,410)@12 + 1
    u0_m0_wo0_mtree_mult1_8_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 18 => u0_m0_wo0_mtree_mult1_8_bjB3_q(17)) & u0_m0_wo0_mtree_mult1_8_bjB3_q));
    u0_m0_wo0_mtree_mult1_8_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_mult1_8_align_8_q(25)) & u0_m0_wo0_mtree_mult1_8_align_8_q));
    u0_m0_wo0_mtree_mult1_8_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_8_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_8_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_8_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_8_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_8_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_8_result_add_0_0_o(26 downto 0);

    -- u0_m0_wo0_mtree_add0_4(ADD,128)@13 + 1
    u0_m0_wo0_mtree_add0_4_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_8_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_4_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_9_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_4_a) + SIGNED(u0_m0_wo0_mtree_add0_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_4_q <= u0_m0_wo0_mtree_add0_4_o(26 downto 0);

    -- u0_m0_wo0_mtree_add1_2(ADD,144)@14 + 1
    u0_m0_wo0_mtree_add1_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_add0_4_q(26)) & u0_m0_wo0_mtree_add0_4_q));
    u0_m0_wo0_mtree_add1_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_mult1_11_result_add_0_0_q(26)) & u0_m0_wo0_mtree_mult1_11_result_add_0_0_q));
    u0_m0_wo0_mtree_add1_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_2_a) + SIGNED(u0_m0_wo0_mtree_add1_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_2_q <= u0_m0_wo0_mtree_add1_2_o(27 downto 0);

    -- u0_m0_wo0_mtree_add2_1(ADD,152)@15 + 1
    u0_m0_wo0_mtree_add2_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 28 => u0_m0_wo0_mtree_add1_2_q(27)) & u0_m0_wo0_mtree_add1_2_q));
    u0_m0_wo0_mtree_add2_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_add1_3_q(29)) & u0_m0_wo0_mtree_add1_3_q));
    u0_m0_wo0_mtree_add2_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_1_a) + SIGNED(u0_m0_wo0_mtree_add2_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_1_q <= u0_m0_wo0_mtree_add2_1_o(30 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr29(DELAY,42)@11
    u0_m0_wo0_wi0_r0_delayr29 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr28_q, xout => u0_m0_wo0_wi0_r0_delayr29_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr29_q_13(DELAY,537)@11 + 2
    d_u0_m0_wo0_wi0_r0_delayr29_q_13 : dspba_delay
    GENERIC MAP ( width => 24, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr29_q, xout => d_u0_m0_wo0_wi0_r0_delayr29_q_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_7_bs6(BITSELECT,417)@13
    u0_m0_wo0_mtree_mult1_7_bs6_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr29_q_13_q);
    u0_m0_wo0_mtree_mult1_7_bs6_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_7_bs6_in(23 downto 17));

    -- u0_m0_wo0_mtree_mult1_7_align_8(BITSHIFT,419)@13
    u0_m0_wo0_mtree_mult1_7_align_8_qint <= STD_LOGIC_VECTOR((8 downto 7 => u0_m0_wo0_mtree_mult1_7_bs6_b(6)) & u0_m0_wo0_mtree_mult1_7_bs6_b) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_7_align_8_q <= u0_m0_wo0_mtree_mult1_7_align_8_qint(25 downto 0);

    -- u0_m0_wo0_mtree_mult1_7_bs2(BITSELECT,413)@13
    u0_m0_wo0_mtree_mult1_7_bs2_in <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_delayr29_q_13_q(16 downto 0));
    u0_m0_wo0_mtree_mult1_7_bs2_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_7_bs2_in(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_7_bjB3(BITJOIN,414)@13
    u0_m0_wo0_mtree_mult1_7_bjB3_q <= GND_q & u0_m0_wo0_mtree_mult1_7_bs2_b;

    -- u0_m0_wo0_mtree_mult1_7_result_add_0_0(ADD,421)@13 + 1
    u0_m0_wo0_mtree_mult1_7_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 18 => u0_m0_wo0_mtree_mult1_7_bjB3_q(17)) & u0_m0_wo0_mtree_mult1_7_bjB3_q));
    u0_m0_wo0_mtree_mult1_7_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_mult1_7_align_8_q(25)) & u0_m0_wo0_mtree_mult1_7_align_8_q));
    u0_m0_wo0_mtree_mult1_7_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_7_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_7_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_7_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_7_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_7_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_7_result_add_0_0_o(26 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr30(DELAY,43)@11
    u0_m0_wo0_wi0_r0_delayr30 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr29_q, xout => u0_m0_wo0_wi0_r0_delayr30_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr31(DELAY,44)@11
    u0_m0_wo0_wi0_r0_delayr31 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr30_q, xout => u0_m0_wo0_wi0_r0_delayr31_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_5_bs6(BITSELECT,428)@11
    u0_m0_wo0_mtree_mult1_5_bs6_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr31_q);
    u0_m0_wo0_mtree_mult1_5_bs6_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_5_bs6_in(23 downto 17));

    -- u0_m0_wo0_mtree_mult1_5_im4_sub_0(SUB,512)@11 + 1
    u0_m0_wo0_mtree_mult1_5_im4_sub_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_5_im4_sub_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 7 => u0_m0_wo0_mtree_mult1_5_bs6_b(6)) & u0_m0_wo0_mtree_mult1_5_bs6_b));
    u0_m0_wo0_mtree_mult1_5_im4_sub_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_5_im4_sub_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_5_im4_sub_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_5_im4_sub_0_a) - SIGNED(u0_m0_wo0_mtree_mult1_5_im4_sub_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_5_im4_sub_0_q <= u0_m0_wo0_mtree_mult1_5_im4_sub_0_o(7 downto 0);

    -- u0_m0_wo0_mtree_mult1_5_align_8(BITSHIFT,430)@12
    u0_m0_wo0_mtree_mult1_5_align_8_qint <= STD_LOGIC_VECTOR((8 downto 8 => u0_m0_wo0_mtree_mult1_5_im4_sub_0_q(7)) & u0_m0_wo0_mtree_mult1_5_im4_sub_0_q) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_5_align_8_q <= u0_m0_wo0_mtree_mult1_5_align_8_qint(25 downto 0);

    -- u0_m0_wo0_mtree_mult1_5_bs2(BITSELECT,424)@11
    u0_m0_wo0_mtree_mult1_5_bs2_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr31_q(16 downto 0));
    u0_m0_wo0_mtree_mult1_5_bs2_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_5_bs2_in(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_5_bjB3(BITJOIN,425)@11
    u0_m0_wo0_mtree_mult1_5_bjB3_q <= GND_q & u0_m0_wo0_mtree_mult1_5_bs2_b;

    -- u0_m0_wo0_mtree_mult1_5_im0_sub_0(SUB,511)@11 + 1
    u0_m0_wo0_mtree_mult1_5_im0_sub_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_5_im0_sub_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => u0_m0_wo0_mtree_mult1_5_bjB3_q(17)) & u0_m0_wo0_mtree_mult1_5_bjB3_q));
    u0_m0_wo0_mtree_mult1_5_im0_sub_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_5_im0_sub_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_5_im0_sub_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_5_im0_sub_0_a) - SIGNED(u0_m0_wo0_mtree_mult1_5_im0_sub_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_5_im0_sub_0_q <= u0_m0_wo0_mtree_mult1_5_im0_sub_0_o(18 downto 0);

    -- u0_m0_wo0_mtree_mult1_5_result_add_0_0(ADD,432)@12 + 1
    u0_m0_wo0_mtree_mult1_5_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 19 => u0_m0_wo0_mtree_mult1_5_im0_sub_0_q(18)) & u0_m0_wo0_mtree_mult1_5_im0_sub_0_q));
    u0_m0_wo0_mtree_mult1_5_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_mult1_5_align_8_q(25)) & u0_m0_wo0_mtree_mult1_5_align_8_q));
    u0_m0_wo0_mtree_mult1_5_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_5_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_5_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_5_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_5_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_5_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_5_result_add_0_0_o(26 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr32(DELAY,45)@11
    u0_m0_wo0_wi0_r0_delayr32 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr31_q, xout => u0_m0_wo0_wi0_r0_delayr32_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_4_bs6(BITSELECT,439)@11
    u0_m0_wo0_mtree_mult1_4_bs6_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr32_q);
    u0_m0_wo0_mtree_mult1_4_bs6_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_4_bs6_in(23 downto 17));

    -- u0_m0_wo0_mtree_mult1_4_im4_sub_0(SUB,514)@11 + 1
    u0_m0_wo0_mtree_mult1_4_im4_sub_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_4_im4_sub_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 7 => u0_m0_wo0_mtree_mult1_4_bs6_b(6)) & u0_m0_wo0_mtree_mult1_4_bs6_b));
    u0_m0_wo0_mtree_mult1_4_im4_sub_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_4_im4_sub_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_4_im4_sub_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_4_im4_sub_0_a) - SIGNED(u0_m0_wo0_mtree_mult1_4_im4_sub_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_4_im4_sub_0_q <= u0_m0_wo0_mtree_mult1_4_im4_sub_0_o(7 downto 0);

    -- u0_m0_wo0_mtree_mult1_4_align_8(BITSHIFT,441)@12
    u0_m0_wo0_mtree_mult1_4_align_8_qint <= STD_LOGIC_VECTOR((8 downto 8 => u0_m0_wo0_mtree_mult1_4_im4_sub_0_q(7)) & u0_m0_wo0_mtree_mult1_4_im4_sub_0_q) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_4_align_8_q <= u0_m0_wo0_mtree_mult1_4_align_8_qint(25 downto 0);

    -- u0_m0_wo0_mtree_mult1_4_bs2(BITSELECT,435)@11
    u0_m0_wo0_mtree_mult1_4_bs2_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr32_q(16 downto 0));
    u0_m0_wo0_mtree_mult1_4_bs2_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_4_bs2_in(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_4_bjB3(BITJOIN,436)@11
    u0_m0_wo0_mtree_mult1_4_bjB3_q <= GND_q & u0_m0_wo0_mtree_mult1_4_bs2_b;

    -- u0_m0_wo0_mtree_mult1_4_im0_sub_0(SUB,513)@11 + 1
    u0_m0_wo0_mtree_mult1_4_im0_sub_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_4_im0_sub_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => u0_m0_wo0_mtree_mult1_4_bjB3_q(17)) & u0_m0_wo0_mtree_mult1_4_bjB3_q));
    u0_m0_wo0_mtree_mult1_4_im0_sub_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_4_im0_sub_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_4_im0_sub_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_4_im0_sub_0_a) - SIGNED(u0_m0_wo0_mtree_mult1_4_im0_sub_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_4_im0_sub_0_q <= u0_m0_wo0_mtree_mult1_4_im0_sub_0_o(18 downto 0);

    -- u0_m0_wo0_mtree_mult1_4_result_add_0_0(ADD,443)@12 + 1
    u0_m0_wo0_mtree_mult1_4_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 19 => u0_m0_wo0_mtree_mult1_4_im0_sub_0_q(18)) & u0_m0_wo0_mtree_mult1_4_im0_sub_0_q));
    u0_m0_wo0_mtree_mult1_4_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_mult1_4_align_8_q(25)) & u0_m0_wo0_mtree_mult1_4_align_8_q));
    u0_m0_wo0_mtree_mult1_4_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_4_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_4_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_4_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_4_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_4_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_4_result_add_0_0_o(26 downto 0);

    -- u0_m0_wo0_mtree_add0_2(ADD,126)@13 + 1
    u0_m0_wo0_mtree_add0_2_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_4_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_2_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_5_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_2_a) + SIGNED(u0_m0_wo0_mtree_add0_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_2_q <= u0_m0_wo0_mtree_add0_2_o(26 downto 0);

    -- u0_m0_wo0_mtree_add1_1(ADD,143)@14 + 1
    u0_m0_wo0_mtree_add1_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_add0_2_q(26)) & u0_m0_wo0_mtree_add0_2_q));
    u0_m0_wo0_mtree_add1_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_mult1_7_result_add_0_0_q(26)) & u0_m0_wo0_mtree_mult1_7_result_add_0_0_q));
    u0_m0_wo0_mtree_add1_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_1_a) + SIGNED(u0_m0_wo0_mtree_add1_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_1_q <= u0_m0_wo0_mtree_add1_1_o(27 downto 0);

    -- d_u0_m0_wo0_memread_q_14(DELAY,516)@11 + 3
    d_u0_m0_wo0_memread_q_14 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_memread_q_11_q, xout => d_u0_m0_wo0_memread_q_14_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_compute_q_14(DELAY,518)@11 + 3
    d_u0_m0_wo0_compute_q_14 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_11_q, xout => d_u0_m0_wo0_compute_q_14_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr32_q_14(DELAY,538)@11 + 3
    d_u0_m0_wo0_wi0_r0_delayr32_q_14 : dspba_delay
    GENERIC MAP ( width => 24, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr32_q, xout => d_u0_m0_wo0_wi0_r0_delayr32_q_14_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr33(DELAY,46)@14
    u0_m0_wo0_wi0_r0_delayr33 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_wi0_r0_delayr32_q_14_q, xout => u0_m0_wo0_wi0_r0_delayr33_q, ena => d_u0_m0_wo0_compute_q_14_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr34(DELAY,47)@14
    u0_m0_wo0_wi0_r0_delayr34 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr33_q, xout => u0_m0_wo0_wi0_r0_delayr34_q, ena => d_u0_m0_wo0_compute_q_14_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr35(DELAY,48)@14
    u0_m0_wo0_wi0_r0_delayr35 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr34_q, xout => u0_m0_wo0_wi0_r0_delayr35_q, ena => d_u0_m0_wo0_compute_q_14_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr36(DELAY,49)@14
    u0_m0_wo0_wi0_r0_delayr36 : dspba_delay
    GENERIC MAP ( width => 24, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr35_q, xout => u0_m0_wo0_wi0_r0_delayr36_q, ena => d_u0_m0_wo0_compute_q_14_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_0_bs6(BITSELECT,450)@14
    u0_m0_wo0_mtree_mult1_0_bs6_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr36_q);
    u0_m0_wo0_mtree_mult1_0_bs6_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_0_bs6_in(23 downto 17));

    -- u0_m0_wo0_mtree_mult1_0_align_8(BITSHIFT,452)@14
    u0_m0_wo0_mtree_mult1_0_align_8_qint <= STD_LOGIC_VECTOR((8 downto 7 => u0_m0_wo0_mtree_mult1_0_bs6_b(6)) & u0_m0_wo0_mtree_mult1_0_bs6_b) & "00000000000000000";
    u0_m0_wo0_mtree_mult1_0_align_8_q <= u0_m0_wo0_mtree_mult1_0_align_8_qint(25 downto 0);

    -- u0_m0_wo0_mtree_mult1_0_bs2(BITSELECT,446)@14
    u0_m0_wo0_mtree_mult1_0_bs2_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr36_q(16 downto 0));
    u0_m0_wo0_mtree_mult1_0_bs2_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_0_bs2_in(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_0_bjB3(BITJOIN,447)@14
    u0_m0_wo0_mtree_mult1_0_bjB3_q <= GND_q & u0_m0_wo0_mtree_mult1_0_bs2_b;

    -- u0_m0_wo0_mtree_mult1_0_result_add_0_0(ADD,454)@14 + 1
    u0_m0_wo0_mtree_mult1_0_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 18 => u0_m0_wo0_mtree_mult1_0_bjB3_q(17)) & u0_m0_wo0_mtree_mult1_0_bjB3_q));
    u0_m0_wo0_mtree_mult1_0_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_mult1_0_align_8_q(25)) & u0_m0_wo0_mtree_mult1_0_align_8_q));
    u0_m0_wo0_mtree_mult1_0_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_0_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_0_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_0_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_0_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_0_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_0_result_add_0_0_o(26 downto 0);

    -- u0_m0_wo0_mtree_add2_0(ADD,151)@15 + 1
    u0_m0_wo0_mtree_add2_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((28 downto 27 => u0_m0_wo0_mtree_mult1_0_result_add_0_0_q(26)) & u0_m0_wo0_mtree_mult1_0_result_add_0_0_q));
    u0_m0_wo0_mtree_add2_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((28 downto 28 => u0_m0_wo0_mtree_add1_1_q(27)) & u0_m0_wo0_mtree_add1_1_q));
    u0_m0_wo0_mtree_add2_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_0_a) + SIGNED(u0_m0_wo0_mtree_add2_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_0_q <= u0_m0_wo0_mtree_add2_0_o(28 downto 0);

    -- u0_m0_wo0_mtree_add3_0(ADD,156)@16 + 1
    u0_m0_wo0_mtree_add3_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 29 => u0_m0_wo0_mtree_add2_0_q(28)) & u0_m0_wo0_mtree_add2_0_q));
    u0_m0_wo0_mtree_add3_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 31 => u0_m0_wo0_mtree_add2_1_q(30)) & u0_m0_wo0_mtree_add2_1_q));
    u0_m0_wo0_mtree_add3_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_0_a) + SIGNED(u0_m0_wo0_mtree_add3_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_0_q <= u0_m0_wo0_mtree_add3_0_o(31 downto 0);

    -- u0_m0_wo0_mtree_add4_0(ADD,158)@17 + 1
    u0_m0_wo0_mtree_add4_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => u0_m0_wo0_mtree_add3_0_q(31)) & u0_m0_wo0_mtree_add3_0_q));
    u0_m0_wo0_mtree_add4_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 33 => u0_m0_wo0_mtree_add3_1_q(32)) & u0_m0_wo0_mtree_add3_1_q));
    u0_m0_wo0_mtree_add4_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add4_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add4_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add4_0_a) + SIGNED(u0_m0_wo0_mtree_add4_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add4_0_q <= u0_m0_wo0_mtree_add4_0_o(33 downto 0);

    -- u0_m0_wo0_mtree_add5_0(ADD,159)@18 + 1
    u0_m0_wo0_mtree_add5_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((34 downto 34 => u0_m0_wo0_mtree_add4_0_q(33)) & u0_m0_wo0_mtree_add4_0_q));
    u0_m0_wo0_mtree_add5_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((34 downto 29 => u0_m0_wo0_mtree_add2_4_q(28)) & u0_m0_wo0_mtree_add2_4_q));
    u0_m0_wo0_mtree_add5_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add5_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add5_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add5_0_a) + SIGNED(u0_m0_wo0_mtree_add5_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add5_0_q <= u0_m0_wo0_mtree_add5_0_o(34 downto 0);

    -- GND(CONSTANT,0)@0
    GND_q <= "0";

    -- d_u0_m0_wo0_compute_q_18(DELAY,519)@14 + 4
    d_u0_m0_wo0_compute_q_18 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_14_q, xout => d_u0_m0_wo0_compute_q_18_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_oseq_gated_reg(REG,160)@18 + 1
    u0_m0_wo0_oseq_gated_reg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= STD_LOGIC_VECTOR(d_u0_m0_wo0_compute_q_18_q);
        END IF;
    END PROCESS;

    -- xOut(PORTOUT,165)@19 + 1
    xOut_v <= u0_m0_wo0_oseq_gated_reg_q;
    xOut_c <= STD_LOGIC_VECTOR("0000000" & GND_q);
    xOut_0 <= u0_m0_wo0_mtree_add5_0_q;

END normal;

-- (C) 2001-2016 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions and other 
-- software and tools, and its AMPP partner logic functions, and any output 
-- files any of the foregoing (including device programming or simulation 
-- files), and any associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License Subscription 
-- Agreement, Altera MegaCore Function License Agreement, or other applicable 
-- license agreement, including, without limitation, that your use is for the 
-- sole purpose of programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the applicable 
-- agreement for further details.


library IEEE;
use IEEE.std_logic_1164.all;
use work.auk_dspip_lib_pkg_hpfir.all;
use work.auk_dspip_math_pkg_hpfir.all;

entity FIR_fir_compiler_ii_0 is
  port (
    clk : in STD_LOGIC;    
    reset_n : in STD_LOGIC;
    ast_sink_data : in STD_LOGIC_VECTOR((0 + 1*24) * 1 + 0 - 1 downto 0);
    ast_sink_valid : in STD_LOGIC;
    ast_sink_error : in STD_LOGIC_VECTOR(1 downto 0);
    ast_source_data : out STD_LOGIC_VECTOR(35 * 1*1 - 1 downto 0);
    ast_source_valid : out STD_LOGIC;
    ast_source_error : out STD_LOGIC_VECTOR(1 downto 0)
  );
end FIR_fir_compiler_ii_0;


architecture syn of FIR_fir_compiler_ii_0 is
  component FIR_fir_compiler_ii_0_ast
  port (
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    ast_sink_data : in STD_LOGIC_VECTOR((0 + 1*24) * 1 + 0 - 1 downto 0);
    ast_sink_valid : in STD_LOGIC;
    ast_sink_ready : out STD_LOGIC;
    ast_sink_sop : in STD_LOGIC;
    ast_sink_eop : in STD_LOGIC;
    ast_sink_error : in STD_LOGIC_VECTOR(1 downto 0);
    ast_source_data : out STD_LOGIC_VECTOR(1*35 * 1 - 1 downto 0);
    ast_source_ready : in STD_LOGIC;
    ast_source_valid : out STD_LOGIC;
    ast_source_sop : out STD_LOGIC;
    ast_source_eop : out STD_LOGIC;
    ast_source_channel : out STD_LOGIC_VECTOR(log2_ceil_one(1) - 1 downto 0);
    ast_source_error : out STD_LOGIC_VECTOR(1 downto 0)
  );
end component;

    signal coeff_in_read_sig : std_logic;

begin

    coeff_in_read_sig  <= '1';



  FIR_fir_compiler_ii_0_ast_inst : FIR_fir_compiler_ii_0_ast
  port map (
    clk => clk,
    reset_n => reset_n,
    ast_sink_data => ast_sink_data,
    ast_source_data => ast_source_data,
    ast_sink_valid => ast_sink_valid,
        ast_sink_ready => open,
        ast_source_ready => '1',
    ast_source_valid => ast_source_valid,
        ast_sink_sop => '0',
        ast_sink_eop => '0',
    ast_sink_error => ast_sink_error,
        ast_source_sop => open,
        ast_source_eop => open,
        ast_source_channel => open,
    ast_source_error => ast_source_error
  );
end syn;



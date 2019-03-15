--	Copyright (C) 1988-2014 Altera Corporation

--	Any megafunction design, and related net list (encrypted or decrypted),
--	support information, device programming or simulation file, and any other
--	associated documentation or information provided by Altera or a partner
--	under Altera's Megafunction Partnership Program may be used only to
--	program PLD devices (but not masked PLD devices) from Altera.  Any other
--	use of such megafunction design, net list, support information, device
--	programming or simulation file, or any other related documentation or
--	information is prohibited for any other purpose, including, but not
--	limited to modification, reverse engineering, de-compiling, or use with
--	any other silicon devices, unless such use is explicitly licensed under
--	a separate agreement with Altera or a megafunction partner.  Title to
--	the intellectual property, including patents, copyrights, trademarks,
--	trade secrets, or maskworks, embodied in any such megafunction design,
--	net list, support information, device programming or simulation file, or
--	any other related documentation or information provided by Altera or a
--	megafunction partner, remains with Altera, the megafunction partner, or
--	their respective licensors.  No other licenses, including any licenses
--	needed under any third party's intellectual property, are provided herein.

--NCO ver 14.0 VHDL TESTBENCH

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

use std.textio.all;

entity nco_nco_ii_0_tb is
  generic(
		APR	:	INTEGER:=32;
		MPR	:	INTEGER:=12
        );

end nco_nco_ii_0_tb;


architecture tb of nco_nco_ii_0_tb is

--Convert integer to unsigned std_logicvector function
function int2ustd(value : integer; width : integer) return std_logic_vector is
-- convert integer to unsigned std_logicvector
variable temp :   std_logic_vector(width-1 downto 0);
begin
	if (width>0) then
		temp:=conv_std_logic_vector(conv_unsigned(value, width ), width);
	end if ;
	return temp;
end int2ustd;


component nco_nco_ii_0

port(
       phi_inc_i     : IN STD_LOGIC_VECTOR (APR-1 DOWNTO 0);
       phase_mod_i     : IN STD_LOGIC_VECTOR (13 DOWNTO 0);
       clken         : IN STD_LOGIC ;
       clk              : IN STD_LOGIC ;
       reset_n          : IN STD_LOGIC ;
       fsin_o          : OUT STD_LOGIC_VECTOR (MPR-1 DOWNTO 0);
       fcos_o          : OUT STD_LOGIC_VECTOR (MPR-1 DOWNTO 0);
       out_valid        : OUT STD_LOGIC
		);
end component;

signal clk          : std_logic;
signal reset_n      : std_logic;
signal clken        : std_logic;
signal sin_val	     : std_logic_vector (MPR-1 downto 0);
signal cos_val      : std_logic_vector (MPR-1 downto 0);
signal phi          : std_logic_vector (APR-1 downto 0);
signal pmod      	: std_logic_vector (13 downto 0);
signal sel_phi      : std_logic_vector(2 downto 0);
signal sel_output   : std_logic_vector(2 downto 0);
signal out_valid    : std_logic;
constant HALF_CYCLE  : time := 50000000 ps;
constant CYCLE       : time := 2*HALF_CYCLE;


begin

-- NCO component instantiation

u1: nco_nco_ii_0

port map(  clk              => clk,
           reset_n          => reset_n,
           clken         => clken,
           phase_mod_i => pmod,
           phi_inc_i     => phi,
           fsin_o          => sin_val,
           fcos_o          => cos_val,
           out_valid        => out_valid
 );

reset_n <= '0',
           '1' after 20*HALF_CYCLE ;
clken   <= '1';
phi<="00000010100011110101110000101001";
pmod<=int2ustd(1024,14);

-----------------------------------------------------------------------------------------------
-- Testbench Clock Generation
-----------------------------------------------------------------------------------------------
clk_gen : process
begin
   loop
       clk<='0' ,
     	     '1'  after HALF_CYCLE;
       wait for HALF_CYCLE*2;
   end loop;
end process;

-----------------------------------------------------------------------------------------------
-- Output Sinusoidal Signals to Text Files
-----------------------------------------------------------------------------------------------
testbench_o : process(clk)
file sin_file 		: text open write_mode is "fsin_o_test_hdl.txt";
file cos_file 		: text open write_mode is "fcos_o_test_hdl.txt";
variable ls			: line;
variable lc			: line;
variable sin_int	: integer ;
variable cos_int	: integer ;

  begin
    if rising_edge(clk) then
      if(reset_n='1' and out_valid='1') then
        sin_int := conv_integer(sin_val);
        cos_int := conv_integer(cos_val);
        write(ls,sin_int);
        writeline(sin_file,ls);
        write(lc,cos_int);
        writeline(cos_file,lc);
     end if;		
	end if;		
end process testbench_o;

end tb;

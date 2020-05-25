#-- Lattice Semiconductor Corporation Ltd.
#-- Synplify OEM project file c:/users/zane/documents/github/cram/cpld\CRAM_synplify.tcl
#-- Written on Sun May 24 21:21:55 2020


#device options
set_option -technology mach5
set_option -part M5LV-256/68-7YC

#compilation/mapping options

#use verilog 2001 standard option
set_option -vlog_std v2001

#map options

#simulation options
set_option -write_verilog false
set_option -write_vhdl false

#timing analysis options
set_option -synthesis_onoff_pragma false

#-- add_file options
add_file -verilog -lib work "c64ram.h"
add_file -verilog -lib work "cram.v"

#-- top module name
set_option -top_module CRAM

#-- set result format/file last
project -result_file "CRAM.edi"

#-- error message log file
project -log_file cram.srf

#-- run Synplify with 'arrange VHDL file'
project -run

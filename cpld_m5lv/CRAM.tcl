
########## Tcl recorder starts at 09/07/19 12:16:12 ##########

set version "2.0"
set proj_dir "Z:/Repos/CRAM/cpld_m5lv"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/vlog2jhd\" cram.v -p \"$install_dir/ispcpld/generic\" -predefine cram.h"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 09/07/19 12:16:12 ###########


########## Tcl recorder starts at 09/07/19 12:16:16 ##########

# Commands to make the Process: 
# Hierarchy Browser
# - none -
# Application to view the Process: 
# Hierarchy Browser
if [runCmd "\"$cpld_bin/hierbro\" cram.jid  CRAM"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 09/07/19 12:16:16 ###########


########## Tcl recorder starts at 09/07/19 12:16:20 ##########

# Commands to make the Process: 
# Synplify Synthesize Verilog File
if [catch {open CRAM.cmd w} rspFile] {
	puts stderr "Cannot create response file CRAM.cmd: $rspFile"
} else {
	puts $rspFile "STYFILENAME: cram.sty
PROJECT: CRAM
WORKING_PATH: \"$proj_dir\"
MODULE: CRAM
VERILOG_FILE_LIST: cram.h cram.v
OUTPUT_FILE_NAME: CRAM
SUFFIX_NAME: edi
PART: M5LV-256/68-12YC
Vlog_std_v2001: true
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/Synpwrap\" -e CRAM -target mach -pro "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete CRAM.cmd

########## Tcl recorder end at 09/07/19 12:16:20 ###########


########## Tcl recorder starts at 09/07/19 12:17:36 ##########

# Commands to make the Process: 
# Optimization Constraint
if [catch {open CRAM.cmd w} rspFile] {
	puts stderr "Cannot create response file CRAM.cmd: $rspFile"
} else {
	puts $rspFile "STYFILENAME: cram.sty
PROJECT: CRAM
WORKING_PATH: \"$proj_dir\"
MODULE: CRAM
VERILOG_FILE_LIST: cram.h cram.v
OUTPUT_FILE_NAME: CRAM
SUFFIX_NAME: edi
PART: M5LV-256/68-12YC
Vlog_std_v2001: true
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/Synpwrap\" -e CRAM -target mach -pro "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete CRAM.cmd
if [runCmd "\"$cpld_bin/edif2blf\" -edf CRAM.edi -out CRAM.bl0 -err automake.err -log CRAM.log -prj cram -lib \"$install_dir/ispcpld/dat/mach.edn\" -net_Vcc VCC -net_GND GND -nbx -dse -tlw -cvt YES -xor"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" CRAM.bl0 -collapse none -reduce none -keepwires  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"CRAM.bl1\" -o \"cram.bl2\" -omod \"cram\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj cram -lci cram.lct -log cram.imp -err automake.err -tti cram.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
# Application to view the Process: 
# Optimization Constraint
if [catch {open opt_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file opt_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-global -lci cram.lct -touch cram.imp
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/optedit\" @opt_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 09/07/19 12:17:36 ###########



########## Tcl recorder starts at 05/24/20 21:12:07 ##########

set version "2.0"
set proj_dir "C:/Users/Zane/Documents/GitHub/CRAM/cpld"
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
if [runCmd "\"$cpld_bin/vlog2jhd\" cram.v -p \"$install_dir/ispcpld/generic\" -predefine c64ram.h"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 21:12:07 ###########


########## Tcl recorder starts at 05/24/20 21:12:30 ##########

# Commands to make the Process: 
# Optimization Constraint
if [catch {open CRAM.cmd w} rspFile] {
	puts stderr "Cannot create response file CRAM.cmd: $rspFile"
} else {
	puts $rspFile "STYFILENAME: c64ram.sty
PROJECT: CRAM
WORKING_PATH: \"$proj_dir\"
MODULE: CRAM
VERILOG_FILE_LIST: c64ram.h cram.v
OUTPUT_FILE_NAME: CRAM
SUFFIX_NAME: edi
PART: M5LV-256/68-7YC
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
if [runCmd "\"$cpld_bin/edif2blf\" -edf CRAM.edi -out CRAM.bl0 -err automake.err -log CRAM.log -prj c64ram -lib \"$install_dir/ispcpld/dat/mach.edn\" -net_Vcc VCC -net_GND GND -nbx -dse -tlw -cvt YES -xor"] {
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
if [runCmd "\"$cpld_bin/mblflink\" \"CRAM.bl1\" -o \"c64ram.bl2\" -omod \"c64ram\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj c64ram -lci c64ram.lct -log c64ram.imp -err automake.err -tti c64ram.bl2 -dir $proj_dir"] {
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
	puts $rspFile "-global -lci c64ram.lct -touch c64ram.imp
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

########## Tcl recorder end at 05/24/20 21:12:31 ###########


########## Tcl recorder starts at 05/24/20 21:13:23 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/vlog2jhd\" cram.v -p \"$install_dir/ispcpld/generic\" -predefine c64ram.h"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 21:13:23 ###########


########## Tcl recorder starts at 05/24/20 21:13:52 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/vlog2jhd\" cram.v -p \"$install_dir/ispcpld/generic\" -predefine c64ram.h"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 21:13:52 ###########


########## Tcl recorder starts at 05/24/20 21:14:00 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/vlog2jhd\" cram.v -p \"$install_dir/ispcpld/generic\" -predefine c64ram.h"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 21:14:00 ###########


########## Tcl recorder starts at 05/24/20 21:14:05 ##########

# Commands to make the Process: 
# Synplify Synthesize Verilog File
if [catch {open CRAM.cmd w} rspFile] {
	puts stderr "Cannot create response file CRAM.cmd: $rspFile"
} else {
	puts $rspFile "STYFILENAME: c64ram.sty
PROJECT: CRAM
WORKING_PATH: \"$proj_dir\"
MODULE: CRAM
VERILOG_FILE_LIST: c64ram.h cram.v
OUTPUT_FILE_NAME: CRAM
SUFFIX_NAME: edi
PART: M5LV-256/68-7YC
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

########## Tcl recorder end at 05/24/20 21:14:05 ###########


########## Tcl recorder starts at 05/24/20 21:15:40 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/vlog2jhd\" cram.v -p \"$install_dir/ispcpld/generic\" -predefine c64ram.h"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 21:15:40 ###########


########## Tcl recorder starts at 05/24/20 21:15:44 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/vlog2jhd\" cram.v -p \"$install_dir/ispcpld/generic\" -predefine c64ram.h"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 21:15:44 ###########


########## Tcl recorder starts at 05/24/20 21:15:51 ##########

# Commands to make the Process: 
# Synplify Synthesize Verilog File
if [catch {open CRAM.cmd w} rspFile] {
	puts stderr "Cannot create response file CRAM.cmd: $rspFile"
} else {
	puts $rspFile "STYFILENAME: c64ram.sty
PROJECT: CRAM
WORKING_PATH: \"$proj_dir\"
MODULE: CRAM
VERILOG_FILE_LIST: c64ram.h cram.v
OUTPUT_FILE_NAME: CRAM
SUFFIX_NAME: edi
PART: M5LV-256/68-7YC
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

########## Tcl recorder end at 05/24/20 21:15:51 ###########


########## Tcl recorder starts at 05/24/20 21:16:26 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/vlog2jhd\" cram.v -p \"$install_dir/ispcpld/generic\" -predefine c64ram.h"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 21:16:26 ###########


########## Tcl recorder starts at 05/24/20 21:16:42 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/vlog2jhd\" cram.v -p \"$install_dir/ispcpld/generic\" -predefine c64ram.h"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 21:16:42 ###########


########## Tcl recorder starts at 05/24/20 21:16:50 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/vlog2jhd\" cram.v -p \"$install_dir/ispcpld/generic\" -predefine c64ram.h"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 21:16:50 ###########


########## Tcl recorder starts at 05/24/20 21:17:00 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/vlog2jhd\" cram.v -p \"$install_dir/ispcpld/generic\" -predefine c64ram.h"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 21:17:00 ###########


########## Tcl recorder starts at 05/24/20 21:17:13 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/vlog2jhd\" cram.v -p \"$install_dir/ispcpld/generic\" -predefine c64ram.h"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 21:17:13 ###########


########## Tcl recorder starts at 05/24/20 21:17:16 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/vlog2jhd\" cram.v -p \"$install_dir/ispcpld/generic\" -predefine c64ram.h"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 21:17:16 ###########


########## Tcl recorder starts at 05/24/20 21:17:19 ##########

# Commands to make the Process: 
# Synplify Synthesize Verilog File
if [catch {open CRAM.cmd w} rspFile] {
	puts stderr "Cannot create response file CRAM.cmd: $rspFile"
} else {
	puts $rspFile "STYFILENAME: c64ram.sty
PROJECT: CRAM
WORKING_PATH: \"$proj_dir\"
MODULE: CRAM
VERILOG_FILE_LIST: c64ram.h cram.v
OUTPUT_FILE_NAME: CRAM
SUFFIX_NAME: edi
PART: M5LV-256/68-7YC
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

########## Tcl recorder end at 05/24/20 21:17:19 ###########


########## Tcl recorder starts at 05/24/20 21:18:01 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/vlog2jhd\" cram.v -p \"$install_dir/ispcpld/generic\" -predefine c64ram.h"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 21:18:01 ###########


########## Tcl recorder starts at 05/24/20 21:18:04 ##########

# Commands to make the Process: 
# Synplify Synthesize Verilog File
if [catch {open CRAM.cmd w} rspFile] {
	puts stderr "Cannot create response file CRAM.cmd: $rspFile"
} else {
	puts $rspFile "STYFILENAME: c64ram.sty
PROJECT: CRAM
WORKING_PATH: \"$proj_dir\"
MODULE: CRAM
VERILOG_FILE_LIST: c64ram.h cram.v
OUTPUT_FILE_NAME: CRAM
SUFFIX_NAME: edi
PART: M5LV-256/68-7YC
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

########## Tcl recorder end at 05/24/20 21:18:04 ###########


########## Tcl recorder starts at 05/24/20 21:18:59 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/vlog2jhd\" cram.v -p \"$install_dir/ispcpld/generic\" -predefine c64ram.h"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 21:18:59 ###########


########## Tcl recorder starts at 05/24/20 21:19:18 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/vlog2jhd\" cram.v -p \"$install_dir/ispcpld/generic\" -predefine c64ram.h"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 21:19:18 ###########


########## Tcl recorder starts at 05/24/20 21:19:21 ##########

# Commands to make the Process: 
# Synplify Synthesize Verilog File
if [catch {open CRAM.cmd w} rspFile] {
	puts stderr "Cannot create response file CRAM.cmd: $rspFile"
} else {
	puts $rspFile "STYFILENAME: c64ram.sty
PROJECT: CRAM
WORKING_PATH: \"$proj_dir\"
MODULE: CRAM
VERILOG_FILE_LIST: c64ram.h cram.v
OUTPUT_FILE_NAME: CRAM
SUFFIX_NAME: edi
PART: M5LV-256/68-7YC
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

########## Tcl recorder end at 05/24/20 21:19:21 ###########


########## Tcl recorder starts at 05/24/20 21:21:02 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/vlog2jhd\" cram.v -p \"$install_dir/ispcpld/generic\" -predefine c64ram.h"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 21:21:02 ###########


########## Tcl recorder starts at 05/24/20 21:21:05 ##########

# Commands to make the Process: 
# Synplify Synthesize Verilog File
if [catch {open CRAM.cmd w} rspFile] {
	puts stderr "Cannot create response file CRAM.cmd: $rspFile"
} else {
	puts $rspFile "STYFILENAME: c64ram.sty
PROJECT: CRAM
WORKING_PATH: \"$proj_dir\"
MODULE: CRAM
VERILOG_FILE_LIST: c64ram.h cram.v
OUTPUT_FILE_NAME: CRAM
SUFFIX_NAME: edi
PART: M5LV-256/68-7YC
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

########## Tcl recorder end at 05/24/20 21:21:05 ###########


########## Tcl recorder starts at 05/24/20 21:21:42 ##########

# Commands to make the Process: 
# Compile EDIF File
if [runCmd "\"$cpld_bin/edif2blf\" -edf CRAM.edi -out CRAM.bl0 -err automake.err -log CRAM.log -prj c64ram -lib \"$install_dir/ispcpld/dat/mach.edn\" -net_Vcc VCC -net_GND GND -nbx -dse -tlw -cvt YES -xor"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 21:21:42 ###########


########## Tcl recorder starts at 05/24/20 21:21:46 ##########

# Commands to make the Process: 
# Compiled Equations
if [runCmd "\"$cpld_bin/blif2eqn\" CRAM.bl0 -o CRAM.eq0  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 21:21:46 ###########


########## Tcl recorder starts at 05/24/20 21:21:50 ##########

# Commands to make the Process: 
# Generate Schematic Symbol
if [runCmd "\"$cpld_bin/naf2sym\" CRAM"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 21:21:50 ###########


########## Tcl recorder starts at 05/24/20 21:21:52 ##########

# Commands to make the Process: 
# ABEL Test Vector Template
if [runCmd "\"$cpld_bin/vlog2jhd\" -tfi -proj c64ram -mod CRAM -out CRAM -predefine c64ram.h -tpl \"$install_dir/ispcpld/plsi/abel/plsiabt.tft\" -ext abt -p \"$install_dir/ispcpld/generic\" cram.v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 21:21:52 ###########


########## Tcl recorder starts at 05/24/20 21:21:54 ##########

# Commands to make the Process: 
# Verilog Test Fixture Template
if [runCmd "\"$cpld_bin/vlog2jhd\" -tfi -proj c64ram -ext .tft -mod CRAM -out CRAM -predefine c64ram.h -tpl \"$install_dir/ispcpld/generic/verilog/tft.tft\" cram.v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 21:21:54 ###########


########## Tcl recorder starts at 05/24/20 21:21:55 ##########

# Commands to make the Process: 
# Verilog Test Fixture Declarations
if [runCmd "\"$cpld_bin/vlog2jhd\" -tfi -proj c64ram -mod CRAM -out CRAM -predefine c64ram.h -tpl \"$install_dir/ispcpld/generic/verilog/tfi.tft\" cram.v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 21:21:55 ###########


########## Tcl recorder starts at 05/24/20 21:21:55 ##########

# Commands to make the Process: 
# Generate Synthesize Tool Tcl Script
if [catch {open CRAM.cmd w} rspFile] {
	puts stderr "Cannot create response file CRAM.cmd: $rspFile"
} else {
	puts $rspFile "STYFILENAME: c64ram.sty
PROJECT: CRAM
WORKING_PATH: \"$proj_dir\"
MODULE: CRAM
VERILOG_FILE_LIST: c64ram.h cram.v
OUTPUT_FILE_NAME: CRAM
SUFFIX_NAME: edi
PART: M5LV-256/68-7YC
Vlog_std_v2001: true
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/Synpwrap\" -scriptonly \"CRAM_synplify.tcl\" -rem -e CRAM -target mach5 -pro "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete CRAM.cmd
# Application to view the Process: 
# Generate Synthesize Tool Tcl Script
if [runCmd "\"$cpld_bin/synedit\" -i \"CRAM_synplify.tcl\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 21:21:55 ###########


########## Tcl recorder starts at 05/24/20 21:21:57 ##########

# Commands to make the Process: 
# Hierarchy Browser
# - none -
# Application to view the Process: 
# Hierarchy Browser
if [runCmd "\"$cpld_bin/hierbro\" c64ram.jid  CRAM"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 21:21:57 ###########


########## Tcl recorder starts at 05/24/20 21:22:07 ##########

# Commands to make the Process: 
# Constraint Editor
if [runCmd "\"$cpld_bin/mblifopt\" CRAM.bl0 -collapse none -reduce none -keepwires  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"CRAM.bl1\" -o \"c64ram.bl2\" -omod \"c64ram\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj c64ram -lci c64ram.lct -log c64ram.imp -err automake.err -tti c64ram.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci c64ram.lct -blifopt  c64ram.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" c64ram.bl2 -sweep -mergefb -err automake.err -o c64ram.bl3  @c64ram.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci c64ram.lct -dev mach5 -diofft  c64ram.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" c64ram.bl3 -pla -family AMDMACH -idev van -o c64ram.tt2 -oxrf c64ram.xrf -err automake.err  @c64ram.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj c64ram -dir $proj_dir -log c64ram.log -tti c64ram.tt2 -tto c64ram.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci c64ram.lct -dev mach5 -prefit  c64ram.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp c64ram.tt3 -out c64ram.tt4 -err automake.err -log c64ram.log -mod CRAM  @c64ram.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
# Application to view the Process: 
# Constraint Editor
if [catch {open lattice_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file lattice_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-src c64ram.tt4 -type PLA -devfile \"$install_dir/ispcpld/dat/mach5/mach256100ce.dev\" -lci \"c64ram.lct\" -touch \"c64ram.tt4\"
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @lattice_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 21:22:07 ###########


########## Tcl recorder starts at 05/24/20 21:22:17 ##########

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/blif2eqn\" c64ram.tt4 -o c64ram.eq3  -use_short -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci c64ram.lct -out c64ram.vct -log c64ram.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open c64ram.cmd w} rspFile] {
	puts stderr "Cannot create response file c64ram.cmd: $rspFile"
} else {
	puts $rspFile "M5drc=-inp c64ram.tt4 -vci c64ram.vct -log c64ram.log -eqn c64ram.eq3 -dev mach256100 -dat $install_dir/ispcpld/dat/mach5/ -msg $install_dir/ispcpld/dat/ -err automake.err -tmv NoInput.tmv
M5dbase=-i c64ram.tt4 -device M5LV-256/68-7YC -lib $install_dir/ispcpld/lib5/amdmach.prt -strategy max_pterms 50
M5check=-i c64ram.vct -o c64ram.opt
M5COMP=-venus -menu
M5OPT=-venus -menu
M5SCAN=-venus -menu
M5FIT=-venus -menu
TMV2TV=c64ram.tv1 c64ram.tv
M5FUSE=-venus -menu
PLC2VCO=-d -i c64ram.npi -o c64ram.vco
M5CLEAN
"
	close $rspFile
}
if [catch {open c64ram.prp w} rspFile] {
	puts stderr "Cannot create response file c64ram.prp: $rspFile"
} else {
	puts $rspFile "MAX_SYMBOLS:0
MAX_PTERMS:0
MAX_XOR_PTERMS:0
POLARITY_CONTROL:TRUE
XOR_POLARITY_CONTROL:TRUE
EQN_SPLIT_CHUNK_SIZE:0
FF_SYNTH:OFF
XOR_TO_SOP_SYNTH:OFF
CONTROL_COLLAPSE:FALSE
EQN_SPLIT_OFF
VENUS_FLOW
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/mach5fit\" -i c64ram -lib c64ram.cmd "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete c64ram.cmd
file delete c64ram.prp
if [runCmd "\"$cpld_bin/lci2vci\" -vci c64ram.vco -out c64ram.lco -log c64ram.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj c64ram -if c64ram.jed -j2s -log c64ram.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 21:22:17 ###########


########## Tcl recorder starts at 05/24/20 23:30:10 ##########

# Commands to make the Process: 
# Fit Design
if [catch {open CRAM.cmd w} rspFile] {
	puts stderr "Cannot create response file CRAM.cmd: $rspFile"
} else {
	puts $rspFile "STYFILENAME: c64ram.sty
PROJECT: CRAM
WORKING_PATH: \"$proj_dir\"
MODULE: CRAM
VERILOG_FILE_LIST: c64ram.h cram.v
OUTPUT_FILE_NAME: CRAM
SUFFIX_NAME: edi
PART: M5LV-256/68-7YC
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
if [runCmd "\"$cpld_bin/edif2blf\" -edf CRAM.edi -out CRAM.bl0 -err automake.err -log CRAM.log -prj c64ram -lib \"$install_dir/ispcpld/dat/mach.edn\" -net_Vcc VCC -net_GND GND -nbx -dse -tlw -cvt YES -xor"] {
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
if [runCmd "\"$cpld_bin/mblflink\" \"CRAM.bl1\" -o \"c64ram.bl2\" -omod \"c64ram\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj c64ram -lci c64ram.lct -log c64ram.imp -err automake.err -tti c64ram.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci c64ram.lct -blifopt  c64ram.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" c64ram.bl2 -sweep -mergefb -err automake.err -o c64ram.bl3  @c64ram.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci c64ram.lct -dev mach5 -diofft  c64ram.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" c64ram.bl3 -pla -family AMDMACH -idev van -o c64ram.tt2 -oxrf c64ram.xrf -err automake.err  @c64ram.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj c64ram -dir $proj_dir -log c64ram.log -tti c64ram.tt2 -tto c64ram.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci c64ram.lct -dev mach5 -prefit  c64ram.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp c64ram.tt3 -out c64ram.tt4 -err automake.err -log c64ram.log -mod CRAM  @c64ram.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" c64ram.tt4 -o c64ram.eq3  -use_short -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci c64ram.lct -out c64ram.vct -log c64ram.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open c64ram.cmd w} rspFile] {
	puts stderr "Cannot create response file c64ram.cmd: $rspFile"
} else {
	puts $rspFile "M5drc=-inp c64ram.tt4 -vci c64ram.vct -log c64ram.log -eqn c64ram.eq3 -dev mach256100 -dat $install_dir/ispcpld/dat/mach5/ -msg $install_dir/ispcpld/dat/ -err automake.err -tmv NoInput.tmv
M5dbase=-i c64ram.tt4 -device M5LV-256/68-7YC -lib $install_dir/ispcpld/lib5/amdmach.prt -strategy max_pterms 50
M5check=-i c64ram.vct -o c64ram.opt
M5COMP=-venus -menu
M5OPT=-venus -menu
M5SCAN=-venus -menu
M5FIT=-venus -menu
TMV2TV=c64ram.tv1 c64ram.tv
M5FUSE=-venus -menu
PLC2VCO=-d -i c64ram.npi -o c64ram.vco
M5CLEAN
"
	close $rspFile
}
if [catch {open c64ram.prp w} rspFile] {
	puts stderr "Cannot create response file c64ram.prp: $rspFile"
} else {
	puts $rspFile "MAX_SYMBOLS:0
MAX_PTERMS:0
MAX_XOR_PTERMS:0
POLARITY_CONTROL:TRUE
XOR_POLARITY_CONTROL:TRUE
EQN_SPLIT_CHUNK_SIZE:0
FF_SYNTH:OFF
XOR_TO_SOP_SYNTH:OFF
CONTROL_COLLAPSE:FALSE
EQN_SPLIT_OFF
VENUS_FLOW
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/mach5fit\" -i c64ram -lib c64ram.cmd "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete c64ram.cmd
file delete c64ram.prp
if [runCmd "\"$cpld_bin/lci2vci\" -vci c64ram.vco -out c64ram.lco -log c64ram.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj c64ram -if c64ram.jed -j2s -log c64ram.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 23:30:10 ###########


########## Tcl recorder starts at 05/24/20 23:31:03 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/vlog2jhd\" cram.v -p \"$install_dir/ispcpld/generic\" -predefine c64ram.h"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 23:31:03 ###########


########## Tcl recorder starts at 05/24/20 23:31:08 ##########

# Commands to make the Process: 
# Fit Design
if [catch {open CRAM.cmd w} rspFile] {
	puts stderr "Cannot create response file CRAM.cmd: $rspFile"
} else {
	puts $rspFile "STYFILENAME: c64ram.sty
PROJECT: CRAM
WORKING_PATH: \"$proj_dir\"
MODULE: CRAM
VERILOG_FILE_LIST: c64ram.h cram.v
OUTPUT_FILE_NAME: CRAM
SUFFIX_NAME: edi
PART: M5LV-256/68-7YC
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
if [runCmd "\"$cpld_bin/edif2blf\" -edf CRAM.edi -out CRAM.bl0 -err automake.err -log CRAM.log -prj c64ram -lib \"$install_dir/ispcpld/dat/mach.edn\" -net_Vcc VCC -net_GND GND -nbx -dse -tlw -cvt YES -xor"] {
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
if [runCmd "\"$cpld_bin/mblflink\" \"CRAM.bl1\" -o \"c64ram.bl2\" -omod \"c64ram\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj c64ram -lci c64ram.lct -log c64ram.imp -err automake.err -tti c64ram.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci c64ram.lct -blifopt  c64ram.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" c64ram.bl2 -sweep -mergefb -err automake.err -o c64ram.bl3  @c64ram.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci c64ram.lct -dev mach5 -diofft  c64ram.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" c64ram.bl3 -pla -family AMDMACH -idev van -o c64ram.tt2 -oxrf c64ram.xrf -err automake.err  @c64ram.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj c64ram -dir $proj_dir -log c64ram.log -tti c64ram.tt2 -tto c64ram.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci c64ram.lct -dev mach5 -prefit  c64ram.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp c64ram.tt3 -out c64ram.tt4 -err automake.err -log c64ram.log -mod CRAM  @c64ram.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" c64ram.tt4 -o c64ram.eq3  -use_short -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci c64ram.lct -out c64ram.vct -log c64ram.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open c64ram.cmd w} rspFile] {
	puts stderr "Cannot create response file c64ram.cmd: $rspFile"
} else {
	puts $rspFile "M5drc=-inp c64ram.tt4 -vci c64ram.vct -log c64ram.log -eqn c64ram.eq3 -dev mach256100 -dat $install_dir/ispcpld/dat/mach5/ -msg $install_dir/ispcpld/dat/ -err automake.err -tmv NoInput.tmv
M5dbase=-i c64ram.tt4 -device M5LV-256/68-7YC -lib $install_dir/ispcpld/lib5/amdmach.prt -strategy max_pterms 50
M5check=-i c64ram.vct -o c64ram.opt
M5COMP=-venus -menu
M5OPT=-venus -menu
M5SCAN=-venus -menu
M5FIT=-venus -menu
TMV2TV=c64ram.tv1 c64ram.tv
M5FUSE=-venus -menu
PLC2VCO=-d -i c64ram.npi -o c64ram.vco
M5CLEAN
"
	close $rspFile
}
if [catch {open c64ram.prp w} rspFile] {
	puts stderr "Cannot create response file c64ram.prp: $rspFile"
} else {
	puts $rspFile "MAX_SYMBOLS:0
MAX_PTERMS:0
MAX_XOR_PTERMS:0
POLARITY_CONTROL:TRUE
XOR_POLARITY_CONTROL:TRUE
EQN_SPLIT_CHUNK_SIZE:0
FF_SYNTH:OFF
XOR_TO_SOP_SYNTH:OFF
CONTROL_COLLAPSE:FALSE
EQN_SPLIT_OFF
VENUS_FLOW
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/mach5fit\" -i c64ram -lib c64ram.cmd "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete c64ram.cmd
file delete c64ram.prp
if [runCmd "\"$cpld_bin/lci2vci\" -vci c64ram.vco -out c64ram.lco -log c64ram.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj c64ram -if c64ram.jed -j2s -log c64ram.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 23:31:08 ###########


########## Tcl recorder starts at 05/24/20 23:32:14 ##########

# Commands to make the Process: 
# Fit Design
if [catch {open CRAM.cmd w} rspFile] {
	puts stderr "Cannot create response file CRAM.cmd: $rspFile"
} else {
	puts $rspFile "STYFILENAME: c64ram.sty
PROJECT: CRAM
WORKING_PATH: \"$proj_dir\"
MODULE: CRAM
VERILOG_FILE_LIST: c64ram.h cram.v
OUTPUT_FILE_NAME: CRAM
SUFFIX_NAME: edi
PART: M5LV-256/68-7YC
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
if [runCmd "\"$cpld_bin/edif2blf\" -edf CRAM.edi -out CRAM.bl0 -err automake.err -log CRAM.log -prj c64ram -lib \"$install_dir/ispcpld/dat/mach.edn\" -net_Vcc VCC -net_GND GND -nbx -dse -tlw -cvt YES -xor"] {
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
if [runCmd "\"$cpld_bin/mblflink\" \"CRAM.bl1\" -o \"c64ram.bl2\" -omod \"c64ram\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj c64ram -lci c64ram.lct -log c64ram.imp -err automake.err -tti c64ram.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci c64ram.lct -blifopt  c64ram.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" c64ram.bl2 -sweep -mergefb -err automake.err -o c64ram.bl3  @c64ram.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci c64ram.lct -dev mach5 -diofft  c64ram.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" c64ram.bl3 -pla -family AMDMACH -idev van -o c64ram.tt2 -oxrf c64ram.xrf -err automake.err  @c64ram.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj c64ram -dir $proj_dir -log c64ram.log -tti c64ram.tt2 -tto c64ram.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci c64ram.lct -dev mach5 -prefit  c64ram.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp c64ram.tt3 -out c64ram.tt4 -err automake.err -log c64ram.log -mod CRAM  @c64ram.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" c64ram.tt4 -o c64ram.eq3  -use_short -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci c64ram.lct -out c64ram.vct -log c64ram.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open c64ram.cmd w} rspFile] {
	puts stderr "Cannot create response file c64ram.cmd: $rspFile"
} else {
	puts $rspFile "M5drc=-inp c64ram.tt4 -vci c64ram.vct -log c64ram.log -eqn c64ram.eq3 -dev mach256100 -dat $install_dir/ispcpld/dat/mach5/ -msg $install_dir/ispcpld/dat/ -err automake.err -tmv NoInput.tmv
M5dbase=-i c64ram.tt4 -device M5LV-256/68-7YC -lib $install_dir/ispcpld/lib5/amdmach.prt -strategy max_pterms 50
M5check=-i c64ram.vct -o c64ram.opt
M5COMP=-venus -menu
M5OPT=-venus -menu
M5SCAN=-venus -menu
M5FIT=-venus -menu
TMV2TV=c64ram.tv1 c64ram.tv
M5FUSE=-venus -menu
PLC2VCO=-d -i c64ram.npi -o c64ram.vco
M5CLEAN
"
	close $rspFile
}
if [catch {open c64ram.prp w} rspFile] {
	puts stderr "Cannot create response file c64ram.prp: $rspFile"
} else {
	puts $rspFile "MAX_SYMBOLS:0
MAX_PTERMS:0
MAX_XOR_PTERMS:0
POLARITY_CONTROL:TRUE
XOR_POLARITY_CONTROL:TRUE
EQN_SPLIT_CHUNK_SIZE:0
FF_SYNTH:OFF
XOR_TO_SOP_SYNTH:OFF
CONTROL_COLLAPSE:FALSE
EQN_SPLIT_OFF
VENUS_FLOW
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/mach5fit\" -i c64ram -lib c64ram.cmd "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete c64ram.cmd
file delete c64ram.prp
if [runCmd "\"$cpld_bin/lci2vci\" -vci c64ram.vco -out c64ram.lco -log c64ram.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj c64ram -if c64ram.jed -j2s -log c64ram.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 23:32:14 ###########


########## Tcl recorder starts at 05/24/20 23:33:06 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/vlog2jhd\" cram.v -p \"$install_dir/ispcpld/generic\" -predefine c64ram.h"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 23:33:06 ###########


########## Tcl recorder starts at 05/24/20 23:33:11 ##########

# Commands to make the Process: 
# Fit Design
if [catch {open CRAM.cmd w} rspFile] {
	puts stderr "Cannot create response file CRAM.cmd: $rspFile"
} else {
	puts $rspFile "STYFILENAME: c64ram.sty
PROJECT: CRAM
WORKING_PATH: \"$proj_dir\"
MODULE: CRAM
VERILOG_FILE_LIST: c64ram.h cram.v
OUTPUT_FILE_NAME: CRAM
SUFFIX_NAME: edi
PART: M5LV-256/68-7YC
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
if [runCmd "\"$cpld_bin/edif2blf\" -edf CRAM.edi -out CRAM.bl0 -err automake.err -log CRAM.log -prj c64ram -lib \"$install_dir/ispcpld/dat/mach.edn\" -net_Vcc VCC -net_GND GND -nbx -dse -tlw -cvt YES -xor"] {
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
if [runCmd "\"$cpld_bin/mblflink\" \"CRAM.bl1\" -o \"c64ram.bl2\" -omod \"c64ram\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj c64ram -lci c64ram.lct -log c64ram.imp -err automake.err -tti c64ram.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci c64ram.lct -blifopt  c64ram.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" c64ram.bl2 -sweep -mergefb -err automake.err -o c64ram.bl3  @c64ram.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci c64ram.lct -dev mach5 -diofft  c64ram.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" c64ram.bl3 -pla -family AMDMACH -idev van -o c64ram.tt2 -oxrf c64ram.xrf -err automake.err  @c64ram.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj c64ram -dir $proj_dir -log c64ram.log -tti c64ram.tt2 -tto c64ram.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci c64ram.lct -dev mach5 -prefit  c64ram.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp c64ram.tt3 -out c64ram.tt4 -err automake.err -log c64ram.log -mod CRAM  @c64ram.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" c64ram.tt4 -o c64ram.eq3  -use_short -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci c64ram.lct -out c64ram.vct -log c64ram.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open c64ram.cmd w} rspFile] {
	puts stderr "Cannot create response file c64ram.cmd: $rspFile"
} else {
	puts $rspFile "M5drc=-inp c64ram.tt4 -vci c64ram.vct -log c64ram.log -eqn c64ram.eq3 -dev mach256100 -dat $install_dir/ispcpld/dat/mach5/ -msg $install_dir/ispcpld/dat/ -err automake.err -tmv NoInput.tmv
M5dbase=-i c64ram.tt4 -device M5LV-256/68-7YC -lib $install_dir/ispcpld/lib5/amdmach.prt -strategy max_pterms 50
M5check=-i c64ram.vct -o c64ram.opt
M5COMP=-venus -menu
M5OPT=-venus -menu
M5SCAN=-venus -menu
M5FIT=-venus -menu
TMV2TV=c64ram.tv1 c64ram.tv
M5FUSE=-venus -menu
PLC2VCO=-d -i c64ram.npi -o c64ram.vco
M5CLEAN
"
	close $rspFile
}
if [catch {open c64ram.prp w} rspFile] {
	puts stderr "Cannot create response file c64ram.prp: $rspFile"
} else {
	puts $rspFile "MAX_SYMBOLS:0
MAX_PTERMS:0
MAX_XOR_PTERMS:0
POLARITY_CONTROL:TRUE
XOR_POLARITY_CONTROL:TRUE
EQN_SPLIT_CHUNK_SIZE:0
FF_SYNTH:OFF
XOR_TO_SOP_SYNTH:OFF
CONTROL_COLLAPSE:FALSE
EQN_SPLIT_OFF
VENUS_FLOW
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/mach5fit\" -i c64ram -lib c64ram.cmd "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete c64ram.cmd
file delete c64ram.prp
if [runCmd "\"$cpld_bin/lci2vci\" -vci c64ram.vco -out c64ram.lco -log c64ram.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj c64ram -if c64ram.jed -j2s -log c64ram.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 23:33:11 ###########


########## Tcl recorder starts at 05/24/20 23:33:53 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/vlog2jhd\" cram.v -p \"$install_dir/ispcpld/generic\" -predefine c64ram.h"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 23:33:53 ###########


########## Tcl recorder starts at 05/24/20 23:33:57 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/vlog2jhd\" cram.v -p \"$install_dir/ispcpld/generic\" -predefine c64ram.h"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 23:33:57 ###########


########## Tcl recorder starts at 05/24/20 23:34:00 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/vlog2jhd\" cram.v -p \"$install_dir/ispcpld/generic\" -predefine c64ram.h"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 23:34:00 ###########


########## Tcl recorder starts at 05/24/20 23:34:03 ##########

# Commands to make the Process: 
# Fit Design
if [catch {open CRAM.cmd w} rspFile] {
	puts stderr "Cannot create response file CRAM.cmd: $rspFile"
} else {
	puts $rspFile "STYFILENAME: c64ram.sty
PROJECT: CRAM
WORKING_PATH: \"$proj_dir\"
MODULE: CRAM
VERILOG_FILE_LIST: c64ram.h cram.v
OUTPUT_FILE_NAME: CRAM
SUFFIX_NAME: edi
PART: M5LV-256/68-7YC
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
if [runCmd "\"$cpld_bin/edif2blf\" -edf CRAM.edi -out CRAM.bl0 -err automake.err -log CRAM.log -prj c64ram -lib \"$install_dir/ispcpld/dat/mach.edn\" -net_Vcc VCC -net_GND GND -nbx -dse -tlw -cvt YES -xor"] {
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
if [runCmd "\"$cpld_bin/mblflink\" \"CRAM.bl1\" -o \"c64ram.bl2\" -omod \"c64ram\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj c64ram -lci c64ram.lct -log c64ram.imp -err automake.err -tti c64ram.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci c64ram.lct -blifopt  c64ram.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" c64ram.bl2 -sweep -mergefb -err automake.err -o c64ram.bl3  @c64ram.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci c64ram.lct -dev mach5 -diofft  c64ram.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" c64ram.bl3 -pla -family AMDMACH -idev van -o c64ram.tt2 -oxrf c64ram.xrf -err automake.err  @c64ram.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj c64ram -dir $proj_dir -log c64ram.log -tti c64ram.tt2 -tto c64ram.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci c64ram.lct -dev mach5 -prefit  c64ram.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp c64ram.tt3 -out c64ram.tt4 -err automake.err -log c64ram.log -mod CRAM  @c64ram.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" c64ram.tt4 -o c64ram.eq3  -use_short -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci c64ram.lct -out c64ram.vct -log c64ram.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open c64ram.cmd w} rspFile] {
	puts stderr "Cannot create response file c64ram.cmd: $rspFile"
} else {
	puts $rspFile "M5drc=-inp c64ram.tt4 -vci c64ram.vct -log c64ram.log -eqn c64ram.eq3 -dev mach256100 -dat $install_dir/ispcpld/dat/mach5/ -msg $install_dir/ispcpld/dat/ -err automake.err -tmv NoInput.tmv
M5dbase=-i c64ram.tt4 -device M5LV-256/68-7YC -lib $install_dir/ispcpld/lib5/amdmach.prt -strategy max_pterms 50
M5check=-i c64ram.vct -o c64ram.opt
M5COMP=-venus -menu
M5OPT=-venus -menu
M5SCAN=-venus -menu
M5FIT=-venus -menu
TMV2TV=c64ram.tv1 c64ram.tv
M5FUSE=-venus -menu
PLC2VCO=-d -i c64ram.npi -o c64ram.vco
M5CLEAN
"
	close $rspFile
}
if [catch {open c64ram.prp w} rspFile] {
	puts stderr "Cannot create response file c64ram.prp: $rspFile"
} else {
	puts $rspFile "MAX_SYMBOLS:0
MAX_PTERMS:0
MAX_XOR_PTERMS:0
POLARITY_CONTROL:TRUE
XOR_POLARITY_CONTROL:TRUE
EQN_SPLIT_CHUNK_SIZE:0
FF_SYNTH:OFF
XOR_TO_SOP_SYNTH:OFF
CONTROL_COLLAPSE:FALSE
EQN_SPLIT_OFF
VENUS_FLOW
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/mach5fit\" -i c64ram -lib c64ram.cmd "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete c64ram.cmd
file delete c64ram.prp
if [runCmd "\"$cpld_bin/lci2vci\" -vci c64ram.vco -out c64ram.lco -log c64ram.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj c64ram -if c64ram.jed -j2s -log c64ram.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 23:34:03 ###########


########## Tcl recorder starts at 05/24/20 23:34:38 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/vlog2jhd\" cram.v -p \"$install_dir/ispcpld/generic\" -predefine c64ram.h"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 23:34:38 ###########


########## Tcl recorder starts at 05/24/20 23:34:40 ##########

# Commands to make the Process: 
# Fit Design
if [catch {open CRAM.cmd w} rspFile] {
	puts stderr "Cannot create response file CRAM.cmd: $rspFile"
} else {
	puts $rspFile "STYFILENAME: c64ram.sty
PROJECT: CRAM
WORKING_PATH: \"$proj_dir\"
MODULE: CRAM
VERILOG_FILE_LIST: c64ram.h cram.v
OUTPUT_FILE_NAME: CRAM
SUFFIX_NAME: edi
PART: M5LV-256/68-7YC
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
if [runCmd "\"$cpld_bin/edif2blf\" -edf CRAM.edi -out CRAM.bl0 -err automake.err -log CRAM.log -prj c64ram -lib \"$install_dir/ispcpld/dat/mach.edn\" -net_Vcc VCC -net_GND GND -nbx -dse -tlw -cvt YES -xor"] {
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
if [runCmd "\"$cpld_bin/mblflink\" \"CRAM.bl1\" -o \"c64ram.bl2\" -omod \"c64ram\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj c64ram -lci c64ram.lct -log c64ram.imp -err automake.err -tti c64ram.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci c64ram.lct -blifopt  c64ram.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" c64ram.bl2 -sweep -mergefb -err automake.err -o c64ram.bl3  @c64ram.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci c64ram.lct -dev mach5 -diofft  c64ram.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" c64ram.bl3 -pla -family AMDMACH -idev van -o c64ram.tt2 -oxrf c64ram.xrf -err automake.err  @c64ram.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj c64ram -dir $proj_dir -log c64ram.log -tti c64ram.tt2 -tto c64ram.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci c64ram.lct -dev mach5 -prefit  c64ram.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp c64ram.tt3 -out c64ram.tt4 -err automake.err -log c64ram.log -mod CRAM  @c64ram.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" c64ram.tt4 -o c64ram.eq3  -use_short -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci c64ram.lct -out c64ram.vct -log c64ram.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open c64ram.cmd w} rspFile] {
	puts stderr "Cannot create response file c64ram.cmd: $rspFile"
} else {
	puts $rspFile "M5drc=-inp c64ram.tt4 -vci c64ram.vct -log c64ram.log -eqn c64ram.eq3 -dev mach256100 -dat $install_dir/ispcpld/dat/mach5/ -msg $install_dir/ispcpld/dat/ -err automake.err -tmv NoInput.tmv
M5dbase=-i c64ram.tt4 -device M5LV-256/68-7YC -lib $install_dir/ispcpld/lib5/amdmach.prt -strategy max_pterms 50
M5check=-i c64ram.vct -o c64ram.opt
M5COMP=-venus -menu
M5OPT=-venus -menu
M5SCAN=-venus -menu
M5FIT=-venus -menu
TMV2TV=c64ram.tv1 c64ram.tv
M5FUSE=-venus -menu
PLC2VCO=-d -i c64ram.npi -o c64ram.vco
M5CLEAN
"
	close $rspFile
}
if [catch {open c64ram.prp w} rspFile] {
	puts stderr "Cannot create response file c64ram.prp: $rspFile"
} else {
	puts $rspFile "MAX_SYMBOLS:0
MAX_PTERMS:0
MAX_XOR_PTERMS:0
POLARITY_CONTROL:TRUE
XOR_POLARITY_CONTROL:TRUE
EQN_SPLIT_CHUNK_SIZE:0
FF_SYNTH:OFF
XOR_TO_SOP_SYNTH:OFF
CONTROL_COLLAPSE:FALSE
EQN_SPLIT_OFF
VENUS_FLOW
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/mach5fit\" -i c64ram -lib c64ram.cmd "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete c64ram.cmd
file delete c64ram.prp
if [runCmd "\"$cpld_bin/lci2vci\" -vci c64ram.vco -out c64ram.lco -log c64ram.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj c64ram -if c64ram.jed -j2s -log c64ram.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 23:34:40 ###########


########## Tcl recorder starts at 05/24/20 23:37:27 ##########

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/vlog2jhd\" cram.v -p \"$install_dir/ispcpld/generic\" -predefine c64ram.h"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 23:37:27 ###########


########## Tcl recorder starts at 05/24/20 23:37:29 ##########

# Commands to make the Process: 
# Fit Design
if [catch {open CRAM.cmd w} rspFile] {
	puts stderr "Cannot create response file CRAM.cmd: $rspFile"
} else {
	puts $rspFile "STYFILENAME: c64ram.sty
PROJECT: CRAM
WORKING_PATH: \"$proj_dir\"
MODULE: CRAM
VERILOG_FILE_LIST: c64ram.h cram.v
OUTPUT_FILE_NAME: CRAM
SUFFIX_NAME: edi
PART: M5LV-256/68-7YC
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
if [runCmd "\"$cpld_bin/edif2blf\" -edf CRAM.edi -out CRAM.bl0 -err automake.err -log CRAM.log -prj c64ram -lib \"$install_dir/ispcpld/dat/mach.edn\" -net_Vcc VCC -net_GND GND -nbx -dse -tlw -cvt YES -xor"] {
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
if [runCmd "\"$cpld_bin/mblflink\" \"CRAM.bl1\" -o \"c64ram.bl2\" -omod \"c64ram\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj c64ram -lci c64ram.lct -log c64ram.imp -err automake.err -tti c64ram.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci c64ram.lct -blifopt  c64ram.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" c64ram.bl2 -sweep -mergefb -err automake.err -o c64ram.bl3  @c64ram.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci c64ram.lct -dev mach5 -diofft  c64ram.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" c64ram.bl3 -pla -family AMDMACH -idev van -o c64ram.tt2 -oxrf c64ram.xrf -err automake.err  @c64ram.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj c64ram -dir $proj_dir -log c64ram.log -tti c64ram.tt2 -tto c64ram.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci c64ram.lct -dev mach5 -prefit  c64ram.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp c64ram.tt3 -out c64ram.tt4 -err automake.err -log c64ram.log -mod CRAM  @c64ram.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" c64ram.tt4 -o c64ram.eq3  -use_short -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci c64ram.lct -out c64ram.vct -log c64ram.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open c64ram.cmd w} rspFile] {
	puts stderr "Cannot create response file c64ram.cmd: $rspFile"
} else {
	puts $rspFile "M5drc=-inp c64ram.tt4 -vci c64ram.vct -log c64ram.log -eqn c64ram.eq3 -dev mach256100 -dat $install_dir/ispcpld/dat/mach5/ -msg $install_dir/ispcpld/dat/ -err automake.err -tmv NoInput.tmv
M5dbase=-i c64ram.tt4 -device M5LV-256/68-7YC -lib $install_dir/ispcpld/lib5/amdmach.prt -strategy max_pterms 50
M5check=-i c64ram.vct -o c64ram.opt
M5COMP=-venus -menu
M5OPT=-venus -menu
M5SCAN=-venus -menu
M5FIT=-venus -menu
TMV2TV=c64ram.tv1 c64ram.tv
M5FUSE=-venus -menu
PLC2VCO=-d -i c64ram.npi -o c64ram.vco
M5CLEAN
"
	close $rspFile
}
if [catch {open c64ram.prp w} rspFile] {
	puts stderr "Cannot create response file c64ram.prp: $rspFile"
} else {
	puts $rspFile "MAX_SYMBOLS:0
MAX_PTERMS:0
MAX_XOR_PTERMS:0
POLARITY_CONTROL:TRUE
XOR_POLARITY_CONTROL:TRUE
EQN_SPLIT_CHUNK_SIZE:0
FF_SYNTH:OFF
XOR_TO_SOP_SYNTH:OFF
CONTROL_COLLAPSE:FALSE
EQN_SPLIT_OFF
VENUS_FLOW
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/mach5fit\" -i c64ram -lib c64ram.cmd "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete c64ram.cmd
file delete c64ram.prp
if [runCmd "\"$cpld_bin/lci2vci\" -vci c64ram.vco -out c64ram.lco -log c64ram.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj c64ram -if c64ram.jed -j2s -log c64ram.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 23:37:29 ###########


########## Tcl recorder starts at 05/24/20 23:38:11 ##########

# Commands to make the Process: 
# Fitter Report
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj c64ram -if c64ram.jed -j2s -log c64ram.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 23:38:11 ###########


########## Tcl recorder starts at 05/24/20 23:39:04 ##########

# Commands to make the Process: 
# Compiled Equations
if [runCmd "\"$cpld_bin/blif2eqn\" CRAM.bl0 -o CRAM.eq0  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 23:39:04 ###########


########## Tcl recorder starts at 05/24/20 23:39:35 ##########

# Commands to make the Process: 
# Generate Schematic Symbol
if [runCmd "\"$cpld_bin/naf2sym\" CRAM"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 23:39:35 ###########


########## Tcl recorder starts at 05/24/20 23:39:52 ##########

# Commands to make the Process: 
# Timing Analysis
# - none -
# Application to view the Process: 
# Timing Analysis
if [runCmd "\"$cpld_bin/timing\" -prj \"c64ram\" -tti \"c64ram.tt4\" -gui -dir \"$proj_dir\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 23:39:52 ###########


########## Tcl recorder starts at 05/24/20 23:41:31 ##########

# Commands to make the Process: 
# Fitter Report
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj c64ram -if c64ram.jed -j2s -log c64ram.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 23:41:31 ###########


########## Tcl recorder starts at 05/24/20 23:45:57 ##########

# Commands to make the Process: 
# Constraint Editor
# - none -
# Application to view the Process: 
# Constraint Editor
if [catch {open lattice_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file lattice_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-src c64ram.tt4 -type PLA -devfile \"$install_dir/ispcpld/dat/mach5/mach256100ce.dev\" -lci \"c64ram.lct\" -touch \"c64ram.tt4\"
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @lattice_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 23:45:57 ###########


########## Tcl recorder starts at 05/24/20 23:47:46 ##########

# Commands to make the Process: 
# Optimization Constraint
# - none -
# Application to view the Process: 
# Optimization Constraint
if [catch {open opt_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file opt_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-global -lci c64ram.lct -touch c64ram.imp
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

########## Tcl recorder end at 05/24/20 23:47:46 ###########


########## Tcl recorder starts at 05/24/20 23:47:55 ##########

# Commands to make the Process: 
# Optimization Constraint
# - none -
# Application to view the Process: 
# Optimization Constraint
if [catch {open opt_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file opt_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-global -lci c64ram.lct -touch c64ram.imp
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

########## Tcl recorder end at 05/24/20 23:47:55 ###########


########## Tcl recorder starts at 05/24/20 23:47:59 ##########

# Commands to make the Process: 
# Post-Fit Pinouts
# - none -
# Application to view the Process: 
# Post-Fit Pinouts
if [catch {open lattice_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file lattice_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-src c64ram.tt4 -type PLA -devfile \"$install_dir/ispcpld/dat/mach5/mach256100ce.dev\" -postfit -lci c64ram.lco
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @lattice_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 23:47:59 ###########


########## Tcl recorder starts at 05/24/20 23:48:39 ##########

# Commands to make the Process: 
# Constraint Editor
# - none -
# Application to view the Process: 
# Constraint Editor
if [catch {open lattice_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file lattice_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-src c64ram.tt4 -type PLA -devfile \"$install_dir/ispcpld/dat/mach5/mach256100ce.dev\" -lci \"c64ram.lct\" -touch \"c64ram.tt4\"
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @lattice_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 23:48:39 ###########


########## Tcl recorder starts at 05/24/20 23:54:28 ##########

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/blif2eqn\" c64ram.tt4 -o c64ram.eq3  -use_short -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci c64ram.lct -out c64ram.vct -log c64ram.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open c64ram.cmd w} rspFile] {
	puts stderr "Cannot create response file c64ram.cmd: $rspFile"
} else {
	puts $rspFile "M5drc=-inp c64ram.tt4 -vci c64ram.vct -log c64ram.log -eqn c64ram.eq3 -dev mach256100 -dat $install_dir/ispcpld/dat/mach5/ -msg $install_dir/ispcpld/dat/ -err automake.err -tmv NoInput.tmv
M5dbase=-i c64ram.tt4 -device M5LV-256/68-7YC -lib $install_dir/ispcpld/lib5/amdmach.prt -strategy max_pterms 50
M5check=-i c64ram.vct -o c64ram.opt
M5COMP=-venus -menu
M5OPT=-venus -menu
M5SCAN=-venus -menu
M5FIT=-venus -menu
TMV2TV=c64ram.tv1 c64ram.tv
M5FUSE=-venus -menu
PLC2VCO=-d -i c64ram.npi -o c64ram.vco
M5CLEAN
"
	close $rspFile
}
if [catch {open c64ram.prp w} rspFile] {
	puts stderr "Cannot create response file c64ram.prp: $rspFile"
} else {
	puts $rspFile "MAX_SYMBOLS:0
MAX_PTERMS:0
MAX_XOR_PTERMS:0
POLARITY_CONTROL:TRUE
XOR_POLARITY_CONTROL:TRUE
EQN_SPLIT_CHUNK_SIZE:0
FF_SYNTH:OFF
XOR_TO_SOP_SYNTH:OFF
CONTROL_COLLAPSE:FALSE
EQN_SPLIT_OFF
VENUS_FLOW
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/mach5fit\" -i c64ram -lib c64ram.cmd "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete c64ram.cmd
file delete c64ram.prp
if [runCmd "\"$cpld_bin/lci2vci\" -vci c64ram.vco -out c64ram.lco -log c64ram.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj c64ram -if c64ram.jed -j2s -log c64ram.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 23:54:28 ###########


########## Tcl recorder starts at 05/24/20 23:54:55 ##########

# Commands to make the Process: 
# Constraint Editor
# - none -
# Application to view the Process: 
# Constraint Editor
if [catch {open lattice_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file lattice_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-src c64ram.tt4 -type PLA -devfile \"$install_dir/ispcpld/dat/mach5/mach256100ce.dev\" -lci \"c64ram.lct\" -touch \"c64ram.tt4\"
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @lattice_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 23:54:55 ###########


########## Tcl recorder starts at 05/24/20 23:55:59 ##########

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/blif2eqn\" c64ram.tt4 -o c64ram.eq3  -use_short -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci c64ram.lct -out c64ram.vct -log c64ram.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open c64ram.cmd w} rspFile] {
	puts stderr "Cannot create response file c64ram.cmd: $rspFile"
} else {
	puts $rspFile "M5drc=-inp c64ram.tt4 -vci c64ram.vct -log c64ram.log -eqn c64ram.eq3 -dev mach256100 -dat $install_dir/ispcpld/dat/mach5/ -msg $install_dir/ispcpld/dat/ -err automake.err -tmv NoInput.tmv
M5dbase=-i c64ram.tt4 -device M5LV-256/68-7YC -lib $install_dir/ispcpld/lib5/amdmach.prt -strategy max_pterms 50
M5check=-i c64ram.vct -o c64ram.opt
M5COMP=-venus -menu
M5OPT=-venus -menu
M5SCAN=-venus -menu
M5FIT=-venus -menu
TMV2TV=c64ram.tv1 c64ram.tv
M5FUSE=-venus -menu
PLC2VCO=-d -i c64ram.npi -o c64ram.vco
M5CLEAN
"
	close $rspFile
}
if [catch {open c64ram.prp w} rspFile] {
	puts stderr "Cannot create response file c64ram.prp: $rspFile"
} else {
	puts $rspFile "MAX_SYMBOLS:0
MAX_PTERMS:0
MAX_XOR_PTERMS:0
POLARITY_CONTROL:TRUE
XOR_POLARITY_CONTROL:TRUE
EQN_SPLIT_CHUNK_SIZE:0
FF_SYNTH:OFF
XOR_TO_SOP_SYNTH:OFF
CONTROL_COLLAPSE:FALSE
EQN_SPLIT_OFF
VENUS_FLOW
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/mach5fit\" -i c64ram -lib c64ram.cmd "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete c64ram.cmd
file delete c64ram.prp
if [runCmd "\"$cpld_bin/lci2vci\" -vci c64ram.vco -out c64ram.lco -log c64ram.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj c64ram -if c64ram.jed -j2s -log c64ram.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 23:55:59 ###########


########## Tcl recorder starts at 05/24/20 23:56:03 ##########

# Commands to make the Process: 
# Fitter Report
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj c64ram -if c64ram.jed -j2s -log c64ram.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/20 23:56:03 ###########


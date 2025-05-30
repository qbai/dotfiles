# INSTALL INSTRUCTIONS: save as ~/.gdbinit
#
# DESCRIPTION: A user-friendly gdb configuration file, for x86/x86_64 and ARM platforms.
#
# REVISION : 8.0.5 (18/08/2013)
#
# CONTRIBUTORS: mammon_, elaine, pusillus, mong, zhang le, l0kit,
#               truthix the cyberpunk, fG!, gln
#
# FEEDBACK: http://reverse.put.as - reverser@put.as
#
# NOTES: 'help user' in gdb will list the commands/descriptions in this file
#        'context on' now enables auto-display of context screen
#
# MAC OS X NOTES: If you are using this on Mac OS X, you must either attach gdb to a process
#                 or launch gdb without any options and then load the binary file you want to analyse with "exec-file" option
#                 If you load the binary from the command line, like $gdb binary-name, this will not work as it should
#                 For more information, read it here http://reverse.put.as/2008/11/28/apples-gdb-bug/
#
# UPDATE: This bug can be fixed in gdb source. Refer to http://reverse.put.as/2009/08/10/fix-for-apples-gdb-bug-or-why-apple-forks-are-bad/
#         and http://reverse.put.as/2009/08/26/gdb-patches/ (if you want the fixed binary for i386)
#
#         An updated version of the patch and binary is available at http://reverse.put.as/2011/02/21/update-to-gdb-patches-fix-a-new-bug/
#
# iOS NOTES: iOS gdb from Cydia (and Apple's) suffer from the same OS X bug.
#			 If you are using this on Mac OS X or iOS, you must either attach gdb to a process
#            or launch gdb without any options and then load the binary file you want to analyse with "exec-file" option
#            If you load the binary from the command line, like $gdb binary-name, this will not work as it should
#            For more information, read it here http://reverse.put.as/2008/11/28/apples-gdb-bug/
#
# CHANGELOG: (older changes at the end of the file)
#
#   Version 8.0.6 (05/09/2013)
#     - Add patch command to convert bytes to little-endian and patch memory
#
#   Version 8.0.5 (18/08/2013)
#     - Add commands header and loadcmds to dump Mach-O header information
#     - Other fixes and additions from previous commits
#
#   Version 8.0.4 (08/05/2013)
#     - Detect automatically 32 or 64 bits archs using sizeof(void*). 
#       Thanks to Tyilo for the simple but very effective idea!
#     - Typo in hexdump command also fixed by vuquangtrong.
#     - Add shortcuts to attach to VMware kernel debugging gdb stub (kernel32 and kernel64)
#
#   Version 8.0.3 (21/03/2013)
#	  - Add option to colorize or not output (thanks to argp and skier for the request and ideas!)
#     - Convert the escape codes into functions so colors can be easily customized
#	  - Other enhancements available at git commit logs
#       Thanks to Plouj, argp, xristos for their ideas and fixes!
#
#   Version 8.0.2 (31/07/2012)
#     - Merge pull request from mheistermann to support local modifications in a .gdbinit.local file
#     - Add a missing opcode to the stepo command
#
#   Version 8.0.1 (23/04/2012)
#     - Small bug fix to the attsyntax and intelsyntax commands (changing X86 flavor variable was missing)
#
#   Version 8.0 (13/04/2012)
#     - Merged x86/x64 and ARM versions
#     - Added commands intelsyntax and attsyntax to switch between x86 disassembly flavors
#     - Added new configuration variables ARM, ARMOPCODES, and X86FLAVOR
#     - Code cleanups and fixes to the indentation
#     - Bug fixes to some ARM related code
#     - Added the dumpmacho command to memory dump the mach-o header to a file
#
#   TODO:
#

# __________________gdb options_________________

# set to 1 to have ARM target debugging as default, use the "arm" command to switch inside gdb
set $ARM = 0
# set to 0 if you have problems with the colorized prompt - reported by Plouj with Ubuntu gdb 7.2
set $COLOREDPROMPT = 1
# color the first line of the disassembly - default is green, if you want to change it search for
# SETCOLOR1STLINE and modify it :-)
set $SETCOLOR1STLINE = 0
# set to 0 to remove display of objectivec messages (default is 1)
set $SHOWOBJECTIVEC = 1
# set to 0 to remove display of cpu registers (default is 1)
set $SHOWCPUREGISTERS = 1
# set to 1 to enable display of stack (default is 0)
set $SHOWSTACK = 0
# set to 1 to enable display of data window (default is 0)
set $SHOWDATAWIN = 0
# set to 0 to disable colored display of changed registers
set $SHOWREGCHANGES = 1
# set to 1 so skip command to execute the instruction at the new location
# by default it EIP/RIP will be modified and update the new context but not execute the instruction
set $SKIPEXECUTE = 0
# if $SKIPEXECUTE is 1 configure the type of execution
# 1 = use stepo (do not get into calls), 0 = use stepi (step into calls)
set $SKIPSTEP = 1
# show the ARM opcodes - change to 0 if you don't want such thing (in x/i command)
set $ARMOPCODES = 1
# x86 disassembly flavor: 0 for Intel, 1 for AT&T
set $X86FLAVOR = 0
# use colorized output or not
set $USECOLOR = 1
# to use with remote KDP
set $KDP64BITS = -1
set $64BITS = 0

set confirm off
set debuginfod enabled off
set print array-indexes on
set print pretty on
set verbose off
set history filename ~/.gdb_history
set history save
set startup-quietly off

set output-radix 0x10
set input-radix 0x10

# These make gdb never pause in its output
set height 0
set width 0

set $SHOW_CONTEXT = 1
set $SHOW_NEST_INSN = 0

set $CONTEXTSIZE_STACK = 6
set $CONTEXTSIZE_DATA  = 8
set $CONTEXTSIZE_CODE  = 8

# __________________end gdb options_________________
#

# __________________color functions_________________
#
# color codes
set $BLACK = 0
set $RED = 1
set $GREEN = 2
set $YELLOW = 3
set $BLUE = 4
set $MAGENTA = 5
set $CYAN = 6
set $WHITE = 7

# CHANGME: If you want to modify the "theme" change the colors here
#          or just create a ~/.gdbinit.local and set these variables there
set $COLOR_REGNAME = $GREEN
set $COLOR_REGVAL = $BLACK
set $COLOR_REGVAL_MODIFIED  = $RED
set $COLOR_SEPARATOR = $BLUE
set $COLOR_CPUFLAGS = $RED

# this is ugly but there's no else if available :-(
define color
 if $USECOLOR == 1
 	# BLACK
 	if $arg0 == 0
 		echo \033[30m
 	else
 		# RED
	 	if $arg0 == 1
	 		echo \033[31m
	 	else
	 		# GREEN
	 		if $arg0 == 2
	 			echo \033[32m
	 		else
	 			# YELLOW
	 			if $arg0 == 3
	 				echo \033[33m
	 			else
	 				# BLUE
	 				if $arg0 == 4
	 					echo \033[34m
	 				else
	 					# MAGENTA
	 					if $arg0 == 5
	 						echo \033[35m
	 					else
	 						# CYAN
	 						if $arg0 == 6
	 							echo \033[36m
	 						else
	 							# WHITE
	 							if $arg0 == 7
	 								echo \033[37m
	 							end
	 						end
	 					end
	 				end
	 			end
	 		end
	 	end
	 end
 end
end

define color_reset
    if $USECOLOR == 1
	   echo \033[0m
    end
end

define color_bold
    if $USECOLOR == 1
	   echo \033[1m
    end
end

define color_underline
    if $USECOLOR == 1
	   echo \033[4m
    end
end

# this way anyone can have their custom prompt - argp's idea :-)
# can also be used to redefine anything else in particular the colors aka theming
# just remap the color variables defined above
#source ~/.gdbinit.local

# can't use the color functions because we are using the set command
if $COLOREDPROMPT == 1
	set prompt \033[31mgdb$ \033[0m
end

# Initialize these variables else comparisons will fail for coloring
# we must initialize all of them at once, 32 and 64 bits, and ARM.
set $oldrax = 0
set $oldrbx = 0
set $oldrcx = 0
set $oldrdx = 0
set $oldrsi = 0
set $oldrdi = 0
set $oldrbp = 0
set $oldrsp = 0
set $oldr8  = 0
set $oldr9  = 0
set $oldr10 = 0
set $oldr11 = 0
set $oldr12 = 0
set $oldr13 = 0
set $oldr14 = 0
set $oldr15 = 0
set $oldeax = 0
set $oldebx = 0
set $oldecx = 0
set $oldedx = 0
set $oldesi = 0
set $oldedi = 0
set $oldebp = 0
set $oldesp = 0
set $oldr0  = 0
set $oldr1  = 0
set $oldr2  = 0
set $oldr3  = 0
set $oldr4  = 0
set $oldr5  = 0
set $oldr6  = 0
set $oldr7  = 0
set $oldsp  = 0
set $oldlr  = 0

# used by ptraceme/rptraceme
set $ptrace_bpnum = 0

# ______________window size control___________
define contextsize-stack
    if $argc != 1
        help contextsize-stack
    else
        set $CONTEXTSIZE_STACK = $arg0
    end
end
document contextsize-stack
Syntax: contextsize-stack NUM
| Set stack dump window size to NUM lines.
end


define contextsize-data
    if $argc != 1
        help contextsize-data
    else
        set $CONTEXTSIZE_DATA = $arg0
    end
end
document contextsize-data
Syntax: contextsize-data NUM
| Set data dump window size to NUM lines.
end


define contextsize-code
    if $argc != 1
        help contextsize-code
    else
        set $CONTEXTSIZE_CODE = $arg0
    end
end
document contextsize-code
Syntax: contextsize-code NUM
| Set code window size to NUM lines.
end


# _____________breakpoint aliases_____________
define bpl
    info breakpoints
end
document bpl
Syntax: bpl
| List all breakpoints.
end


define bp
    if $argc != 1
        help bp
    else
        break $arg0
    end
end
document bp
Syntax: bp LOCATION
| Set breakpoint.
| LOCATION may be a line number, function name, or "*" and an address.
| To break on a symbol you must enclose symbol name inside "".
| Example:
| bp "[NSControl stringValue]"
| Or else you can use directly the break command (break [NSControl stringValue])
end


define bpc 
    if $argc != 1
        help bpc
    else
        clear $arg0
    end
end
document bpc
Syntax: bpc LOCATION
| Clear breakpoint.
| LOCATION may be a line number, function name, or "*" and an address.
end


define bpe
    if $argc != 1
        help bpe
    else
        enable $arg0
    end
end
document bpe
Syntax: bpe NUM
| Enable breakpoint with number NUM.
end


define bpd
    if $argc != 1
        help bpd
    else
        disable $arg0
    end
end
document bpd
Syntax: bpd NUM
| Disable breakpoint with number NUM.
end


define bpt
    if $argc != 1
        help bpt
    else
        tbreak $arg0
    end
end
document bpt
Syntax: bpt LOCATION
| Set a temporary breakpoint.
| This breakpoint will be automatically deleted when hit!.
| LOCATION may be a line number, function name, or "*" and an address.
end


define bpm
    if $argc != 1
        help bpm
    else
        awatch $arg0
    end
end
document bpm
Syntax: bpm EXPRESSION
| Set a read/write breakpoint on EXPRESSION, e.g. *address.
end


define bhb
    if $argc != 1
        help bhb
    else
        hb $arg0
    end
end
document bhb
Syntax: bhb LOCATION
| Set hardware assisted breakpoint.
| LOCATION may be a line number, function name, or "*" and an address.
end


define bht
    if $argc != 1
        help bht
    else
        thbreak $arg0
    end
end
document bht
Usage: bht LOCATION
| Set a temporary hardware breakpoint.
| This breakpoint will be automatically deleted when hit!
| LOCATION may be a line number, function name, or "*" and an address.
end


# ______________process information____________
define argv
    show args
end
document argv
Syntax: argv
| Print program arguments.
end


define stack
    if $argc == 0
        info stack
    end
    if $argc == 1
        info stack $arg0
    end
    if $argc > 1
        help stack
    end
end
document stack
Syntax: stack <COUNT>
| Print backtrace of the call stack, or innermost COUNT frames.
end


define frame
    info frame
    info args
    info locals
end
document frame
Syntax: frame
| Print stack frame.
end


define flagsarm
# conditional flags are
# negative/less than (N), bit 31 of CPSR
# zero (Z), bit 30
# Carry/Borrow/Extend (C), bit 29
# Overflow (V), bit 28
    # negative/less than (N), bit 31 of CPSR
    if (($cpsr >> 0x1f) & 1)
        printf "N "
	    set $_n_flag = 1
    else
        printf "n "
	    set $_n_flag = 0
    end
    # zero (Z), bit 30
    if (($cpsr >> 0x1e) & 1)
        printf "Z "
	    set $_z_flag = 1
    else
        printf "z "
	    set $_z_flag = 0
    end
    # Carry/Borrow/Extend (C), bit 29
    if (($cpsr >> 0x1d) & 1)
        printf "C "
    	set $_c_flag = 1
    else
        printf "c "
	    set $_c_flag = 0
    end
    # Overflow (V), bit 28
    if (($cpsr >> 0x1c) & 1)
        printf "V "
        set $_v_flag = 1
    else
        printf "v "
        set $_v_flag = 0
    end
    # Sticky overflow (Q), bit 27    
    if (($cpsr >> 0x1b) & 1)
        printf "Q "
        set $_q_flag = 1
    else
        printf "q "
        set $_q_flag = 0
    end
    # Java state bit (J), bit 24
    # When T=1:
    # J = 0 The processor is in Thumb state.
    # J = 1 The processor is in ThumbEE state.
    if (($cpsr >> 0x18) & 1)
        printf "J "
        set $_j_flag = 1
    else
        printf "j "
        set $_j_flag = 0
    end
    # Data endianness bit (E), bit 9
    if (($cpsr >> 9) & 1)
        printf "E "
        set $_e_flag = 1
    else
        printf "e "
        set $_e_flag = 0
    end
    # Imprecise abort disable bit (A), bit 8
    # The A bit is set to 1 automatically. It is used to disable imprecise data aborts. 
    # It might not be writable in the Nonsecure state if the AW bit in the SCR register is reset.
    if (($cpsr >> 8) & 1)
        printf "A "
        set $_a_flag = 1
    else
        printf "a "
        set $_a_flag = 0
    end
    # IRQ disable bit (I), bit 7
    # When the I bit is set to 1, IRQ interrupts are disabled.
    if (($cpsr >> 7) & 1)
        printf "I "
        set $_i_flag = 1
    else
        printf "i "
        set $_i_flag = 0
    end
    # FIQ disable bit (F), bit 6
    # When the F bit is set to 1, FIQ interrupts are disabled. 
    # FIQ can be nonmaskable in the Nonsecure state if the FW bit in SCR register is reset.
    if (($cpsr >> 6) & 1)
        printf "F "
        set $_f_flag = 1
    else
        printf "f "
        set $_f_flag = 0
    end
    # Thumb state bit (F), bit 5
    # if 1 then the processor is executing in Thumb state or ThumbEE state depending on the J bit
    if (($cpsr >> 5) & 1)
        printf "T "
        set $_t_flag = 1
    else
        printf "t "
        set $_t_flag = 0
    end
    # TODO: GE bit ?
end
document flagsarm
Syntax: flagsarm
| Auxiliary function to set ARM cpu flags.
end


define flagsx86
    # OF (overflow) flag
    if (((unsigned int)$eflags >> 0xB) & 1)
        printf "O "
        set $_of_flag = 1
    else
        printf "o "
        set $_of_flag = 0
    end
    # DF (direction) flag
    if (((unsigned int)$eflags >> 0xA) & 1)
        printf "D "
    else
        printf "d "
    end
    # IF (interrupt enable) flag
    if (((unsigned int)$eflags >> 9) & 1)
        printf "I "
    else
        printf "i "
    end
    # TF (trap) flag
    if (((unsigned int)$eflags >> 8) & 1)
        printf "T "
    else
        printf "t "
    end
    # SF (sign) flag
    if (((unsigned int)$eflags >> 7) & 1)
        printf "S "
        set $_sf_flag = 1
    else
        printf "s "
        set $_sf_flag = 0
    end
    # ZF (zero) flag
    if (((unsigned int)$eflags >> 6) & 1)
        printf "Z "
    	set $_zf_flag = 1
    else
        printf "z "
	    set $_zf_flag = 0
    end
    # AF (adjust) flag
    if (((unsigned int)$eflags >> 4) & 1)
        printf "A "
    else
        printf "a "
    end
    # PF (parity) flag
    if (((unsigned int)$eflags >> 2) & 1)
        printf "P "
	    set $_pf_flag = 1
    else
        printf "p "
    	set $_pf_flag = 0
    end
    # CF (carry) flag
    if ((unsigned int)$eflags & 1)
        printf "C "
	    set $_cf_flag = 1
    else
        printf "c "
    	set $_cf_flag = 0
    end
    printf "\n"
end
document flagsx86
Syntax: flagsx86
| Auxiliary function to set X86/X64 cpu flags.
end


define flags
    # call the auxiliary functions based on target cpu
    if $ARM == 1
        flagsarm
    else
        flagsx86
    end
end
document flags
Syntax: flags
| Print flags register.
end


define eflags
    if $ARM == 1
        # http://www.heyrick.co.uk/armwiki/The_Status_register
        printf "     N <%d>  Z <%d>  C <%d>  V <%d>",\
               (($cpsr >> 0x1f) & 1), (($cpsr >> 0x1e) & 1), \
               (($cpsr >> 0x1d) & 1), (($cpsr >> 0x1c) & 1)
        printf "  Q <%d>  J <%d>  GE <%d>  E <%d>  A <%d>",\
               (($cpsr >> 0x1b) & 1), (($cpsr >> 0x18) & 1),\
               (($cpsr >> 0x10) & 7), (($cpsr >> 9) & 1), (($cpsr >> 8) & 1)
        printf "  I <%d>  F <%d>  T <%d> \n",\
               (($cpsr >> 7) & 1), (($cpsr >> 6) & 1), \
               (($cpsr >> 5) & 1)
     else
        printf "     OF <%d>  DF <%d>  IF <%d>  TF <%d>",\
               (((unsigned int)$eflags >> 0xB) & 1), (((unsigned int)$eflags >> 0xA) & 1), \
               (((unsigned int)$eflags >> 9) & 1), (((unsigned int)$eflags >> 8) & 1)
        printf "  SF <%d>  ZF <%d>  AF <%d>  PF <%d>  CF <%d>\n",\
               (((unsigned int)$eflags >> 7) & 1), (((unsigned int)$eflags >> 6) & 1),\
               (((unsigned int)$eflags >> 4) & 1), (((unsigned int)$eflags >> 2) & 1), ((unsigned int)$eflags & 1)
        printf "     ID <%d>  VIP <%d> VIF <%d> AC <%d>",\
               (((unsigned int)$eflags >> 0x15) & 1), (((unsigned int)$eflags >> 0x14) & 1), \
               (((unsigned int)$eflags >> 0x13) & 1), (((unsigned int)$eflags >> 0x12) & 1)
        printf "  VM <%d>  RF <%d>  NT <%d>  IOPL <%d>\n",\
               (((unsigned int)$eflags >> 0x11) & 1), (((unsigned int)$eflags >> 0x10) & 1),\
               (((unsigned int)$eflags >> 0xE) & 1), (((unsigned int)$eflags >> 0xC) & 3)
     end
end
document eflags
Syntax: eflags
| Print eflags register.
end


define cpsr
	eflags
end
document cpsr
Syntax: cpsr
| Print cpsr register.
end

define regarm
    printf "  "
    # R0
    color $COLOR_REGNAME
    printf "R0:"
    if ($r0 != $oldr0 && $SHOWREGCHANGES == 1)
        color $COLOR_REGVAL_MODIFIED
    else
        color $COLOR_REGVAL
    end
    printf "  0x%08X  ", $r0
    # R1
    color $COLOR_REGNAME
    printf "R1:"
    if ($r1 != $oldr1 && $SHOWREGCHANGES == 1)
        color $COLOR_REGVAL_MODIFIED
    else
        color $COLOR_REGVAL
    end
    printf " 0x%08X  ", $r1
	# R2
    color $COLOR_REGNAME
    printf "R2:"
    if ($r2 != $oldr2 && $SHOWREGCHANGES == 1)
        color $COLOR_REGVAL_MODIFIED
    else
        color $COLOR_REGVAL
    end
    printf "  0x%08X  ", $r2
	# R3
    color $COLOR_REGNAME
    printf "R3:"
    if ($r3 != $oldr3 && $SHOWREGCHANGES == 1)
        color $COLOR_REGVAL_MODIFIED
    else
        color $COLOR_REGVAL
    end
    printf "  0x%08X\n", $r3
    printf "  "
	# R4
    color $COLOR_REGNAME
    printf "R4:"
    if ($r4 != $oldr4 && $SHOWREGCHANGES == 1)
        color $COLOR_REGVAL_MODIFIED
    else
        color $COLOR_REGVAL
    end
    printf "  0x%08X  ", $r4
    # R5
    color $COLOR_REGNAME
    printf "R5:"
    if ($r5 != $oldr5 && $SHOWREGCHANGES == 1)
        color $COLOR_REGVAL_MODIFIED
    else
        color $COLOR_REGVAL
    end
    printf " 0x%08X  ", $r5
	# R6
    color $COLOR_REGNAME
    printf "R6:"
    if ($r6 != $oldr6 && $SHOWREGCHANGES == 1)
        color $COLOR_REGVAL_MODIFIED
    else
        color $COLOR_REGVAL
    end
    printf "  0x%08X  ", $r6
	# R7
    color $COLOR_REGNAME
    printf "R7:"
    if ($r7 != $oldr7 && $SHOWREGCHANGES == 1)
        color $COLOR_REGVAL_MODIFIED
    else
        color $COLOR_REGVAL
    end
    printf "  0x%08X\n", $r7
    printf "  "
	# R8
    color $COLOR_REGNAME
    printf "R8:"
    if ($r8 != $oldr8 && $SHOWREGCHANGES == 1)
        color $COLOR_REGVAL_MODIFIED
    else
        color $COLOR_REGVAL
    end
    printf "  0x%08X  ", $r8
	# R9
    color $COLOR_REGNAME
    printf "R9:"
    if ($r9 != $oldr9 && $SHOWREGCHANGES == 1)
        color $COLOR_REGVAL_MODIFIED
    else
        color $COLOR_REGVAL
    end
    printf " 0x%08X  ", $r9
	# R10
    color $COLOR_REGNAME
    printf "R10:"
    if ($r10 != $oldr10 && $SHOWREGCHANGES == 1)
        color $COLOR_REGVAL_MODIFIED
    else
        color $COLOR_REGVAL
    end
    printf " 0x%08X  ", $r10
	# R11
    color $COLOR_REGNAME
    printf "R11:"
    if ($r11 != $oldr11 && $SHOWREGCHANGES == 1)
        color $COLOR_REGVAL_MODIFIED
    else
        color $COLOR_REGVAL
    end
    printf " 0x%08X ", $r11
    dumpjump
    printf "\n"
    # R12
    color $COLOR_REGNAME
    printf "  R12:"
    if ($r12 != $oldr12 && $SHOWREGCHANGES == 1)
        color $COLOR_REGVAL_MODIFIED
    else
        color $COLOR_REGVAL
    end
    printf " 0x%08X", $r12
    printf "  "
    # SP
    color $COLOR_REGNAME
    printf "SP:"
    if ($sp != $oldsp && $SHOWREGCHANGES == 1)
        color $COLOR_REGVAL_MODIFIED
    else
        color $COLOR_REGVAL
    end
    printf " 0x%08X  ", $sp
	# LR
    color $COLOR_REGNAME
    printf "LR:"
    if ($lr != $oldlr && $SHOWREGCHANGES == 1)
        color $COLOR_REGVAL_MODIFIED
    else
        color $COLOR_REGVAL
    end
    printf "  0x%08X  ", $lr
	# PC
    color $COLOR_REGNAME
    printf "PC:"
    color $COLOR_REGVAL_MODIFIED
    printf "  0x%08X  ", $pc
    color_bold
    color_underline
    color $COLOR_CPUFLAGS
    flags
	color_reset
    printf "\n"
end
document regarm
Syntax: regarm
| Auxiliary function to display ARM registers.
end

define regx64
    # 64bits stuff
    printf "  "
    # RAX
    color $COLOR_REGNAME
    printf "RAX:"
    if ($rax != $oldrax && $SHOWREGCHANGES == 1)
        color $COLOR_REGVAL_MODIFIED
    else
        color $COLOR_REGVAL
    end
    printf " 0x%016lX  ", $rax
    # RBX
    color $COLOR_REGNAME
    printf "RBX:"
    if ($rbx != $oldrbx && $SHOWREGCHANGES == 1)
        color $COLOR_REGVAL_MODIFIED
    else
        color $COLOR_REGVAL
    end
    printf " 0x%016lX  ", $rbx
    # RBP
    color $COLOR_REGNAME
    printf "RBP:"
    if ($rbp != $oldrbp && $SHOWREGCHANGES == 1)
        color $COLOR_REGVAL_MODIFIED
    else
        color $COLOR_REGVAL
    end
    printf " 0x%016lX  ", $rbp
    # RSP
    color $COLOR_REGNAME
    printf "RSP:"
    if ($rsp != $oldrsp && $SHOWREGCHANGES == 1)
        color $COLOR_REGVAL_MODIFIED
    else
        color $COLOR_REGVAL
    end
    printf " 0x%016lX  ", $rsp
    color_bold
    color_underline
    color $COLOR_CPUFLAGS
    flags
    color_reset
    printf "  "
    # RDI
    color $COLOR_REGNAME
    printf "RDI:"
    if ($rdi != $oldrdi && $SHOWREGCHANGES == 1)
	    color $COLOR_REGVAL_MODIFIED
	else
	    color $COLOR_REGVAL
	end
	printf " 0x%016lX  ", $rdi
	# RSI
    color $COLOR_REGNAME
   	printf "RSI:"
	if ($rsi != $oldrsi && $SHOWREGCHANGES == 1)
	    color $COLOR_REGVAL_MODIFIED
	else
	    color $COLOR_REGVAL
	end
	printf " 0x%016lX  ", $rsi
	# RDX
    color $COLOR_REGNAME
   	printf "RDX:"
	if ($rdx != $oldrdx && $SHOWREGCHANGES == 1)
	    color $COLOR_REGVAL_MODIFIED
	else
	    color $COLOR_REGVAL
	end
	printf " 0x%016lX  ", $rdx
	# RCX
    color $COLOR_REGNAME
   	printf "RCX:"
	if ($rcx != $oldrcx && $SHOWREGCHANGES == 1)
	    color $COLOR_REGVAL_MODIFIED
	else
	    color $COLOR_REGVAL
    end
    printf " 0x%016lX  ", $rcx
    # RIP
    color $COLOR_REGNAME
    printf "RIP:"
    color $COLOR_REGVAL_MODIFIED
    printf " 0x%016lX\n  ", $rip
    # R8
    color $COLOR_REGNAME
   	printf "R8 :"
	if ($r8 != $oldr8 && $SHOWREGCHANGES == 1)
	    color $COLOR_REGVAL_MODIFIED
	else
	    color $COLOR_REGVAL
    end
    printf " 0x%016lX  ", $r8
    # R9
    color $COLOR_REGNAME
   	printf "R9 :"
    if ($r9 != $oldr9 && $SHOWREGCHANGES == 1)
	    color $COLOR_REGVAL_MODIFIED
	else
	    color $COLOR_REGVAL
    end
    printf " 0x%016lX  ", $r9
    # R10
    color $COLOR_REGNAME
   	printf "R10:"
    if ($r10 != $oldr10 && $SHOWREGCHANGES == 1)
	    color $COLOR_REGVAL_MODIFIED
	else
	    color $COLOR_REGVAL
    end
    printf " 0x%016lX  ", $r10
    # R11
   	color $COLOR_REGNAME
    printf "R11:"
	if ($r11 != $oldr11 && $SHOWREGCHANGES == 1)
	    color $COLOR_REGVAL_MODIFIED
	else
	    color $COLOR_REGVAL
    end
    printf " 0x%016lX  ", $r11
    # R12
    color $COLOR_REGNAME
	printf "R12:"
    if ($r12 != $oldr12 && $SHOWREGCHANGES == 1)
	    color $COLOR_REGVAL_MODIFIED
	else
	    color $COLOR_REGVAL
    end
    printf " 0x%016lX\n  ", $r12
    # R13
    color $COLOR_REGNAME
   	printf "R13:"
    if ($r13 != $oldr13 && $SHOWREGCHANGES == 1)
	    color $COLOR_REGVAL_MODIFIED
	else
	    color $COLOR_REGVAL
    end
    printf " 0x%016lX  ", $r13
    # R14
    color $COLOR_REGNAME
    printf "R14:"
    if ($r14 != $oldr14 && $SHOWREGCHANGES == 1)
	    color $COLOR_REGVAL_MODIFIED
	else
	    color $COLOR_REGVAL
    end
    printf " 0x%016lX  ", $r14
    # R15
	color $COLOR_REGNAME
    printf "R15:"
    if ($r15 != $oldr15 && $SHOWREGCHANGES == 1)
	    color $COLOR_REGVAL_MODIFIED
	else
	    color $COLOR_REGVAL
    end
    printf " 0x%016lX\n  ", $r15
  	color $COLOR_REGNAME
    printf "CS:"
    color $COLOR_REGVAL
    printf " %04X  ", $cs
    color $COLOR_REGNAME
    printf "DS:"
    color $COLOR_REGVAL
    printf " %04X  ", $ds
    color $COLOR_REGNAME
    printf "ES:"
    color $COLOR_REGVAL
    printf " %04X  ", $es
    color $COLOR_REGNAME
    printf "FS:"
    color $COLOR_REGVAL
    printf " %04X  ", $fs
    color $COLOR_REGNAME
    printf "GS:"
    color $COLOR_REGVAL
    printf " %04X  ", $gs
    color $COLOR_REGNAME
    printf "SS:"
    color $COLOR_REGVAL
    printf " %04X", $ss
    color_reset
end
document regx64
Syntax: regx64
| Auxiliary function to display X86_64 registers.
end


define regx86
    printf "  "
    # EAX
    color $COLOR_REGNAME
	printf "EAX:"
    if ($eax != $oldeax && $SHOWREGCHANGES == 1)
   	 	color $COLOR_REGVAL_MODIFIED
   	else
   	 	color $COLOR_REGVAL
   	end
   	printf " 0x%08X  ", $eax
   	# EBX
    color $COLOR_REGNAME
   	printf "EBX:"
   	if ($ebx != $oldebx && $SHOWREGCHANGES == 1) 
	    color $COLOR_REGVAL_MODIFIED		
   	else
	    color $COLOR_REGVAL
   	end
   	printf " 0x%08X  ", $ebx
   	# ECX
    color $COLOR_REGNAME
   	printf "ECX:"
   	if ($ecx != $oldecx && $SHOWREGCHANGES == 1)
	    color $COLOR_REGVAL_MODIFIED
	else
	    color $COLOR_REGVAL
	end
	printf " 0x%08X  ", $ecx
	# EDX
	color $COLOR_REGNAME
	printf "EDX:"
	if ($edx != $oldedx && $SHOWREGCHANGES == 1)
	    color $COLOR_REGVAL_MODIFIED
	else
	    color $COLOR_REGVAL
	end
        printf " 0x%08X  ", $edx
	color_bold
	color_underline
	color $COLOR_CPUFLAGS
    flags
    color_reset
    printf "  "
    # ESI
	color $COLOR_REGNAME
    printf "ESI:"
    if ($esi != $oldesi && $SHOWREGCHANGES == 1)
	    color $COLOR_REGVAL_MODIFIED
	else
	    color $COLOR_REGVAL
	end
	printf " 0x%08X  ", $esi
	# EDI
	color $COLOR_REGNAME
    printf "EDI:"
	if ($edi != $oldedi && $SHOWREGCHANGES == 1)
	    color $COLOR_REGVAL_MODIFIED
	else
	    color $COLOR_REGVAL
	end
	printf " 0x%08X  ", $edi
	# EBP
	color $COLOR_REGNAME
	printf "EBP:"
	if ($ebp != $oldebp && $SHOWREGCHANGES == 1)
	    color $COLOR_REGVAL_MODIFIED
	else
	    color $COLOR_REGVAL
	end
	printf " 0x%08X  ", $ebp
	# ESP
	color $COLOR_REGNAME
    printf "ESP:"
	if ($esp != $oldesp && $SHOWREGCHANGES == 1)
	    color $COLOR_REGVAL_MODIFIED
	else
	    color $COLOR_REGVAL
    end
    printf " 0x%08X  ", $esp
    # EIP
    color $COLOR_REGNAME
    printf "EIP:"
    color $COLOR_REGVAL_MODIFIED
    printf " 0x%08X\n  ", $eip
    color $COLOR_REGNAME
    printf "CS:"
    color $COLOR_REGVAL
    printf " %04X  ", $cs
    color $COLOR_REGNAME
    printf "DS:"
    color $COLOR_REGVAL
    printf " %04X  ", $ds
    color $COLOR_REGNAME
    printf "ES:"
    color $COLOR_REGVAL
    printf " %04X  ", $es
    color $COLOR_REGNAME
    printf "FS:"
    color $COLOR_REGVAL
    printf " %04X  ", $fs
    color $COLOR_REGNAME
    printf "GS:"
    color $COLOR_REGVAL
    printf " %04X  ", $gs
    color $COLOR_REGNAME
    printf "SS:"
    color $COLOR_REGVAL
    printf " %04X", $ss
    color_reset
end
document regx86
Syntax: regx86
| Auxiliary function to display X86 registers.
end


define reg
    if $ARM == 1
        regarm
	    if ($SHOWREGCHANGES == 1)
	        set $oldr0  = $r0
	        set $oldr1  = $r1
	        set $oldr2  = $r2
	        set $oldr3  = $r3
	        set $oldr4  = $r4
	        set $oldr5  = $r5
	        set $oldr6  = $r6
	        set $oldr7  = $r7
	        set $oldr8  = $r8
    		set $oldr9  = $r9
	    	set $oldr10 = $r10
		    set $oldr11 = $r11
			set $oldr12 = $r12
			set $oldsp  = $sp
			set $oldlr  = $lr
	    end
    else
        if ($64BITS == 1)
            regx64
        else
            regx86
        end
        # call smallregisters
	    smallregisters
        # display conditional jump routine
	    if ($64BITS == 1)
    	    printf "\t\t\t\t"
    	end
        dumpjump
        printf "\n"
        if ($SHOWREGCHANGES == 1)
    	    if ($64BITS == 1)
	        	set $oldrax = $rax
			    set $oldrbx = $rbx
    			set $oldrcx = $rcx
	    		set $oldrdx = $rdx
		    	set $oldrsi = $rsi
    			set $oldrdi = $rdi
	    		set $oldrbp = $rbp
		    	set $oldrsp = $rsp
			    set $oldr8  = $r8
    			set $oldr9  = $r9
	    		set $oldr10 = $r10
		    	set $oldr11 = $r11
			    set $oldr12 = $r12
    			set $oldr13 = $r13
	    		set $oldr14 = $r14
		    	set $oldr15 = $r15
    		else
	        	set $oldeax = $eax
		    	set $oldebx = $ebx
			    set $oldecx = $ecx
    			set $oldedx = $edx
	    		set $oldesi = $esi
		    	set $oldedi = $edi
			    set $oldebp = $ebp
			    set $oldesp = $esp
    		end
	    end
    end
end
document reg
Syntax: reg
| Print CPU registers.
end


define smallregisters
    if ($64BITS == 1)
    #64bits stuff
	    # from rax
    	set $eax = $rax & 0xffffffff
    	set $ax  = $rax & 0xffff
    	set $al  = $ax & 0xff
    	set $ah  = $ax >> 8
    	# from rbx
    	set $ebx = $rbx & 0xffffffff
    	set $bx  = $rbx & 0xffff
    	set $bl  = $bx & 0xff
    	set $bh  = $bx >> 8
	    # from rcx
    	set $ecx = $rcx & 0xffffffff
    	set $cx  = $rcx & 0xffff
    	set $cl  = $cx & 0xff
	    set $ch  = $cx >> 8
    	# from rdx
    	set $edx = $rdx & 0xffffffff
    	set $dx  = $rdx & 0xffff
    	set $dl  = $dx & 0xff
    	set $dh  = $dx >> 8
	    # from rsi
    	set $esi = $rsi & 0xffffffff
    	set $si  = $rsi & 0xffff
    	# from rdi
    	set $edi = $rdi & 0xffffffff
    	set $di  = $rdi & 0xffff		
    #32 bits stuff
    else
	    # from eax
    	set $ax = $eax & 0xffff
    	set $al = $ax & 0xff
    	set $ah = $ax >> 8
	    # from ebx
    	set $bx = $ebx & 0xffff
    	set $bl = $bx & 0xff
    	set $bh = $bx >> 8
    	# from ecx
    	set $cx = $ecx & 0xffff
    	set $cl = $cx & 0xff
    	set $ch = $cx >> 8
    	# from edx
    	set $dx = $edx & 0xffff
    	set $dl = $dx & 0xff
	    set $dh = $dx >> 8
    	# from esi
    	set $si = $esi & 0xffff
    	# from edi
	    set $di = $edi & 0xffff		
     end
end
document smallregisters
Syntax: smallregisters
| Create the 16 and 8 bit cpu registers (gdb doesn't have them by default).
| And 32bits if we are dealing with 64bits binaries.
end


define func
    if $argc == 0
        info functions
    end
    if $argc == 1
        info functions $arg0
    end
    if $argc > 1
        help func
    end
end
document func
Syntax: func <REGEXP>
| Print all function names in target, or those matching REGEXP.
end


define var
    if $argc == 0
        info variables
    end
    if $argc == 1
        info variables $arg0
    end
    if $argc > 1
        help var
    end
end
document var
Syntax: var <REGEXP>
| Print all global and static variable names (symbols), or those matching REGEXP.
end


define lib
    info sharedlibrary
end
document lib
Syntax: lib
| Print shared libraries linked to target.
end


define sig
    if $argc == 0
        info signals
    end
    if $argc == 1
        info signals $arg0
    end
    if $argc > 1
        help sig
    end
end
document sig
Syntax: sig <SIGNAL>
| Print what debugger does when program gets various signals.
| Specify a SIGNAL as argument to print info on that signal only.
end


define threads
    info threads
end
document threads
Syntax: threads
| Print threads in target.
end


define dis
    if $argc == 0
        disassemble
    end
    if $argc == 1
        disassemble $arg0
    end
    if $argc == 2
        disassemble $arg0 $arg1
    end 
    if $argc > 2
        help dis
    end
end
document dis
Syntax: dis <ADDR1> <ADDR2>
| Disassemble a specified section of memory.
| Default is to disassemble the function surrounding the PC (program counter) of selected frame. 
| With one argument, ADDR1, the function surrounding this address is dumped.
| Two arguments are taken as a range of memory to dump.
end


# __________hex/ascii dump an address_________
define ascii_char
    if $argc != 1
        help ascii_char
    else
        # thanks elaine :)
        set $_c = *(unsigned char *)($arg0)
        if ($_c < 0x20 || $_c > 0x7E)
            printf "."
        else
            printf "%c", $_c
        end
    end
end
document ascii_char
Syntax: ascii_char ADDR
| Print ASCII value of byte at address ADDR.
| Print "." if the value is unprintable.
end


define hex_quad
    if $argc != 1
        help hex_quad
    else
        printf "%02X %02X %02X %02X %02X %02X %02X %02X", \
               *(unsigned char*)($arg0), *(unsigned char*)($arg0 + 1),     \
               *(unsigned char*)($arg0 + 2), *(unsigned char*)($arg0 + 3), \
               *(unsigned char*)($arg0 + 4), *(unsigned char*)($arg0 + 5), \
               *(unsigned char*)($arg0 + 6), *(unsigned char*)($arg0 + 7)
    end
end
document hex_quad
Syntax: hex_quad ADDR
| Print eight hexadecimal bytes starting at address ADDR.
end


define hexdump
    if $argc == 1
        hexdump_aux $arg0
	else
		if $argc == 2
			set $_count = 0
			while ($_count < $arg1)
				set $_i = ($_count * 0x10)
				hexdump_aux $arg0+$_i
				set $_count++
			end
		else
			help hexdump
		end
    end
end
document hexdump
Syntax: hexdump ADDR <NR_LINES>
| Display a 16-byte hex/ASCII dump of memory starting at address ADDR.
| Optional parameter is the number of lines to display if you want more than one. 
end


define hexdump_aux
    if $argc != 1
        help hexdump_aux
    else
    	color_bold
        if ($64BITS == 1)
            printf "0x%016lX : ", $arg0
        else
            printf "0x%08X : ", $arg0
        end
        color_reset
        hex_quad $arg0
        color_bold
        printf " - "
        color_reset
        hex_quad $arg0+8
        printf " "
        color_bold
        ascii_char $arg0+0x0
        ascii_char $arg0+0x1
        ascii_char $arg0+0x2
        ascii_char $arg0+0x3
        ascii_char $arg0+0x4
        ascii_char $arg0+0x5
        ascii_char $arg0+0x6
        ascii_char $arg0+0x7
        ascii_char $arg0+0x8
        ascii_char $arg0+0x9
        ascii_char $arg0+0xA
        ascii_char $arg0+0xB
        ascii_char $arg0+0xC
        ascii_char $arg0+0xD
        ascii_char $arg0+0xE
        ascii_char $arg0+0xF
        color_reset
        printf "\n"
    end
end
document hexdump_aux
Syntax: hexdump_aux ADDR
| Display a 16-byte hex/ASCII dump of memory at address ADDR.
end


# _______________data window__________________
define ddump
    if $argc != 1
        help ddump
    else
        color $COLOR_SEPARATOR
        if $ARM == 1
            printf "[0x%08X]", $data_addr
        else
            if ($64BITS == 1)
                printf "[0x%04X:0x%016lX]", $ds, $data_addr
            else
                printf "[0x%04X:0x%08X]", $ds, $data_addr
            end
        end

    	color $COLOR_SEPARATOR
    	printf "------------------------"
        printf "-------------------------------"
        if ($64BITS == 1)
            printf "-------------------------------------"
	    end
	    color_bold
	    color $COLOR_SEPARATOR
	    printf "[data]\n"
        color_reset
        set $_count = 0
        while ($_count < $arg0)
            set $_i = ($_count * 0x10)
            hexdump $data_addr+$_i
            set $_count++
        end
    end
end
document ddump
Syntax: ddump NUM
| Display NUM lines of hexdump for address in $data_addr global variable.
end


define dd
    if $argc != 1
        help dd
    else
        set $data_addr = $arg0
        ddump 0x10
    end
end
document dd
Syntax: dd ADDR
| Display 16 lines of a hex dump of address starting at ADDR.
end


define datawin
    if $ARM == 1
        if ((($r0 >> 0x18) == 0x40) || (($r0 >> 0x18) == 0x08) || (($r0 >> 0x18) == 0xBF))
            set $data_addr = $r0
        else
            if ((($r1 >> 0x18) == 0x40) || (($r1 >> 0x18) == 0x08) || (($r1 >> 0x18) == 0xBF))
                set $data_addr = $r1
            else
                if ((($r2 >> 0x18) == 0x40) || (($r2 >> 0x18) == 0x08) || (($r2 >> 0x18) == 0xBF))
                    set $data_addr = $r2
                else
                    set $data_addr = $sp
                end
            end
        end
################################# X86
    else
        if ($64BITS == 1)
            if ((($rsi >> 0x18) == 0x40) || (($rsi >> 0x18) == 0x08) || (($rsi >> 0x18) == 0xBF))
                set $data_addr = $rsi
            else
                if ((($rdi >> 0x18) == 0x40) || (($rdi >> 0x18) == 0x08) || (($rdi >> 0x18) == 0xBF))
                    set $data_addr = $rdi
                else
                    if ((($rax >> 0x18) == 0x40) || (($rax >> 0x18) == 0x08) || (($rax >> 0x18) == 0xBF))
                        set $data_addr = $rax
                    else
                        set $data_addr = $rsp
                    end
                end
            end
        else
            if ((($esi >> 0x18) == 0x40) || (($esi >> 0x18) == 0x08) || (($esi >> 0x18) == 0xBF))
                set $data_addr = $esi
            else
                if ((($edi >> 0x18) == 0x40) || (($edi >> 0x18) == 0x08) || (($edi >> 0x18) == 0xBF))
                    set $data_addr = $edi
                else
                    if ((($eax >> 0x18) == 0x40) || (($eax >> 0x18) == 0x08) || (($eax >> 0x18) == 0xBF))
                        set $data_addr = $eax
                    else
                        set $data_addr = $esp
                    end
                end
            end
        end
    end
    ddump $CONTEXTSIZE_DATA
end
document datawin
Syntax: datawin
| Display valid address from one register in data window.
| Registers to choose are: esi, edi, eax, or esp.
end


################################
##### ALERT ALERT ALERT ########
################################
# Huge mess going here :) HAHA #
################################
define dumpjump
    if $ARM == 1
        ## Most ARM and Thumb instructions are conditional!
        # each instruction is 32 bits long
        # 4 bits are for condition codes (16 in total) (bits 31:28 in ARM contain the condition or 1111 if instruction is unconditional)
        # 2x4 bits for destination and first operand registers
        # one for the set-status flag
        # an assorted number for other stuff
        # 12 bits for any immediate value
        # $_t_flag == 0 => ARM mode
        # $_t_flag == 1 => Thumb or ThumbEE
        # State bit (T), bit 5
        if (($cpsr >> 5) & 1)
            set $_t_flag = 1
        else
            set $_t_flag = 0
        end

        if $_t_flag == 0
	        set $_lastbyte = *(unsigned char *)($pc+3)
	        #set $_bit31 = ($_lastbyte >> 7) & 1
        	#set $_bit30 = ($_lastbyte >> 6) & 1
    	    #set $_bit29 = ($_lastbyte >> 5) & 1
    	    #set $_bit28 = ($_lastbyte >> 4) & 1
    	    set $_conditional = $_lastbyte >> 4
        	dumpjumphelper
        else
        	# if bits 15-12 (opcode in Thumb instructions) are equal to 1 1 0 1 (0xD) then we have a conditional branch
        	# bits 11-8 for the conditional execution code (check ARMv7 manual A8.3)
        	if ( (*(unsigned char *)($pc+1) >> 4) == 0xD )
	        	set $_conditional = *(unsigned char *)($pc+1) ^ 0xD0
        		dumpjumphelper
        	end
        end 
##################### X86
    else
        ## grab the first two bytes from the instruction so we can determine the jump instruction
        set $_byte1 = *(unsigned char *)$pc
        set $_byte2 = *(unsigned char *)($pc+1)
        ## and now check what kind of jump we have (in case it's a jump instruction)
        ## I changed the flags routine to save the flag into a variable, so we don't need to repeat the process :) (search for "define flags")

        ## opcode 0x77: JA, JNBE (jump if CF=0 and ZF=0)
        ## opcode 0x0F87: JNBE, JA
        if ( ($_byte1 == 0x77) || ($_byte1 == 0x0F && $_byte2 == 0x87) )
         	# cf=0 and zf=0
 	        if ($_cf_flag == 0 && $_zf_flag == 0)
	        	color $RED
           		printf "  Jump is taken (c=0 and z=0)"
          	else
            	# cf != 0 or zf != 0
           		color $RED
           		printf "  Jump is NOT taken (c!=0 or z!=0)"
          	end 
        end
        ## opcode 0x73: JAE, JNB, JNC (jump if CF=0)
        ## opcode 0x0F83: JNC, JNB, JAE (jump if CF=0)
        if ( ($_byte1 == 0x73) || ($_byte1 == 0x0F && $_byte2 == 0x83) )
         	# cf=0
         	if ($_cf_flag == 0)
		        color $RED
           		printf "  Jump is taken (c=0)"
          	else
            	# cf != 0
           		color $RED
   		        printf "  Jump is NOT taken (c!=0)"
          	end 
        end
        ## opcode 0x72: JB, JC, JNAE (jump if CF=1)
        ## opcode 0x0F82: JNAE, JB, JC
        if ( ($_byte1 == 0x72) || ($_byte1 == 0x0F && $_byte2 == 0x82) )
            # cf=1
 	        if ($_cf_flag == 1)
		        color $RED
        		printf "  Jump is taken (c=1)"
          	else
            	# cf != 1
           		color $RED
   		        printf "  Jump is NOT taken (c!=1)"
          	end 
        end
        ## opcode 0x76: JBE, JNA (jump if CF=1 or ZF=1)
        ## opcode 0x0F86: JBE, JNA
        if ( ($_byte1 == 0x76) || ($_byte1 == 0x0F && $_byte2 == 0x86) )
         	# cf=1 or zf=1
         	if (($_cf_flag == 1) || ($_zf_flag == 1))
		        color $RED
           		printf "  Jump is taken (c=1 or z=1)"
          	else
            	# cf != 1 or zf != 1
           		color $RED
           		printf "  Jump is NOT taken (c!=1 or z!=1)"
          	end 
        end
        ## opcode 0xE3: JCXZ, JECXZ, JRCXZ (jump if CX=0 or ECX=0 or RCX=0)
        if ($_byte1 == 0xE3)
         	# cx=0 or ecx=0
         	if (($ecx == 0) || ($cx == 0))
        		color $RED
   		        printf "  Jump is taken (cx=0 or ecx=0)"
          	else
   	    	    color $RED
       	    	printf "  Jump is NOT taken (cx!=0 or ecx!=0)"
          	end 
        end
        ## opcode 0x74: JE, JZ (jump if ZF=1)
        ## opcode 0x0F84: JZ, JE, JZ (jump if ZF=1)
        if ( ($_byte1 == 0x74) || ($_byte1 == 0x0F && $_byte2 == 0x84) )
             # ZF = 1
          	if ($_zf_flag == 1)
   		        color $RED
           		printf "  Jump is taken (z=1)"
          	else
                # ZF = 0
           		color $RED
   		        printf "  Jump is NOT taken (z!=1)"
          	end 
        end
        ## opcode 0x7F: JG, JNLE (jump if ZF=0 and SF=OF)
        ## opcode 0x0F8F: JNLE, JG (jump if ZF=0 and SF=OF)
        if ( ($_byte1 == 0x7F) || ($_byte1 == 0x0F && $_byte2 == 0x8F) )
            # zf = 0 and sf = of
  	        if (($_zf_flag == 0) && ($_sf_flag == $_of_flag))
   		        color $RED
   		        printf "  Jump is taken (z=0 and s=o)"
         	else
   		        color $RED
   		        printf "  Jump is NOT taken (z!=0 or s!=o)"
  	        end 
        end
        ## opcode 0x7D: JGE, JNL (jump if SF=OF)
        ## opcode 0x0F8D: JNL, JGE (jump if SF=OF)
        if ( ($_byte1 == 0x7D) || ($_byte1 == 0x0F && $_byte2 == 0x8D) )
            # sf = of
  	        if ($_sf_flag == $_of_flag)
   		        color $RED
   		        printf "  Jump is taken (s=o)"
  	        else
   		        color $RED
   		        printf "  Jump is NOT taken (s!=o)"
  	        end 
        end
        ## opcode: 0x7C: JL, JNGE (jump if SF != OF)
        ## opcode: 0x0F8C: JNGE, JL (jump if SF != OF)
        if ( ($_byte1 == 0x7C) || ($_byte1 == 0x0F && $_byte2 == 0x8C) )
            # sf != of
  	        if ($_sf_flag != $_of_flag)
   		        color $RED
   		        printf "  Jump is taken (s!=o)"
  	        else
        		color $RED
   		        printf "  Jump is NOT taken (s=o)"
  	        end 
        end
        ## opcode 0x7E: JLE, JNG (jump if ZF = 1 or SF != OF)
        ## opcode 0x0F8E: JNG, JLE (jump if ZF = 1 or SF != OF)
        if ( ($_byte1 == 0x7E) || ($_byte1 == 0x0F && $_byte2 == 0x8E) )
            # zf = 1 or sf != of
        	if (($_zf_flag == 1) || ($_sf_flag != $_of_flag))
   	        	color $RED
   		        printf "  Jump is taken (zf=1 or sf!=of)"
  	        else
   		        color $RED
   	        	printf "  Jump is NOT taken (zf!=1 or sf=of)"
  	        end 
        end
        ## opcode 0x75: JNE, JNZ (jump if ZF = 0)
        ## opcode 0x0F85: JNE, JNZ (jump if ZF = 0)
        if ( ($_byte1 == 0x75) || ($_byte1 == 0x0F && $_byte2 == 0x85) )
            # ZF = 0
  	        if ($_zf_flag == 0)
   		        color $RED
        		printf "  Jump is taken (z=0)"
  	        else
                # ZF = 1
   		        color $RED
   	        	printf "  Jump is NOT taken (z!=0)"
  	        end 
        end
        ## opcode 0x71: JNO (OF = 0)
        ## opcode 0x0F81: JNO (OF = 0)
        if ( ($_byte1 == 0x71) || ($_byte1 == 0x0F && $_byte2 == 0x81) )
            # OF = 0
	        if ($_of_flag == 0)
   		        color $RED
   	        	printf "  Jump is taken (o=0)"
	        else
                # OF != 0
           		color $RED
           		printf "  Jump is NOT taken (o!=0)"
          	end 
        end
        ## opcode 0x7B: JNP, JPO (jump if PF = 0)
        ## opcode 0x0F8B: JPO (jump if PF = 0)
        if ( ($_byte1 == 0x7B) || ($_byte1 == 0x0F && $_byte2 == 0x8B) )
             # PF = 0
          	if ($_pf_flag == 0)
           		color $RED
           		printf "  Jump is NOT taken (p=0)"
          	else
                # PF != 0
           		color $RED
   		        printf "  Jump is taken (p!=0)"
          	end 
        end
        ## opcode 0x79: JNS (jump if SF = 0)
        ## opcode 0x0F89: JNS (jump if SF = 0)
        if ( ($_byte1 == 0x79) || ($_byte1 == 0x0F && $_byte2 == 0x89) )
             # SF = 0
          	if ($_sf_flag == 0)
   		        color $RED
           		printf "  Jump is taken (s=0)"
          	else
                 # SF != 0
           		color $RED
   		        printf "  Jump is NOT taken (s!=0)"
          	end 
        end
        ## opcode 0x70: JO (jump if OF=1)
        ## opcode 0x0F80: JO (jump if OF=1)
        if ( ($_byte1 == 0x70) || ($_byte1 == 0x0F && $_byte2 == 0x80) )
             # OF = 1
        	if ($_of_flag == 1)
        		color $RED
   		        printf "  Jump is taken (o=1)"
          	else
                # OF != 1
           		color $RED
   		        printf "  Jump is NOT taken (o!=1)"
          	end 
        end
        ## opcode 0x7A: JP, JPE (jump if PF=1)
        ## opcode 0x0F8A: JP, JPE (jump if PF=1)
        if ( ($_byte1 == 0x7A) || ($_byte1 == 0x0F && $_byte2 == 0x8A) )
            # PF = 1
          	if ($_pf_flag == 1)
   		        color $RED
           		printf "  Jump is taken (p=1)"
          	else
                 # PF = 0
           		color $RED
   		        printf "  Jump is NOT taken (p!=1)"
          	end 
        end
        ## opcode 0x78: JS (jump if SF=1)
        ## opcode 0x0F88: JS (jump if SF=1)
        if ( ($_byte1 == 0x78) || ($_byte1 == 0x0F && $_byte2 == 0x88) )
             # SF = 1
        	if ($_sf_flag == 1)
   		        color $RED
           		printf "  Jump is taken (s=1)"
          	else
                 # SF != 1
           		color $RED
           		printf "  Jump is NOT taken (s!=1)"
          	end 
        end
    end
end
document dumpjump
Syntax: dumpjump
| Display if conditional jump will be taken or not.
end

define dumpjumphelper
    # 0000 - EQ: Z == 1
    if ($_conditional == 0x0)
	    if ($_z_flag == 1)
		    color $RED
    		printf " Jump is taken (z==1)"
    	else
	    	color $RED
    		printf " Jump is NOT taken (z!=1)"
    	end
    end
    # 0001 - NE: Z == 0
    if ($_conditional == 0x1)
	    if ($_z_flag == 0)
		    color $RED
    		printf " Jump is taken (z==0)"
	    else
		    color $RED
    		printf " Jump is NOT taken (z!=0)"
	    end
    end
    # 0010 - CS: C == 1
    if ($_conditional == 0x2)
	    if ($_c_flag == 1)
		    color $RED
    		printf " Jump is taken (c==1)"
	    else
		    color $RED
    		printf " Jump is NOT taken (c!=1)"
	    end
    end
    # 0011 - CC: C == 0
    if ($_conditional == 0x3)
	    if ($_c_flag == 0)
		    color $RED
    		printf " Jump is taken (c==0)"
	    else
		    color $RED
    		printf " Jump is NOT taken (c!=0)"
	    end
    end
    # 0100 - MI: N == 1
    if ($_conditional == 0x4)
	    if ($_n_flag == 1)
		    color $RED
	    	printf " Jump is taken (n==1)"
    	else
		    color $RED
    		printf " Jump is NOT taken (n!=1)"
	    end
    end
    # 0101 - PL: N == 0
    if ($_conditional == 0x5)
	    if ($_n_flag == 0)
		    color $RED
    		printf " Jump is taken (n==0)"
	    else
		    color $RED
    		printf " Jump is NOT taken (n!=0)"
	    end
    end
    # 0110 - VS: V == 1
    if ($_conditional == 0x6)
	    if ($_v_flag == 1)
		    color $RED
    		printf " Jump is taken (v==1)"
	    else
		    color $RED
    		printf " Jump is NOT taken (v!=1)"
	    end
    end
    # 0111 - VC: V == 0
    if ($_conditional == 0x7)
	    if ($_v_flag == 0)
		    color $RED
        	printf " Jump is taken (v==0)"
    	else
	    	color $RED
    		printf " Jump is NOT taken (v!=0)"
	    end
    end
    # 1000 - HI: C == 1 and Z == 0
    if ($_conditional == 0x8)
	    if ($_c_flag == 1 && $_z_flag == 0)
		    color $RED
        	printf " Jump is taken (c==1 and z==0)"
    	else
	    	color $RED
    		printf " Jump is NOT taken (c!=1 or z!=0)"
    	end
    end
    # 1001 - LS: C == 0 or Z == 1
    if ($_conditional == 0x9)
	    if ($_c_flag == 0 || $_z_flag == 1)
		    color $RED
    		printf " Jump is taken (c==0 or z==1)"
	    else
    		color $RED
    		printf " Jump is NOT taken (c!=0 or z!=1)"
	    end
    end
    # 1010 - GE: N == V
    if ($_conditional == 0xA)
	    if ($_n_flag == $_v_flag)
		    color $RED
        	printf " Jump is taken (n==v)"
    	else
	    	color $RED
    		printf " Jump is NOT taken (n!=v)"
    	end
    end
    # 1011 - LT: N != V
    if ($_conditional == 0xB)
	    if ($_n_flag != $_v_flag)
		    color $RED
    		printf " Jump is taken (n!=v)"
	    else
		    color $RED
    		printf " Jump is NOT taken (n==v)"
	    end
    end
    # 1100 - GT: Z == 0 and N == V
    if ($_conditional == 0xC)
	    if ($_z_flag == 0 && $_n_flag == $_v_flag)
		    color $RED
    		printf " Jump is taken (z==0 and n==v)"
	    else
		    color $RED
    		printf " Jump is NOT taken (z!=0 or n!=v)"
	    end
    end
    # 1101 - LE: Z == 1 or N != V
    if ($_conditional == 0xD)
	    if ($_z_flag == 1 || $_n_flag != $_v_flag)
		    color $RED
    		printf " Jump is taken (z==1 or n!=v)"
	    else
		    color $RED
    		printf " Jump is NOT taken (z!=1 or n==v)"
	    end
    end
end
document dumpjumphelper
Syntax: dumpjumphelper
| Helper function to decide if conditional jump will be taken or not, for ARM and Thumb.
end


# _______________process context______________
# initialize variable
set $displayobjectivec = 0

define context 
    color $COLOR_SEPARATOR
    if $SHOWCPUREGISTERS == 1
	    printf "----------------------------------------"
	    printf "----------------------------------"
	    if ($64BITS == 1)
	        printf "---------------------------------------------"
	    end
	    color $COLOR_SEPARATOR
	    color_bold
	    printf "[regs]\n"
	    color_reset
	    reg
	    color $CYAN
    end
    if $SHOWSTACK == 1
    	color $COLOR_SEPARATOR
		if $ARM == 1
       printf "[0x%08X]", $sp
		else
        if ($64BITS == 1)
		        printf "[0x%04X:0x%016lX]", $ss, $rsp
        else
            printf "[0x%04X:0x%08X]", $ss, $esp
        end
    end
        color $COLOR_SEPARATOR
		printf "-------------------------"
    	printf "-----------------------------"
	    if ($64BITS == 1)
	        printf "-------------------------------------"
	    end
	    color $COLOR_SEPARATOR
	    color_bold
	    printf "[stack]\n"
    	color_reset
    	set $context_i = $CONTEXTSIZE_STACK
    	while ($context_i > 0)
       	    set $context_t = $sp + 0x10 * ($context_i - 1)
       	    hexdump $context_t
       	    set $context_i--
    	end
    end
    # show the objective C message being passed to msgSend
    if $SHOWOBJECTIVEC == 1
        #FIXME: X64 and ARM
        # What a piece of crap that's going on here :)
        # detect if it's the correct opcode we are searching for
        if $ARM == 0
            set $__byte1 = *(unsigned char *)$pc
    	    set $__byte = *(int *)$pc
        	if ($__byte == 0x4244489)
          		set $objectivec = $eax
      	    	set $displayobjectivec = 1
    	    end

        	if ($__byte == 0x4245489)
         		set $objectivec = $edx
     	    	set $displayobjectivec = 1
    	    end

        	if ($__byte == 0x4244c89)
         		set $objectivec = $ecx
     	    	set $displayobjectivec = 1
        	end
        else
            set $__byte1 = 0
        end
        # and now display it or not (we have no interest in having the info displayed after the call)
        if $__byte1 == 0xE8
            if $displayobjectivec == 1
                color $COLOR_SEPARATOR
                printf "--------------------------------------------------------------------"
                if ($64BITS == 1)
                    printf "---------------------------------------------"
                end
                color $COLOR_SEPARATOR
                color_bold
	    		printf "[ObjectiveC]\n"
	    		color_reset
      	    	color $BLACK
      		    x/s $objectivec
         	end   
         	set $displayobjectivec = 0     
        end
        if $displayobjectivec == 1
            color $COLOR_SEPARATOR
          	printf "--------------------------------------------------------------------"
          	if ($64BITS == 1)
	            printf "---------------------------------------------"
    	    end
    	    color $COLOR_SEPARATOR
    	    color_bold
		    printf "[ObjectiveC]\n"
		    color_reset
          	color $BLACK
          	x/s $objectivec 
        end   
    end
    color_reset
# and this is the end of this little crap

    if $SHOWDATAWIN == 1
        datawin
    end

    color $COLOR_SEPARATOR
    printf "--------------------------------------------------------------------------"
    if ($64BITS == 1)
	    printf "---------------------------------------------"
	end
	color $COLOR_SEPARATOR
	color_bold
    printf "[code]\n"
    color_reset
    set $context_i = $CONTEXTSIZE_CODE
    if ($context_i > 0)
        if ($SETCOLOR1STLINE == 1)	
	        color $GREEN
            if ($ARM == 1)
                #       | $cpsr.t (Thumb flag)
                x/i (unsigned int)$pc | (($cpsr >> 5) & 1)
            else
    	        x/i $pc
            end
	        color_reset
	    else
            if ($ARM == 1)
                #       | $cpsr.t (Thumb flag)
	              x/i (unsigned int)$pc | (($cpsr >> 5) & 1)
            else
                x/i $pc
            end
	    end
        set $context_i--
    end
    while ($context_i > 0)
        x /i
        set $context_i--
    end
    
    color $COLOR_SEPARATOR
    printf "----------------------------------------"
    printf "----------------------------------------"
    if ($64BITS == 1)
        printf "---------------------------------------------\n"
	else
	    printf "\n"
	end
    printf "[frame]\n"
    frame
    color_reset
end
document context
Syntax: context
| Print context window, i.e. regs, stack, ds:esi and disassemble cs:eip.
end


define context-on
    set $SHOW_CONTEXT = 1
    printf "Displaying of context is now ON\n"
end
document context-on
Syntax: context-on
| Enable display of context on every program break.
end


define context-off
    set $SHOW_CONTEXT = 0
    printf "Displaying of context is now OFF\n"
end
document context-off
Syntax: context-off
| Disable display of context on every program break.
end


# _______________process control______________
define n
    if $argc == 0
        nexti
    end
    if $argc == 1
        nexti $arg0
    end
    if $argc > 1
        help n
    end
end
document n
Syntax: n <NUM>
| Step one instruction, but proceed through subroutine calls.
| If NUM is given, then repeat it NUM times or till program stops.
| This is alias for nexti.
end


define go
    if $argc == 0
        stepi
    end
    if $argc == 1
        stepi $arg0
    end
    if $argc > 1
        help go
    end
end
document go
Syntax: go <NUM>
| Step one instruction exactly.
| If NUM is given, then repeat it NUM times or till program stops.
| This is alias for stepi.
end


define pret
    finish
end
document pret
Syntax: pret
| Execute until selected stack frame returns (step out of current call).
| Upon return, the value returned is printed and put in the value history.
end


define init
    set $SHOW_NEST_INSN = 0
    tbreak _init
    r
end
document init
Syntax: init
| Run program and break on _init().
end


define start
    set $SHOW_NEST_INSN = 0
    tbreak _start
    r
end
document start
Syntax: start
| Run program and break on _start().
end


define sstart
    set $SHOW_NEST_INSN = 0
    tbreak __libc_start_main
    r
end
document sstart
Syntax: sstart
| Run program and break on __libc_start_main().
| Useful for stripped executables.
end


define main
    set $SHOW_NEST_INSN = 0
    tbreak main
    r
end
document main
Syntax: main
| Run program and break on main().
end


# FIXME64
#### WARNING ! WARNING !!
#### More more messy stuff starting !!!
#### I was thinking about how to do this and then it ocurred me that it could be as simple as this ! :)
define stepoframework
    if $ARM == 1
        # bl and bx opcodes
        # bx Rn  => ARM bits 27-20: 0 0 0 1 0 0 1 0 , bits 7-4: 0 0 0 1 ; Thumb bits: 15-7: 0 1 0 0 0 1 1 1 0
        # blx Rn => ARM bits 27-20: 0 0 0 1 0 0 1 0 , bits 7-4: 0 0 1 1 ; Thumb bits: 15-7: 0 1 0 0 0 1 1 1 1
        # bl # => ARM bits 27-24: 1 0 1 1 ; Thumb bits: 15-11: 1 1 1 1 0 
        # blx # => ARM bits 31-25: 1 1 1 1 1 0 1 ; Thumb bits: 15-11: 1 1 1 1 0 
        set $_nextaddress = 0

        # ARM Mode
        if ($_t_flag == 0)
        	set $_branchesint = *(unsigned int*)$pc
        	set $_bit31 = ($_branchesint >> 0x1F) & 1
        	set $_bit30 = ($_branchesint >> 0x1E) & 1
        	set $_bit29 = ($_branchesint >> 0x1D) & 1
        	set $_bit28 = ($_branchesint >> 0x1C) & 1
        	set $_bit27 = ($_branchesint >> 0x1B) & 1
        	set $_bit26 = ($_branchesint >> 0x1A) & 1
        	set $_bit25 = ($_branchesint >> 0x19) & 1
        	set $_bit24 = ($_branchesint >> 0x18) & 1
        	set $_bit23 = ($_branchesint >> 0x17) & 1
        	set $_bit22 = ($_branchesint >> 0x16) & 1
        	set $_bit21 = ($_branchesint >> 0x15) & 1
        	set $_bit20 = ($_branchesint >> 0x14) & 1
        	set $_bit7 = ($_branchesint >> 0x7) & 1
        	set $_bit6 = ($_branchesint >> 0x6) & 1
        	set $_bit5 = ($_branchesint >> 0x5) & 1
        	set $_bit4 = ($_branchesint >> 0x4) & 1
	
            #	set $_lastbyte = *(unsigned char *)($pc+3)
            #	set $_bits2724 = $_lastbyte & 0x1
            #	set $_bits3128 = $_lastbyte >> 4
            #	if ($_bits3128 == 0xF)
            #		set $_bits2724 = $_lastbyte & 0xA
            #		set $_bits2724 = $_bits2724 >> 1
            #	end
            #	set $_previousbyte = *(unsigned char *)($pc+2)
            #	set $_bits2320 = $_previousbyte >> 4
            #	printf "bits2724: %x bits2320: %x\n", $_bits2724, $_bits2320
	
        	if ($_bit27 == 0 && $_bit26 == 0 && $_bit25 == 0 && $_bit24 == 1 && $_bit23 == 0 && $_bit22 == 0 && $_bit21 == 1 && $_bit20 == 0 && $_bit7 == 0 && $_bit6 == 0 && $_bit5 == 0 && $_bit4 == 1)
		        printf "Found a bx Rn\n"
        		set $_nextaddress = $pc+0x4
        	end
        	if ($_bit27 == 0 && $_bit26 == 0 && $_bit25 == 0 && $_bit24 == 1 && $_bit23 == 0 && $_bit22 == 0 && $_bit21 == 1 && $_bit20 == 0 && $_bit7 == 0 && $_bit6 == 0 && $_bit5 == 1 && $_bit4 == 1)
		        printf "Found a blx Rn\n"
        		set $_nextaddress = $pc+0x4
        	end
        	if ($_bit27 == 1 && $_bit26 == 0 && $_bit25 == 1 && $_bit24 == 1)
		        printf "Found a bl #\n"
        		set $_nextaddress = $pc+0x4
        	end
        	if ($_bit31 == 1 && $_bit30 == 1 && $_bit29 == 1 && $_bit28 == 1 && $_bit27 == 1 && $_bit26 == 0 && $_bit25 == 1)
		        printf "Found a blx #\n"
        		set $_nextaddress = $pc+0x4
        	end
        # Thumb Mode
        else
            # 32 bits instructions in Thumb are divided into two half words
        	set $_hw1 = *(unsigned short*)($pc)
        	set $_hw2 = *(unsigned short*)($pc+2)
	
        	# bl/blx (immediate)
        	# hw1: bits 15-11: 1 1 1 1 0
        	# hw2: bits 15-14: 1 1 ; BL bit 12: 1 ; BLX bit 12: 0
        	if ( ($_hw1 >> 0xC) == 0xF && (($_hw1 >> 0xB) & 1) == 0)
		        if ( ((($_hw2 >> 0xF) & 1) == 1) && ((($_hw2 >> 0xE) & 1) == 1) )
        			set $_nextaddress = $pc+0x4
		        end
        	end
        end
        # if we have found a call to bypass we set a temporary breakpoint on next instruction and continue 
        if ($_nextaddress != 0)
            tbreak *$_nextaddress
            continue
            printf "[StepO] Next address will be %x\n", $_nextaddress
        # else we just single step
        else
            nexti
        end
###################################### X86
    else
        ## we know that an opcode starting by 0xE8 has a fixed length
        ## for the 0xFF opcodes, we can enumerate what is possible to have
        # first we grab the first 3 bytes from the current program counter
        set $_byte1 = *(unsigned char *)$pc
        set $_byte2 = *(unsigned char *)($pc+1)
        set $_byte3 = *(unsigned char *)($pc+2)
        # and start the fun
        # if it's a 0xE8 opcode, the total instruction size will be 5 bytes
        # so we can simply calculate the next address and use a temporary breakpoint ! Voila :)
        set $_nextaddress = 0
        # this one is the must useful for us !!!
        if ($_byte1 == 0xE8)
            set $_nextaddress = $pc + 0x5
        else
            # just other cases we might be interested in... maybe this should be removed since the 0xE8 opcode is the one we will use more
            # this is a big fucking mess and can be improved for sure :) I don't like the way it is ehehehe
            if ($_byte1 == 0xFF)
                # call *%eax (0xFFD0) || call *%edx (0xFFD2) || call *(%ecx) (0xFFD1) || call (%eax) (0xFF10) || call *%esi (0xFFD6) || call *%ebx (0xFFD3) || call   DWORD PTR [edx] (0xFF12)
                if ($_byte2 == 0xD0 || $_byte2 == 0xD1 || $_byte2 == 0xD2 || $_byte2 == 0xD3 || $_byte2 == 0xD6 || $_byte2 == 0x10 || $_byte2 == 0x11 || $_byte2 == 0xD7 || $_byte2 == 0x12)
                    set $_nextaddress = $pc + 0x2
                end
                # call *0x??(%ebp) (0xFF55??) || call *0x??(%esi) (0xFF56??) || call *0x??(%edi) (0xFF5F??) || call *0x??(%ebx)
                # call *0x??(%edx) (0xFF52??) || call *0x??(%ecx) (0xFF51??) || call *0x??(%edi) (0xFF57??) || call *0x??(%eax) (0xFF50??)
                if ($_byte2 == 0x55 || $_byte2 == 0x56 || $_byte2 == 0x5F || $_byte2 == 0x53 || $_byte2 == 0x52 || $_byte2 == 0x51 || $_byte2 == 0x57 || $_byte2 == 0x50) 
                    set $_nextaddress = $pc + 0x3
                end
                # call *0x????????(%ebx) (0xFF93????????) || 
                if ($_byte2 == 0x93 || $_byte2 == 0x94 || $_byte2 == 0x90 || $_byte2 == 0x92 || $_byte2 == 0x95 || $_byte2 == 0x15)
                    set $_nextaddress = $pc + 6
                end
                # call *0x????????(%ebx,%eax,4) (0xFF94??????????)
                if ($_byte2 == 0x94)
                    set $_nextaddress = $pc + 7
                end
            end
            # FIXME: still missing a few?
            if ($_byte1 == 0x41 || $_byte1 == 0x40)
               if ($_byte2 == 0xFF)
                    if ($_byte3 == 0xD0 || $_byte3 == 0xD1 || $_byte3 == 0xD2 || $_byte3 == 0xD3 || $_byte3 == 0xD4 || $_byte3 == 0xD5 ||  $_byte3 == 0xD6 || $_byte3 == 0xD7)
                        set $_nextaddress = $pc + 0x3
                    end
               end
            end
        end
        # if we have found a call to bypass we set a temporary breakpoint on next instruction and continue 
        if ($_nextaddress != 0)
            if ($arg0 == 1)
                thbreak *$_nextaddress
            else
                tbreak *$_nextaddress
            end
            continue
            # else we just single step
         else
            nexti
         end
    end
end
document stepoframework
Syntax: stepoframework
| Auxiliary function to stepo command.
end

define stepo
    stepoframework 0
end
document stepo
Syntax: stepo
| Step over calls (interesting to bypass the ones to msgSend).
| This function will set a temporary breakpoint on next instruction after the call so the call will be bypassed.
| You can safely use it instead nexti or n since it will single step code if it's not a call instruction (unless you want to go into the call function).
end


define stepoh
    stepoframework 1
end
document stepoh
Syntax: stepoh
| Same as stepo command but uses temporary hardware breakpoints.
end


# FIXME: ARM
define skip
	x/2i $pc
	set $instruction_size = (int)($_ - $pc)
	set $pc = $pc + $instruction_size
	if ($SKIPEXECUTE == 1)
		if ($SKIPSTEP == 1)
			stepo
		else
			stepi
		end
	else
		context
	end
end
document skip
Syntax: skip
| Skip over the instruction located at EIP/RIP. By default, the instruction will not be executed!
| Some configurable options are available on top of gdbinit to override this.
end


# _______________eflags commands______________
# conditional flags are
# negative/less than (N), bit 31 of CPSR
# zero (Z), bit 30
# Carry/Borrow/Extend (C), bit 29
# Overflow (V), bit 28

# negative/less than (N), bit 31 of CPSR
define cfn
    if $ARM == 1
    	set $tempflag = $cpsr->n
        if ($tempflag & 1)
            set $cpsr->n = $tempflag&~0x1
        else
            set $cpsr->n = $tempflag|0x1
        end
    end
end
document cfn
Syntax: cfn
| Change Negative/Less Than Flag.
end


define cfc
# Carry/Borrow/Extend (C), bit 29
    if $ARM == 1
	    set $tempflag = $cpsr->c
        if ($tempflag & 1)
            set $cpsr->c = $tempflag&~0x1
        else
            set $cpsr->c = $tempflag|0x1
        end
     else
        if ((unsigned int)$eflags & 1)
            set $eflags = (unsigned int)$eflags&~0x1
        else
            set $eflags = (unsigned int)$eflags|0x1
        end
     end
end
document cfc
Syntax: cfc
| Change Carry Flag.
end


define cfp
    if (((unsigned int)$eflags >> 2) & 1)
        set $eflags = (unsigned int)$eflags&~0x4
    else
        set $eflags = (unsigned int)$eflags|0x4
    end
end
document cfp
Syntax: cfp
| Change Parity Flag.
end


define cfa
    if (((unsigned int)$eflags >> 4) & 1)
        set $eflags = (unsigned int)$eflags&~0x10
    else
        set $eflags = (unsigned int)$eflags|0x10
    end
end
document cfa
Syntax: cfa
| Change Auxiliary Carry Flag.
end


define cfz
# zero (Z), bit 30
    if $ARM == 1
 	    set $tempflag = $cpsr->z
        if ($tempflag & 1)
            set $cpsr->z = $tempflag&~0x1
        else
            set $cpsr->z = $tempflag|0x1
        end
     else
        if (((unsigned int)$eflags >> 6) & 1)
            set $eflags = (unsigned int)$eflags&~0x40
        else
            set $eflags = (unsigned int)$eflags|0x40
        end
     end
end
document cfz
Syntax: cfz
| Change Zero Flag.
end


define cfs
    if (((unsigned int)$eflags >> 7) & 1)
        set $eflags = (unsigned int)$eflags&~0x80
    else
        set $eflags = (unsigned int)$eflags|0x80
    end
end
document cfs
Syntax: cfs
| Change Sign Flag.
end


define cft
    if (((unsigned int)$eflags >>8) & 1)
        set $eflags = (unsigned int)$eflags&~0x100
    else
        set $eflags = (unsigned int)$eflags|0x100
    end
end
document cft
Syntax: cft
| Change Trap Flag.
end


define cfi
    if (((unsigned int)$eflags >> 9) & 1)
        set $eflags = (unsigned int)$eflags&~0x200
    else
        set $eflags = (unsigned int)$eflags|0x200
    end
end
document cfi
Syntax: cfi
| Change Interrupt Flag.
| Only privileged applications (usually the OS kernel) may modify IF.
| This only applies to protected mode (real mode code may always modify IF).
end


define cfd
    if (((unsigned int)$eflags >>0xA) & 1)
        set $eflags = (unsigned int)$eflags&~0x400
    else
        set $eflags = (unsigned int)$eflags|0x400
    end
end
document cfd
Syntax: cfd
| Change Direction Flag.
end


define cfo
    if (((unsigned int)$eflags >> 0xB) & 1)
        set $eflags = (unsigned int)$eflags&~0x800
    else
        set $eflags = (unsigned int)$eflags|0x800
    end
end
document cfo
Syntax: cfo
| Change Overflow Flag.
end


# Overflow (V), bit 28
define cfv
    if $ARM == 1
    	set $tempflag = $cpsr->v
        if ($tempflag & 1)
            set $cpsr->v = $tempflag&~0x1
        else
            set $cpsr->v = $tempflag|0x1
        end
    end
end
document cfv
Syntax: cfv
| Change Overflow Flag.
end


# ____________________patch___________________
# the usual nops are mov r0,r0 for arm (0xe1a00000)
# and mov r8,r8 in Thumb (0x46c0)
# armv7 has other nops
# FIXME: make sure that the interval fits the 32bits address for arm and 16bits for thumb
# status: works, fixme
define nop
    if ($argc > 2 || $argc == 0)
        help nop
    end
  
    if $ARM == 1
        if ($argc == 1)
            if ($cpsr->t &1)
                # thumb
                set *(short *)$arg0 = 0x46c0
            else
                # arm
                set *(int *)$arg0 = 0xe1a00000
            end
        else
        	set $addr = $arg0
        	if ($cpsr->t & 1)
    	    	# thumb
			    while ($addr < $arg1)
				    set *(short *)$addr = 0x46c0
				    set $addr = $addr + 2
		    	end
	    	else
		    	# arm
		    	while ($addr < $arg1)
			    	set *(int *)$addr = 0xe1a00000
			    	set $addr = $addr + 4
			    end
		    end			
        end 
    else
        if ($argc == 1)
    	    set *(unsigned char *)$arg0 = 0x90
        else
        	set $addr = $arg0
    	    while ($addr < $arg1)
	    	    set *(unsigned char *)$addr = 0x90
	    	    set $addr = $addr + 1
    	    end
        end
    end
end
document nop
Syntax: nop ADDR1 [ADDR2]
| Patch a single byte at address ADDR1, or a series of bytes between ADDR1 and ADDR2 to a NOP (0x90) instruction.
| ARM or Thumb code will be patched accordingly.
end


define null
    if ( $argc >2 || $argc == 0)
        help null
    end
 
    if ($argc == 1)
	    set *(unsigned char *)$arg0 = 0
    else
	    set $addr = $arg0
    	while ($addr < $arg1)
	        set *(unsigned char *)$addr = 0
		    set $addr = $addr +1
	    end
    end
end
document null
Syntax: null ADDR1 [ADDR2]
| Patch a single byte at address ADDR1 to NULL (0x00), or a series of bytes between ADDR1 and ADDR2.
end

# FIXME: thumb breakpoint ?
define int3
    if $argc != 1
        help int3
    else
        if $ARM == 1
            set $ORIGINAL_INT3 = *(unsigned int *)$arg0
            set $ORIGINAL_INT3ADDRESS = $arg0
            set *(unsigned int*)$arg0 = 0xe7ffdefe
        else
            # save original bytes and address
            set $ORIGINAL_INT3 = *(unsigned char *)$arg0
            set $ORIGINAL_INT3ADDRESS = $arg0
            # patch
            set *(unsigned char *)$arg0 = 0xCC
        end
    end
end
document int3
Syntax int3 ADDR
| Patch byte at address ADDR to an INT3 (0xCC) instruction or the equivalent software breakpoint for ARM.
end


define rint3
    if $ARM == 1
      	set *(unsigned int *)$ORIGINAL_INT3ADDRESS = $ORIGINAL_INT3
	    set $pc = $ORIGINAL_INT3ADDRESS
    else
    	set *(unsigned char *)$ORIGINAL_INT3ADDRESS = $ORIGINAL_INT3
    	if ($64BITS == 1)
        	set $rip = $ORIGINAL_INT3ADDRESS
    	else
    	    set $eip = $ORIGINAL_INT3ADDRESS
    	end
	end
end
document rint3
Syntax: rint3
| Restore the original byte previous to int3 patch issued with "int3" command.
end

define patch
    if $argc != 3
        help patch
    end
    set $patchaddr = $arg0
    set $patchbytes = $arg1
    set $patchsize = $arg2

    if ($patchsize == 1)
        set *(unsigned char*)$patchaddr = $patchbytes
    end
    if ($patchsize == 2)
        set $lendianbytes = (unsigned short)(($patchbytes << 8) | ($patchbytes >> 8))
        set *(unsigned short*)$patchaddr = $lendianbytes
    end
    if ($patchsize == 4)
        set $lendianbytes = (unsigned int)( (($patchbytes << 8) & 0xFF00FF00 ) | (($patchbytes >> 8) & 0xFF00FF ))
        set $lendianbytes = (unsigned int)($lendianbytes << 0x10 | $lendianbytes >> 0x10)
        set *(unsigned int*)$patchaddr = $lendianbytes
    end
    if ($patchsize == 8)
        set $lendianbytes = (unsigned long long)( (($patchbytes << 8) & 0xFF00FF00FF00FF00ULL ) | (($patchbytes >> 8) & 0x00FF00FF00FF00FFULL ) )
        set $lendianbytes = (unsigned long long)( (($lendianbytes << 0x10) & 0xFFFF0000FFFF0000ULL ) | (($lendianbytes >> 0x10) & 0x0000FFFF0000FFFFULL ) )
        set $lendianbytes = (unsigned long long)( ($lendianbytes << 0x20) | ($lendianbytes >> 0x20) )
        set *(unsigned long long*)$patchaddr = $lendianbytes
    end
end
document patch
Syntax: patch address bytes size
| Patch a given address, converting the bytes to little-endian.
| Assumes input bytes are unsigned values and should be in hexadecimal format (0x...).
| Size must be 1, 2, 4, 8 bytes.
| Main purpose is to be used with the output from the asm commands.
end

# ____________________cflow___________________
define print_insn_type
    if $argc != 1
        help print_insn_type
    else
        if ($arg0 < 0 || $arg0 > 5)
            printf "UNDEFINED/WRONG VALUE"
        end
        if ($arg0 == 0)
            printf "UNKNOWN"
        end
        if ($arg0 == 1)
            printf "JMP"
        end
        if ($arg0 == 2)
            printf "JCC"
        end
        if ($arg0 == 3)
            printf "CALL"
        end
        if ($arg0 == 4)
            printf "RET"
        end
        if ($arg0 == 5)
            printf "INT"
        end
    end
end
document print_insn_type
Syntax: print_insn_type INSN_TYPE_NUMBER
| Print human-readable mnemonic for the instruction type (usually $INSN_TYPE).
end


define get_insn_type
    if $argc != 1
        help get_insn_type
    else
        set $INSN_TYPE = 0
        set $_byte1 = *(unsigned char *)$arg0
        if ($_byte1 == 0x9A || $_byte1 == 0xE8)
            # "call"
            set $INSN_TYPE = 3
        end
        if ($_byte1 >= 0xE9 && $_byte1 <= 0xEB)
            # "jmp"
            set $INSN_TYPE = 1
        end
        if ($_byte1 >= 0x70 && $_byte1 <= 0x7F)
            # "jcc"
            set $INSN_TYPE = 2
        end
        if ($_byte1 >= 0xE0 && $_byte1 <= 0xE3 )
            # "jcc"
            set $INSN_TYPE = 2
        end
        if ($_byte1 == 0xC2 || $_byte1 == 0xC3 || $_byte1 == 0xCA || \
            $_byte1 == 0xCB || $_byte1 == 0xCF)
            # "ret"
            set $INSN_TYPE = 4
        end
        if ($_byte1 >= 0xCC && $_byte1 <= 0xCE)
            # "int"
            set $INSN_TYPE = 5
        end
        if ($_byte1 == 0x0F )
            # two-byte opcode
            set $_byte2 = *(unsigned char *)($arg0 + 1)
            if ($_byte2 >= 0x80 && $_byte2 <= 0x8F)
                # "jcc"
                set $INSN_TYPE = 2
            end
        end
        if ($_byte1 == 0xFF)        
            # opcode extension
            set $_byte2 = *(unsigned char *)($arg0 + 1)
            set $_opext = ($_byte2 & 0x38)
            if ($_opext == 0x10 || $_opext == 0x18) 
                # "call"
                set $INSN_TYPE = 3
            end
            if ($_opext == 0x20 || $_opext == 0x28)
                # "jmp"
                set $INSN_TYPE = 1
            end
        end
    end
end
document get_insn_type
Syntax: get_insn_type ADDR
| Recognize instruction type at address ADDR.
| Take address ADDR and set the global $INSN_TYPE variable to
| 0, 1, 2, 3, 4, 5 if the instruction at that address is
| unknown, a jump, a conditional jump, a call, a return, or an interrupt.
end


define step_to_call
    set $_saved_ctx = $SHOW_CONTEXT
    set $SHOW_CONTEXT = 0
    set $SHOW_NEST_INSN = 0
 
    set logging file /dev/null
    set logging redirect on
    set logging enabled on
 
    set $_cont = 1
    while ($_cont > 0)
        stepi
        get_insn_type $pc
        if ($INSN_TYPE == 3)
            set $_cont = 0
        end
    end

    set logging enabled off

    if ($_saved_ctx > 0)
        context
    end

    set $SHOW_CONTEXT = $_saved_ctx
    set $SHOW_NEST_INSN = 0
 
    set logging file ~/gdb.txt
    set logging redirect off
    set logging enabled on
 
    printf "step_to_call command stopped at:\n  "
    x/i $pc
    printf "\n"
    set logging enabled off

end
document step_to_call
Syntax: step_to_call
| Single step until a call instruction is found.
| Stop before the call is taken.
| Log is written into the file ~/gdb.txt.
end


define trace_calls

    printf "Tracing...please wait...\n"

    set $_saved_ctx = $SHOW_CONTEXT
    set $SHOW_CONTEXT = 0
    set $SHOW_NEST_INSN = 0
    set $_nest = 1
    set listsize 0
  
    set logging overwrite on
    set logging file ~/gdb_trace_calls.txt
    set logging enabled on
    set logging enabled off
    set logging overwrite off

    while ($_nest > 0)
        get_insn_type $pc
        # handle nesting
        if ($INSN_TYPE == 3)
            set $_nest = $_nest + 1
        else
            if ($INSN_TYPE == 4)
                set $_nest = $_nest - 1
            end
        end
        # if a call, print it
        if ($INSN_TYPE == 3)
            set logging file ~/gdb_trace_calls.txt
            set logging redirect off
            set logging enabled on

            set $x = $_nest - 2
            while ($x > 0)
                printf "\t"
                set $x = $x - 1
            end
            x/i $pc
        end

        set logging enable off
        set logging file /dev/null
        set logging redirect on
        set logging enabled on
        stepi
        set logging redirect off
        set logging enabled off
    end

    set $SHOW_CONTEXT = $_saved_ctx
    set $SHOW_NEST_INSN = 0
 
    printf "Done, check ~/gdb_trace_calls.txt\n"
end
document trace_calls
Syntax: trace_calls
| Create a runtime trace of the calls made by target.
| Log overwrites(!) the file ~/gdb_trace_calls.txt.
end


define trace_run
 
    printf "Tracing...please wait...\n"

    set $_saved_ctx = $SHOW_CONTEXT
    set $SHOW_CONTEXT = 0
    set $SHOW_NEST_INSN = 1
    set logging overwrite on
    set logging file ~/gdb_trace_run.txt
    set logging redirect on
    set logging enabled on
    set $_nest = 1

    while ( $_nest > 0 )

        get_insn_type $pc
        # jmp, jcc, or cll
        if ($INSN_TYPE == 3)
            set $_nest = $_nest + 1
        else
            # ret
            if ($INSN_TYPE == 4)
                set $_nest = $_nest - 1
            end
        end
        stepi
    end

    printf "\n"

    set $SHOW_CONTEXT = $_saved_ctx
    set $SHOW_NEST_INSN = 0
    set logging redirect off
    set logging enabled off

    # clean up trace file
    shell  grep -v ' at ' ~/gdb_trace_run.txt > ~/gdb_trace_run.1
    shell  grep -v ' in ' ~/gdb_trace_run.1 > ~/gdb_trace_run.txt
    shell  rm -f ~/gdb_trace_run.1
    printf "Done, check ~/gdb_trace_run.txt\n"
end
document trace_run
Syntax: trace_run
| Create a runtime trace of target.
| Log overwrites(!) the file ~/gdb_trace_run.txt.
end

define entry_point
	
	set logging redirect on
	set logging file /tmp/gdb-entry_point
	set logging enabled on

	info files

	set logging enabled off

	shell entry_point="$(/usr/bin/grep 'Entry point:' /tmp/gdb-entry_point | /usr/bin/awk '{ print $3 }')"; echo "$entry_point"; echo 'set $entry_point_address = '"$entry_point" > /tmp/gdb-entry_point
	source /tmp/gdb-entry_point
    shell /bin/rm -f /tmp/gdb-entry_point
end
document entry_point
Syntax: entry_point
| Prints the entry point address of the target and stores it in the variable entry_point.
end

define break_entrypoint
	entry_point
	break *$entry_point_address
end
document break_entrypoint
Syntax: break_entrypoint
| Sets a breakpoint on the entry point of the target.
end

define objc_symbols

	set logging redirect on
	set logging file /tmp/gdb-objc_symbols
	set logging enabled on

	info target

	set logging enabled off
    # XXX: define paths for objc-symbols and SymTabCreator
	shell target="$(/usr/bin/head -1 /tmp/gdb-objc_symbols | /usr/bin/head -1 | /usr/bin/awk -F '"' '{ print $2 }')"; objc-symbols "$target" | SymTabCreator -o /tmp/gdb-symtab

	set logging enabled on
	add-symbol-file /tmp/gdb-symtab
	set logging enabled off
    shell /bin/rm -f /tmp/gdb-objc_symbols
end
document objc_symbols
Syntax: objc_symbols
| Loads stripped objc symbols into gdb using objc-symbols and SymTabCreator
| See http://stackoverflow.com/questions/17554070/import-class-dump-info-into-gdb
| and https://github.com/0xced/class-dump/tree/objc-symbols (for the required utils)
end

#define ptraceme
#    catch syscall ptrace
#    commands
#        if ($64BITS == 0)
#            if ($ebx == 0)
#	        set $eax = 0
#                continue
#            end
#        else
#            if ($rdi == 0)
#                set $rax = 0
#                continue
#            end
#        end
#    end
#    set $ptrace_bpnum = $bpnum
#end
#document ptraceme
#Syntax: ptraceme
#| Hook ptrace to bypass PTRACE_TRACEME anti debugging technique
#end

define rptraceme
    if ($ptrace_bpnum != 0)
        delete $ptrace_bpnum
        set $ptrace_bpnum = 0
    end
end
document rptraceme
Syntax: rptraceme
| Remove ptrace hook.
end


# ____________________misc____________________
define hook-stop
    if (sizeof(void*) == 8)
        set $64BITS = 1
    else
        set $64BITS = 0
    end

    if ($KDP64BITS != -1)
        if ($KDP64BITS == 0)
            set $64BITS = 0
        else
            set $64BITS = 1
        end
    end

    # Display instructions formats
    if $ARM == 1
        if $ARMOPCODES == 1
            set arm show-opcode-bytes 1
        end
    else
        if $X86FLAVOR == 0
            set disassembly-flavor intel
        else
            set disassembly-flavor att
        end
    end

    # this makes 'context' be called at every BP/step
    if ($SHOW_CONTEXT > 0)
        context
    end
    if ($SHOW_NEST_INSN > 0)
        set $x = $_nest
        while ($x > 0)
            printf "\t"
            set $x = $x - 1
        end
    end
end
document hook-stop
Syntax: hook-stop
| !!! FOR INTERNAL USE ONLY - DO NOT CALL !!!
end


# original by Tavis Ormandy (http://my.opera.com/taviso/blog/index.dml/tag/gdb) (great fix!)
# modified to work with Mac OS X by fG!
# seems nasm shipping with Mac OS X has problems accepting input from stdin or heredoc
# input is read into a variable and sent to a temporary file which nasm can read
define assemble
    # dont enter routine again if user hits enter
    dont-repeat
    if ($argc)
        if (*$arg0 = *$arg0)
        # check if we have a valid address by dereferencing it,
        # if we havnt, this will cause the routine to exit.
        end
        printf "Instructions will be written to %#x.\n", $arg0
    else
        printf "Instructions will be written to stdout.\n"
    end
    printf "Type instructions, one per line."
	color_bold
    printf " Do not forget to use NASM assembler syntax!\n"
    color_reset
    printf "End with a line saying just \"end\".\n"
    
    if ($argc)
	    if ($64BITS == 1)
		    # argument specified, assemble instructions into memory at address specified.
    		shell ASMOPCODE="$(while read -ep '>' r && test "$r" != end ; do echo -E "$r"; done)" ; GDBASMFILENAME=$RANDOM; \
    		echo -e "BITS 64\n$ASMOPCODE" >/tmp/$GDBASMFILENAME ; /usr/local/bin/nasm -f bin -o /dev/stdout /tmp/$GDBASMFILENAME | /usr/bin/hexdump -ve '1/1 "set *((unsigned char *) $arg0 + %#2_ax) = %#02x\n"' >/tmp/gdbassemble ; /bin/rm -f /tmp/$GDBASMFILENAME
    		source /tmp/gdbassemble
    		# all done. clean the temporary file
    		shell /bin/rm -f /tmp/gdbassemble
    	else
	    	# argument specified, assemble instructions into memory at address specified.
	    	shell ASMOPCODE="$(while read -ep '>' r && test "$r" != end ; do echo -E "$r"; done)" ; GDBASMFILENAME=$RANDOM; \
		    echo -e "BITS 32\n$ASMOPCODE" >/tmp/$GDBASMFILENAME ; /usr/bin/nasm -f bin -o /dev/stdout /tmp/$GDBASMFILENAME | /usr/bin/hexdump -ve '1/1 "set *((unsigned char *) $arg0 + %#2_ax) = %#02x\n"' >/tmp/gdbassemble ; /bin/rm -f /tmp/$GDBASMFILENAME
    		source /tmp/gdbassemble
	    	# all done. clean the temporary file
		    shell /bin/rm -f /tmp/gdbassemble
    	end
    else
	    if ($64BITS == 1)
		    # no argument, assemble instructions to stdout
    		shell ASMOPCODE="$(while read -ep '>' r && test "$r" != end ; do echo -E "$r"; done)" ; GDBASMFILENAME=$RANDOM; \
	    	echo -e "BITS 64\n$ASMOPCODE" >/tmp/$GDBASMFILENAME ; /usr/local/bin/nasm -f bin -o /dev/stdout /tmp/$GDBASMFILENAME | /usr/local/bin/ndisasm -i -b64 /dev/stdin ; \
		    /bin/rm -f /tmp/$GDBASMFILENAME
    	else
	    	# no argument, assemble instructions to stdout
	    	shell ASMOPCODE="$(while read -ep '>' r && test "$r" != end ; do echo -E "$r"; done)" ; GDBASMFILENAME=$RANDOM; \
	    	echo -e "BITS 32\n$ASMOPCODE" >/tmp/$GDBASMFILENAME ; /usr/bin/nasm -f bin -o /dev/stdout /tmp/$GDBASMFILENAME | /usr/bin/ndisasm -i -b32 /dev/stdin ; \
		    /bin/rm -f /tmp/$GDBASMFILENAME
    	end
    end
end
document assemble
Syntax: assemble <ADDR>
| Assemble instructions using nasm.
| Type a line containing "end" to indicate the end.
| If an address is specified, insert/modify instructions at that address.
| If no address is specified, assembled instructions are printed to stdout.
| Use the pseudo instruction "org ADDR" to set the base address.
end

define assemble32
    # dont enter routine again if user hits enter
    dont-repeat
    if ($argc)
        if (*$arg0 = *$arg0)
        # check if we have a valid address by dereferencing it,
        # if we havnt, this will cause the routine to exit.
        end
        printf "Instructions will be written to %#x.\n", $arg0
    else
        printf "Instructions will be written to stdout.\n"
    end
    printf "Type instructions, one per line."
    color_bold
    printf " Do not forget to use NASM assembler syntax!\n"
    color_reset
    printf "End with a line saying just \"end\".\n"
    
    if ($argc)
        # argument specified, assemble instructions into memory at address specified.
        shell ASMOPCODE="$(while read -ep '>' r && test "$r" != end ; do echo -E "$r"; done)" ; GDBASMFILENAME=$RANDOM; \
        echo -e "BITS 32\n$ASMOPCODE" >/tmp/$GDBASMFILENAME ; /usr/bin/nasm -f bin -o /dev/stdout /tmp/$GDBASMFILENAME | /usr/bin/hexdump -ve '1/1 "set *((unsigned char *) $arg0 + %#2_ax) = %#02x\n"' >/tmp/gdbassemble ; /bin/rm -f /tmp/$GDBASMFILENAME
        source /tmp/gdbassemble
        # all done. clean the temporary file
        shell /bin/rm -f /tmp/gdbassemble
    else
        # no argument, assemble instructions to stdout
        shell ASMOPCODE="$(while read -ep '>' r && test "$r" != end ; do echo -E "$r"; done)" ; GDBASMFILENAME=$RANDOM; \
        echo -e "BITS 32\n$ASMOPCODE" >/tmp/$GDBASMFILENAME ; /usr/bin/nasm -f bin -o /dev/stdout /tmp/$GDBASMFILENAME | /usr/bin/ndisasm -i -b32 /dev/stdin ; \
        /bin/rm -f /tmp/$GDBASMFILENAME
    end
end
document assemble32
Syntax: assemble32 <ADDR>
| Assemble 32 bits instructions using nasm.
| Type a line containing "end" to indicate the end.
| If an address is specified, insert/modify instructions at that address.
| If no address is specified, assembled instructions are printed to stdout.
| Use the pseudo instruction "org ADDR" to set the base address.
end

define assemble64
    # dont enter routine again if user hits enter
    dont-repeat
    if ($argc)
        if (*$arg0 = *$arg0)
        # check if we have a valid address by dereferencing it,
        # if we havnt, this will cause the routine to exit.
        end
        printf "Instructions will be written to %#x.\n", $arg0
    else
        printf "Instructions will be written to stdout.\n"
    end
    printf "Type instructions, one per line."
    color_bold
    printf " Do not forget to use NASM assembler syntax!\n"
    color_reset
    printf "End with a line saying just \"end\".\n"
    
    if ($argc)
        # argument specified, assemble instructions into memory at address specified.
        shell ASMOPCODE="$(while read -ep '>' r && test "$r" != end ; do echo -E "$r"; done)" ; GDBASMFILENAME=$RANDOM; \
        echo -e "BITS 64\n$ASMOPCODE" >/tmp/$GDBASMFILENAME ; /usr/local/bin/nasm -f bin -o /dev/stdout /tmp/$GDBASMFILENAME | /usr/bin/hexdump -ve '1/1 "set *((unsigned char *) $arg0 + %#2_ax) = %#02x\n"' >/tmp/gdbassemble ; /bin/rm -f /tmp/$GDBASMFILENAME
        source /tmp/gdbassemble
        # all done. clean the temporary file
        shell /bin/rm -f /tmp/gdbassemble
    else
        # no argument, assemble instructions to stdout
        shell ASMOPCODE="$(while read -ep '>' r && test "$r" != end ; do echo -E "$r"; done)" ; GDBASMFILENAME=$RANDOM; \
        echo -e "BITS 64\n$ASMOPCODE" >/tmp/$GDBASMFILENAME ; /usr/local/bin/nasm -f bin -o /dev/stdout /tmp/$GDBASMFILENAME | /usr/local/bin/ndisasm -i -b64 /dev/stdin ; \
        /bin/rm -f /tmp/$GDBASMFILENAME
    end
end
document assemble64
Syntax: assemble64 <ADDR>
| Assemble 64 bits instructions using nasm.
| Type a line containing "end" to indicate the end.
| If an address is specified, insert/modify instructions at that address.
| If no address is specified, assembled instructions are printed to stdout.
| Use the pseudo instruction "org ADDR" to set the base address.
end

define asm
	if $argc == 1
		assemble $arg0
	else
		assemble
	end
end
document asm
Syntax: asm <ADDR>
| Shortcut to the asssemble command.
end

define asm32
    if $argc == 1
        assemble32 $arg0
    else
        assemble32
    end
end
document asm32
Syntax: asm32 <ADDR>
| Shortcut to the assemble32 command.
end

define asm64
    if $argc == 1
        assemble64 $arg0
    else
        assemble64
    end
end
document asm64
Syntax: asm64 <ADDR>
| Shortcut to the assemble64 command.
end

define assemble_gas
    printf "\nType code to assemble and hit Ctrl-D when finished.\n"
    printf "You must use GNU assembler (AT&T) syntax.\n"

    shell filename=$(mktemp); \
          binfilename=$(mktemp); \
          echo -e "Writing into: ${filename}\n"; \
          cat > $filename; echo ""; \
          as -o $binfilename < $filename; \
          objdump -d -j .text $binfilename; \
          rm -f $binfilename; \
          rm -f $filename; \
          echo -e "temporaly files deleted.\n"
end
document assemble_gas
Syntax: assemble_gas
| Assemble instructions to binary opcodes. Uses GNU as and objdump.
end


define dump_hexfile
    dump ihex memory $arg0 $arg1 $arg2
end
document dump_hexfile
Syntax: dump_hexfile FILENAME ADDR1 ADDR2
| Write a range of memory to a file in Intel ihex (hexdump) format.
| The range is specified by ADDR1 and ADDR2 addresses.
end


define dump_binfile
    dump memory $arg0 $arg1 $arg2
end
document dump_binfile
Syntax: dump_binfile FILENAME ADDR1 ADDR2
| Write a range of memory to a binary file.
| The range is specified by ADDR1 and ADDR2 addresses.
end


define dumpmacho
    if $argc != 2
        help dumpmacho
    end
    set $headermagic = *$arg0
    # the || operator isn't working as it should, wtf!!!
    if $headermagic != 0xfeedface
        if $headermagic != 0xfeedfacf
            printf "[Error] Target address doesn't contain a valid Mach-O binary!\n"
            help dumpmacho
        end
    end
    set $headerdumpsize = *($arg0+0x14)
    if $headermagic == 0xfeedface
        dump memory $arg1 $arg0 ($arg0+0x1c+$headerdumpsize)
    end
    if $headermagic == 0xfeedfacf
        dump memory $arg1 $arg0 ($arg0+0x20+$headerdumpsize)
    end
end
document dumpmacho
Syntax: dumpmacho STARTADDRESS FILENAME
| Dump the Mach-O header to a file.
| You need to input the start address (use info shared command to find it).
end


define cls
    shell clear
end
document cls
Syntax: cls
| Clear screen.
end


define search
    set $start = (char *) $arg0
    set $end = (char *) $arg1
    set $pattern = (short) $arg2
    set $p = $start
    while $p < $end
        if (*(short *) $p) == $pattern
            printf "pattern 0x%hx found at 0x%x\n", $pattern, $p
        end
        set $p++
    end
end
document search
Syntax: search <START> <END> <PATTERN>
| Search for the given pattern beetween $start and $end address.
end


# _________________user tips_________________
# The 'tips' command is used to provide tutorial-like info to the user
define tips
    printf "Tip Topic Commands:\n"
    printf "\ttip_display : Automatically display values on each break\n"
    printf "\ttip_patch   : Patching binaries\n"
    printf "\ttip_strip   : Dealing with stripped binaries\n"
    printf "\ttip_syntax  : AT&T vs Intel syntax\n"
end
document tips
Syntax: tips
| Provide a list of tips from users on various topics.
end


define tip_patch
    printf "\n"
    printf "                   PATCHING MEMORY\n"
    printf "Any address can be patched using the 'set' command:\n"
    printf "\t`set ADDR = VALUE` \te.g. `set *0x8049D6E = 0x90`\n"
    printf "\n"
    printf "                 PATCHING BINARY FILES\n"
    printf "Use `set write` in order to patch the target executable\n"
    printf "directly, instead of just patching memory\n"
    printf "\t`set write on` \t`set write off`\n"
    printf "Note that this means any patches to the code or data segments\n"
    printf "will be written to the executable file\n"
    printf "When either of these commands has been issued,\n"
    printf "the file must be reloaded.\n"
    printf "\n"
end
document tip_patch
Syntax: tip_patch
| Tips on patching memory and binary files.
end


define tip_strip
    printf "\n"
    printf "             STOPPING BINARIES AT ENTRY POINT\n"
    printf "Stripped binaries have no symbols, and are therefore tough to\n"
    printf "start automatically. To debug a stripped binary, use\n"
    printf "\tinfo file\n"
    printf "to get the entry point of the file\n"
    printf "The first few lines of output will look like this:\n"
    printf "\tSymbols from '/tmp/a.out'\n"
    printf "\tLocal exec file:\n"
    printf "\t        `/tmp/a.out', file type elf32-i386.\n"
    printf "\t        Entry point: 0x80482e0\n"
    printf "Use this entry point to set an entry point:\n"
    printf "\t`tbreak *0x80482e0`\n"
    printf "The breakpoint will delete itself after the program stops as\n"
    printf "the entry point\n"
    printf "\n"
end
document tip_strip
Syntax: tip_strip
| Tips on dealing with stripped binaries.
end


define tip_syntax
    printf "\n"
    printf "\t    INTEL SYNTAX                        AT&T SYNTAX\n"
    printf "\tmnemonic dest, src, imm            mnemonic src, dest, imm\n" 
    printf "\t[base+index*scale+disp]            disp(base, index, scale)\n"
    printf "\tregister:      eax                 register:      %%eax\n"
    printf "\timmediate:     0xFF                immediate:     $0xFF\n"
    printf "\tdereference:   [addr]              dereference:   addr(,1)\n"
    printf "\tabsolute addr: addr                absolute addr: *addr\n"
    printf "\tbyte insn:     mov byte ptr        byte insn:     movb\n"
    printf "\tword insn:     mov word ptr        word insn:     movw\n"
    printf "\tdword insn:    mov dword ptr       dword insn:    movd\n"
    printf "\tfar call:      call far            far call:      lcall\n"
    printf "\tfar jump:      jmp far             far jump:      ljmp\n"
    printf "\n"
    printf "Note that order of operands in reversed, and that AT&T syntax\n"
    printf "requires that all instructions referencing memory operands \n"
    printf "use an operand size suffix (b, w, d, q)\n"
    printf "\n"
end
document tip_syntax
Syntax: tip_syntax
| Summary of Intel and AT&T syntax differences.
end


define tip_display
    printf "\n"
    printf "Any expression can be set to automatically be displayed every time\n"
    printf "the target stops. The commands for this are:\n"
    printf "\t`display expr'     : automatically display expression 'expr'\n"
    printf "\t`display'          : show all displayed expressions\n"
    printf "\t`undisplay num'    : turn off autodisplay for expression # 'num'\n"
    printf "Examples:\n"
    printf "\t`display/x *(int *)$esp`      : print top of stack\n"
    printf "\t`display/x *(int *)($ebp+8)`  : print first parameter\n"
    printf "\t`display (char *)$esi`        : print source string\n"
    printf "\t`display (char *)$edi`        : print destination string\n"
    printf "\n"
end
document tip_display
Syntax: tip_display
| Tips on automatically displaying values when a program stops.
end

# bunch of semi-useless commands

# enable and disable shortcuts for stop-on-solib-events fantastic trick!
define enablesolib
	set stop-on-solib-events 1
	printf "Stop-on-solib-events is enabled!\n"
end
document enablesolib
Syntax: enablesolib
| Shortcut to enable stop-on-solib-events trick.
end


define disablesolib
	set stop-on-solib-events 0
	printf "Stop-on-solib-events is disabled!\n"
end
document disablesolib
Syntax: disablesolib
| Shortcut to disable stop-on-solib-events trick.
end


# enable commands for different displays
define enableobjectivec
	set $SHOWOBJECTIVEC = 1
end
document enableobjectivec
Syntax: enableobjectivec
| Enable display of objective-c information in the context window.
end


define enablecpuregisters
	set $SHOWCPUREGISTERS = 1
end
document enablecpuregisters
Syntax: enablecpuregisters
| Enable display of cpu registers in the context window.
end


define enablestack
	set $SHOWSTACK = 1
end
document enablestack
Syntax: enablestack
| Enable display of stack in the context window.
end


define enabledatawin
	set $SHOWDATAWIN = 1
end
document enabledatawin
Syntax: enabledatawin
| Enable display of data window in the context window.
end


# disable commands for different displays
define disableobjectivec
	set $SHOWOBJECTIVEC = 0
end
document disableobjectivec
Syntax: disableobjectivec
| Disable display of objective-c information in the context window.
end


define disablecpuregisters
	set $SHOWCPUREGISTERS = 0
end
document disablecpuregisters
Syntax: disablecpuregisters
| Disable display of cpu registers in the context window.
end


define disablestack
	set $SHOWSTACK = 0
end
document disablestack
Syntax: disablestack
| Disable display of stack information in the context window.
end


define disabledatawin
	set $SHOWDATAWIN = 0
end
document disabledatawin
Syntax: disabledatawin
| Disable display of data window in the context window.
end


define arm
    if $ARMOPCODES == 1
        set arm show-opcode-bytes 1
    end
    set $ARM = 1
end
document arm
Syntax: arm
| Set gdb to work with ARM binaries.
end

define ioskdp
    set $SHOW_CONTEXT = 0
    set $SHOW_NEST_INSN = 0
end
document ioskdp
Syntax: ioskdp
| Disable dumping context information for iOS KDP debugging
end

define intelsyntax
    if $ARM == 0
        set disassembly-flavor intel
        set $X86FLAVOR = 0
    end
end
document intelsyntax
Syntax: intelsyntax
| Change disassembly syntax to intel flavor.
end


define attsyntax
    if $ARM == 0
        set disassembly-flavor att
        set $X86FLAVOR = 1
    end
end
document attsyntax
Syntax: attsyntax
| Change disassembly syntax to at&t flavor.
end

define kernel32
    if $argc != 0
        # try to load kgmacros files
        # failure is silent if non-existent...
        source $arg0
        set architecture i386
        if $argc == 2
            target remote localhost:$arg1
        else
            target remote localhost:8832
        end
    else
        help kernel32
    end
end
document kernel32
Syntax: kernel32 PATH_TO_KGMACROS <PORT>
| Attach to VMware gdb stub for 32 bits kernel.
| The path to kgmacros must be supplied as first parameter.
| If you don't want to load kgmacros just put something as the first parameter.
| Optional parameter is the port to connect to, in case you are not using the default 8832
| or want to kernel debug more than one active virtual machine.
| By supplying a bogus kgmacros this command should be compatible with any OS.
end

define kernel64
    if $argc != 0
        # try to load kgmacros files
        # failure is silent if non-existent...
        source $arg0
        set architecture i386:x86-64
        if $argc == 2
            target remote localhost:$arg1
        else
            target remote localhost:8864
        end
    else
        help kernel64
    end
end
document kernel64
Syntax: kernel64 PATH_TO_KGMACROS <PORT>
| Attach to VMware gdb stub for 64 bits kernel.
| The path to kgmacros must be supplied as first parameter.
| If you don't want to load kgmacros just put something as the first parameter.
| Optional parameter is the port to connect to, in case you are not using the default 8864
| or want to kernel debug more than one active virtual machine.
| By supplying a bogus kgmacros this command should be compatible with any OS.
end

define 32bits
    set $KDP64BITS = 0
    set $64BITS = 0
end

define 64bits
    set $KDP64BITS = 1
    set $64BITS = 1
end

define resetkdp
    set $KDP64BITS = -1
end

define header
    if $argc != 1
        help header
    else
        dump memory /tmp/gdbinit_header_dump $arg0 $arg0 + 4096
        shell /usr/bin/otool -h /tmp/gdbinit_header_dump
        shell /bin/rm -f /tmp/gdbinit_header_dump
    end
end
document header
Syntax: header MACHO_HEADER_START_ADDRESS
| Dump the Mach-O header located at given address
end

define loadcmds
    if $argc != 1
        help loadcmds
    else
        # this size should be good enough for most binaries
        dump memory /tmp/gdbinit_header_dump $arg0 $arg0 + 4096 * 10
        shell /usr/bin/otool -l /tmp/gdbinit_header_dump
        shell /bin/rm -f /tmp/gdbinit_header_dump
    end
end
document loadcmds
Syntax: loadcmds MACHO_HEADER_START_ADDRESS
| Dump the Mach-O load commands
end

# defining it here doesn't get the space #$#$%"#!
define disablecolorprompt
    set prompt gdb$
end
document disablecolorprompt
| Remove color from prompt
end

define enablecolorprompt
    set prompt \033[31mgdb$ \033[0m
end
document enablecolorprompt
| Enable color prompt
end

#EOF

# Older change logs:
#
#   Version 7.4.4 (02/01/2012)
#     - Added the "skip" command. This will jump to the next instruction after EIP/RIP without executing the current one.
#       Thanks to @bSr43 for the tip to retrieve the current instruction size.
#
#	Version 7.4.3 (04/11/2011)
#	  - Modified "hexdump" command to support a variable number of lines (optional parameter)
#	  - Removed restrictions on type of addresses in the "dd" command - Thanks to Plouj for the warning :-)
#	   I don't know what was the original thinking behind those :-)
#	  - Modified the assemble command to support 64bits - You will need to recompile nasm since the version shipped with OS X doesn't supports 64bits (www.nasm.us).
#	   Assumes that the new binary is installed at /usr/local/bin - modify the variable at the top if you need so. 
#	   It will assemble based on the target arch being debugged. If you want to use gdb for a quick asm just use the 32bits or 64bits commands to set your target.
#      Thanks to snare for the warning and original patch :-)
#	  - Added "asm" command - it's a shortcut to the "assemble" command.
#	  - Added configuration variable for colorized prompt. Plouj reported some issues with Ubuntu's gdb 7.2 if prompt is colorized.
#
#   Version 7.4.2 (11/08/2011)
#    Small fix to a weird bug happening on FreeBSD 8.2. It doesn't like a "if(" instruction, needs to be "if (". Weird!
#     Many thanks to Evan for reporting and sending the patch :-)
#    Added the ptraceme/rptraceme commands to bypass PTRACE_TRACME anti-debugging technique.
#     Grabbed this from http://falken.tuxfamily.org/?p=171
#	  It's commented out due to a gdb problem in OS X (refer to http://reverse.put.as/2011/08/20/another-patch-for-apples-gdb-the-definecommands-problem/ )
#	  Just uncomment it if you want to use in ptrace enabled systems.
#
#   Version 7.4.1 (21/06/2011) - fG!
#    Added patch sent by sbz, more than 1 year ago, which I forgot to add :-/
#     This will allow to search for a given pattern between start and end address.
#     On sbz words: "It's usefull to find call, ret or everything like that." :-)
#    New command is "search"
#
#   Version 7.4 (20/06/2011) - fG!
#    When registers change between instructions the color will change to red (like it happens in OllyDBG)
#     This is the default behavior, if you don't like it, modify the variable SHOWREGCHANGES
#    Added patch sent by Philippe Langlois
#     color the first disassembly line - change the setting below on SETCOLOR1STLINE - by default it's disabled
#
#	Version 7.3.2 (21/02/2011) - fG!
#	  Added the command rint3 and modified the int3 command. The new command will restore the byte in previous int3 patch.
#
# 	Version 7.3.1 (29/06/2010) - fG!
#	  Added enablelib/disablelib command to quickly set the stop-on-solib-events trick
#	  Implemented the stepoh command equivalent to the stepo but using hardware breakpoints 
#	  More fixes to stepo
#
#	Version 7.3 (16/04/2010) - fG!
#	  Support for 64bits targets. Default is 32bits, you should modify the variable or use the 32bits or 64bits to choose the mode.
#     	  I couldn't find another way to recognize the type of binary… Testing the register doesn't work that well.
#	  TODO: fix objectivec messages and stepo for 64bits
#   Version 7.2.1 (24/11/2009) - fG!
#	  Another fix to stepo (0xFF92 missing)
#
#   Version 7.2 (11/10/2009) - fG!
#	  Added the smallregisters function to create 16 and 8 bit versions from the registers EAX, EBX, ECX, EDX
#	  Revised and fixed all the dumpjump stuff, following Intel manuals. There were some errors (thx to rev who pointed the jle problem).
#	  Small fix to stepo command (missed a few call types)
#
#   Version 7.1.7 - fG!
#     Added the possibility to modify what's displayed with the context window. You can change default options at the gdb options part. For example, kernel debugging is much slower if the stack display is enabled...
#     New commands enableobjectivec, enablecpuregisters, enablestack, enabledatawin and their disable equivalents (to support realtime change of default options)
#     Fixed problem with the assemble command. I was calling /bin/echo which doesn't support the -e option ! DUH ! Should have used bash internal version.
#     Small fixes to colors...
#     New commands enablesolib and disablesolib . Just shortcuts for the stop-on-solib-events fantastic trick ! Hey... I'm lazy ;)
#     Fixed this: Possible removal of "u" command, info udot is missing in gdb 6.8-debian . Doesn't exist on OS X so bye bye !!!
#     Displays affected flags in jump decisions
#
#   Version 7.1.6 - fG!
#     Added modified assemble command from Tavis Ormandy (further modified to work with Mac OS X) (shell commands used use full path name, working for Leopard, modify for others if necessary)
#     Renamed thread command to threads because thread is an internal gdb command that allows to move between program threads
#
#   Version 7.1.5 (04/01/2009) - fG!
#     Fixed crash on Leopard ! There was a If Else condition where the else had no code and that made gdb crash on Leopard (CRAZY!!!!)
#     Better code indention
#
#   Version 7.1.4 (02/01/2009) - fG!
#     Bug in show objective c messages with Leopard ???
#     Nop routine support for single address or range (contribution from gln [ghalen at hack.se])
#     Used the same code from nop to null routine
#
#   Version 7.1.3 (31/12/2008) - fG!
#     Added a new command 'stepo'. This command will step a temporary breakpoint on next instruction after the call, so you can skip over
#     the call. Did this because normal commands not always skip over (mainly with objc_msgSend)
#
#   Version 7.1.2 (31/12/2008) - fG!
#     Support for the jump decision (will display if a conditional jump will be taken or not)
#
#   Version 7.1.1 (29/12/2008) - fG!
#     Moved gdb options to the beginning (makes more sense)
#     Added support to dump message being sent to msgSend (easier to understand what's going on)
#
#   Version 7.1
#     Fixed serious (and old) bug in dd and datawin, causing dereference of
#     obviously invalid address. See below:
#     gdb$ dd 0xffffffff
#     FFFFFFFF : Cannot access memory at address 0xffffffff
#
#   Version 7.0
#     Added cls command.
#     Improved documentation of many commands.
#     Removed bp_alloc, was neither portable nor usefull.
#     Checking of passed argument(s) in these commands:
#       contextsize-stack, contextsize-data, contextsize-code
#       bp, bpc, bpe, bpd, bpt, bpm, bhb,...
#     Fixed bp and bhb inconsistencies, look at * signs in Version 6.2
#     Bugfix in bhb command, changed "break" to "hb" command body
#     Removed $SHOW_CONTEXT=1 from several commands, this variable
#     should only be controlled globally with context-on and context-off
#     Improved stack, func, var and sig, dis, n, go,...
#     they take optional argument(s) now
#     Fixed wrong $SHOW_CONTEXT assignment in context-off
#     Fixed serious bug in cft command, forgotten ~ sign
#     Fixed these bugs in step_to_call:
#       1) the correct logging sequence is:
#          set logging file > set logging redirect > set logging on
#       2) $SHOW_CONTEXT is now correctly restored from $_saved_ctx
#     Fixed these bugs in trace_calls:
#       1) the correct logging sequence is:
#          set logging file > set logging overwrite >
#          set logging redirect > set logging on
#       2) removed the "clean up trace file" part, which is not needed now,
#          stepi output is properly redirected to /dev/null
#       3) $SHOW_CONTEXT is now correctly restored from $_saved_ctx
#     Fixed bug in trace_run:
#       1) $SHOW_CONTEXT is now correctly restored from $_saved_ctx
#     Fixed print_insn_type -- removed invalid semicolons!, wrong value checking,
#     Added TODO entry regarding the "u" command
#     Changed name from gas_assemble to assemble_gas due to consistency
#     Output from assemble and assemble_gas is now similar, because i made
#     both of them to use objdump, with respect to output format (AT&T|Intel).
#     Whole code was checked and made more consistent, readable/maintainable.
#
#   Version 6.2
#     Add global variables to allow user to control stack, data and code window sizes
#     Increase readability for registers
#     Some corrections (hexdump, ddump, context, cfp, assemble, gas_asm, tips, prompt)
#   
#   Version 6.1-color-user
#     Took the Gentoo route and ran sed s/user/user/g
#
#   Version 6.1-color
#     Added color fixes from
#       http://gnurbs.blogsome.com/2006/12/22/colorizing-mamons-gdbinit/
#
#   Version 6.1
#     Fixed filename in step_to_call so it points to /dev/null
#     Changed location of logfiles from /tmp  to ~
#
#   Version 6
#     Added print_insn_type, get_insn_type, context-on, context-off commands
#     Added trace_calls, trace_run, step_to_call commands
#     Changed hook-stop so it checks $SHOW_CONTEXT variable
#
#   Version 5
#     Added bpm, dump_bin, dump_hex, bp_alloc commands
#     Added 'assemble' by elaine, 'gas_asm' by mong
#     Added Tip Topics for aspiring users ;)
#
#   Version 4
#     Added eflags-changing insns by pusillus
#     Added bp, nop, null, and int3 patch commands, also hook-stop
#
#   Version 3
#     Incorporated elaine's if/else goodness into the hex/ascii dump
#
#   Version 2
#     Radix bugfix by elaine

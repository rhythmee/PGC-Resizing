#@ # 
#@ # Running dc_shell Version N-2017.09-SP2 for linux64 -- Nov 27, 2017
#@ # Date:   Fri Jun 11 09:29:01 2021
#@ # Run by: sam28@montauk
#@ 

source /tools/synopsys/cst/N-2017.09-SP2/admin/setup/.synopsys_dc.setup
#@ # -- Starting source /tools/synopsys/cst/N-2017.09-SP2/admin/setup/.synopsys_dc.setup

#@ #
#@ #		".synopsys_dc.setup" Initialization File for
#@ #
#@ #		    Dc_Shell and Design_Analyzer
#@ #
#@ #	The variables in this file define the behavior of many parts
#@ #	of the Synopsys Synthesis Tools.  Upon installation, they should 
#@ #	be reviewed and modified to fit your site's needs.  Each engineer
#@ #	can have a .synopsys file in his/her home directory or current
#@ #	directory to override variable settings in this file.  
#@ #
#@ #  	Each logical grouping of variables is commented as to their 
#@ #	nature and effect on the Synthesis Commands.  Examples of
#@ #	variable groups are the Compile Variable Group, which affects 
#@ #	the designs produced by the COMPILE command, and the Schematic 
#@ #	Variable Group, which affects the output of the create_schematic
#@ #	command.
#@ #
#@ #	You can type "man <group_name>_variables" in dc_shell or 
#@ #	design_analyzer to get help about a group of variables.
#@ #	For instance, to get help about the "system" variable group, 
#@ #	type "help system_variables".  You can also type
#@ #	"man <variable name>", to get help on the that variable's 
#@ #	group.
#@ #
#@ 
#@ # System variables
#@ set sh_command_abbrev_mode       "Anywhere"
#@ set sh_continue_on_error         "true"
#@ update_app_var -default true sh_continue_on_error
#@ set sh_enable_page_mode          "true"
#@ update_app_var -default true sh_enable_page_mode
#@ set sh_source_uses_search_path   "true"
#@ update_app_var -default true sh_source_uses_search_path
#@ if {$synopsys_program_name == "dc_shell" ||     $synopsys_program_name == "de_shell" ||     $synopsys_program_name == "dc_sms_shell" } {
#@ set sh_new_variable_message	 "false"
#@ update_app_var -default false sh_new_variable_message
#@ } else {
#@ set sh_new_variable_message	 "true"
#@ update_app_var -default true sh_new_variable_message
#@ }
#@ 
#@ if {$synopsys_program_name == "dc_shell"} {
#@ set html_log_enable	     "false"
#@ set html_log_filename	 "default.html"
#@ }
#@ 
#@ if {$synopsys_program_name == "de_shell"} {
#@ set de_log_html_filename	 "default.html"
#@ }
#@ 
#@ if {$synopsys_program_name == "dc_shell" || $synopsys_program_name == "de_shell"} {
#@   lappend auto_path [file join ${synopsys_root} auxx syn lib]      
#@   package require cae
#@ }
#@ # -- Starting source /tools/synopsys/cst/N-2017.09-SP2/auxx/tcllib/lib/tcl8.6/tm.tcl

#@ # -*- tcl -*-
#@ #
#@ # Searching for Tcl Modules. Defines a procedure, declares it as the primary
#@ # command for finding packages, however also uses the former 'package unknown'
#@ # command as a fallback.
#@ #
#@ # Locates all possible packages in a directory via a less restricted glob. The
#@ # targeted directory is derived from the name of the requested package, i.e.
#@ # the TM scan will look only at directories which can contain the requested
#@ # package. It will register all packages it found in the directory so that
#@ # future requests have a higher chance of being fulfilled by the ifneeded
#@ # database without having to come to us again.
#@ #
#@ # We do not remember where we have been and simply rescan targeted directories
#@ # when invoked again. The reasoning is this:
#@ #
#@ # - The only way we get back to the same directory is if someone is trying to
#@ #   [package require] something that wasn't there on the first scan.
#@ #
#@ #   Either
#@ #   1) It is there now:  If we rescan, you get it; if not you don't.
#@ #
#@ #      This covers the possibility that the application asked for a package
#@ #      late, and the package was actually added to the installation after the
#@ #      application was started. It shoukld still be able to find it.
#@ #
#@ #   2) It still is not there: Either way, you don't get it, but the rescan
#@ #      takes time. This is however an error case and we dont't care that much
#@ #      about it
#@ #
#@ #   3) It was there the first time; but for some reason a "package forget" has
#@ #      been run, and "package" doesn't know about it anymore.
#@ #
#@ #      This can be an indication that the application wishes to reload some
#@ #      functionality. And should work as well.
#@ #
#@ # Note that this also strikes a balance between doing a glob targeting a
#@ # single package, and thus most likely requiring multiple globs of the same
#@ # directory when the application is asking for many packages, and trying to
#@ # glob for _everything_ in all subdirectories when looking for a package,
#@ # which comes with a heavy startup cost.
#@ #
#@ # We scan for regular packages only if no satisfying module was found.
#@ 
#@ namespace eval ::tcl::tm {
#@     # Default paths. None yet.
#@ 
#@     variable paths {}
#@ 
#@     # The regex pattern a file name has to match to make it a Tcl Module.
#@ 
#@     set pkgpattern {^([_[:alpha:]][:_[:alnum:]]*)-([[:digit:]].*)[.]tm$}
#@ 
#@     # Export the public API
#@ 
#@     namespace export path
#@     namespace ensemble create -command path -subcommands {add remove list}
#@ }
#@ 
#@ # ::tcl::tm::path implementations --
#@ #
#@ #	Public API to the module path. See specification.
#@ #
#@ # Arguments
#@ #	cmd -	The subcommand to execute
#@ #	args -	The paths to add/remove. Must not appear querying the
#@ #		path with 'list'.
#@ #
#@ # Results
#@ #	No result for subcommands 'add' and 'remove'. A list of paths for
#@ #	'list'.
#@ #
#@ # Sideeffects
#@ #	The subcommands 'add' and 'remove' manipulate the list of paths to
#@ #	search for Tcl Modules. The subcommand 'list' has no sideeffects.
#@ 
#@ proc ::tcl::tm::add {args} {
#@     # PART OF THE ::tcl::tm::path ENSEMBLE
#@     #
#@     # The path is added at the head to the list of module paths.
#@     #
#@     # The command enforces the restriction that no path may be an ancestor
#@     # directory of any other path on the list. If the new path violates this
#@     # restriction an error wil be raised.
#@     #
#@     # If the path is already present as is no error will be raised and no
#@     # action will be taken.
#@ 
#@     variable paths
#@ 
#@     # We use a copy of the path as source during validation, and extend it as
#@     # well. Because we not only have to detect if the new paths are bogus with
#@     # respect to the existing paths, but also between themselves. Otherwise we
#@     # can still add bogus paths, by specifying them in a single call. This
#@     # makes the use of the new paths simpler as well, a trivial assignment of
#@     # the collected paths to the official state var.
#@ 
#@     set newpaths $paths
#@     foreach p $args {
#@ 	if {$p in $newpaths} {
#@ 	    # Ignore a path already on the list.
#@ 	    continue
#@ 	}
#@ 
#@ 	# Search for paths which are subdirectories of the new one. If there
#@ 	# are any then the new path violates the restriction about ancestors.
#@ 
#@ 	set pos [lsearch -glob $newpaths ${p}/*]
#@ 	# Cannot use "in", we need the position for the message.
#@ 	if {$pos >= 0} {
#@ 	    return -code error 		"$p is ancestor of existing module path [lindex $newpaths $pos]."
#@ 	}
#@ 
#@ 	# Now look for existing paths which are ancestors of the new one. This
#@ 	# reverse question forces us to loop over the existing paths, as each
#@ 	# element is the pattern, not the new path :(
#@ 
#@ 	foreach ep $newpaths {
#@ 	    if {[string match ${ep}/* $p]} {
#@ 		return -code error 		    "$p is subdirectory of existing module path $ep."
#@ 	    }
#@ 	}
#@ 
#@ 	set newpaths [linsert $newpaths 0 $p]
#@     }
#@ 
#@     # The validation of the input is complete and successful, and everything
#@     # in newpaths is either an old path, or added. We can now extend the
#@     # official list of paths, a simple assignment is sufficient.
#@ 
#@     set paths $newpaths
#@     return
#@ }
#@ 
#@ proc ::tcl::tm::remove {args} {
#@     # PART OF THE ::tcl::tm::path ENSEMBLE
#@     #
#@     # Removes the path from the list of module paths. The command is silently
#@     # ignored if the path is not on the list.
#@ 
#@     variable paths
#@ 
#@     foreach p $args {
#@ 	set pos [lsearch -exact $paths $p]
#@ 	if {$pos >= 0} {
#@ 	    set paths [lreplace $paths $pos $pos]
#@ 	}
#@     }
#@ }
#@ 
#@ proc ::tcl::tm::list {} {
#@     # PART OF THE ::tcl::tm::path ENSEMBLE
#@ 
#@     variable paths
#@     return  $paths
#@ }
#@ 
#@ # ::tcl::tm::UnknownHandler --
#@ #
#@ #	Unknown handler for Tcl Modules, i.e. packages in module form.
#@ #
#@ # Arguments
#@ #	original	- Original [package unknown] procedure.
#@ #	name		- Name of desired package.
#@ #	version		- Version of desired package. Can be the
#@ #			  empty string.
#@ #	exact		- Either -exact or ommitted.
#@ #
#@ #	Name, version, and exact are used to determine satisfaction. The
#@ #	original is called iff no satisfaction was achieved. The name is also
#@ #	used to compute the directory to target in the search.
#@ #
#@ # Results
#@ #	None.
#@ #
#@ # Sideeffects
#@ #	May populate the package ifneeded database with additional provide
#@ #	scripts.
#@ 
#@ proc ::tcl::tm::UnknownHandler {original name args} {
#@     # Import the list of paths to search for packages in module form.
#@     # Import the pattern used to check package names in detail.
#@ 
#@     variable paths
#@     variable pkgpattern
#@ 
#@     # Without paths to search we can do nothing. (Except falling back to the
#@     # regular search).
#@ 
#@     if {[llength $paths]} {
#@ 	set pkgpath [string map {:: /} $name]
#@ 	set pkgroot [file dirname $pkgpath]
#@ 	if {$pkgroot eq "."} {
#@ 	    set pkgroot ""
#@ 	}
#@ 
#@ 	# We don't remember a copy of the paths while looping. Tcl Modules are
#@ 	# unable to change the list while we are searching for them. This also
#@ 	# simplifies the loop, as we cannot get additional directories while
#@ 	# iterating over the list. A simple foreach is sufficient.
#@ 
#@ 	set satisfied 0
#@ 	foreach path $paths {
#@ 	    if {![interp issafe] && ![file exists $path]} {
#@ 		continue
#@ 	    }
#@ 	    set currentsearchpath [file join $path $pkgroot]
#@ 	    if {![interp issafe] && ![file exists $currentsearchpath]} {
#@ 		continue
#@ 	    }
#@ 	    set strip [llength [file split $path]]
#@ 
#@ 	    # We can't use glob in safe interps, so enclose the following in a
#@ 	    # catch statement, where we get the module files out of the
#@ 	    # subdirectories. In other words, Tcl Modules are not-functional
#@ 	    # in such an interpreter. This is the same as for the command
#@ 	    # "tclPkgUnknown", i.e. the search for regular packages.
#@ 
#@ 	    catch {
#@ 		# We always look for _all_ possible modules in the current
#@ 		# path, to get the max result out of the glob.
#@ 
#@ 		foreach file [glob -nocomplain -directory $currentsearchpath *.tm] {
#@ 		    set pkgfilename [join [lrange [file split $file] $strip end] ::]
#@ 
#@ 		    if {![regexp -- $pkgpattern $pkgfilename --> pkgname pkgversion]} {
#@ 			# Ignore everything not matching our pattern for
#@ 			# package names.
#@ 			continue
#@ 		    }
#@ 		    try {
#@ 			package vcompare $pkgversion 0
#@ 		    } on error {} {
#@ 			# Ignore everything where the version part is not
#@ 			# acceptable to "package vcompare".
#@ 			continue
#@ 		    }
#@ 
#@ 		    if {[package ifneeded $pkgname $pkgversion] ne {}} {
#@ 			# There's already a provide script registered for
#@ 			# this version of this package.  Since all units of
#@ 			# code claiming to be the same version of the same
#@ 			# package ought to be identical, just stick with
#@ 			# the one we already have.
#@ 			continue
#@ 		    }
#@ 
#@ 		    # We have found a candidate, generate a "provide script"
#@ 		    # for it, and remember it.  Note that we are using ::list
#@ 		    # to do this; locally [list] means something else without
#@ 		    # the namespace specifier.
#@ 
#@ 		    # NOTE. When making changes to the format of the provide
#@ 		    # command generated below CHECK that the 'LOCATE'
#@ 		    # procedure in core file 'platform/shell.tcl' still
#@ 		    # understands it, or, if not, update its implementation
#@ 		    # appropriately.
#@ 		    #
#@ 		    # Right now LOCATE's implementation assumes that the path
#@ 		    # of the package file is the last element in the list.
#@ 
#@ 		    package ifneeded $pkgname $pkgversion 			"[::list package provide $pkgname $pkgversion];[::list source -encoding utf-8 $file]"
#@ 
#@ 		    # We abort in this unknown handler only if we got a
#@ 		    # satisfying candidate for the requested package.
#@ 		    # Otherwise we still have to fallback to the regular
#@ 		    # package search to complete the processing.
#@ 
#@ 		    if {($pkgname eq $name)
#@ 			    && [package vsatisfies $pkgversion {*}$args]} {
#@ 			set satisfied 1
#@ 
#@ 			# We do not abort the loop, and keep adding provide
#@ 			# scripts for every candidate in the directory, just
#@ 			# remember to not fall back to the regular search
#@ 			# anymore.
#@ 		    }
#@ 		}
#@ 	    }
#@ 	}
#@ 
#@ 	if {$satisfied} {
#@ 	    return
#@ 	}
#@     }
#@ 
#@     # Fallback to previous command, if existing.  See comment above about
#@     # ::list...
#@ 
#@     if {[llength $original]} {
#@ 	uplevel 1 $original [::linsert $args 0 $name]
#@     }
#@ }
#@ 
#@ # ::tcl::tm::Defaults --
#@ #
#@ #	Determines the default search paths.
#@ #
#@ # Arguments
#@ #	None
#@ #
#@ # Results
#@ #	None.
#@ #
#@ # Sideeffects
#@ #	May add paths to the list of defaults.
#@ 
#@ proc ::tcl::tm::Defaults {} {
#@     global env tcl_platform
#@ 
#@     lassign [split [info tclversion] .] major minor
#@     set exe [file normalize [info nameofexecutable]]
#@ 
#@     # Note that we're using [::list], not [list] because [list] means
#@     # something other than [::list] in this namespace.
#@     roots [::list 	    [file dirname [info library]] 	    [file join [file dirname [file dirname $exe]] lib] 	    ]
#@ 
#@     if {$tcl_platform(platform) eq "windows"} {
#@ 	set sep ";"
#@     } else {
#@ 	set sep ":"
#@     }
#@     for {set n $minor} {$n >= 0} {incr n -1} {
#@ 	foreach ev [::list 			TCL${major}.${n}_TM_PATH 			TCL${major}_${n}_TM_PATH         ] {
#@ 	    if {![info exists env($ev)]} continue
#@ 	    foreach p [split $env($ev) $sep] {
#@ 		path add $p
#@ 	    }
#@ 	}
#@     }
#@     return
#@ }
#@ 
#@ # ::tcl::tm::roots --
#@ #
#@ #	Public API to the module path. See specification.
#@ #
#@ # Arguments
#@ #	paths -	List of 'root' paths to derive search paths from.
#@ #
#@ # Results
#@ #	No result.
#@ #
#@ # Sideeffects
#@ #	Calls 'path add' to paths to the list of module search paths.
#@ 
#@ proc ::tcl::tm::roots {paths} {
#@     lassign [split [package present Tcl] .] major minor
#@     foreach pa $paths {
#@ 	set p [file join $pa tcl$major]
#@ 	for {set n $minor} {$n >= 0} {incr n -1} {
#@ 	    set px [file join $p ${major}.${n}]
#@ 	    if {![interp issafe]} {set px [file normalize $px]}
#@ 	    path add $px
#@ 	}
#@ 	set px [file join $p site-tcl]
#@ 	if {![interp issafe]} {set px [file normalize $px]}
#@ 	path add $px
#@     }
#@     return
#@ }
#@ 
#@ # Initialization. Set up the default paths, then insert the new handler into
#@ # the chain.
#@ 
#@ if {![interp issafe]} {::tcl::tm::Defaults}
#@ # -- End source /tools/synopsys/cst/N-2017.09-SP2/auxx/tcllib/lib/tcl8.6/tm.tcl

#@ # -- Starting source /tools/synopsys/cst/N-2017.09-SP2/auxx/tcllib/lib/tcl8.6/package.tcl

#@ # package.tcl --
#@ #
#@ # utility procs formerly in init.tcl which can be loaded on demand
#@ # for package management.
#@ #
#@ # Copyright (c) 1991-1993 The Regents of the University of California.
#@ # Copyright (c) 1994-1998 Sun Microsystems, Inc.
#@ #
#@ # See the file "license.terms" for information on usage and redistribution
#@ # of this file, and for a DISCLAIMER OF ALL WARRANTIES.
#@ #
#@ 
#@ namespace eval tcl::Pkg {}
#@ 
#@ # ::tcl::Pkg::CompareExtension --
#@ #
#@ # Used internally by pkg_mkIndex to compare the extension of a file to a given
#@ # extension. On Windows, it uses a case-insensitive comparison because the
#@ # file system can be file insensitive.
#@ #
#@ # Arguments:
#@ #  fileName	name of a file whose extension is compared
#@ #  ext		(optional) The extension to compare against; you must
#@ #		provide the starting dot.
#@ #		Defaults to [info sharedlibextension]
#@ #
#@ # Results:
#@ #  Returns 1 if the extension matches, 0 otherwise
#@ 
#@ proc tcl::Pkg::CompareExtension {fileName {ext {}}} {
#@     global tcl_platform
#@     if {$ext eq ""} {set ext [info sharedlibextension]}
#@     if {$tcl_platform(platform) eq "windows"} {
#@         return [string equal -nocase [file extension $fileName] $ext]
#@     } else {
#@         # Some unices add trailing numbers after the .so, so
#@         # we could have something like '.so.1.2'.
#@         set root $fileName
#@         while {1} {
#@             set currExt [file extension $root]
#@             if {$currExt eq $ext} {
#@                 return 1
#@             }
#@ 
#@ 	    # The current extension does not match; if it is not a numeric
#@ 	    # value, quit, as we are only looking to ignore version number
#@ 	    # extensions.  Otherwise we might return 1 in this case:
#@ 	    #		tcl::Pkg::CompareExtension foo.so.bar .so
#@ 	    # which should not match.
#@ 
#@ 	    if {![string is integer -strict [string range $currExt 1 end]]} {
#@ 		return 0
#@ 	    }
#@             set root [file rootname $root]
#@ 	}
#@     }
#@ }
#@ 
#@ # pkg_mkIndex --
#@ # This procedure creates a package index in a given directory.  The package
#@ # index consists of a "pkgIndex.tcl" file whose contents are a Tcl script that
#@ # sets up package information with "package require" commands.  The commands
#@ # describe all of the packages defined by the files given as arguments.
#@ #
#@ # Arguments:
#@ # -direct		(optional) If this flag is present, the generated
#@ #			code in pkgMkIndex.tcl will cause the package to be
#@ #			loaded when "package require" is executed, rather
#@ #			than lazily when the first reference to an exported
#@ #			procedure in the package is made.
#@ # -verbose		(optional) Verbose output; the name of each file that
#@ #			was successfully rocessed is printed out. Additionally,
#@ #			if processing of a file failed a message is printed.
#@ # -load pat		(optional) Preload any packages whose names match
#@ #			the pattern.  Used to handle DLLs that depend on
#@ #			other packages during their Init procedure.
#@ # dir -			Name of the directory in which to create the index.
#@ # args -		Any number of additional arguments, each giving
#@ #			a glob pattern that matches the names of one or
#@ #			more shared libraries or Tcl script files in
#@ #			dir.
#@ 
#@ proc pkg_mkIndex {args} {
#@     set usage {"pkg_mkIndex ?-direct? ?-lazy? ?-load pattern? ?-verbose? ?--? dir ?pattern ...?"}
#@ 
#@     set argCount [llength $args]
#@     if {$argCount < 1} {
#@ 	return -code error "wrong # args: should be\n$usage"
#@     }
#@ 
#@     set more ""
#@     set direct 1
#@     set doVerbose 0
#@     set loadPat ""
#@     for {set idx 0} {$idx < $argCount} {incr idx} {
#@ 	set flag [lindex $args $idx]
#@ 	switch -glob -- $flag {
#@ 	    -- {
#@ 		# done with the flags
#@ 		incr idx
#@ 		break
#@ 	    }
#@ 	    -verbose {
#@ 		set doVerbose 1
#@ 	    }
#@ 	    -lazy {
#@ 		set direct 0
#@ 		append more " -lazy"
#@ 	    }
#@ 	    -direct {
#@ 		append more " -direct"
#@ 	    }
#@ 	    -load {
#@ 		incr idx
#@ 		set loadPat [lindex $args $idx]
#@ 		append more " -load $loadPat"
#@ 	    }
#@ 	    -* {
#@ 		return -code error "unknown flag $flag: should be\n$usage"
#@ 	    }
#@ 	    default {
#@ 		# done with the flags
#@ 		break
#@ 	    }
#@ 	}
#@     }
#@ 
#@     set dir [lindex $args $idx]
#@     set patternList [lrange $args [expr {$idx + 1}] end]
#@     if {![llength $patternList]} {
#@ 	set patternList [list "*.tcl" "*[info sharedlibextension]"]
#@     }
#@ 
#@     try {
#@ 	set fileList [glob -directory $dir -tails -types {r f} -- 		{*}$patternList]
#@     } on error {msg opt} {
#@ 	return -options $opt $msg
#@     }
#@     foreach file $fileList {
#@ 	# For each file, figure out what commands and packages it provides.
#@ 	# To do this, create a child interpreter, load the file into the
#@ 	# interpreter, and get a list of the new commands and packages that
#@ 	# are defined.
#@ 
#@ 	if {$file eq "pkgIndex.tcl"} {
#@ 	    continue
#@ 	}
#@ 
#@ 	set c [interp create]
#@ 
#@ 	# Load into the child any packages currently loaded in the parent
#@ 	# interpreter that match the -load pattern.
#@ 
#@ 	if {$loadPat ne ""} {
#@ 	    if {$doVerbose} {
#@ 		tclLog "currently loaded packages: '[info loaded]'"
#@ 		tclLog "trying to load all packages matching $loadPat"
#@ 	    }
#@ 	    if {![llength [info loaded]]} {
#@ 		tclLog "warning: no packages are currently loaded, nothing"
#@ 		tclLog "can possibly match '$loadPat'"
#@ 	    }
#@ 	}
#@ 	foreach pkg [info loaded] {
#@ 	    if {![string match -nocase $loadPat [lindex $pkg 1]]} {
#@ 		continue
#@ 	    }
#@ 	    if {$doVerbose} {
#@ 		tclLog "package [lindex $pkg 1] matches '$loadPat'"
#@ 	    }
#@ 	    try {
#@ 		load [lindex $pkg 0] [lindex $pkg 1] $c
#@ 	    } on error err {
#@ 		if {$doVerbose} {
#@ 		    tclLog "warning: load [lindex $pkg 0]			    [lindex $pkg 1]\nfailed with: $err"
#@ 		}
#@ 	    } on ok {} {
#@ 		if {$doVerbose} {
#@ 		    tclLog "loaded [lindex $pkg 0] [lindex $pkg 1]"
#@ 		}
#@ 	    }
#@ 	    if {[lindex $pkg 1] eq "Tk"} {
#@ 		# Withdraw . if Tk was loaded, to avoid showing a window.
#@ 		$c eval [list wm withdraw .]
#@ 	    }
#@ 	}
#@ 
#@ 	$c eval {
#@ 	    # Stub out the package command so packages can require other
#@ 	    # packages.
#@ 
#@ 	    rename package __package_orig
#@ 	    proc package {what args} {
#@ 		switch -- $what {
#@ 		    require {
#@ 			return;		# Ignore transitive requires
#@ 		    }
#@ 		    default {
#@ 			__package_orig $what {*}$args
#@ 		    }
#@ 		}
#@ 	    }
#@ 	    proc tclPkgUnknown args {}
#@ 	    package unknown tclPkgUnknown
#@ 
#@ 	    # Stub out the unknown command so package can call into each other
#@ 	    # during their initialilzation.
#@ 
#@ 	    proc unknown {args} {}
#@ 
#@ 	    # Stub out the auto_import mechanism
#@ 
#@ 	    proc auto_import {args} {}
#@ 
#@ 	    # reserve the ::tcl namespace for support procs and temporary
#@ 	    # variables.  This might make it awkward to generate a
#@ 	    # pkgIndex.tcl file for the ::tcl namespace.
#@ 
#@ 	    namespace eval ::tcl {
#@ 		variable dir		;# Current directory being processed
#@ 		variable file		;# Current file being processed
#@ 		variable direct		;# -direct flag value
#@ 		variable x		;# Loop variable
#@ 		variable debug		;# For debugging
#@ 		variable type		;# "load" or "source", for -direct
#@ 		variable namespaces	;# Existing namespaces (e.g., ::tcl)
#@ 		variable packages	;# Existing packages (e.g., Tcl)
#@ 		variable origCmds	;# Existing commands
#@ 		variable newCmds	;# Newly created commands
#@ 		variable newPkgs {}	;# Newly created packages
#@ 	    }
#@ 	}
#@ 
#@ 	$c eval [list set ::tcl::dir $dir]
#@ 	$c eval [list set ::tcl::file $file]
#@ 	$c eval [list set ::tcl::direct $direct]
#@ 
#@ 	# Download needed procedures into the slave because we've just deleted
#@ 	# the unknown procedure.  This doesn't handle procedures with default
#@ 	# arguments.
#@ 
#@ 	foreach p {::tcl::Pkg::CompareExtension} {
#@ 	    $c eval [list namespace eval [namespace qualifiers $p] {}]
#@ 	    $c eval [list proc $p [info args $p] [info body $p]]
#@ 	}
#@ 
#@ 	try {
#@ 	    $c eval {
#@ 		set ::tcl::debug "loading or sourcing"
#@ 
#@ 		# we need to track command defined by each package even in the
#@ 		# -direct case, because they are needed internally by the
#@ 		# "partial pkgIndex.tcl" step above.
#@ 
#@ 		proc ::tcl::GetAllNamespaces {{root ::}} {
#@ 		    set list $root
#@ 		    foreach ns [namespace children $root] {
#@ 			lappend list {*}[::tcl::GetAllNamespaces $ns]
#@ 		    }
#@ 		    return $list
#@ 		}
#@ 
#@ 		# init the list of existing namespaces, packages, commands
#@ 
#@ 		foreach ::tcl::x [::tcl::GetAllNamespaces] {
#@ 		    set ::tcl::namespaces($::tcl::x) 1
#@ 		}
#@ 		foreach ::tcl::x [package names] {
#@ 		    if {[package provide $::tcl::x] ne ""} {
#@ 			set ::tcl::packages($::tcl::x) 1
#@ 		    }
#@ 		}
#@ 		set ::tcl::origCmds [info commands]
#@ 
#@ 		# Try to load the file if it has the shared library extension,
#@ 		# otherwise source it.  It's important not to try to load
#@ 		# files that aren't shared libraries, because on some systems
#@ 		# (like SunOS) the loader will abort the whole application
#@ 		# when it gets an error.
#@ 
#@ 		if {[::tcl::Pkg::CompareExtension $::tcl::file [info sharedlibextension]]} {
#@ 		    # The "file join ." command below is necessary.  Without
#@ 		    # it, if the file name has no \'s and we're on UNIX, the
#@ 		    # load command will invoke the LD_LIBRARY_PATH search
#@ 		    # mechanism, which could cause the wrong file to be used.
#@ 
#@ 		    set ::tcl::debug loading
#@ 		    load [file join $::tcl::dir $::tcl::file]
#@ 		    set ::tcl::type load
#@ 		} else {
#@ 		    set ::tcl::debug sourcing
#@ 		    source [file join $::tcl::dir $::tcl::file]
#@ 		    set ::tcl::type source
#@ 		}
#@ 
#@ 		# As a performance optimization, if we are creating direct
#@ 		# load packages, don't bother figuring out the set of commands
#@ 		# created by the new packages.  We only need that list for
#@ 		# setting up the autoloading used in the non-direct case.
#@ 		if {!$::tcl::direct} {
#@ 		    # See what new namespaces appeared, and import commands
#@ 		    # from them.  Only exported commands go into the index.
#@ 
#@ 		    foreach ::tcl::x [::tcl::GetAllNamespaces] {
#@ 			if {![info exists ::tcl::namespaces($::tcl::x)]} {
#@ 			    namespace import -force ${::tcl::x}::*
#@ 			}
#@ 
#@ 			# Figure out what commands appeared
#@ 
#@ 			foreach ::tcl::x [info commands] {
#@ 			    set ::tcl::newCmds($::tcl::x) 1
#@ 			}
#@ 			foreach ::tcl::x $::tcl::origCmds {
#@ 			    unset -nocomplain ::tcl::newCmds($::tcl::x)
#@ 			}
#@ 			foreach ::tcl::x [array names ::tcl::newCmds] {
#@ 			    # determine which namespace a command comes from
#@ 
#@ 			    set ::tcl::abs [namespace origin $::tcl::x]
#@ 
#@ 			    # special case so that global names have no
#@ 			    # leading ::, this is required by the unknown
#@ 			    # command
#@ 
#@ 			    set ::tcl::abs 				    [lindex [auto_qualify $::tcl::abs ::] 0]
#@ 
#@ 			    if {$::tcl::x ne $::tcl::abs} {
#@ 				# Name changed during qualification
#@ 
#@ 				set ::tcl::newCmds($::tcl::abs) 1
#@ 				unset ::tcl::newCmds($::tcl::x)
#@ 			    }
#@ 			}
#@ 		    }
#@ 		}
#@ 
#@ 		# Look through the packages that appeared, and if there is a
#@ 		# version provided, then record it
#@ 
#@ 		foreach ::tcl::x [package names] {
#@ 		    if {[package provide $::tcl::x] ne ""
#@ 			    && ![info exists ::tcl::packages($::tcl::x)]} {
#@ 			lappend ::tcl::newPkgs 			    [list $::tcl::x [package provide $::tcl::x]]
#@ 		    }
#@ 		}
#@ 	    }
#@ 	} on error msg {
#@ 	    set what [$c eval set ::tcl::debug]
#@ 	    if {$doVerbose} {
#@ 		tclLog "warning: error while $what $file: $msg"
#@ 	    }
#@ 	} on ok {} {
#@ 	    set what [$c eval set ::tcl::debug]
#@ 	    if {$doVerbose} {
#@ 		tclLog "successful $what of $file"
#@ 	    }
#@ 	    set type [$c eval set ::tcl::type]
#@ 	    set cmds [lsort [$c eval array names ::tcl::newCmds]]
#@ 	    set pkgs [$c eval set ::tcl::newPkgs]
#@ 	    if {$doVerbose} {
#@ 		if {!$direct} {
#@ 		    tclLog "commands provided were $cmds"
#@ 		}
#@ 		tclLog "packages provided were $pkgs"
#@ 	    }
#@ 	    if {[llength $pkgs] > 1} {
#@ 		tclLog "warning: \"$file\" provides more than one package ($pkgs)"
#@ 	    }
#@ 	    foreach pkg $pkgs {
#@ 		# cmds is empty/not used in the direct case
#@ 		lappend files($pkg) [list $file $type $cmds]
#@ 	    }
#@ 
#@ 	    if {$doVerbose} {
#@ 		tclLog "processed $file"
#@ 	    }
#@ 	}
#@ 	interp delete $c
#@     }
#@ 
#@     append index "# Tcl package index file, version 1.1\n"
#@     append index "# This file is generated by the \"pkg_mkIndex$more\" command\n"
#@     append index "# and sourced either when an application starts up or\n"
#@     append index "# by a \"package unknown\" script.  It invokes the\n"
#@     append index "# \"package ifneeded\" command to set up package-related\n"
#@     append index "# information so that packages will be loaded automatically\n"
#@     append index "# in response to \"package require\" commands.  When this\n"
#@     append index "# script is sourced, the variable \$dir must contain the\n"
#@     append index "# full path name of this file's directory.\n"
#@ 
#@     foreach pkg [lsort [array names files]] {
#@ 	set cmd {}
#@ 	lassign $pkg name version
#@ 	lappend cmd ::tcl::Pkg::Create -name $name -version $version
#@ 	foreach spec [lsort -index 0 $files($pkg)] {
#@ 	    foreach {file type procs} $spec {
#@ 		if {$direct} {
#@ 		    set procs {}
#@ 		}
#@ 		lappend cmd "-$type" [list $file $procs]
#@ 	    }
#@ 	}
#@ 	append index "\n[eval $cmd]"
#@     }
#@ 
#@     set f [open [file join $dir pkgIndex.tcl] w]
#@     puts $f $index
#@     close $f
#@ }
#@ 
#@ # tclPkgSetup --
#@ # This is a utility procedure use by pkgIndex.tcl files.  It is invoked as
#@ # part of a "package ifneeded" script.  It calls "package provide" to indicate
#@ # that a package is available, then sets entries in the auto_index array so
#@ # that the package's files will be auto-loaded when the commands are used.
#@ #
#@ # Arguments:
#@ # dir -			Directory containing all the files for this package.
#@ # pkg -			Name of the package (no version number).
#@ # version -		Version number for the package, such as 2.1.3.
#@ # files -		List of files that constitute the package.  Each
#@ #			element is a sub-list with three elements.  The first
#@ #			is the name of a file relative to $dir, the second is
#@ #			"load" or "source", indicating whether the file is a
#@ #			loadable binary or a script to source, and the third
#@ #			is a list of commands defined by this file.
#@ 
#@ proc tclPkgSetup {dir pkg version files} {
#@     global auto_index
#@ 
#@     package provide $pkg $version
#@     foreach fileInfo $files {
#@ 	set f [lindex $fileInfo 0]
#@ 	set type [lindex $fileInfo 1]
#@ 	foreach cmd [lindex $fileInfo 2] {
#@ 	    if {$type eq "load"} {
#@ 		set auto_index($cmd) [list load [file join $dir $f] $pkg]
#@ 	    } else {
#@ 		set auto_index($cmd) [list source [file join $dir $f]]
#@ 	    }
#@ 	}
#@     }
#@ }
#@ 
#@ # tclPkgUnknown --
#@ # This procedure provides the default for the "package unknown" function.  It
#@ # is invoked when a package that's needed can't be found.  It scans the
#@ # auto_path directories and their immediate children looking for pkgIndex.tcl
#@ # files and sources any such files that are found to setup the package
#@ # database. As it searches, it will recognize changes to the auto_path and
#@ # scan any new directories.
#@ #
#@ # Arguments:
#@ # name -		Name of desired package.  Not used.
#@ # version -		Version of desired package.  Not used.
#@ # exact -		Either "-exact" or omitted.  Not used.
#@ 
#@ proc tclPkgUnknown {name args} {
#@     global auto_path env
#@ 
#@     if {![info exists auto_path]} {
#@ 	return
#@     }
#@     # Cache the auto_path, because it may change while we run through the
#@     # first set of pkgIndex.tcl files
#@     set old_path [set use_path $auto_path]
#@     while {[llength $use_path]} {
#@ 	set dir [lindex $use_path end]
#@ 
#@ 	# Make sure we only scan each directory one time.
#@ 	if {[info exists tclSeenPath($dir)]} {
#@ 	    set use_path [lrange $use_path 0 end-1]
#@ 	    continue
#@ 	}
#@ 	set tclSeenPath($dir) 1
#@ 
#@ 	# we can't use glob in safe interps, so enclose the following in a
#@ 	# catch statement, where we get the pkgIndex files out of the
#@ 	# subdirectories
#@ 	catch {
#@ 	    foreach file [glob -directory $dir -join -nocomplain 		    * pkgIndex.tcl] {
#@ 		set dir [file dirname $file]
#@ 		if {![info exists procdDirs($dir)]} {
#@ 		    try {
#@ 			source $file
#@ 		    } trap {POSIX EACCES} {} {
#@ 			# $file was not readable; silently ignore
#@ 			continue
#@ 		    } on error msg {
#@ 			tclLog "error reading package index file $file: $msg"
#@ 		    } on ok {} {
#@ 			set procdDirs($dir) 1
#@ 		    }
#@ 		}
#@ 	    }
#@ 	}
#@ 	set dir [lindex $use_path end]
#@ 	if {![info exists procdDirs($dir)]} {
#@ 	    set file [file join $dir pkgIndex.tcl]
#@ 	    # safe interps usually don't have "file exists",
#@ 	    if {([interp issafe] || [file exists $file])} {
#@ 		try {
#@ 		    source $file
#@ 		} trap {POSIX EACCES} {} {
#@ 		    # $file was not readable; silently ignore
#@ 		    continue
#@ 		} on error msg {
#@ 		    tclLog "error reading package index file $file: $msg"
#@ 		} on ok {} {
#@ 		    set procdDirs($dir) 1
#@ 		}
#@ 	    }
#@ 	}
#@ 
#@ 	set use_path [lrange $use_path 0 end-1]
#@ 
#@ 	# Check whether any of the index scripts we [source]d above set a new
#@ 	# value for $::auto_path.  If so, then find any new directories on the
#@ 	# $::auto_path, and lappend them to the $use_path we are working from.
#@ 	# This gives index scripts the (arguably unwise) power to expand the
#@ 	# index script search path while the search is in progress.
#@ 	set index 0
#@ 	if {[llength $old_path] == [llength $auto_path]} {
#@ 	    foreach dir $auto_path old $old_path {
#@ 		if {$dir ne $old} {
#@ 		    # This entry in $::auto_path has changed.
#@ 		    break
#@ 		}
#@ 		incr index
#@ 	    }
#@ 	}
#@ 
#@ 	# $index now points to the first element of $auto_path that has
#@ 	# changed, or the beginning if $auto_path has changed length Scan the
#@ 	# new elements of $auto_path for directories to add to $use_path.
#@ 	# Don't add directories we've already seen, or ones already on the
#@ 	# $use_path.
#@ 	foreach dir [lrange $auto_path $index end] {
#@ 	    if {![info exists tclSeenPath($dir)] && ($dir ni $use_path)} {
#@ 		lappend use_path $dir
#@ 	    }
#@ 	}
#@ 	set old_path $auto_path
#@     }
#@ }
#@ 
#@ # tcl::MacOSXPkgUnknown --
#@ # This procedure extends the "package unknown" function for MacOSX.  It scans
#@ # the Resources/Scripts directories of the immediate children of the auto_path
#@ # directories for pkgIndex files.
#@ #
#@ # Arguments:
#@ # original -		original [package unknown] procedure
#@ # name -		Name of desired package.  Not used.
#@ # version -		Version of desired package.  Not used.
#@ # exact -		Either "-exact" or omitted.  Not used.
#@ 
#@ proc tcl::MacOSXPkgUnknown {original name args} {
#@     #  First do the cross-platform default search
#@     uplevel 1 $original [linsert $args 0 $name]
#@ 
#@     # Now do MacOSX specific searching
#@     global auto_path
#@ 
#@     if {![info exists auto_path]} {
#@ 	return
#@     }
#@     # Cache the auto_path, because it may change while we run through the
#@     # first set of pkgIndex.tcl files
#@     set old_path [set use_path $auto_path]
#@     while {[llength $use_path]} {
#@ 	set dir [lindex $use_path end]
#@ 
#@ 	# Make sure we only scan each directory one time.
#@ 	if {[info exists tclSeenPath($dir)]} {
#@ 	    set use_path [lrange $use_path 0 end-1]
#@ 	    continue
#@ 	}
#@ 	set tclSeenPath($dir) 1
#@ 
#@ 	# get the pkgIndex files out of the subdirectories
#@ 	foreach file [glob -directory $dir -join -nocomplain 		* Resources Scripts pkgIndex.tcl] {
#@ 	    set dir [file dirname $file]
#@ 	    if {![info exists procdDirs($dir)]} {
#@ 		try {
#@ 		    source $file
#@ 		} trap {POSIX EACCES} {} {
#@ 		    # $file was not readable; silently ignore
#@ 		    continue
#@ 		} on error msg {
#@ 		    tclLog "error reading package index file $file: $msg"
#@ 		} on ok {} {
#@ 		    set procdDirs($dir) 1
#@ 		}
#@ 	    }
#@ 	}
#@ 	set use_path [lrange $use_path 0 end-1]
#@ 
#@ 	# Check whether any of the index scripts we [source]d above set a new
#@ 	# value for $::auto_path.  If so, then find any new directories on the
#@ 	# $::auto_path, and lappend them to the $use_path we are working from.
#@ 	# This gives index scripts the (arguably unwise) power to expand the
#@ 	# index script search path while the search is in progress.
#@ 	set index 0
#@ 	if {[llength $old_path] == [llength $auto_path]} {
#@ 	    foreach dir $auto_path old $old_path {
#@ 		if {$dir ne $old} {
#@ 		    # This entry in $::auto_path has changed.
#@ 		    break
#@ 		}
#@ 		incr index
#@ 	    }
#@ 	}
#@ 
#@ 	# $index now points to the first element of $auto_path that has
#@ 	# changed, or the beginning if $auto_path has changed length Scan the
#@ 	# new elements of $auto_path for directories to add to $use_path.
#@ 	# Don't add directories we've already seen, or ones already on the
#@ 	# $use_path.
#@ 	foreach dir [lrange $auto_path $index end] {
#@ 	    if {![info exists tclSeenPath($dir)] && ($dir ni $use_path)} {
#@ 		lappend use_path $dir
#@ 	    }
#@ 	}
#@ 	set old_path $auto_path
#@     }
#@ }
#@ 
#@ # ::tcl::Pkg::Create --
#@ #
#@ #	Given a package specification generate a "package ifneeded" statement
#@ #	for the package, suitable for inclusion in a pkgIndex.tcl file.
#@ #
#@ # Arguments:
#@ #	args		arguments used by the Create function:
#@ #			-name		packageName
#@ #			-version	packageVersion
#@ #			-load		{filename ?{procs}?}
#@ #			...
#@ #			-source		{filename ?{procs}?}
#@ #			...
#@ #
#@ #			Any number of -load and -source parameters may be
#@ #			specified, so long as there is at least one -load or
#@ #			-source parameter.  If the procs component of a module
#@ #			specifier is left off, that module will be set up for
#@ #			direct loading; otherwise, it will be set up for lazy
#@ #			loading.  If both -source and -load are specified, the
#@ #			-load'ed files will be loaded first, followed by the
#@ #			-source'd files.
#@ #
#@ # Results:
#@ #	An appropriate "package ifneeded" statement for the package.
#@ 
#@ proc ::tcl::Pkg::Create {args} {
#@     append err(usage) "[lindex [info level 0] 0] "
#@     append err(usage) "-name packageName -version packageVersion"
#@     append err(usage) "?-load {filename ?{procs}?}? ... "
#@     append err(usage) "?-source {filename ?{procs}?}? ..."
#@ 
#@     set err(wrongNumArgs) "wrong # args: should be \"$err(usage)\""
#@     set err(valueMissing) "value for \"%s\" missing: should be \"$err(usage)\""
#@     set err(unknownOpt)   "unknown option \"%s\": should be \"$err(usage)\""
#@     set err(noLoadOrSource) "at least one of -load and -source must be given"
#@ 
#@     # process arguments
#@     set len [llength $args]
#@     if {$len < 6} {
#@ 	error $err(wrongNumArgs)
#@     }
#@ 
#@     # Initialize parameters
#@     array set opts {-name {} -version {} -source {} -load {}}
#@ 
#@     # process parameters
#@     for {set i 0} {$i < $len} {incr i} {
#@ 	set flag [lindex $args $i]
#@ 	incr i
#@ 	switch -glob -- $flag {
#@ 	    "-name"		-
#@ 	    "-version"		{
#@ 		if {$i >= $len} {
#@ 		    error [format $err(valueMissing) $flag]
#@ 		}
#@ 		set opts($flag) [lindex $args $i]
#@ 	    }
#@ 	    "-source"		-
#@ 	    "-load"		{
#@ 		if {$i >= $len} {
#@ 		    error [format $err(valueMissing) $flag]
#@ 		}
#@ 		lappend opts($flag) [lindex $args $i]
#@ 	    }
#@ 	    default {
#@ 		error [format $err(unknownOpt) [lindex $args $i]]
#@ 	    }
#@ 	}
#@     }
#@ 
#@     # Validate the parameters
#@     if {![llength $opts(-name)]} {
#@ 	error [format $err(valueMissing) "-name"]
#@     }
#@     if {![llength $opts(-version)]} {
#@ 	error [format $err(valueMissing) "-version"]
#@     }
#@ 
#@     if {!([llength $opts(-source)] || [llength $opts(-load)])} {
#@ 	error $err(noLoadOrSource)
#@     }
#@ 
#@     # OK, now everything is good.  Generate the package ifneeded statment.
#@     set cmdline "package ifneeded $opts(-name) $opts(-version) "
#@ 
#@     set cmdList {}
#@     set lazyFileList {}
#@ 
#@     # Handle -load and -source specs
#@     foreach key {load source} {
#@ 	foreach filespec $opts(-$key) {
#@ 	    lassign $filespec filename proclist
#@ 	    
#@ 	    if { [llength $proclist] == 0 } {
#@ 		set cmd "\[list $key \[file join \$dir [list $filename]\]\]"
#@ 		lappend cmdList $cmd
#@ 	    } else {
#@ 		lappend lazyFileList [list $filename $key $proclist]
#@ 	    }
#@ 	}
#@     }
#@ 
#@     if {[llength $lazyFileList]} {
#@ 	lappend cmdList "\[list tclPkgSetup \$dir $opts(-name)		$opts(-version) [list $lazyFileList]\]"
#@     }
#@     append cmdline [join $cmdList "\\n"]
#@     return $cmdline
#@ }
#@ 
#@ interp alias {} ::pkg::create {} ::tcl::Pkg::Create
#@ # -- End source /tools/synopsys/cst/N-2017.09-SP2/auxx/tcllib/lib/tcl8.6/package.tcl

#@ # -- Starting source /tools/synopsys/cst/N-2017.09-SP2/auxx/syn/lib/pkgIndex.tcl

#@ # Copyright (c) 2016 Synopsys, Inc. This Synopsys software and all
#@ # associated documentation are proprietary to Synopsys, Inc. and may
#@ # only be used pursuant to the terms and conditions of a written
#@ # license agreement with Synopsys, Inc. All other use, reproduction,
#@ # modification, or distribution of the Synopsys software or the
#@ # associated documentation is strictly prohibited.
#@ 
#@ package ifneeded cae        1.0 [list source [file join $dir syn.tcl]]
#@ package ifneeded cae::utils 1.0 [list source [file join $dir utils utils.tcl]]
#@ # -- End source /tools/synopsys/cst/N-2017.09-SP2/auxx/syn/lib/pkgIndex.tcl

#@ # -- Starting source /tools/synopsys/cst/N-2017.09-SP2/auxx/tcllib/lib/iwidgets4.1/pkgIndex.tcl

#@ # Tcl package index file
#@ package ifneeded iwidgets 4.1 "
#@   package require itk 4
#@    namespace eval ::iwidgets {
#@        namespace export *
#@        variable library [file dirname [info script]]
#@        variable version 4.1
#@   }
#@   source [file join $dir colors.itcl]
#@   source [file join $dir roman.itcl]
#@   source [file join $dir buttonbox.itk]
#@   source [file join $dir calendar.itk]
#@   source [file join $dir canvasprintbox.itk]
#@   source [file join $dir shell.itk]
#@   source [file join $dir dialogshell.itk]
#@   source [file join $dir dialog.itk]
#@   source [file join $dir canvasprintdialog.itk]
#@   source [file join $dir labeledframe.itk]
#@   source [file join $dir checkbox.itk]
#@   source [file join $dir labeledwidget.itk]
#@   source [file join $dir entryfield.itk]
#@   source [file join $dir combobox.itk]
#@   source [file join $dir datefield.itk]
#@   source [file join $dir dateentry.itk]
#@   source [file join $dir disjointlistbox.itk]
#@   source [file join $dir extbutton.itk]
#@   source [file join $dir extfileselectionbox.itk]
#@   source [file join $dir extfileselectiondialog.itk]
#@   source [file join $dir feedback.itk]
#@   source [file join $dir fileselectionbox.itk]
#@   source [file join $dir fileselectiondialog.itk]
#@   source [file join $dir finddialog.itk]
#@   source [file join $dir scrolledwidget.itk]
#@   source [file join $dir hierarchy.itk]
#@   source [file join $dir hyperhelp.itk]
#@   source [file join $dir mainwindow.itk]
#@   source [file join $dir menubar.itk]
#@   source [file join $dir messagebox.itk]
#@   source [file join $dir messagedialog.itk]
#@   source [file join $dir notebook.itk]
#@   source [file join $dir optionmenu.itk]
#@   source [file join $dir panedwindow.itk]
#@   source [file join $dir pane.itk]
#@   source [file join $dir promptdialog.itk]
#@   source [file join $dir pushbutton.itk]
#@   source [file join $dir radiobox.itk]
#@   source [file join $dir regexpfield.itk]
#@   source [file join $dir scrolledcanvas.itk]
#@   source [file join $dir scrolledframe.itk]
#@   source [file join $dir scrolledtext.itk]
#@   source [file join $dir scrolledhtml.itk]
#@   source [file join $dir scrolledlistbox.itk]
#@   source [file join $dir selectionbox.itk]
#@   source [file join $dir selectiondialog.itk]
#@   source [file join $dir spindate.itk]
#@   source [file join $dir spinner.itk]
#@   source [file join $dir spinint.itk]
#@   source [file join $dir spintime.itk]
#@   source [file join $dir tabnotebook.itk]
#@   source [file join $dir tabset.itk]
#@   source [file join $dir timefield.itk]
#@   source [file join $dir timeentry.itk]
#@   source [file join $dir toolbar.itk]
#@   source [file join $dir watch.itk]
#@   package provide iwidgets 4.1
#@ "
#@ 
#@ package ifneeded Iwidgets 4.1 "
#@   package require iwidgets 4.1
#@   package provide Iwidgets 4.1
#@ "
#@ # -- End source /tools/synopsys/cst/N-2017.09-SP2/auxx/tcllib/lib/iwidgets4.1/pkgIndex.tcl

#@ # -- Starting source /tools/synopsys/cst/N-2017.09-SP2/auxx/tcllib/snps_tcl/snpsUtils/pkgIndex.tcl

#@ # Tcl package index file, version 1.1
#@ # This file is generated by the "pkg_mkIndex -direct" command
#@ # and sourced either when an application starts up or
#@ # by a "package unknown" script.  It invokes the
#@ # "package ifneeded" command to set up package-related
#@ # information so that packages will be loaded automatically
#@ # in response to "package require" commands.  When this
#@ # script is sourced, the variable $dir must contain the
#@ # full path name of this file's directory.
#@ 
#@ package ifneeded snpsUtils 1.0 [list source [file join $dir snpsUtils.tcl]]
#@ # -- End source /tools/synopsys/cst/N-2017.09-SP2/auxx/tcllib/snps_tcl/snpsUtils/pkgIndex.tcl

#@ # -- Starting source /tools/synopsys/cst/N-2017.09-SP2/auxx/tcllib/snps_tcl/snpsTest/pkgIndex.tcl

#@ # Tcl package index file, version 1.1
#@ # This file is generated by the "pkg_mkIndex -direct" command
#@ # and sourced either when an application starts up or
#@ # by a "package unknown" script.  It invokes the
#@ # "package ifneeded" command to set up package-related
#@ # information so that packages will be loaded automatically
#@ # in response to "package require" commands.  When this
#@ # script is sourced, the variable $dir must contain the
#@ # full path name of this file's directory.
#@ 
#@ package ifneeded snpsTest 1.0 [list source [file join $dir snpsTest.tcl]]
#@ # -- End source /tools/synopsys/cst/N-2017.09-SP2/auxx/tcllib/snps_tcl/snpsTest/pkgIndex.tcl

#@ # -- Starting source /tools/synopsys/cst/N-2017.09-SP2/auxx/tcllib/snps_tcl/snpsTclPro/pkgIndex.tcl

#@ # Tcl package index file, version 1.1
#@ # This file is generated by the "pkg_mkIndex -direct" command
#@ # and sourced either when an application starts up or
#@ # by a "package unknown" script.  It invokes the
#@ # "package ifneeded" command to set up package-related
#@ # information so that packages will be loaded automatically
#@ # in response to "package require" commands.  When this
#@ # script is sourced, the variable $dir must contain the
#@ # full path name of this file's directory.
#@ 
#@ package ifneeded snpsTclPro 1.0 [list source [file join $dir			snpsTclPro.tcl]]
#@ # -- End source /tools/synopsys/cst/N-2017.09-SP2/auxx/tcllib/snps_tcl/snpsTclPro/pkgIndex.tcl

#@ # -- Starting source /tools/synopsys/cst/N-2017.09-SP2/auxx/tcllib/snps_tcl/pkgIndex.tcl

#@ package ifneeded Itcl 3.4 {load {} Itcl}
#@ package ifneeded tbcload 1.7 {load {} tbcload}
#@ # -- End source /tools/synopsys/cst/N-2017.09-SP2/auxx/tcllib/snps_tcl/pkgIndex.tcl

#@ # -- Starting source /tools/synopsys/cst/N-2017.09-SP2/auxx/tcllib/lib/tcl8.6/msgcat/pkgIndex.tcl

#@ if {![package vsatisfies [package provide Tcl] 8.5]} {return}
#@ package ifneeded msgcat 1.5.2 [list source [file join $dir msgcat.tcl]]
#@ # -- End source /tools/synopsys/cst/N-2017.09-SP2/auxx/tcllib/lib/tcl8.6/msgcat/pkgIndex.tcl

#@ # -- Starting source /tools/synopsys/cst/N-2017.09-SP2/auxx/tcllib/lib/tcl8.6/dde/pkgIndex.tcl

#@ if {([info commands ::tcl::pkgconfig] eq "")
#@ 	|| ([info sharedlibextension] ne ".dll")} return
#@ # -- End source /tools/synopsys/cst/N-2017.09-SP2/auxx/tcllib/lib/tcl8.6/dde/pkgIndex.tcl

#@ # -- Starting source /tools/synopsys/cst/N-2017.09-SP2/auxx/tcllib/lib/tcl8.6/opt/pkgIndex.tcl

#@ # Tcl package index file, version 1.1
#@ # This file is generated by the "pkg_mkIndex -direct" command
#@ # and sourced either when an application starts up or
#@ # by a "package unknown" script.  It invokes the
#@ # "package ifneeded" command to set up package-related
#@ # information so that packages will be loaded automatically
#@ # in response to "package require" commands.  When this
#@ # script is sourced, the variable $dir must contain the
#@ # full path name of this file's directory.
#@ 
#@ if {![package vsatisfies [package provide Tcl] 8.2]} {return}
#@ package ifneeded opt 0.4.6 [list source [file join $dir optparse.tcl]]
#@ # -- End source /tools/synopsys/cst/N-2017.09-SP2/auxx/tcllib/lib/tcl8.6/opt/pkgIndex.tcl

#@ # -- Starting source /tools/synopsys/cst/N-2017.09-SP2/auxx/tcllib/lib/tcl8.6/tcltest/pkgIndex.tcl

#@ # Tcl package index file, version 1.1
#@ # This file is generated by the "pkg_mkIndex -direct" command
#@ # and sourced either when an application starts up or
#@ # by a "package unknown" script.  It invokes the
#@ # "package ifneeded" command to set up package-related
#@ # information so that packages will be loaded automatically
#@ # in response to "package require" commands.  When this
#@ # script is sourced, the variable $dir must contain the
#@ # full path name of this file's directory.
#@ 
#@ if {![package vsatisfies [package provide Tcl] 8.5]} {return}
#@ package ifneeded tcltest 2.3.8 [list source [file join $dir tcltest.tcl]]
#@ # -- End source /tools/synopsys/cst/N-2017.09-SP2/auxx/tcllib/lib/tcl8.6/tcltest/pkgIndex.tcl

#@ # -- Starting source /tools/synopsys/cst/N-2017.09-SP2/auxx/tcllib/lib/tcl8.6/http1.0/pkgIndex.tcl

#@ # Tcl package index file, version 1.0
#@ # This file is generated by the "pkg_mkIndex" command
#@ # and sourced either when an application starts up or
#@ # by a "package unknown" script.  It invokes the
#@ # "package ifneeded" command to set up package-related
#@ # information so that packages will be loaded automatically
#@ # in response to "package require" commands.  When this
#@ # script is sourced, the variable $dir must contain the
#@ # full path name of this file's directory.
#@ 
#@ package ifneeded http 1.0 [list tclPkgSetup $dir http 1.0 {{http.tcl source {httpCopyDone httpCopyStart httpEof httpEvent httpFinish httpMapReply httpProxyRequired http_code http_config http_data http_formatQuery http_get http_reset http_size http_status http_wait}}}]
#@ # -- End source /tools/synopsys/cst/N-2017.09-SP2/auxx/tcllib/lib/tcl8.6/http1.0/pkgIndex.tcl

#@ # -- Starting source /tools/synopsys/cst/N-2017.09-SP2/auxx/tcllib/lib/tcl8.6/reg/pkgIndex.tcl

#@ if {([info commands ::tcl::pkgconfig] eq "")
#@ 	|| ([info sharedlibextension] ne ".dll")} return
#@ # -- End source /tools/synopsys/cst/N-2017.09-SP2/auxx/tcllib/lib/tcl8.6/reg/pkgIndex.tcl

#@ # -- Starting source /tools/synopsys/cst/N-2017.09-SP2/auxx/tcllib/lib/tcl8.6/platform/pkgIndex.tcl

#@ package ifneeded platform        1.0.13 [list source [file join $dir platform.tcl]]
#@ package ifneeded platform::shell 1.1.4 [list source [file join $dir shell.tcl]]
#@ 
#@ # -- End source /tools/synopsys/cst/N-2017.09-SP2/auxx/tcllib/lib/tcl8.6/platform/pkgIndex.tcl

#@ # -- Starting source /tools/synopsys/cst/N-2017.09-SP2/auxx/tcllib/lib/tcl8.6/http/pkgIndex.tcl

#@ if {![package vsatisfies [package provide Tcl] 8.6]} {return}
#@ package ifneeded http 2.8.8 [list tclPkgSetup $dir http 2.8.8 {{http.tcl source {::http::config ::http::formatQuery ::http::geturl ::http::reset ::http::wait ::http::register ::http::unregister ::http::mapReply}}}]
#@ # -- End source /tools/synopsys/cst/N-2017.09-SP2/auxx/tcllib/lib/tcl8.6/http/pkgIndex.tcl

#@ # -- Starting source /tools/synopsys/cst/N-2017.09-SP2/auxx/syn/lib/syn.tcl

#@ # Copyright (c) 2016 Synopsys, Inc. This Synopsys software and all
#@ # associated documentation are proprietary to Synopsys, Inc. and may
#@ # only be used pursuant to the terms and conditions of a written
#@ # license agreement with Synopsys, Inc. All other use, reproduction,
#@ # modification, or distribution of the Synopsys software or the
#@ # associated documentation is strictly prohibited.
#@ 
#@ # primary file of syn package
#@ 
#@ # require all the sub-packages (if any)
#@ 
#@ # name of the provided package
#@ 
#@ package provide cae 1.0
#@ 
#@ # create command group after loading sub packages
#@ # because last group is listed first by "help"
#@ 
#@ create_command_group "syn"     -info "synthesis utilities"
#@ 
#@ namespace eval ::cae {
#@     variable selfdir [file dirname [info script]]  
#@     variable scripts [list                           auto_path_groups.tcl                          ]
#@     variable script
#@ }
#@ 
#@ # source encrypted version if available
#@ # encrypted commands must use "define_proc_attributes -hide_body"
#@ 
#@ foreach ::cae::script ${::cae::scripts} {
#@     if { [file exists ${::cae::selfdir}/${::cae::script}.e] } {
#@         source ${::cae::selfdir}/${::cae::script}.e
#@     } else {
#@         source ${::cae::selfdir}/${::cae::script}
#@     }
#@ }
#@ # -- Starting source /tools/synopsys/cst/N-2017.09-SP2/auxx/syn/lib/auto_path_groups.tcl

#@ # Copyright (c) 2016-2017 Synopsys, Inc. This Synopsys software and all
#@ # associated documentation are proprietary to Synopsys, Inc. and may
#@ # only be used pursuant to the terms and conditions of a written
#@ # license agreement with Synopsys, Inc. All other use, reproduction,
#@ # modification, or distribution of the Synopsys software or the
#@ # associated documentation is strictly prohibited.
#@ 
#@ package require cae::utils
#@ # -- Starting source /tools/synopsys/cst/N-2017.09-SP2/auxx/syn/lib/utils/utils.tcl

#@ # Copyright (c) 2016 Synopsys, Inc. This Synopsys software and all
#@ # associated documentation are proprietary to Synopsys, Inc. and may
#@ # only be used pursuant to the terms and conditions of a written
#@ # license agreement with Synopsys, Inc. All other use, reproduction,
#@ # modification, or distribution of the Synopsys software or the
#@ # associated documentation is strictly prohibited.
#@ 
#@ # primary file of cae::utils package
#@ 
#@ # name of the provided package
#@ 
#@ package provide cae::utils 1.0
#@ 
#@ namespace eval ::cae::utils {
#@ }
#@ 
#@ proc ::cae::utils::msg { type s } {
#@     switch -glob -- ${type} {
#@         i* { return "INFO:    ${s}" }
#@         w* { return "WARNING: ${s}" }
#@         e* { return "ERROR:   ${s}" }
#@     }
#@     return
#@ }
#@ # -- End source /tools/synopsys/cst/N-2017.09-SP2/auxx/syn/lib/utils/utils.tcl

#@ 
#@ namespace eval ::cae {
#@     
#@     # note: check if these are all necessary
#@     variable auto_path_groups_messages {ATTR-3 OPT-806 OPT-774 UID-101 TIM-134 TIM-99 OPT-806 MWUI-203 MW-212 TIM-112}
#@     
#@     # default prefix for path groups
#@     variable auto_path_groups_prefix synopsys_pg_
#@     # default slack for path groups
#@     variable auto_path_groups_slack 0.0
#@     # default max for path groups
#@     variable auto_path_groups_max 0
#@     # default verbosity
#@     variable auto_path_groups_verbose false
#@     # default priority
#@     variable auto_path_groups_priority 1
#@     # default min_regs_per_hierarchy
#@     variable auto_path_groups_min_regs_per_hierarchy 10
#@     # registers path group suffix
#@     variable auto_path_groups_reg_suffix to_regs_
#@     # macro path group suffix
#@     variable auto_path_groups_to_macro_suffix to_macros_
#@     # macro path group suffix
#@     variable auto_path_groups_from_macro_suffix from_macros_
#@     # ICG path group suffix
#@     variable auto_path_groups_icg_suffix to_ICGs
#@     # input path group suffix
#@     variable auto_path_groups_input_suffix inputs
#@     # output path group suffix 
#@     variable auto_path_groups_output_suffix outputs
#@     # feedthrough path group suffix 
#@     variable auto_path_groups_feedthrough_suffix feedthrough
#@     # user path groups
#@     variable auto_path_groups_user_path_groups_file auto_path_groups.user_path_groups.tcl
#@ }
#@ 
#@ proc create_auto_path_groups { args } {
#@     variable ::cae::auto_path_groups_messages
#@     variable ::cae::auto_path_groups_prefix
#@     variable ::cae::auto_path_groups_slack
#@     variable ::cae::auto_path_groups_max
#@     variable ::cae::auto_path_groups_verbose
#@     variable ::cae::auto_path_groups_priority
#@     variable ::cae::auto_path_groups_min_regs_per_hierarchy
#@     variable ::cae::auto_path_groups_reg_suffix
#@     variable ::cae::auto_path_groups_to_macro_suffix
#@     variable ::cae::auto_path_groups_from_macro_suffix
#@     variable ::cae::auto_path_groups_icg_suffix
#@     variable ::cae::auto_path_groups_input_suffix
#@     variable ::cae::auto_path_groups_output_suffix
#@     variable ::cae::auto_path_groups_feedthrough_suffix
#@     variable ::cae::auto_path_groups_user_path_groups_file
#@     
#@     set options(-slack) ${auto_path_groups_slack}
#@     set options(-max) ${auto_path_groups_max}
#@     set options(-prefix) ${auto_path_groups_prefix}
#@     set options(-verbose) ${auto_path_groups_verbose}
#@     set options(-priority) ${auto_path_groups_priority}
#@     set options(-min_regs_per_hierarchy) ${auto_path_groups_min_regs_per_hierarchy}
#@     set options(-exclude) [list]
#@     set options(-user_path_groups_file) ${auto_path_groups_user_path_groups_file}
#@     
#@     parse_proc_arguments -args ${args} options
#@     
#@     if { [info exists options(-file)] } {
#@         if { [catch {open $options(-file) w} fileId] } {
#@             return -code error [::cae::utils::msg e ${fileId}]
#@         }
#@     }
#@     
#@     # save user path groups
#@     if { ![info exists options(-skip)] } {
#@         echo [::cae::utils::msg i "Saving user path groups to $options(-user_path_groups_file)..."]
#@         if { [file exist $options(-user_path_groups_file)] } {
#@             echo [::cae::utils::msg w "File $options(-user_path_groups_file) already exists and will be overwritten..."]
#@         }
#@         if { [catch {open "| grep \"^group_path\" > $options(-user_path_groups_file)" w} channelId] } {
#@             return -code error [::cae::utils::msg e ${channelId}]
#@         }
#@         redirect -channel ${channelId} { write_script -nosplit }
#@         set r [catch {close ${channelId}} msg]
#@         switch ${r} {
#@             0 { echo [::cae::utils::msg i "User path groups saved"] }
#@             1 { echo [::cae::utils::msg i "No user path groups to save"] }
#@             default { return -code error [::cae::utils::msg e ${msg}] }
#@         }
#@     }
#@ 
#@     set command "set allRegisters \[all_registers\]"
#@     echo [::cae::utils::msg i ${command}]
#@     if { [info exists options(-file)] } {
#@         puts ${fileId} ${command}
#@     }
#@     eval ${command}
#@     
#@     set total 0
#@     
#@     suppress_message ${auto_path_groups_messages}
#@     switch -- $options(-mode) {
#@         "rtl" {
#@             # create one path group per hierarchy
#@             
#@             echo [::cae::utils::msg i "Collecting hierarchies without optimize_registers..."]
#@             set optimize_registers_cells [get_cells -hier -filter {is_hierarchical==true && optimize_registers==true}]
#@             if { $options(-verbose) } {
#@                 set optimize_registers_cells_names [lsort [get_object_name ${optimize_registers_cells}]]
#@                 echo [::cae::utils::msg i "cells with optimize_registers: ${optimize_registers_cells_names}"]
#@             }
#@             set optimize_registers_sub_cells {}
#@             foreach_in_collection cell ${optimize_registers_cells} {
#@                 redirect -file /dev/null {current_instance ${cell}}
#@                 append_to_collection optimize_registers_sub_cells                     [get_cells -hier -filter {is_hierarchical==true && (optimize_registers==false || undefined(optimize_registers))}]
#@             }
#@             redirect -file /dev/null {current_instance}
#@             if { $options(-verbose) } {
#@                 set optimize_registers_sub_cells_names [lsort [get_object_name ${optimize_registers_sub_cells}]]
#@                 echo [::cae::utils::msg i "sub-cells of cells with optimize_registers: ${optimize_registers_sub_cells_names}"]
#@             }
#@             set path_group_cells [get_cells -hier -filter {is_hierarchical==true && is_sequential==true && (optimize_registers==false || undefined(optimize_registers))}]
#@             set path_group_cells [remove_from_collection ${path_group_cells} ${optimize_registers_sub_cells}]
#@             
#@             echo [::cae::utils::msg i "Collected [sizeof_collection ${path_group_cells}] hierarchies without optimize_registers"]
#@             
#@             set path_group_names [lsort [get_object_name ${path_group_cells}]]
#@             
#@             if { $options(-verbose) } {
#@                 echo [::cae::utils::msg i "cells for which path groups will be created:"]
#@                 foreach path_group_name ${path_group_names} {
#@                     echo [::cae::utils::msg i "  ${path_group_name}"]
#@                 }
#@             }
#@             
#@             echo [::cae::utils::msg i "Creating path groups for hierarchies without optimize_registers..."]
#@             set counter 0
#@             foreach path_group_name ${path_group_names} {
#@                 set number_of_registers [sizeof_collection [get_cells ${path_group_name}/* -filter "is_hierarchical==false && is_sequential==true"]]
#@                 if { ${number_of_registers} > $options(-min_regs_per_hierarchy) } {
#@                     echo [::cae::utils::msg i "Number of sequential cells found in ${path_group_name} hierarchy: ${number_of_registers}"]
#@                     set command "group_path -name $options(-prefix)${auto_path_groups_reg_suffix}${counter} -from \$\{allRegisters\} -to \[get_cells ${path_group_name}/* -filter \"is_hierarchical==false && is_sequential==true\"\] -priority $options(-priority)"
#@                     echo [::cae::utils::msg i ${command}]
#@                     if { [info exists options(-file)] } {
#@                         puts ${fileId} ${command}
#@                     }
#@                     eval ${command}
#@                     incr counter
#@                 } else {
#@                     echo [::cae::utils::msg i "Not enough sequential cells found in ${path_group_name} hierarchy (${number_of_registers}), skipping..."]
#@                 }
#@             }
#@             echo [::cae::utils::msg i "Number of reg path groups created: ${counter}"]
#@             set total [expr {${total} + ${counter}}]
#@         }
#@         "mapped" {
#@             # create one path group per hierarchy not meeting timing
#@             
#@             array unset fail
#@             echo [::cae::utils::msg i "Collecting hierarchies with timing violations..."]
#@             foreach_in_collection pin [all_registers -data_pins] {
#@                 set slack [get_attribute ${pin} max_slack]
#@                 if { ${slack} < $options(-slack) && ${slack} != "" } {
#@                     set cell [get_cells -of_objects ${pin}]
#@                     set full_name [get_attribute ${cell} full_name]
#@                     set name [get_attribute ${cell} name]
#@                     if {[string length ${full_name}] > [string length ${name}]} {
#@                         set length [expr [string length ${full_name}] - [string length ${name}] - 1]
#@                         set hierarchy [string range ${full_name} 0 [expr ${length} - 1]]
#@                     } else {
#@                         set hierarchy ""
#@                     }
#@                     if { ![info exists fail(${hierarchy})] || 
#@                          ([info exists fail(${hierarchy})] && ${slack} < $fail(${hierarchy})) } {
#@                         set fail(${hierarchy}) ${slack}
#@                     }
#@                 }
#@             }
#@             echo [::cae::utils::msg i "Collected [array size fail] hierarchies with timing violations"]                
#@             
#@             if { $options(-max) > 0 } {
#@                 echo [::cae::utils::msg i "Keeping only $options(-max) hierarchies with worst timing violations"]                
#@                 set hierarchy_slack_list [lsort -stride 2 -index 1 -real -increasing [array get fail]]
#@                 set hierarchy_slack_list [lrange ${hierarchy_slack_list} 0 [expr {2 * $options(-max) - 1}]]
#@                 array unset fail
#@                 array set fail ${hierarchy_slack_list}
#@             }
#@             
#@             set path_group_names [lsort [array names fail]]
#@             
#@             if { $options(-verbose) } {
#@                 echo [::cae::utils::msg i "hierarchies for which path groups will be created:"]
#@                 foreach path_group_name ${path_group_names} {
#@                     echo [::cae::utils::msg i "  ${path_group_name} $fail(${path_group_name})"]
#@                 }
#@             }
#@             
#@             echo [::cae::utils::msg i "Creating path groups for hierarchies with timing violations..."]
#@             set counter 0
#@             foreach path_group_name ${path_group_names} {
#@                 if { ${path_group_name} == "" } {
#@                     set command "group_path -name $options(-prefix)${auto_path_groups_reg_suffix}${counter} -from \$\{allRegisters\} -to \[get_cells * -filter {is_hierarchical==false && is_sequential==true}\] -priority $options(-priority)" 
#@                 } else {
#@                     set command "group_path -name $options(-prefix)${auto_path_groups_reg_suffix}${counter} -from \$\{allRegisters\} -to \[get_cells ${path_group_name}/* -filter {is_hierarchical==false && is_sequential==true}\] -priority $options(-priority)"
#@                 }
#@                 echo [::cae::utils::msg i ${command}]
#@                 if { [info exists options(-file)] } {
#@                     puts ${fileId} ${command}
#@                 }
#@                 eval ${command}
#@                 incr counter                 
#@             }            
#@             echo [::cae::utils::msg i "Number of reg path groups created: ${counter}"]
#@             set total [expr {${total} + ${counter}}]
#@ 
#@         }
#@         
#@     }
#@ 
#@     # macro path groups
#@     if { [lsearch $options(-exclude) macro] == -1} {
#@         echo [::cae::utils::msg i "Creating macro path groups..."]
#@         if { [shell_is_in_topographical_mode] } {
#@             #set macro_cells [all_macro_cells]
#@             set macro_cells [remove_from_collection [all_macro_cells] [get_cells -quiet -hier -all -filter "is_physical_only==true"]]
#@         } else {
#@             set macro_cells [get_cells -hier * -filter "is_macro_cell == true"]
#@         }
#@         if { [sizeof_collection ${macro_cells}] != 0 } {
#@             set path_group_names [get_object_name ${macro_cells}]
#@             set counter 0
#@             foreach path_group_name ${path_group_names} {
#@                 set command "group_path -name $options(-prefix)${auto_path_groups_to_macro_suffix}${counter} -from \$\{allRegisters\} -to \[get_cells ${path_group_name}\] -priority $options(-priority)"
#@                 echo [::cae::utils::msg i ${command}]
#@                 if { [info exists options(-file)] } {
#@                     puts ${fileId} ${command}
#@                 }
#@                 eval ${command}
#@                 incr counter
#@                 set command "group_path -name $options(-prefix)${auto_path_groups_from_macro_suffix}${counter} -from \[get_cells ${path_group_name}\] -to \$\{allRegisters\} -priority $options(-priority)"
#@                 echo [::cae::utils::msg i ${command}]
#@                 if { [info exists options(-file)] } {
#@                     puts ${fileId} ${command}
#@                 }
#@                 eval ${command}
#@                 incr counter
#@             }
#@             echo [::cae::utils::msg i "Number of macro path groups created: ${counter}"]
#@             set total [expr {${total} + ${counter}}]
#@         } else {
#@             echo [::cae::utils::msg i "No macro found, skipping..."]
#@         }
#@     }
#@     
#@     # ICG path groups
#@     if { [lsearch $options(-exclude) ICG] == -1} {
#@         echo [::cae::utils::msg i "Creating ICG path groups..."]
#@         set all_icg_cells [get_cells -hier -filter "full_name=~*latch || full_name=~*u_clkgate && defined(clock_gating_integrated_cell)"]
#@         if { [sizeof_collection ${all_icg_cells}] } {
#@             set counter 0
#@             set command "group_path -name $options(-prefix)${auto_path_groups_icg_suffix} -to \[get_cells -hier -filter \"full_name=~*latch || full_name=~*u_clkgate && defined(clock_gating_integrated_cell)\"\] -priority $options(-priority)"
#@             echo [::cae::utils::msg i ${command}]
#@             if { [info exists options(-file)] } {
#@                 puts ${fileId} ${command}
#@             }
#@             eval ${command}
#@             incr counter
#@             echo [::cae::utils::msg i "Number of ICG path groups created: ${counter}"]
#@             set total [expr {${total} + ${counter}}]
#@         } else {
#@             echo [::cae::utils::msg i "No ICG found, skipping..."]
#@         }
#@     }
#@     
#@     # IO path groups
#@     if { [lsearch $options(-exclude) IO] == -1} {
#@         echo [::cae::utils::msg i "Creating IO path groups..."]
#@         set counter 0
#@         set command "group_path -name $options(-prefix)${auto_path_groups_input_suffix} -from \[ remove_from_collection \[all_inputs\] \[get_ports \[get_attribute \[get_clocks -filter defined(sources)\] sources\]\] \]"
#@         echo [::cae::utils::msg i ${command}]
#@         if { [info exists options(-file)] } {
#@             puts ${fileId} ${command}
#@         }
#@         eval ${command}
#@         incr counter
#@         set command "group_path -name $options(-prefix)${auto_path_groups_output_suffix} -to \[all_outputs\]"
#@         echo [::cae::utils::msg i ${command}]
#@         if { [info exists options(-file)] } {
#@             puts ${fileId} ${command}
#@         }
#@         eval ${command}
#@         incr counter
#@         set command "group_path -name $options(-prefix)${auto_path_groups_feedthrough_suffix} -from \[ remove_from_collection \[all_inputs\] \[get_ports \[get_attribute \[get_clocks -filter defined(sources)\] sources\]\] \] -to \[all_outputs\]"
#@         echo [::cae::utils::msg i ${command}]
#@         if { [info exists options(-file)] } {
#@             puts ${fileId} ${command}
#@         }
#@         eval ${command}
#@         incr counter            
#@         echo [::cae::utils::msg i "Number of IO path groups created: ${counter}"]
#@         set total [expr {${total} + ${counter}}]
#@     }
#@     
#@     unsuppress_message ${auto_path_groups_messages}
#@     
#@     echo [::cae::utils::msg i "Total number of path groups created: ${total}"]
#@     
#@     if { [info exists options(-file)] } {
#@         close ${fileId}
#@     }
#@     
#@     return
#@ }
#@ 
#@ define_proc_attributes create_auto_path_groups     -command_group syn -dont_abbrev -hide_body     -info "Creates path groups for current design"     -define_args {
#@         { -mode "creates path groups for unmapped/mapped netlist" mode one_of_string {required value_help {values {rtl mapped}}} }
#@         { -exclude "excludes specific path groups (IO ICG macro) (default: empty list)" list list {optional} } 
#@         { -slack "slack value used to select hierarchy violating timing (default: 0.0) - mapped mode only" slack float optional }
#@         { -max "maximum number of paths groups (default: 0=unlimited) - mapped mode only" max int optional }
#@         { -min_regs_per_hierarchy "minimum number of registers per hierarchy (default: 10) - rtl mode only" min_regs int optional }
#@         { -prefix "path group name prefix (default: synopsys_pg_)" prefix string optional }
#@         { -file "file name to dump group_path commands" file_name string optional }
#@         { -verbose "verbose mode" "" boolean optional }
#@         { -user_path_groups_file "save user path groups to this file" file_name string optional }
#@         { -skip "do not save user path groups" "" boolean optional }
#@     }
#@ 
#@ proc remove_auto_path_groups { args } {
#@     variable ::cae::auto_path_groups_messages
#@     variable ::cae::auto_path_groups_prefix
#@     variable ::cae::auto_path_groups_verbose
#@     variable ::cae::auto_path_groups_user_path_groups_file
#@     
#@     set options(-prefix) ${auto_path_groups_prefix}
#@     set options(-verbose) ${auto_path_groups_verbose}
#@     set options(-user_path_groups_file) ${auto_path_groups_user_path_groups_file}
#@     
#@     parse_proc_arguments -args ${args} options
#@     
#@     if { [info exists options(-file)] } {
#@         if {[catch {open $options(-file) w } fileId] } {
#@             return -code error [::cae::utils::msg e ${fileId}]
#@         }
#@     }
#@     
#@     suppress_message ${auto_path_groups_messages}
#@     set path_group_names [get_object_name [get_path_group -filter "full_name =~ $options(-prefix)*"]]
#@     foreach path_group_name ${path_group_names} {
#@         set command "remove_path_group ${path_group_name}"
#@         echo [::cae::utils::msg i ${command}]
#@         if { [info exists options(-file)] } {
#@             puts ${fileId} ${command}
#@         }
#@         eval ${command}
#@     }
#@     echo [::cae::utils::msg i "Number of path groups removed: [llength ${path_group_names}]"]
#@     unsuppress_message ${auto_path_groups_messages}
#@     
#@     if { [info exists options(-file)] } {
#@         close ${fileId}
#@     }
#@     
#@     # restore user path groups
#@     if { ![info exists options(-skip)] } {
#@         echo [::cae::utils::msg i "Restoring user path groups from $options(-user_path_groups_file)..."]
#@         if { [file exist $options(-user_path_groups_file)] } {
#@             if { [file size $options(-user_path_groups_file)] != 0} {
#@                 source -continue_on_error $options(-user_path_groups_file)
#@             } else {
#@                 echo [::cae::utils::msg i "No user path groups to restore"]
#@             }
#@             file delete -force $options(-user_path_groups_file)
#@         } else {
#@             echo [::cae::utils::msg w "File $options(-user_path_groups_file) doesn't exist"]         
#@         }
#@     }
#@     
#@     return
#@ }
#@ 
#@ define_proc_attributes remove_auto_path_groups     -command_group syn -dont_abbrev -hide_body     -info "Removes path groups for current design"     -define_args {
#@         { -prefix "path group name prefix (default: synopsys_pg)" prefix string optional }
#@         { -file "file name to dump group_path commands" file_name string optional }
#@         { -verbose "verbose mode" "" boolean optional }
#@         { -user_path_groups_file "restore user path groups from this file" file_name string optional }
#@         { -skip "do not restore user path groups" "" boolean optional }
#@     }
#@ 
#@ # -- End source /tools/synopsys/cst/N-2017.09-SP2/auxx/syn/lib/auto_path_groups.tcl

#@ # -- End source /tools/synopsys/cst/N-2017.09-SP2/auxx/syn/lib/syn.tcl

#@ 
#@ if { [string compare $dc_shell_mode "tcl"] == 0 } {
#@  set sh_enable_line_editing       "true"
#@  set sh_line_editing_mode         "emacs"
#@ }
#@ 
#@ if {$synopsys_program_name == "icc_shell"} {
#@  if {"$sh_output_log_file" == ""} {
#@   set sh_output_log_file "icc_output.txt"
#@  }
#@ 
#@ ## the variable sh_redirect_progress_messages only makes it possible 
#@ ## for some commands to redirect progress messages to the log file,thereby
#@ ## bypassing the console and reducing the volume of messages on the console.
#@  set sh_redirect_progress_messages true
#@  }
#@ 
#@ 
#@ # Suppress new variable messages for the following variables
#@ array set auto_index {}
#@ set auto_oldpath ""
#@ 
#@ # Enable customer support banner on fatal
#@ if { $sh_arch == "linux"    || $sh_arch == "amd64"    || $sh_arch == "linux64" ||     $sh_arch == "suse32"   || $sh_arch == "suse64"   ||      $sh_arch == "sparcOS5" || $sh_arch == "sparc64"  ||      $sh_arch == "x86sol32" || $sh_arch == "x86sol64" ||      $sh_arch == "rs6000"   || $sh_arch == "aix64" } {
#@    setenv SYNOPSYS_TRACE ""
#@ }
#@ 
#@ #
#@ # Load the procedures which make up part of the user interface.
#@ #
#@ if { [string compare $dc_shell_mode "tcl"] == 0 } {
#@   source $synopsys_root/auxx/syn/.dc_common_procs.tcl
#@   if {$synopsys_program_name != "dc_sms_shell"} {
#@     source $synopsys_root/auxx/syn/.dc_procs.tcl
#@   }
#@   alias list_commands help
#@ }
#@ # -- Starting source /tools/synopsys/cst/N-2017.09-SP2/auxx/syn/.dc_common_procs.tcl

#@ ##############################################################################
#@ #
#@ #
#@ # FILE:         auxx/syn/.dc_common_procs.tcl
#@ #
#@ # ABSTRACT:     These procedures are part of the PrimeTime and DC
#@ #               user interface.
#@ #               They are loaded by .synopsys_pt.setup and .synopsys_dc.setup.
#@ #
#@ ##############################################################################
#@ #
#@ #
#@ 
#@ 
#@ ##############################################################################
#@ #
#@ #
#@ #  PROCEDURE:   group_variable
#@ #
#@ #  ABSTRACT:    Add a variable to the specified variable group.
#@ #               This command is typically used by the system
#@ #               administrator only.
#@ #
#@ #               Below the proc is the command which creates the command
#@ #               help information and semantic data for the argument.
#@ #
#@ #  RETURNS:     1 if it is successful.
#@ #               error code if the variable does not exist.
#@ #               error code of the variable is already in the group.
#@ #
#@ #  SYNTAX:      group_variable group_name variable_name
#@ #
#@ ##############################################################################
#@ #
#@ 
#@ 
#@ proc group_variable { args } {
#@   global _Variable_Groups
#@ 
#@   parse_proc_arguments -args $args resarr
#@   set group $resarr(group)
#@   set var $resarr(variable_name)
#@ 
#@   if { ![info exists _Variable_Groups($group)] } {
#@    set _Variable_Groups($group) ""
#@   }
#@ 
#@   # Verify that var exists as a global variable
#@ 
#@   set cmd "uplevel #0 \{info exists $var\}"
#@   if { ![eval $cmd] } {
#@     return -code error "Variable '$var' is not defined."
#@   }
#@ 
#@   # Only add it if it's not already there
#@ 
#@   if { [lsearch $_Variable_Groups($group) $var] == -1 } {
#@     lappend _Variable_Groups($group) $var
#@   }
#@ 
#@   return 1
#@ }
#@ 
#@ define_proc_attributes group_variable     -info "Add a variable to a variable group"      -command_group "Builtins" -permanent -dont_abbrev     -define_args { 
#@       {group "Variable group name" group}
#@       {variable_name "Variable name" variable_name}}
#@ 
#@ ##############################################################################
#@ #
#@ #
#@ #  PROCEDURE:   print_variable_group
#@ #
#@ #  ABSTRACT:    Shows variables and their values defined in the given group.
#@ 
#@ #
#@ #               Below the proc is the command which creates the command
#@ #               help information and semantic data for the argument.
#@ #
#@ #  RETURNS:     1 if it is successful.
#@ #               error code of the variable group does not exist.
#@ #
#@ #  SYNTAX:      print_variable_group group_name
#@ #
#@ ##############################################################################
#@ #
#@ 
#@ proc print_variable_group { args } {
#@   global _Variable_Groups
#@ 
#@   parse_proc_arguments -args $args resarr
#@   set group $resarr(group)
#@ 
#@   if { [string compare $group "all"] == 0 } {
#@     set cmd "uplevel #0 \{printvar\}"
#@     return [eval $cmd]
#@   }
#@ 
#@   if { ![info exists _Variable_Groups($group)] } {
#@     return -code error "Variable group '$group' does not exist."
#@   }
#@ 
#@   # Print out each global variable in the list. To be totally bulletproof, 
#@   # test that each variable in the group is still defined.  If not, remove 
#@   # it from the list.
#@  
#@   foreach var [lsort $_Variable_Groups($group)] {
#@     set cmd "uplevel #0 \{info exists $var\}"
#@     if { ![eval $cmd] } {
#@       # Remove it
#@       set n [lsearch $_Variable_Groups($group) $var]
#@       set $_Variable_Groups($group) [lreplace $_Variable_Groups($group) $n $n]
#@     } else {
#@       # Print it.
#@       set cmd "uplevel #0 \{set $var\}"
#@       set val [eval $cmd]
#@       echo [format "%-25s = \"%s\"" $var $val]
#@     }
#@   }
#@ 
#@   return 1
#@ }
#@ 
#@ define_proc_attributes print_variable_group     -info "Print the contents of a variable group"      -command_group "Builtins" -permanent      -define_args {{group "Variable group name" group}}
#@ 
#@ 
#@ 
#@ ##############################################################################
#@ #
#@ #
#@ #  PROCEDURE:   _Variable_Groups_Get_Groups
#@ #
#@ #  ABSTRACT:    Return a list of all variable groups. This command is hidden
#@ #               and is used by Design Vision.
#@ #
#@ #   RETURNS:    Tcl list of all variable groups including group all
#@ #
#@ #  SYNTAX:      _Variable_Groups_Get_Groups
#@ ##############################################################################
#@ #
#@ 
#@ proc _Variable_Groups_Get_Groups { } {
#@    global _Variable_Groups
#@ 
#@    set groups  [array names _Variable_Groups]
#@    append groups " all"
#@    return $groups
#@ }
#@ define_proc_attributes _Variable_Groups_Get_Groups -hidden
#@ 
#@ 
#@ ##############################################################################
#@ #
#@ #
#@ #  PROCEDURE:   _Variable_Groups_Get_Variables_Of_Group
#@ #
#@ #  ABSTRACT:    Return a list of all variables of a variable group.
#@ #               It also works for pseudo group all.
#@ #
#@ #   RETURNS:    Tcl list of all variables of a variable group including
#@ #               pseudo group all
#@ #
#@ #  SYNTAX:      _Variable_Groups_Get_Groups
#@ ##############################################################################
#@ #
#@ 
#@ proc _Variable_Groups_Get_Variables_Of_Group { group } {
#@   global _Variable_Groups
#@ 
#@   if { [string compare $group "all"] == 0 } {
#@     set itr [array startsearch _Variable_Groups]
#@     for {  } { [array anymore _Variable_Groups $itr]} { } {
#@       set index [array nextelement _Variable_Groups $itr]
#@       append vars $_Variable_Groups($index)
#@     }
#@     array donesearch _Variable_Groups $itr
#@     return $vars
#@   }
#@ 
#@   if { ![info exists _Variable_Groups($group)] } {
#@     return -code error "Variable group '$group' does not exist."
#@   }
#@ 
#@   # Test if all variables in the list of variables are still defined.
#@   # Remove not existing variables.
#@   foreach var [lsort $_Variable_Groups($group)] {
#@     set cmd "uplevel #0 \{info exists $var\}"
#@     if { ![eval $cmd] } {
#@       # Remove it
#@       set n [lsearch $_Variable_Groups($group) $var]
#@       set $_Variable_Groups($group) [lreplace $_Variable_Groups($group) $n $n]
#@     }
#@   }
#@   return $_Variable_Groups($group)
#@ }
#@ define_proc_attributes _Variable_Groups_Get_Variables_Of_Group -hidden
#@ 
#@ # -- End source /tools/synopsys/cst/N-2017.09-SP2/auxx/syn/.dc_common_procs.tcl

#@ # -- Starting source /tools/synopsys/cst/N-2017.09-SP2/auxx/syn/.dc_procs.tcl

#@ ##############################################################################
#@ #
#@ #
#@ # FILE:         auxx/syn/.dc_procs.tcl
#@ #
#@ # ABSTRACT:     These procedures are part of the Design Compiler Tcl 
#@ #               user interface.
#@ #               They are loaded by .synopsys_dc.setup.
#@ #
#@ ##############################################################################
#@ #
#@ #
#@ 
#@ ##############################################################################
#@ #
#@ #
#@ #  PROCEDURE:  read_verilog
#@ #
#@ #  ABSTRACT:   Emulate PT's read_verilog command in DC:
#@ #
#@ #  Usage:      read_verilog         #  Read one or more verilog files 
#@ #                *[-hdl_compiler]       (Use HDL Compiler (ignored))
#@ #                file_names             (Files to read)
#@ #
#@ #  Modified: Bharat 11/17/99. Use uplevel to ensure that the command
#@ #            sees user/hidden variables from the top level. Star 92970.
#@ #
#@ #  Modified: Evan Rosser, 12/5/01. Support -netlist and -rtl flags.
#@ #
#@ ##############################################################################
#@ #
#@ 
#@ if { $synopsys_program_name != "icc_shell" } {
#@ proc read_verilog { args } {
#@   parse_proc_arguments -args $args ra
#@ 
#@   set cmd [format {read_file -format verilog %s %s [list %s]}                      [array names ra -rtl]                      [array names ra -netlist]                      $ra(file_names)]
#@   return [uplevel #0 $cmd]
#@ }
#@ 
#@ define_proc_attributes read_verilog     -info " Read one or more verilog files"     -permanent     -define_args {
#@       {file_names "Files to read" file_names list required}
#@    {-netlist "Use structural Verilog netlist reader" "" boolean optional}
#@    {-rtl "Use RTL Verilog compiler (Presto or HDLC)" "" boolean optional}
#@    {-hdl_compiler "Use HDL Compiler (ignored)" "" boolean {hidden optional}}
#@ }
#@ }
#@ 
#@ ##############################################################################
#@ #
#@ #
#@ #  PROCEDURE:  read_sverilog
#@ #
#@ #  ABSTRACT:   Emulate PT's read_sverilog command in DC:
#@ #
#@ #  Usage:      read_sverilog         #  Read one or more systemverilog files 
#@ #                *[-hdl_compiler]       (Use HDL Compiler (ignored))
#@ #                file_names             (Files to read)
#@ #
#@ #  Modified: Yong Xiao, 01/31/2003: Copied from read_verilog to support 
#@ #            systemverilog input. 
#@ #
#@ ##############################################################################
#@ #
#@ 
#@ proc read_sverilog { args } {
#@   parse_proc_arguments -args $args ra
#@ 
#@   set cmd [format {read_file -format sverilog %s %s [list %s]}                      [array names ra -rtl]                      [array names ra -netlist]                      $ra(file_names)]
#@   return [uplevel #0 $cmd]
#@ }
#@ 
#@ define_proc_attributes read_sverilog     -info " Read one or more systemverilog files"     -permanent     -define_args {
#@       {file_names "Files to read" file_names list required}
#@    {-netlist "Use structural Verilog netlist reader" "" boolean optional}
#@    {-rtl "Use RTL Systemverilog compiler (Presto or HDLC)" "" boolean optional}
#@    {-hdl_compiler "Use HDL Compiler (ignored)" "" boolean {hidden optional}}
#@ }
#@ 
#@ ##############################################################################
#@ #
#@ #
#@ #  PROCEDURE: read_vhdl
#@ #
#@ #  ABSTRACT:  Emulate PT's read_vhdl command in DC:
#@ #
#@ #  Usage:     read_vhdl            #  Read one or more vhdl files
#@ #               file_names             (Files to read)
#@ #
#@ #
#@ ##############################################################################
#@ #
#@ 
#@ proc read_vhdl { args } {
#@   parse_proc_arguments -args $args ra
#@ 
#@   set cmd [format {read_file -format vhdl %s [list %s]} 	       [array names ra -netlist] 	       $ra(file_names)]
#@   return [uplevel #0 $cmd]
#@ }
#@ 
#@ define_proc_attributes read_vhdl     -info " Read one or more vhdl files"     -permanent     -define_args {
#@ 	{file_names "Files to read" file_names list required}
#@ 	{-netlist "Use structural VHDL netlist reader" "" boolean optional}
#@ }
#@ 
#@ ##############################################################################
#@ #
#@ #
#@ #  PROCEDURE:   read_db
#@ #
#@ #  ABSTRACT:    Emulate PT's read_db command in DC:
#@ #
#@ #  Usage: 
#@ #     read_db              #  Read one or more db files
#@ #       *[-netlist_only]       (Do not read any attributes from db (ignored))
#@ #       *[-library]            (File is a library DB (ignored))
#@ #      file_names             (Files to read)
#@ #
#@ #
#@ ##############################################################################
#@ #
#@ 
#@ proc read_db { args } {
#@   parse_proc_arguments -args $args ra
#@ 
#@   set cmd [format {read_file -format db  [list %s]} $ra(file_names)]
#@   return [uplevel #0 $cmd]
#@ }
#@ 
#@ define_proc_attributes read_db     -info " Read one or more db files"     -permanent    -define_args {
#@       {file_names "Files to read" file_names list required}
#@       {-netlist_only "Do not read any attributes from db (ignored)" "" boolean {hidden optional}}
#@       {-library "File is a library DB (ignored)" "" boolean {hidden optional}}
#@      }
#@ 
#@ ##############################################################################
#@ #
#@ #
#@ #  PROCEDURE:   read_edif
#@ #
#@ #  ABSTRACT:    Emulate PT's read_edif command in DC: 
#@ #
#@ #  Usage:     
#@ #      read_edif            #  Read one or more edif files
#@ #        *[-complete_language]  (Use ptxr to read the file (ignored))
#@ #        file_names             (Files to read)
#@ #
#@ #
#@ ##############################################################################
#@ #
#@ proc read_edif { args } {
#@   parse_proc_arguments -args $args ra
#@ 
#@   set cmd [format {read_file -format edif  [list %s]} $ra(file_names)]
#@   return [uplevel #0 $cmd]
#@ }
#@ 
#@ define_proc_attributes read_edif     -info " Read one or more edif files"     -permanent     -define_args {
#@       {file_names "Files to read" file_names list required}
#@       {-complete_language "Use ptxr to read the file (ignored)" "" boolean {hidden optional}}
#@ }
#@ 
#@ 
#@ ##############################################################################
#@ #
#@ #
#@ #  PROCEDURE:   read_ddc
#@ #
#@ #  ABSTRACT:    Shorthand for "read_file -format ddc":
#@ #
#@ #  Usage: 
#@ #     read_ddc             #  Read one or more ddc files
#@ #      *[-scenarios]		only read constraints for specified scenarios
#@ #      *[-active_scenarios]     only activate the specified scenarios
#@ #      file_names             (Files to read)
#@ #
#@ #
#@ ##############################################################################
#@ #
#@ 
#@ proc read_ddc { args } {
#@   parse_proc_arguments -args $args ra
#@ 
#@   set cmd "read_file -format ddc"
#@   if { [ info exists ra(-scenarios) ] } {
#@     set cmd "$cmd -scenarios { $ra(-scenarios) }"
#@   }
#@   if { [ info exists ra(-active_scenarios) ] } {
#@     set cmd "$cmd -active_scenarios { $ra(-active_scenarios) }"
#@   }
#@   set cmd "$cmd { $ra(file_names) }"
#@   return [uplevel \#0 $cmd]
#@ }
#@ 
#@ define_proc_attributes read_ddc     -info "Read one or more ddc files"     -permanent     -define_args {
#@       {file_names "Files to read" file_names list required}
#@       {-scenarios "list of scenarios to be read from ddc file"
#@ 	  scenario_list list optional}
#@       {-active_scenarios "list of scenarios to be made active"
#@ 	  active_scenario_list list optional}}
#@ 
#@ 
#@ 
#@ ##############################################################################
#@ #
#@ #  PROCEDURE:   source_tcl_file
#@ #
#@ #  ABSTRACT:    generic procedure to source another tcl file
#@ #
#@ #  Arguments:
#@ #               filename    tcl filename
#@ #               dir         directory to check for file
#@ #               msg         verbose message
#@ #               verbose     verbose mode
#@ #
#@ #  Usage:     
#@ #
#@ ##############################################################################
#@ #
#@ proc source_tcl_file { filename dir msg {verbose 1} } {
#@     set __qual_pref_file [file join $dir $filename]
#@     if {[file exists  $__qual_pref_file]} {
#@       if { $verbose } {
#@         echo $msg $__qual_pref_file
#@       }
#@       # use catch to recover from errors in the pref file
#@       echo_trace "Sourcing " $__qual_pref_file
#@       # to speed up sourcing use read and eval
#@       set f [open $__qual_pref_file]
#@       if {[catch {namespace eval :: [read -nonewline $f]} __msg]} {
#@           echo Error: Error during sourcing of $__qual_pref_file
#@           if {$__msg != ""}  { echo $__msg }
#@           # actually, it looks like $__msg is always null after
#@           # source fails
#@       }
#@       close $f
#@     } else {
#@       echo_trace "Info: File '" $__qual_pref_file "' does not exist!"
#@     }
#@ }
#@ define_proc_attributes source_tcl_file -hidden
#@ 
#@ 
#@ 
#@ ##############################################################################
#@ #
#@ #  PROCEDURE:   echo_trace
#@ #
#@ #  ABSTRACT:    echo only in trace modus
#@ #
#@ ##############################################################################
#@ #
#@ proc echo_trace { args } {
#@   if { [info exists ::env(TCL_TRACE)] } {
#@     echo  TRACE\> [join $args "" ]
#@   }
#@ }
#@ define_proc_attributes echo_trace -hidden
#@ 
#@ #############################################################################
#@ #
#@ # Following procedures added for PC write_script
#@ #
#@ #
#@ #
#@ ############################################################################
#@ 
#@ proc set_cell_restriction { args } {
#@   parse_proc_arguments -args $args ra
#@ 
#@     set cmd [format {set_attribute %s -type integer restrictions %s }     	$ra(cell)     	$ra(value)]
#@     return [uplevel #0 $cmd]
#@ 
#@ }
#@ define_proc_attributes set_cell_restriction -hidden   -define_args {            {cell "cell_name" cell string required} 	   {value   "value" value string required}    }
#@ 
#@ 
#@ proc set_cell_soft_keepout {args} {
#@   parse_proc_arguments -args $args ra
#@ 
#@     set cmd [format {set_keepout_margin -type soft -outer {%d %d %d %d} [list %s] }         $ra(llx)         $ra(lly)         $ra(urx)         $ra(ury)     	$ra(objects)]
#@     return [uplevel #0 $cmd]
#@ 
#@ 
#@ }
#@ 
#@ define_proc_attributes set_cell_soft_keepout -hidden  -define_args {          {llx "llx" llx float required}          {lly "lly" lly float required}          {urx "urx" urx float required}          {ury "ury" ury float required}          {objects "objects" objects list  required}  }
#@ 
#@ proc set_cell_hard_keepout {args} {
#@   parse_proc_arguments -args $args ra
#@ 
#@     set cmd [format {set_keepout_margin -type soft -outer {%d %d %d %d} [list %s] }         $ra(llx)         $ra(lly)         $ra(urx)         $ra(ury)     	$ra(objects)]
#@     return [uplevel #0 $cmd]
#@ 
#@ 
#@ }
#@ 
#@ define_proc_attributes set_cell_hard_keepout -hidden  -define_args {          {llx "llx" llx float required}          {lly "lly" lly float required}          {urx "urx" urx float required}          {ury "ury" ury float required}          {objects "objects" objects list  required}  }
#@ 
#@ set mw_use_pdb_lib_format false
#@ 
#@ ##############################################################################
#@ #
#@ #  PROCEDURE:   write_milkyway
#@ #
#@ #  ABSTRACT:    wrapper around save_mw_cel to support original write_milkyway
#@ #               interface
#@ # if { [info commands open_mw_cel] == "open_mw_cel" } {}
#@ #
#@ ##############################################################################
#@ 
#@ if { [string match -nocase {*icc_shell*} $synopsys_program_name] } {
#@ 
#@ proc write_milkyway args {
#@ 
#@   parse_proc_arguments -args $args ra
#@ 
#@   set cmd [format {save_mw_cel -as %s %s %s %s %s}                      $ra(-output)                     [array names ra -overwrite]                      [array names ra -create]                      [array names ra -all]                      [array names ra -dps]]
#@   return [uplevel #0 $cmd]
#@ }
#@ 
#@ define_proc_attributes write_milkyway -hidden     -info " Saves the design as milkyway CEL"     -define_args       {{-output fileName "Name" string {optional}}       {-overwrite "Overwrite the current version" "" boolean {optional}}       {-create "Create from scratch" "" boolean {hidden optional}}       {-all "Save all modified cells" "" boolean {hidden optional}}       {-dps "Save internal DPS design" "" boolean {hidden optional}}}
#@ 
#@ ##############################################################################
#@ #
#@ #  PROCEDURE:   read_milkyway
#@ #
#@ #  ABSTRACT:    wrapper around open_mw_cel to support original read_milkyway
#@ #               interface
#@ #  MODIFIED:    To support DPS in Galileo we need to pass the filtering
#@ #               parameters to the DPS command. (Pankaj Goswami, Mar09 2005)
#@ #
#@ ##############################################################################
#@ 
#@ proc read_milkyway args {
#@ 
#@   parse_proc_arguments -args $args ra
#@ 
#@   set cmd [format {open_mw_cel %s}                      $ra() ]
#@ 
#@   if {[info exists ra(-library)]} {
#@     set cmd [concat [concat $cmd " -library " ] " $ra(-library) "]
#@   }
#@ 
#@   if {[info exists ra(-read_only)]} {
#@     lappend cmd {-readonly}
#@   }
#@ 
#@ # DPS specific stuff
#@   set dps_cmd "vh_set_current_partition "
#@   set read_mw_with_dps_filter false
#@                                                                                                                                              
#@   if {[info exists ra(-vh_module_only)]} {
#@      append dps_cmd "-vh_module_only "
#@      set read_mw_with_dps_filter true
#@   }
#@                                                                                                                                              
#@   if {[info exists ra(-vh_include)]} {
#@      append dps_cmd [concat " -vh_include " " \{ $ra(-vh_include) \}"]
#@      append dps_cmd " "
#@      set read_mw_with_dps_filter true
#@   }
#@ 
#@   if {[info exists ra(-vh_exclude)]} {
#@      append dps_cmd [concat " -vh_exclude" " \{ $ra(-vh_exclude) \}"]
#@      set read_mw_with_dps_filter true
#@   }
#@                                                                                                                                              
#@   if { $read_mw_with_dps_filter == true } {
#@      # Call the DPS command to store the DPS filtering params.
#@      uplevel #0 $dps_cmd
#@   } else {
#@      # If there is no DPS filtering params, then we need to reset the
#@      # params which might have been stored from the provious command.
#@      append dps_cmd " -vh_reset_partition"
#@      uplevel #0 $dps_cmd
#@   }
#@ # End of DPS stuff
#@ 
#@   return [uplevel #0 $cmd]
#@ }
#@ 
#@ define_proc_attributes read_milkyway -hidden     -info " Read milkyway CEL from disk"     -define_args       {{-library "library name" "lib_name" string {optional}}       {-read_only "open design in read only mode" "" boolean {optional}}       {-version "version number of the CEL" "number" string {optional}}       {-vh_module_only "open design for DPS module only partition" "" boolean {hidden optional}}       {-vh_include "list of designs to be included in the DPS partition" "include_designs" list {hidden optional}}       {-vh_exclude "list of designs to be excluded in the DPS partition" "exclude_designs" list {hidden optional}}       {"" fileName "CEL name" string {required}}}
#@ 
#@ }
#@ 
#@ ##############################################################################
#@ #
#@ #  PROCEDURE:   set_mw_technology_file
#@ #
#@ #  ABSTRACT:    wrapper around update_mw_lib
#@ #
#@ #  HISTORY :    2009/6/21, yunz, support ALF reader in ICC
#@ #
#@ ##############################################################################
#@ if { [string match -nocase {*icc_shell*} $synopsys_program_name] || 
#@     ([string match -nocase {*d[ce]_shell*} $synopsys_program_name] && [shell_is_mwlib_enabled]) }  {
#@ 
#@ proc set_mw_technology_file args {
#@ 
#@   parse_proc_arguments -args $args ra
#@ 
#@   set cmd ""
#@   set lib_name ""
#@   set pdb_file "tech.pdb"
#@   set log_file "log_file"
#@   set alf_file ""
#@ 
#@   if {[info exists ra(-technology)] && [info exists ra(-plib)]} {
#@       echo "Error: the $ra(-technology) and $ra(-plib) options are mutually exclusive."
#@       return [uplevel #0 $cmd]
#@   } elseif {[info exists ra(-technology)] && [info exists ra(-alf)]} {
#@       echo "Error: the $ra(-technology) and $ra(-alf) options are mutually exclusive."
#@       return [uplevel #0 $cmd]
#@   } elseif {[info exists ra(-plib)] && [info exists ra(-alf)]} {
#@       echo "Error: the $ra(-plib) and $ra(-alf) options are mutually exclusive."
#@       return [uplevel #0 $cmd]
#@   }
#@ 
#@   if {[info exists ra(-technology)]} {
#@ 
#@     set cmd [format {update_mw_lib -technology %s %s} 		     $ra(-technology) 		     $ra() ]
#@   }
#@ 
#@   if {[info exists ra(-alf)]} {
#@ 
#@     set cmd [format {update_mw_lib %s} 		     $ra() ]
#@ 
#@     set cmd [concat [concat $cmd " -alf " ] " $ra(-alf) "]
#@   }
#@ 
#@   return [uplevel #0 $cmd]
#@ }
#@ 
#@ define_proc_attributes set_mw_technology_file -hide_body     -info " Set technology file for the library "     -define_args       {{-technology "Technology file name" "tech_file" string {optional}}       {-alf "alf file name" "file_name" string  {optional}}      {"" "Library name" "libName" string {required}}}
#@ 
#@ ##############################################################################
#@ #
#@ #  PROCEDURE:   rebuild_mw_lib
#@ #
#@ #  ABSTRACT:    wrapper around update_mw_lib
#@ #
#@ ##############################################################################
#@ 
#@ proc rebuild_mw_lib args {
#@ 
#@   parse_proc_arguments -args $args ra
#@ 
#@   set cmd [format {update_mw_lib -rebuild %s}                         $ra() ]
#@ 
#@   return [uplevel #0 $cmd]
#@ }
#@ 
#@ define_proc_attributes rebuild_mw_lib -hide_body     -info " Rebuild the library "     -define_args       {{"" "Library name" "libName" string {required}}}
#@ 
#@ ##############################################################################
#@ #
#@ #  PROCEDURE:   set_mw_lib_reference
#@ #
#@ #  ABSTRACT:    Procedure to set ref lib list or ref ctrl file
#@ #
#@ ##############################################################################
#@ 
#@ proc set_mw_lib_reference args {
#@ 
#@   parse_proc_arguments -args $args ra
#@ 
#@   set cmd ""
#@ 
#@   if {[info exists ra(-mw_reference_library)]} {
#@     set cmd [format {set_reference_control_file -reference_libraries {%s} %s}                         $ra(-mw_reference_library)                         $ra() ]
#@   }
#@ 
#@   if {[info exists ra(-reference_control_file)]} {
#@     set cmd [format {set_reference_control_file -file %s %s}                         $ra(-reference_control_file)                         $ra() ]
#@   }
#@   return [uplevel #0 $cmd]
#@ }
#@ 
#@ define_proc_attributes set_mw_lib_reference -hide_body     -info " Set reference for the library "     -define_args       {{-mw_reference_library "List of reference libraries" "lib_list" list {optional}}       {-reference_control_file "Reference control file" "file_name" string {optional}}       {"" "Library name" "libName" string {required}}}
#@ 
#@ #
#@ ##############################################################################
#@ #
#@ #  PROCEDURE:   create_mw_lib
#@ #
#@ #  ABSTRACT:    wrapper around MWUI create_mw_lib 
#@ #
#@ ##############################################################################
#@ 
#@ proc create_mw_lib args {
#@ 
#@   parse_proc_arguments -args $args ra
#@ 
#@   set cmd ""
#@   set lib_name ""
#@   set pdb_file "tech.pdb"
#@   set log_file "log_file"
#@  
#@   if {[info exists ra(-ignore_case)]} {
#@     set cmd [format {org_create_mw_lib %s}                         $ra() ]
#@   } else {
#@     set cmd [format {org_create_mw_lib -case_sensitive %s}                         $ra() ]
#@   }
#@ 
#@   if {[info exists ra(-technology)]} {
#@     set cmd [concat [concat $cmd " -technology " ] " $ra(-technology) "]
#@   } 
#@ 
#@   if {[info exists ra(-ignore_tf_error)]} {
#@     set cmd [concat $cmd " -ignore_tf_error " ]
#@   }
#@ 
#@   if {[info exists ra(-hier_separator)]} {
#@     set cmd [concat [concat $cmd " -hier_seperator " ] " $ra(-hier_separator) "]
#@   }
#@ 
#@   if {[info exists ra(-bus_naming_style)]} {
#@     set cmd [concat [concat $cmd " -bus_naming_style " ] " {$ra(-bus_naming_style)} "]
#@   }
#@ 
#@   
#@   if {[info exists ra(-reference_control_file)]} {
#@     set cmd [concat [concat $cmd " -reference_control_file " ] " $ra(-reference_control_file) "]
#@   }  
#@ 
#@   if {[info exists ra(-mw_reference_library)]} {
#@     set cmd [concat [concat [concat $cmd " -mw_reference_library {" ] " $ra(-mw_reference_library) "] "}"]
#@   }
#@   
#@   if { ![uplevel #0 $cmd] } {
#@     return 0
#@   }
#@ 
#@   set cmd ""
#@ 
#@   if {[info exists ra(-open)]} {
#@     uplevel #0 $cmd
#@     set cmd [format {open_mw_lib %s}                         $ra() ]
#@   }
#@ 
#@   return [uplevel #0 $cmd]
#@ }
#@ 
#@ define_proc_attributes create_mw_lib -hide_body     -info " Create a milkyway library "     -define_args       {{-technology "Technology file name" "file_name" string {optional}}           {-ignore_tf_error "Ignore the error in technology file" "" boolean {hidden optional}}       {-hier_separator "Hierarchical separator, default is backslash / " "separator" string {hidden optional}}       {-bus_naming_style "Bus naming style" "bus_naming_style" string {optional}}       {-ignore_case "Make case insensitive" "" boolean {hidden optional}}       {-case_sensitive "Make case sensitive" "" boolean {hidden optional}}       {-mw_reference_library "List of reference libraries" "lib_list" list {optional}}       {-reference_control_file "Reference control file" "file_name" string {optional}}       {-open "Open the library after creation" "" boolean {optional}}       {"" "Library name to create" "libName" string {required}}}
#@ 
#@ #
#@ ##############################################################################
#@ #
#@ #  PROCEDURE:   report_mw_lib
#@ #
#@ #  ABSTRACT:    wrapper around MWUI report_mw_lib
#@ #
#@ ##############################################################################
#@ 
#@ proc report_mw_lib args {
#@ 
#@   parse_proc_arguments -args $args ra
#@ 
#@   set cmd ""
#@ 
#@   if {[info exists ra(-mw_reference_library)]} {
#@     if {[info exists ra()]} {
#@       set cmd [format {org_report_mw_lib -mw_reference_library %s} $ra() ]
#@     } else {
#@       set cmd [format {org_report_mw_lib -mw_reference_library} ]
#@     }
#@     return [uplevel #0 $cmd]
#@   }
#@ 
#@   if {[info exists ra(-unit_range)]} {
#@     if {[info exists ra()]} {
#@       set cmd [format {org_report_mw_lib -unit_range %s}                         $ra() ]
#@     } else {
#@       echo "Error : Library name must be specified when using this option"
#@       return 0;
#@     }
#@     return [uplevel #0 $cmd]
#@   }
#@ 
#@ }
#@ 
#@ define_proc_attributes report_mw_lib -hide_body     -info " Report information about the library "     -define_args       {{-unit_range "Report unit range of library" "" boolean {optional}}       {-mw_reference_library "Report list of reference libraries" "" boolean {optional}}       {"" "Library to be reported" "libName" string {optional}}}
#@ 
#@ ##############################################################################
#@ #
#@ #  PROCEDURE:   close_mw_lib
#@ #
#@ #  ABSTRACT:    Wrapper around close_mw_lib to handle -save option properly
#@ #      - save_mw_cel to save current cel with dc_netlist
#@ #      - close_mw_cel to close current cel
#@ #      - save_open_cels to save other open cels before closing library
#@ #
#@ ##############################################################################
#@ 
#@ proc close_mw_lib args {
#@ 
#@   parse_proc_arguments -args $args ra
#@ 
#@   if {$args == ""} {
#@     set cmd [format {icc_is_dc_up} ]
#@     if {[uplevel #0 $cmd]} {
#@       set cmd [format {remove_design -quiet -designs} ]
#@     if {[uplevel #0 $cmd]} {
#@     set cmd [format {org_close_mw_lib } ]
#@     return [uplevel #0 $cmd]
#@     } else {
#@       return 0
#@   }
#@     } else {
#@       set cmd [format {org_close_mw_lib } ]
#@       return [uplevel #0 $cmd]
#@   }
#@   }
#@ 
#@   if {[info exists ra(-save)]} {
#@ 
#@     set cmd [format {save_mw_cel} ]
#@     if {![uplevel #0 $cmd]} {
#@       return
#@     }
#@ 
#@     set cmd [format {close_mw_cel} ]
#@     if {![uplevel #0 $cmd]} {
#@       return
#@     }
#@ 
#@     set cmd [format {save_open_cels} ]
#@     if {![uplevel #0 $cmd]} {
#@       return
#@     }
#@   }
#@ 
#@   set cmd [format {org_close_mw_lib} ]
#@   return [uplevel #0 $cmd]
#@ }
#@ 
#@ if { [string match -nocase {*icc_shell*} $synopsys_program_name] } {
#@   define_proc_attributes close_mw_lib -hide_body       -info " Closes the milkyway library "       -define_args         {{-save "Save open cels" "" boolean {optional}}         {"" "libraries to be closed" "lib list" list {hidden optional}}}
#@ } else {
#@   define_proc_attributes close_mw_lib -hide_body       -info " Closes the milkyway library "       -define_args         {{-no_save "Don't save open cels" "" boolean {hidden optional}}         {"" "libraries to be closed" "lib list" list {hidden optional}}}
#@ }
#@ ##############################################################################
#@ #
#@ #  PROCEDURE:   write_mw_lib_files
#@ #
#@ #  ABSTRACT:    Write technology or reference control file
#@ #  History: Yun Zhang 2012/12/11, public option -stream_layer_map_file
#@ #  History: Yun Zhang 2012/9/5. support new hidden option -vt_cell_placement_properties
#@ #  History: Yun Zhang 2011/12/5. add new hidden option -stream_layer_map_file
#@ #
#@ ##############################################################################
#@ proc write_mw_lib_files args {
#@ 
#@   parse_proc_arguments -args $args ra
#@ 
#@   set cmd ""
#@ 
#@   if {[info exists ra(-reference_control_file)]} {
#@    #Option -reference_contrl_file, -plib and -technology are exclusive.
#@    # If both of them are set at the same time, error reported.
#@    # 9000273455, by xqsun, 2009/2/4
#@      if {[info exists ra(-technology)]} {
#@        echo "Error: Cannot specify '-reference_control_file' with '-technology'.(CMD-001)"
#@        return 0
#@      } elseif {[info exists ra(-plib)]} {
#@        echo "Error: Cannot specify '-reference_control_file' with '-plib'.(CMD-001)"
#@        return 0
#@      } elseif {[info exists ra(-vt_cell_placement_properties)]} {
#@        echo "Error: Cannot specify '-reference_control_file' with '-vt_cell_placement_properties'.(CMD-001)"
#@        return 0
#@      } elseif {[info exists ra(-stream_layer_map_file)]} {
#@        echo "Error: Cannot specify '-reference_control_file' with '-stream_layer_map_file'.(CMD-001)"
#@        return 0
#@      } else {
#@        set cmd [format {report_mw_lib_ref_ctrl_file -output %s %s}                            $ra(-output)                            $ra() ]
#@        return [uplevel #0 $cmd]
#@      }
#@   }
#@ 
#@   if {[info exists ra(-technology)]} {
#@      if {[info exists ra(-plib)]} {
#@        echo "Error: Cannot specify '-technology' with '-plib'.(CMD-001)"
#@        return 0
#@      } elseif {[info exists ra(-vt_cell_placement_properties)]} {
#@        echo "Error: Cannot specify '-technology' with '-vt_cell_placement_properties'.(CMD-001)"
#@        return 0
#@      } elseif {[info exists ra(-stream_layer_map_file)]} {
#@        echo "Error: Cannot specify '-technology' with '-stream_layer_map_file'.(CMD-001)"
#@        return 0
#@      } else {
#@        set cmd [format {org_report_mw_lib -output %s %s}                            $ra(-output)                            $ra() ]
#@        return [uplevel #0 $cmd]
#@      }
#@   }
#@ 
#@   if {[info exists ra(-vt_cell_placement_properties)]} {
#@     if {[info exists ra(-stream_layer_map_file)]} {
#@        echo "Error: Cannot specify '-vt_cell_placement_properties' with '-stream_layer_map_file'.(CMD-001)"
#@        return 0
#@      } else {
#@        set cmd [format {org_report_mw_lib -vt_cell_placement_properties  -output %s %s}        $ra(-output)        $ra() ]
#@        return [uplevel #0 $cmd]
#@      }
#@   }
#@ 
#@   if {[info exists ra(-stream_layer_map_file)]} {
#@        set cmd [format {org_report_mw_lib -stream_layer_map_file %s -output %s %s} 			$ra(-stream_layer_map_file)                         $ra(-output)                         $ra() ]
#@        return [uplevel #0 $cmd]
#@   }
#@   
#@ }
#@ 
#@ define_proc_attributes write_mw_lib_files -hide_body     -info " Write technology or reference control file "     -define_args       {{-technology "Dump technology file" "" boolean {optional}}       {-vt_cell_placement_properties "Dump multi-VT cells' implant layer information of library" "" boolean {optional hidden}}       {-reference_control_file "Dump reference control file" "" boolean {optional}}       {-stream_layer_map_file "Dump layer map file during stream in/out" "" string {optional}}       {-output "Output file" "file_name" string {required}}       {"" "Library to be reported" "libName" string {required}}}
#@ }
#@ ##############################################################################
#@ #
#@ #  PROCEDURE:   close_mw_cel
#@ #
#@ #  ABSTRACT:    Wrapper around close_mw_cel to add -save option
#@ #  remove_timing_design is the command to shutdown dc netlist
#@ #
#@ ##############################################################################
#@ if { [string match -nocase {*icc_shell*} $synopsys_program_name] } {
#@ 
#@ proc close_mw_cel args {
#@ 
#@   parse_proc_arguments -args $args ra
#@   
#@   global mw_is_all_views     
#@   set cmd [format {icc_is_dc_up} ]
#@   set dc_is_up [uplevel #0 $cmd]
#@    
#@   set cmd_close [format {org_close_mw_cel} ]
#@   
#@   if {[info exists ra(-all_views)]} {
#@       set cmd_close [format {%s -all_views} $cmd_close]
#@       set mw_is_all_views 1    
#@   }
#@   if {[info exists ra(-all_versions)]} {
#@       set cmd_close [format {%s -all_versions} $cmd_close]
#@   }
#@   if {[info exists ra(-save)]} {
#@       set cmd_close [format {%s -save} $cmd_close]
#@   } 
#@   if {[info exists ra(-verbose)]} {
#@       set cmd_close [format {%s -verbose} $cmd_close]
#@   }
#@   if {[info exists ra(-hierarchy)]} {
#@       set cmd_close [format {%s -hierarchy} $cmd_close]
#@   }
#@ 
#@   ui_util_clean_saved_lib_attr $args
#@   
#@   set cmd ""
#@   set lcels ""
#@   set is_current_closed 1
#@ 
#@   if {[info exists ra()]} {
#@     set lcels $ra()
#@   }
#@   set len [string length $lcels]
#@   if {$len > 0} {
#@     set is_current_closed [is_current_mw_cel $lcels]
#@     set cmd_close [format {%s {%s}} $cmd_close $lcels]
#@   }
#@   if {[uplevel #0 $cmd_close]} {
#@       set mw_is_all_views 0 
#@       if {$dc_is_up == 1} {
#@       if {$is_current_closed == 1} {
#@         set cmd [format {remove_design -quiet -designs} ]
#@         return [uplevel #0 $cmd]
#@       }
#@       return 1
#@     } else {
#@       return 1
#@     }
#@   } else {
#@       set mw_is_all_views 0
#@       return 0
#@   }
#@ }
#@ 
#@ define_proc_attributes close_mw_cel -hide_body     -info " Closes the design "     -define_args       {{-save "Save the design" "" boolean {optional}}       {-discard "Discard any changes" "" boolean {optional hidden}}       {-verbose "Print out debugging messages" "" boolean {optional hidden}}       {-hierarchy "Close top design and its child designs" "" boolean {optional}}       {-all_views "Close all views of the design" "" boolean {optional}}       {-all_versions "Close all versions of the design" "" boolean {optional}}       {"" "designs to be closed" "design list" list {optional}}}
#@ 
#@ ##############################################################################
#@ #
#@ #  PROCEDURE:  save_all_mw_cel 
#@ #
#@ #  ABSTRACT:    Wrapper around save_mw_cel to save all the open cels. Needed for Black box flow.
#@ #
#@ ##############################################################################
#@         
#@ proc save_all_mw_cels { } {
#@   set top_cel [get_attribute [current_mw_cel] name]
#@ 
#@   set cels [fp_get_open_cells]
#@ 
#@   foreach cel $cels {
#@     if {$cel != $top_cel} {
#@       current_mw_cel $cel
#@ 
#@       save_mw_cel
#@     }
#@   }
#@ 
#@   current_mw_cel $top_cel
#@ 
#@   save_mw_cel
#@ }
#@ 
#@ icc_hide_cmd save_all_mw_cels
#@ 
#@ ##############################################################################
#@ #  PROCEDURE:   execute_command_and_create_cel_from_scratch 
#@ #  ABSTRACT:    This procedure executes the given command and creates the CEL
#@ #               from scratch after executing this command.
#@ ##############################################################################
#@ proc execute_command_and_create_cel_from_scratch {org_cmd_name args} {
#@   global mw_create_cel_force
#@   global mw_enable_auto_cel
#@   global mw_force_auto_cel
#@ 
#@   set lib [current_mw_lib]
#@ 
#@   # If no MW lib, design is not from MW. Execute the original command 
#@   # and return.
#@   if {$lib == ""} {
#@     return [eval $org_cmd_name $args]
#@   }
#@ 
#@   # Get values of few variables.
#@   set incr_mode $mw_create_cel_force
#@   set mw_create_cel_force TRUE
#@ 
#@   # Get auto cel mode, disable it temporarily if enabled.
#@   set auto_cel_mode $mw_enable_auto_cel
#@   set mw_enable_auto_cel FALSE
#@ 
#@   # Check if the already existing CEL is auto-CEL.
#@   set auto_cel 0
#@   if {[is_cel_auto_cel]} {
#@       set auto_cel 1
#@   } elseif {![get_top_cel_mwid]} {
#@       set auto_cel 1
#@   }
#@ 
#@ 
#@   # Run the original command, if not successful restore the incr_mode 
#@   # variable and return. No CEL is created.
#@   if {![eval $org_cmd_name $args]} {
#@     set mw_create_cel_force $incr_mode
#@     set mw_enable_auto_cel $auto_cel_mode
#@     return 0
#@   }
#@ 
#@   # Restore auto_cel mode
#@   set mw_enable_auto_cel $auto_cel_mode
#@ 
#@   # Now create auto or real CEL depending on what the original CEL was.
#@   if {$auto_cel == "1"} {
#@   # Force creation of auto-CEL, since commands other than read_def/pdef
#@   # do not decouple CEL from DC.
#@ 
#@   set mw_force_auto_cel TRUE
#@     set cmd [format {save_mw_cel -auto}] 
#@   } else {
#@       if [get_top_cel_mwid] {
#@       set cmd [format {save_mw_cel -create}] 
#@       echo "Information: Command not supported by incr. update or write-thru."
#@       echo "             Creating new CEL from scratch, old CEL will be closed."
#@     }
#@   }
#@ 
#@   # Create the Auto CEL or normal CEL from scratch.
#@   if {![uplevel #0 $cmd]} {
#@     set mw_create_cel_force $incr_mode
#@     set mw_force_auto_cel FALSE
#@     return 0
#@   }
#@ 
#@   set mw_create_cel_force $incr_mode
#@   set mw_force_auto_cel FALSE
#@   return 1
#@ }
#@ 
#@ define_proc_attributes execute_command_and_create_cel_from_scratch -hidden     -hide_body
#@ 
#@ ##############################################################################
#@ #  PROCEDURE:   read_def
#@ #  ABSTRACT:    Wrapper around read_def to handle incremental update properly
#@ #  if MW based read_def is used, bypass the wrapper
#@ #  enable_milkyway_def_reader_writer must be TRUE and use_pdb_lib_format must
#@ # be false for MW read_Def to be run, use wrapper if either condition fails
#@ ##############################################################################
#@ rename -force dc_read_def org_read_def
#@ icc_hide_cmd org_read_def
#@ proc dc_read_def args {
#@   parse_proc_arguments -args $args ra
#@ 
#@   return [eval execute_command_and_create_cel_from_scratch "org_read_def" $args]
#@ }
#@ 
#@ define_proc_attributes dc_read_def -hide_body     -info " Read a def file "     -define_args       {{-design "name of design for which clusters are to be read" "" string {optional}}        {-quiet "do not print out any warnings" "" boolean {optional}}        {-verbose "print out more warnings" "" boolean {optional}}        {-allow_physical_cells "allow physical cells" "" boolean {optional}}        {-allow_physical_ports "allow physical ports" "" boolean {optional}}        {-allow_physical_nets "allow physical nets" "" boolean {optional}}        {-skip_signal_nets "skip signal nets" "" boolean {optional}}        {-incremental "incremental" "" boolean {optional}}        {-enforce_scaling "enforce_scaling" "" boolean {optional}}        {-move_bounds "move bounds" "" boolean {optional}}        {"" "input def file names" "input_def_file_name" string {required}}}
#@ 
#@ 
#@ ##############################################################################
#@ #  PROCEDURE:   group
#@ #  ABSTRACT:    Wrapper around group to handle incremental update properly
#@ ##############################################################################
#@ rename -force group org_group
#@ icc_hide_cmd org_group
#@ proc group args {
#@   parse_proc_arguments -args $args ra
#@   return [eval execute_command_and_create_cel_from_scratch "org_group" $args]
#@ }
#@ 
#@ define_proc_attributes group -hide_body   -info " create new hierarchy"   -define_args    {{-except "cells not to be included in the group" "exclude_list" list {optional}}
#@     {-design_name "name of design created for new hierarchy" "design_name" string {optional}}
#@     {-cell_name "name of cell created for new hierarchy" "cell_name" string {optional}}
#@     {-logic "group any combinational elements" "" boolean {optional}}
#@     {-pla "group any PLA elements" "" boolean {optional}}
#@     {-fsm "group all elements part of a finite state machine" "" boolean {optional}}
#@     {-hdl_block "name of hdl_block to group" "" string {optional}}
#@     {-hdl_bussed "group all bussed gates under this block" "" boolean {optional}}
#@     {-hdl_all_blocks "group all hdl blocks under this block" "" boolean {optional}}
#@     {-soft "set the group_name attribute" "" boolean {optional}}
#@     {"" "cells to be included in the group" "cell_list" list {optional}}}
#@ 
#@ ##############################################################################
#@ #  PROCEDURE:   copy_design
#@ #  ABSTRACT:    Wrapper around copy_design to handle incremental update properly
#@ ##############################################################################
#@ rename -force copy_design org_copy_design
#@ icc_hide_cmd org_copy_design
#@ proc copy_design args {
#@   parse_proc_arguments -args $args ra
#@   return [eval execute_command_and_create_cel_from_scratch "org_copy_design" $args]
#@ }
#@ 
#@ define_proc_attributes copy_design -hide_body   -info " copy_design"   -define_args    {{"" "List of designs to be copied" "design_list" list {required}}
#@     {"" "Name of new design or target file" "target_name" string {required}}}
#@ 
#@ ##############################################################################
#@ #  PROCEDURE:   create_design
#@ #  ABSTRACT:    Wrapper around create_design to handle incremental update properly
#@ ##############################################################################
#@ rename -force create_design org_create_design
#@ icc_hide_cmd org_create_design
#@ proc create_design args {
#@   parse_proc_arguments -args $args ra
#@   return [eval execute_command_and_create_cel_from_scratch "org_create_design" $args]
#@ }
#@ 
#@ define_proc_attributes create_design -hide_body   -info " Creates a design in dc_shell memory"   -define_args    {{"" "name of the design to create" "<design_name>" string {required}}
#@     {"" "name of file for design; optional" "<file_name>" string {optional}}}
#@ 
#@ ##############################################################################
#@ #  PROCEDURE:   reset_design
#@ #  ABSTRACT:    Wrapper around reset_design to handle incremental update properly
#@ ##############################################################################
#@ #rename -force reset_design org_reset_design
#@ #icc_hide_cmd org_reset_design
#@ #proc reset_design args {
#@ #  parse_proc_arguments -args $args ra
#@ #  return [eval execute_command_and_create_cel_from_scratch "org_reset_design" $args]
#@ #}
#@ 
#@ ##############################################################################
#@ #  PROCEDURE:   rename_design
#@ #  ABSTRACT:    Wrapper around rename_design to handle incremental update properly
#@ ##############################################################################
#@ rename -force rename_design org_rename_design
#@ icc_hide_cmd org_rename_design
#@ proc rename_design args {
#@   parse_proc_arguments -args $args ra
#@   return [eval execute_command_and_create_cel_from_scratch "org_rename_design" $args]
#@ }
#@ 
#@ define_proc_attributes rename_design -hide_body   -info " rename_design"   -define_args    {{"" "List of designs to be renamed" "design_list" list {required}}
#@     {"" "Name of new design or target file" "target_name" string {required}}}
#@ 
#@ }
#@ 
#@ ##############################################################################
#@ # If we are in icc_shell (i.e. Galileo) then
#@ # load the procedures to switch between DC and Milkyway collections.
#@ # Set the default to MW collection unless otherwise specified.
#@ ##############################################################################
#@ if { [string match -nocase {*icc_shell*} $synopsys_program_name] } {
#@     # load the procedures that switch between DC and MW collections
#@     source $synopsys_root/auxx/syn/collection_procs.tcl
#@ 
#@     set CS mw 
#@ 
#@     # see if the user wants DC
#@     if {! [catch {getenv USE_DC_COLLECTIONS_ONLY}] &&
#@ 	  [getenv USE_DC_COLLECTIONS_ONLY] } {
#@ 	set CS dc 
#@     }  
#@ 
#@     # set the collection source now
#@     redirect /dev/null {
#@       if {[catch {set_collection_mode -handle $CS}]} {
#@         catch {set_collection_option -handle $CS}
#@       } 
#@     } 
#@     
#@     unset CS
#@ }
#@ 
#@ ##############################################################################
#@ # procedure for route command 
#@ # echo the command to a temp tcl file for seperate process to pick up
#@ ##############################################################################
#@ if { [string match -nocase {*icc_shell*} $synopsys_program_name] } {
#@     rename -force route org_route
#@     icc_hide_cmd org_route
#@     proc route args {
#@         set route_cmd_file_name ".route_cmd.tcl"
#@         set route_cmd_temp_file_name ".route_cmd.tcl.temp"
#@         set fp [open $route_cmd_file_name "w"]
#@         set route_cmd [concat "sep_proc_route " $args " -child"]
#@         puts $fp $route_cmd
#@         close $fp
#@         
#@         uplevel #0 rename -force route route_temp_proc
#@         uplevel #0 rename -force org_route route
#@         set status  [ uplevel #0 route $args  ]
#@         uplevel #0 rename -force route org_route
#@         uplevel #0 rename -force route_temp_proc route
#@         
#@         if { [info exist status ] == 1 } {
#@             return $status
#@         }
#@         return 
#@     }
#@ }
#@ 
#@ ##############################################################################
#@ # Tcl Command: set_ignore_cell
#@ # Description: Load the command only in IC Compiler (icc_shell)
#@ ##############################################################################
#@ if { [string match -nocase {*icc_shell*} $synopsys_program_name] } {
#@     source $synopsys_root/auxx/syn/psyn/ideal_cell.tcl.e
#@ }
#@ 
#@ ##############################################################################
#@ # Tcl Command: check_physical_design
#@ # Description: Load the command only in IC Compiler (icc_shell)
#@ ##############################################################################
#@ if { [string match -nocase {*icc_shell*} $synopsys_program_name] } {
#@     # Load the compiled Tcl byte-code:
#@     # 9000784997: Do not log to command.log when sourcing .tbc files
#@     set prev_sh_source_logging [get_app_var sh_source_logging]
#@     set_app_var sh_source_logging 0
#@     source $synopsys_root/auxx/syn/psyn/check_physical_design_core.tbc
#@     source $synopsys_root/auxx/syn/psyn/check_physical_design_utils.tbc
#@     source $synopsys_root/auxx/syn/psyn/check_physical_design_flows.tbc
#@     source $synopsys_root/auxx/syn/psyn/check_physical_design_reports.tbc
#@     source $synopsys_root/auxx/syn/psyn/check_physical_design_ui.tbc
#@     source $synopsys_root/auxx/syn/psyn/sanity_setup_opt.tbc
#@     source $synopsys_root/auxx/syn/psyn/sanity_setup_cmd.tbc
#@     source $synopsys_root/auxx/syn/psyn/sanity_setup_rpt.tbc
#@     source $synopsys_root/auxx/syn/psyn/create_qor_snapshot.tbc
#@     source $synopsys_root/auxx/syn/psyn/report_qor_snapshot.tbc
#@     source $synopsys_root/auxx/syn/psyn/msgParser.tbc
#@     source $synopsys_root/auxx/syn/psyn/displacement_gui.tbc
#@     source $synopsys_root/auxx/syn/psyn/categorize_timing_gui.tbc
#@     set_app_var sh_source_logging $prev_sh_source_logging
#@ 
#@     source $synopsys_root/auxx/syn/psyn/mcmm_utils.tcl.e
#@     source $synopsys_root/auxx/syn/psyn/propagate_all_clocks.tcl.e
#@ }
#@ 
#@ if { [string match -nocase {*dc_shell*} $synopsys_program_name] && [shell_is_in_topographical_mode] }  {
#@    # 9000784997: Do not log to command.log when sourcing .tbc files
#@    set prev_sh_source_logging [get_app_var sh_source_logging]
#@    set_app_var sh_source_logging 0
#@    source $synopsys_root/auxx/syn/psyn/create_qor_snapshot.tbc
#@    source $synopsys_root/auxx/syn/psyn/report_qor_snapshot.tbc
#@    set_app_var sh_source_logging $prev_sh_source_logging
#@ 
#@    source $synopsys_root/auxx/syn/psyn/mcmm_utils.tcl.e
#@ }
#@ 
#@ if { [string match -nocase {*icc_shell*} $synopsys_program_name] || [string match -nocase {*dc_shell*} $synopsys_program_name] || [string match -nocase {*de_shell*} $synopsys_program_name] } {
#@    source $synopsys_root/auxx/syn/psyn/write_timing_context.tcl.e;
#@    if { [string match -nocase {*icc_shell*} $synopsys_program_name] } {
#@      source $synopsys_root/auxx/syn/psyn/write_scenarios.tbc;
#@    }
#@ }
#@ 
#@ if { $synopsys_program_name == "de_shell" }  {
#@    # 9000784997: Do not log to command.log when sourcing .tbc files
#@    set prev_sh_source_logging [get_app_var sh_source_logging]
#@    set_app_var sh_source_logging 0
#@    source $synopsys_root/auxx/syn/psyn/create_qor_snapshot.tbc
#@    source $synopsys_root/auxx/syn/psyn/report_qor_snapshot.tbc
#@    set_app_var sh_source_logging $prev_sh_source_logging
#@ 
#@    source $synopsys_root/auxx/syn/psyn/mcmm_utils.tcl.e
#@ }
#@ 
#@ ##############################################################################
#@ # ICC setup and hiding commands/procs etc
#@ ##############################################################################
#@ 
#@ if { [string match -nocase {*icc_shell*} $synopsys_program_name] } {
#@ #set  save_mw_cel_lib_setup  TRUE
#@ #set  auto_restore_mw_cel_lib_setup FALSE
#@ 
#@ alias create_wiring_keepout create_wiring_keepouts
#@ alias get_wiring_keepout get_wiring_keepouts
#@ alias get_placement_keepout get_placement_keepouts
#@ alias create_placement_keepout create_placement_keepouts
#@ 
#@ icc_hide_cmd execute_command_and_create_cel_from_scratch
#@ icc_hide_cmd dc_read_def
#@ icc_hide_cmd read_edif
#@ icc_hide_cmd read_sverilog
#@ icc_hide_cmd read_vhdl
#@ icc_hide_cmd set_collection_mode
#@ icc_hide_cmd return_dc_collection
#@ icc_hide_cmd return_mw_collection
#@ set mw_use_pdb_lib_format true
#@ }
#@ 
#@ 
#@ ##############################################################################
#@ # Tcl Command: get_dont_touch_nets
#@ # Description: wrapper of "get_nets -filter dont_touch_reason==mv"
#@ ##############################################################################
#@ if { [string match -nocase {*icc_shell*} $synopsys_program_name] } {
#@ 
#@ proc get_dont_touch_nets args {
#@ 
#@   parse_proc_arguments -args $args ra
#@ 
#@   set cmd [format {get_nets}]
#@ 
#@   if {[info exists ra()]} {
#@       set cmd [format {%s {%s}} $cmd $ra()]
#@   }
#@   if {[info exists ra(-type)]} {
#@       set cmd [format {%s -filter dont_touch_reasons=~*%s*} $cmd $ra(-type)]
#@   }
#@   if {[info exists ra(-hierarchical)]} {
#@       set cmd [format {%s -hierarchical} $cmd]
#@   }
#@   if {[info exists ra(-quiet)]} {
#@       set cmd [format {%s -quiet} $cmd]
#@   }
#@   if {[info exists ra(-regexp)]} {
#@       set cmd [format {%s -regexp} $cmd]
#@   } 
#@   if {[info exists ra(-nocase)]} {
#@       set cmd [format {%s -nocase} $cmd]
#@   }
#@   if {[info exists ra(-exact)]} {
#@       set cmd [format {%s -exact} $cmd]
#@   }
#@ 
#@   return [uplevel #0 $cmd]
#@ }
#@ 
#@ define_proc_attributes get_dont_touch_nets   -info " Get dont_touch nets "   -permanent   -define_args {     {"" "Match net names against patterns" "patterns" list {optional}}     {-type "Match net dont_touch reasons" "reasons" list {required}}     {-hierarchical "Search level-by-level in current instance" "" boolean {optional}}     {-quiet "Suppress all messages" "" boolean {optional hidden}}     {-regexp "Patterns are full regular expressions" "" boolean {optional hidden}}     {-nocase "With -regexp, matches are case-insensitive" "" boolean {optional hidden}}     {-exact "Wildcards are considered as plain characters" "" boolean {optional hidden}}   }
#@ 
#@ alias get_dont_touch_net get_dont_touch_nets
#@ }
#@ 
#@ 
#@ ##############################################################################
#@ # return the first {index value} pair in Tcl array ary.
#@ ##############################################################################
#@ proc _snps_array_peek { level ary } {
#@     upvar #$level $ary loc_ary
#@     set ret [list]
#@     if {[catch {set token [array startsearch loc_ary]}]} {
#@       return $ret
#@     }
#@     while {[array anymore loc_ary $token]} {
#@         set k [array nextelement loc_ary $token]
#@         set v $loc_ary($k)
#@         set ret [list $k $v]
#@             break
#@         }
#@     array donesearch loc_ary $token
#@     return $ret;
#@ }
#@ define_proc_attributes _snps_array_peek -hidden
#@ 
#@ 
#@ ##############################################################################
#@ # Tcl Command: filter_collection
#@ # Description: DC wrapper for filter_collection with fixes of direction filter
#@ #
#@ #              This is a fix for DC's filter using "direction" attribute. This
#@ #              attribute is of integer type, but user wants a string format
#@ ##############################################################################
#@ if {[string match -nocase {*icc_shell*} $synopsys_program_name] == 0} {
#@ rename -force -hidden filter_collection _real_filter_collection
#@ proc filter_collection {args} {
#@   parse_proc_arguments -args $args ra
#@ 
#@   set regexp ""
#@   set nocase ""
#@   if {[info exist ra(-regexp)]} {
#@     set regexp "-regexp"
#@   }
#@   if {[info exist ra(-nocase)]} {
#@     set nocase "-nocase"
#@   }
#@   set coll $ra(collection1)
#@ 
#@   # _real_filter_collection silently returns in this error condition
#@   if {[catch {set coll_size [sizeof_collection $coll]}] || $coll_size <= 0} {
#@     return [list]
#@   }
#@ 
#@   if {$::sh_translate_direction_attribute == true} {
#@     set filter_expr [replace_direction $coll $ra(expression)]
#@   } else {
#@     set filter_expr $ra(expression)
#@   }
#@ 
#@   # if $ra(expression) is not empty but filter_expr is, collection is heterogrnous
#@   # and expression has "direction" as substring.  We have to walk through all objects
#@   if {[string length $filter_expr] == 0 && [string length $ra(expression)] != 0} {
#@     set part1 [format {_real_filter_collection %s %s } $regexp $nocase]
#@     set results ""
#@     set subclxn ""
#@     set subsize [expr [sizeof_collection $coll]/80 + 10]
#@     set counter 0
#@     foreach_in_collection obj $coll {
#@       incr counter
#@       set cmd [format {%s %s {%s}} $part1 $obj [replace_direction $obj $ra(expression)]]
#@       append_to_collection subclxn [uplevel #0 $cmd]
#@       if {[expr $counter % $subsize] == 0} {
#@         append_to_collection results $subclxn
#@         set subclxn ""
#@       }
#@     }
#@     if {[sizeof_collection $subclxn] != 0} {
#@       append_to_collection results $subclxn
#@     }
#@     return $results
#@   } else {
#@     set cmd [format {_real_filter_collection %s %s %s {%s}}                          $regexp $nocase $coll $filter_expr]
#@     return [uplevel #0 $cmd]
#@   }
#@ }
#@ define_proc_attributes filter_collection   -info " Filter a collection, resulting in new collection "   -permanent   -define_args {     {-regexp "Operators =~ and !~ use regular expressions" "" boolean {optional}}     {-nocase "Case insensitive string match" "" boolean {optional}}     {collection1 "Collection to filter" "collection1" string {required}}     {expression "Filter expression" "expression" string {required}}   }
#@ 
#@ }
#@ 
#@ # -- End source /tools/synopsys/cst/N-2017.09-SP2/auxx/syn/.dc_procs.tcl

#@ 
#@ # Temporary fix for the LMC_HOME variable- set it to an empty string 
#@ 
#@ if { [catch {getenv LMC_HOME } __err ] != 0 } {
#@   setenv LMC_HOME ""
#@ }
#@ 
#@ 
#@ #
#@ #
#@ #       Site-Specific Variables
#@ #
#@ #       These are the variables that are most commonly changed at a
#@ #       specific site, either upon installation of the Synopsys software,
#@ #       or by specific engineers in their local .synopsys files.
#@ #
#@ #
#@ 
#@ # from the System Variable Group 
#@ set link_library  { * your_library.db }
#@ 
#@ set search_path [list . ${synopsys_root}/libraries/syn ${synopsys_root}/minpower/syn ${synopsys_root}/dw/syn_ver ${synopsys_root}/dw/sim_ver]
#@ set target_library  your_library.db
#@ set synthetic_library  ""
#@ set command_log_file  "./command.log"
#@ set designer  ""
#@ set company  ""
#@ set find_converts_name_lists  "false"
#@ 
#@ set symbol_library  your_library.sdb 
#@ 
#@ # Turn on Formality SVF recording
#@ if { $synopsys_program_name == "dc_shell"      ||      $synopsys_program_name == "de_shell"      ||      $synopsys_program_name == "design_vision" } { 
#@   set_svf -default default.svf
#@ }
#@ 
#@ # from the Schematic Variable Group 
#@ 
#@ # from the Plot Variable Group 
#@ # [froi] 07/06/2012: Remove old Design Analyzer plot_command variable
#@ #if { $sh_arch == "hp700" } {
#@ #  set plot_command "lp -d" 
#@ #} else {
#@ #  set plot_command "lpr -Plw" 
#@ #}
#@ 
#@ set view_command_log_file  "./view_command.log"
#@ 
#@ # from the View Variable group
#@ if { $sh_arch == "hp700" } {
#@    set text_print_command  "lp -d" 
#@ } else {
#@    set text_print_command  "lpr -Plw" 
#@ }
#@ #
#@ #       System Variable Group:
#@ #
#@ #       These variables are system-wide variables.
#@ #
#@ set arch_init_path ${synopsys_root}/${sh_arch}/motif/syn/uid
#@ set auto_link_disable  "false"
#@ set auto_link_options  "-all"
#@ set uniquify_naming_style  "%s_%d"
#@ set verbose_messages  "true"
#@ set echo_include_commands  "true"
#@ set svf_file_records_change_names_changes "true"
#@ set change_names_update_inst_tree   "true"
#@ set change_names_dont_change_bus_members false
#@ set default_name_rules ""
#@ #set tdrc_enable_clock_table_creation   "true"
#@ 
#@ #
#@ #       Compile Variable Group:
#@ #
#@ #       These variables affect the designs created by the COMPILE command.
#@ #
#@ set compile_assume_fully_decoded_three_state_busses   "false"
#@ set compile_no_new_cells_at_top_level   "false"
#@ set compile_dont_touch_annotated_cell_during_inplace_opt   "false"
#@ set compile_update_annotated_delays_during_inplace_opt  "true"
#@ set compile_instance_name_prefix   "U"
#@ set compile_instance_name_suffix   ""
#@ set compile_negative_logic_methodology   "false"
#@ set compile_disable_hierarchical_inverter_opt   "false"
#@ set compile_use_low_timing_effort   "false"
#@ set compile_fix_cell_degradation   "false"
#@ set compile_preserve_subdesign_interfaces   "false"
#@ set compile_enable_constant_propagation_with_no_boundary_opt   "true"
#@ set port_complement_naming_style   "%s_BAR"
#@ set compile_implementation_selection   "true"
#@ set compile_delete_unloaded_sequential_cells   "true"
#@ set reoptimize_design_changed_list_file_name   ""
#@ set compile_checkpoint_phases "false"
#@ set compile_cpu_limit 0.0
#@ set compile_log_format "  %elap_time %area %wns %tns %drc %endpoint";
#@ set compile_top_all_paths   "false"
#@ set compile_top_acs_partition "false"
#@ set default_port_connection_class "universal"
#@ set compile_hold_reduce_cell_count "false"
#@ set compile_retime_license_behavior "wait"
#@ set dont_touch_nets_with_size_only_cells "false"
#@ if { $synopsys_program_name == "dc_shell" && [shell_is_in_topographical_mode] } {
#@    set dct_prioritize_area_correlation "false"
#@    set compile_error_on_missing_physical_cells "false"
#@ }
#@ 
#@ set ldd_return_val 0
#@ if { [string compare $dc_shell_mode "default"] == 0 } {
#@   set ldd_script ${synopsys_root}/auxx/syn/scripts/list_duplicate_designs.dcsh
#@   alias list_duplicate_designs "include -quiet ldd_script; dc_shell_status = ldd_return_val "
#@ 
#@ }
#@ if { [string compare $dc_shell_mode "tcl"] == 0 } {
#@   if {$synopsys_program_name != "dc_sms_shell"} {
#@     source ${synopsys_root}/auxx/syn/scripts/list_duplicate_designs.tcl
#@     # 9000784997: Do not log to command.log when sourcing .tbc files
#@     set prev_sh_source_logging [get_app_var sh_source_logging]
#@     set_app_var sh_source_logging 0
#@     source ${synopsys_root}/auxx/syn/scripts/analyze_datapath.tbc
#@     set_app_var sh_source_logging $prev_sh_source_logging
#@   }
#@ }
#@ # -- Starting source /tools/synopsys/cst/N-2017.09-SP2/auxx/syn/scripts/list_duplicate_designs.tcl

#@ ####################################################################### 
#@ #
#@ #  list_duplicate_designs.tcl		21 Sept. 2006
#@ #
#@ #  List designs in dc_shell memory that have the same design name
#@ #
#@ #  COPYRIGHT (C) 2006, SYNOPSYS INC., ALL RIGHTS RESERVED.
#@ #
#@ #######################################################################
#@ 
#@ proc list_duplicate_designs { args } {
#@     parse_proc_arguments -args $args ra
#@ 
#@     # Get the list of duplicate designs
#@     set the_pid [pid]
#@     set rand_1 [expr int(rand() * 100000)]
#@     set temp_file_1 [format "/tmp/ldd_design_%s_%s" $the_pid $rand_1]
#@ 
#@     redirect $temp_file_1 { foreach_in_collection ldd_design [find design "*"] {
#@         echo [get_object_name $ldd_design]
#@     } }
#@ 
#@     set rand_2 [expr int(rand() * 100000)]
#@     set temp_file_2 [format "/tmp/ldd_design_%s_%s" $the_pid $rand_2]
#@ 
#@     sh sort $temp_file_1 | uniq -d | tee $temp_file_2
#@     file delete $temp_file_1 
#@ 
#@     # Report duplicates
#@     if { ! [file size $temp_file_2] } {
#@         echo [concat {No duplicate designs found.}]
#@         set ldd_return_val 0
#@     } else {
#@         set rand_3 [expr int(rand() * 100000)]
#@         set temp_file_3 [format "/tmp/ldd_design_%s_%s" $the_pid $rand_3]
#@         echo {Warning:  Multiple designs in memory with the same design name.}
#@         echo {}
#@         echo {   Design            File            Path}
#@         echo {   ------            ----            ----}
#@         list_designs -table > $temp_file_3
#@         echo [sh fgrep -f $temp_file_2 $temp_file_3 | sort | grep -v 'Design.*File.*Path']
#@         file delete $temp_file_3
#@         set ldd_return_val 1
#@     }
#@ 
#@     # Clean up
#@     file delete $temp_file_2
#@ 
#@     set list_duplicate_designs1 $ldd_return_val
#@ }
#@ 
#@ define_proc_attributes list_duplicate_designs     -info " List designs of same names"     -permanent     -define_args {
#@     }
#@ # -- End source /tools/synopsys/cst/N-2017.09-SP2/auxx/syn/scripts/list_duplicate_designs.tcl

#@ 
#@ 
#@ set compile_log_format "  %elap_time %area %wns %tns %drc %endpoint";
#@ 
#@ set compile_top_all_paths "false"
#@ alias compile_inplace_changed_list_file_name                 reoptimize_design_changed_list_file_name
#@ 
#@ #
#@ #  These variables affects compile, report_timing and report_constraints
#@ #  commands.
#@ #
#@ set enable_recovery_removal_arcs  "false"
#@ set timing_report_attributes {dont_touch dont_use map_only size_only ideal_net infeasible_paths}
#@ 
#@ #
#@ #       Multibit Variable Group:
#@ #
#@ #       These variables affect the multibit mapping functionality
#@ #
#@ 
#@ set bus_multiple_separator_style  ","
#@ set bus_multiple_name_separator_style  ",,"
#@ 
#@ #
#@ #       ILM Variable Group:
#@ #
#@ #       These variables affect Interface Logic Model functionality
#@ #
#@ 
#@ set ilm_ignore_percentage 25
#@ 
#@ #
#@ #       Estimator Variable Group:
#@ #
#@ #       These variables affect the designs created by the ESTIMATE command.
#@ #
#@ set estimate_resource_preference  "fast"
#@ alias est_resource_preference estimate_resource_preference
#@ set lbo_lfo_enable_at_pin_count   3
#@ set lbo_cells_in_regions   "false"
#@ 
#@ #     Synthetic Library Group:
#@ #
#@ #       These variable affect synthetic library processing.
#@ #
#@ set cache_dir_chmod_octal   "777"
#@ set cache_file_chmod_octal  "666"
#@ set cache_read   "~"
#@ set cache_read_info  "false"
#@ set cache_write  "~"
#@ set cache_write_info   "false"
#@ set synlib_dont_get_license  {}
#@ set synlib_library_list   {DW01 DW02 DW03 DW04 DW05 DW06 DW07}
#@ set synlib_wait_for_design_license {}
#@ set synlib_dwhomeip {}
#@ 
#@ #
#@ #       Insert_DFT Variable Group:
#@ #
#@ #set test_default_client_order [list]
#@ set insert_dft_clean_up "true"
#@ set insert_test_design_naming_style  "%s_test_%d"
#@ # /*insert_test_scan_chain_only_one_clock = "false"
#@ # Replace by command line option (star 17215) -- Denis Martin 28-Jan-93*/
#@ set test_clock_port_naming_style  "test_c%s"
#@ set test_scan_clock_a_port_naming_style  "test_sca%s"
#@ set test_scan_clock_b_port_naming_style  "test_scb%s"
#@ set test_scan_clock_port_naming_style   "test_sc%s"
#@ set test_scan_enable_inverted_port_naming_style   "test_sei%s"
#@ set test_scan_enable_port_naming_style   "test_se%s"
#@ set test_scan_in_port_naming_style   "test_si%s%s"
#@ set test_scan_out_port_naming_style  "test_so%s%s"
#@ set test_non_scan_clock_port_naming_style  "test_nsc_%s"
#@ set test_default_min_fault_coverage  95
#@ set test_dedicated_subdesign_scan_outs  "false"
#@ set test_disable_find_best_scan_out  "false"
#@ set test_dont_fix_constraint_violations  "false"
#@ set test_isolate_hier_scan_out  0
#@ set test_mode_port_naming_style  "test_mode%s"
#@ set test_mode_port_inverted_naming_style  "test_mode_i%s"
#@ set compile_dont_use_dedicated_scanout 1
#@ set test_mux_constant_si "false"
#@ 
#@ #
#@ #        Analyze_Scan Variable Group:
#@ #
#@ #     These variables affect the designs created by the PREVIEW_SCAN command.
#@ #
#@ set test_preview_scan_shows_cell_types  "false"
#@ set test_scan_link_so_lockup_key "l"
#@ set test_scan_link_wire_key  "w"
#@ set test_scan_segment_key  "s"
#@ set test_scan_true_key  "t"
#@ 
#@ #
#@ #        bsd Variable Group:
#@ 
#@ #        These variables affect the report generated by the check_bsd command
#@ #        and the BSDLout generated by the write_bsdl command.
#@ #
#@ set test_user_test_data_register_naming_style  "UTDR%d"
#@ 
#@ set test_user_defined_instruction_naming_style  "USER%d"
#@ 
#@ set test_bsdl_default_suffix_name  "bsdl"
#@ 
#@ set test_bsdl_max_line_length  80
#@ 
#@ set test_cc_ir_masked_bits 0
#@ 
#@ set test_cc_ir_value_of_masked_bits 0
#@ 
#@ set test_bsd_allow_tolerable_violations "false" 
#@ set test_bsd_optimize_control_cell "false" 
#@ set test_bsd_control_cell_drive_limit 0
#@ set test_bsd_manufacturer_id 0
#@ set test_bsd_part_number 0
#@ set test_bsd_version_number 0
#@ set bsd_max_in_switching_limit 60000
#@ set bsd_max_out_switching_limit 60000
#@ 
#@ #
#@ #        TestManager Variable Group:
#@ #
#@ #        These variables affect the TestManager methodology.
#@ #
#@ set multi_pass_test_generation  "false"
#@ 
#@ #
#@ #        TestSim Variable Group:
#@ #
#@ #        These variables affect the TestSim behavior.
#@ #
#@ # set testsim_print_stats_file  "true"
#@ 
#@ #      Test DRC Variable Group:
#@ #
#@ #        These variables affect the check_test command.
#@ # 
#@ set test_capture_clock_skew  "small_skew"
#@ set test_allow_clock_reconvergence  "true"
#@ set test_check_port_changes_in_capture  "true"
#@ set test_infer_slave_clock_pulse_after_capture "infer"
#@ 
#@ #
#@ #       Test Variable Group:
#@ #
#@ #       These variables affect the rtldrc, check_test, write_test_protocol
#@ #       and write_test command.
#@ #
#@ set test_default_delay  0.0
#@ set test_default_bidir_delay  0.0
#@ set test_default_strobe  40.0
#@ set test_default_strobe_width  0.0
#@ set test_default_period  100.0
#@ set test_stil_max_line_length 72 
#@ 
#@ #added for B-2008.09-place_opt-004 to disable this option in ICC
#@ 
#@ if { $synopsys_program_name != "icc_shell"} {
#@     set test_write_four_cycle_stil_protocol "false"
#@     set test_protocol_add_cycle "true"
#@     set test_stil_multiclock_capture_procedures "false"
#@     set write_test_new_translation_engine "false"
#@     set test_default_scan_style  "multiplexed_flip_flop"
#@     set test_jump_over_bufs_invs "true"
#@     set test_point_keep_hierarchy "false"
#@     set test_mux_constant_so "false"
#@     set test_use_test_models "false"
#@     set test_stil_netlist_format "db"
#@     group_variable  test  "test_protocol_add_cycle"
#@     group_variable  test  "test_write_four_cycle_stil_protocol"
#@     group_variable  test  "test_stil_multiclock_capture_procedures"
#@     group_variable  test  "test_default_scan_style"
#@     group_variable  preview_scan  "test_jump_over_bufs_invs"
#@     group_variable  insert_dft   "test_point_keep_hierarchy"
#@     group_variable  insert_dft  "test_mux_constant_so"
#@     group_variable  test  "test_stil_netlist_format"
#@ }
#@ set test_rtldrc_latch_check_style "default"
#@ set test_enable_capture_checks "true"
#@ set ctldb_use_old_prot_flow "false"
#@ set test_bsd_default_delay  0.0
#@ set test_bsd_default_bidir_delay  0.0
#@ set test_bsd_default_strobe  95.0
#@ set test_bsd_default_strobe_width  0.0
#@ 
#@ #
#@ #       Test Variable Group:
#@ #
#@ #       These variables affects the set_scan_state command.
#@ #
#@ 
#@ set compile_seqmap_identify_shift_registers_with_synchronous_logic_ascii false
#@ 
#@ #
#@ #       Write_Test Variable Group:
#@ #
#@ #       These variables affect output of the WRITE_TEST command.
#@ #
#@ set write_test_input_dont_care_value  "X"
#@ set write_test_vector_file_naming_style  "%s_%d.%s"
#@ set write_test_scan_check_file_naming_style   "%s_schk.%s"
#@ set write_test_pattern_set_naming_style  "TC_Syn_%d"
#@ set write_test_max_cycles  0
#@ set write_test_max_scan_patterns  0
#@ # /*retain "tssi_ascii" (equivalent to "tds") for backward compatability */
#@ set write_test_formats   {synopsys tssi_ascii tds verilog vhdl wgl}
#@ set write_test_include_scan_cell_info  "true"
#@ set write_test_round_timing_values "true"
#@ 
#@ 
#@ #
#@ #       Schematic and EDIF and Hdl Variable Groups:
#@ #
#@ #       These variables affect the schematics created by the
#@ #       create_schematic command, define the behavior of the
#@ #       DC system EDIF interface, and are for controlling hdl
#@ #       reading.
#@ #
#@ set bus_dimension_separator_style  {][}
#@ set bus_naming_style  {%s[%d]}
#@ 
#@ 
#@ #
#@ #       Schematic and EDIF Variable Groups:
#@ #
#@ #       These variables affect the schematics created by the
#@ #       create_schematic command and define the behavior of
#@ #       the DC system EDIF interface.
#@ #
#@ set bus_range_separator_style  ":"
#@ 
#@ 
#@ #
#@ # EDIF and Io Variable Groups:
#@ #
#@ # These variables define the behavior of the DC system EDIF interface and
#@ # define the behavior of the DC system interfaces, i.e. LSI, Mentor, TDL, SGE,# etc.
#@ 
#@ set bus_inference_descending_sort  "true"
#@ set bus_inference_style  ""
#@ set write_name_nets_same_as_ports  "false"
#@ #
#@ #       Schematic Variable Group:
#@ #
#@ #       These variables affect the schematics created by the
#@ #       create_schematic command.
#@ #
#@ set font_library  "1_25.font"
#@ set generic_symbol_library  "generic.sdb"
#@ 
#@ #
#@ #       Io Variable Group:
#@ #
#@ #       These variables define the behavior of the DC system
#@ #       interfaces, i.e. LSI, Mentor, TDL, SGE, etc.
#@ #
#@ #set db2sge_output_directory  ""
#@ #set db2sge_scale  "2"
#@ #set db2sge_overwrite   "true"
#@ #set db2sge_display_symbol_names  "false"
#@ 
#@ 
#@ #set db2sge_display_pin_names  "false"
#@ #set db2sge_display_instance_names   "false"
#@ #set db2sge_use_bustaps   "false"
#@ #set db2sge_use_compound_names   "true"
#@ #set db2sge_bit_type   "std_logic"
#@ #set db2sge_bit_vector_type   "std_logic_vector"
#@ #set db2sge_one_name   "'1'"
#@ #set db2sge_zero_name  "'0'"
#@ #set db2sge_unknown_name  "'X'"
#@ #set db2sge_target_xp  "false"
#@ #set db2sge_tcf_package_file  "synopsys_tcf.vhd"
#@ #set db2sge_use_lib_section  ""
#@ #set db2sge_script  ""
#@ #set db2sge_command  ""
#@ 
#@ # set equationout_and_sign  "*"
#@ # set equationout_or_sign  "+"
#@ # set equationout_postfix_negation  "true"
#@ 
#@ # # [wjchen] 2006/08/14: The following variables are obsoleted for DC simpilification.
#@ #set lsiin_net_name_prefix  "NET_"
#@ #set lsiout_inverter_cell  ""
#@ #set lsiout_upcase  "true"
#@ 
#@ #set mentor_bidirect_value  "INOUT"
#@ #set mentor_do_path  ""
#@ #set mentor_input_output_property_name  "PINTYPE"
#@ #set mentor_input_value  "IN"
#@ #set mentor_logic_one_value  "1SF"
#@ #set mentor_logic_zero_one_property_name  "INIT"
#@ #set mentor_logic_zero_value  "0SF"
#@ #set mentor_output_value  "OUT"
#@ #set mentor_primitive_property_name  "PRIMITIVE"
#@ #set mentor_primitive_property_value  "MODULE"
#@ #set mentor_reference_property_name  "COMP"
#@ #set mentor_search_path   ""
#@ #set mentor_write_symbols   "true"
#@ 
#@ ## [wjchen] 0606_simp
#@ #set pla_read_create_flip_flop   "false"
#@ #set tdlout_upcase   "true"
#@ 
#@ # # [wjchen] 2006/08/14: The following4 variables are obsoleted for DC simpilification.
#@ # set xnfout_constraints_per_endpoint   "50"
#@ # set xnfout_default_time_constraints   true
#@ # set xnfout_clock_attribute_style   "CLK_ONLY"
#@ # set xnfout_library_version  ""
#@ 
#@ # # [wjchen] 2006/08/11: The following 8 variables are obsoleted for DC simpilification.
#@ # set xnfin_family   "4000"
#@ # set xnfin_ignore_pins   "GTS GSR GR"
#@ # set xnfin_dff_reset_pin_name             "RD"
#@ # set xnfin_dff_set_pin_name               "SD"
#@ # set xnfin_dff_clock_enable_pin_name      "CE"
#@ # set xnfin_dff_data_pin_name              "D"
#@ # set xnfin_dff_clock_pin_name             "C"
#@ # set xnfin_dff_q_pin_name                 "Q"
#@ # 
#@ 
#@ #
#@ #       EDIF Variable Group:
#@ #
#@ #       These variables define the behavior of the DC system
#@ #       EDIF interface.
#@ #
#@ 
#@ ##[wjchen] 2006/08/24
#@ 
#@ # set bus_extraction_style   {%s[%d:%d]}
#@ 
#@ ##[wjchen] 2006/08/24
#@ #set edifin_autoconnect_offpageconnectors   "false"
#@ #set edifin_autoconnect_ports   "false"
#@ #set edifin_dc_script_flag   ""
#@ #set edifin_delete_empty_cells   "true"
#@ #set edifin_delete_ripper_cells   "true"
#@ #set edifin_ground_net_name   ""
#@ #set edifin_ground_net_property_name   ""
#@ #set edifin_ground_net_property_value   ""
#@ #set edifin_ground_port_name   ""
#@ #set edifin_instance_property_name    ""
#@ #set edifin_portinstance_disabled_property_name   ""
#@ #set edifin_portinstance_disabled_property_value   ""
#@ #set edifin_portinstance_property_name   ""
#@ #set edifin_power_net_name  ""
#@ #set edifin_power_net_property_name  ""
#@ #set edifin_power_net_property_value  ""
#@ #set edifin_power_port_name  ""
#@ #set edifin_use_identifier_in_rename  "false"
#@ #set edifin_view_identifier_property_name  ""
#@ #set edifin_lib_logic_1_symbol  ""
#@ #set edifin_lib_logic_0_symbol  ""
#@ #set edifin_lib_in_port_symbol  ""
#@ #set edifin_lib_out_port_symbol  ""
#@ #set edifin_lib_inout_port_symbol  ""
#@ #set edifin_lib_in_osc_symbol  ""
#@ #set edifin_lib_out_osc_symbol  ""
#@ #set edifin_lib_inout_osc_symbol  ""
#@ #set edifin_lib_mentor_netcon_symbol  ""
#@ #set edifin_lib_ripper_bits_property  ""
#@ #set edifin_lib_ripper_bus_end  ""
#@ #set edifin_lib_ripper_cell_name  ""
#@ #set edifin_lib_ripper_view_name  ""
#@ #set edifin_lib_route_grid  1024
#@ #set edifin_lib_templates  {}
#@ #set edifout_dc_script_flag  ""
#@ #set edifout_design_name  "Synopsys_edif"
#@ #set edifout_designs_library_name  "DESIGNS"
#@ #set edifout_display_instance_names  "false"
#@ #set edifout_display_net_names  "false"
#@ #set edifout_external  "true"
#@ #set edifout_external_graphic_view_name  "Graphic_representation"
#@ #set edifout_external_netlist_view_name  "Netlist_representation"
#@ #set edifout_external_schematic_view_name  "Schematic_representation"
#@ #set edifout_ground_name  "logic_0"
#@ #set edifout_ground_net_name  ""
#@ #set edifout_ground_net_property_name  ""
#@ #set edifout_ground_net_property_value  ""
#@ #set edifout_ground_pin_name  "logic_0_pin"
#@ #set edifout_ground_port_name  "GND"
#@ #set edifout_instance_property_name   ""
#@ #set edifout_instantiate_ports  "false"
#@ #set edifout_library_graphic_view_name  "Graphic_representation"
#@ #set edifout_library_netlist_view_name  "Netlist_representation"
#@ #set edifout_library_schematic_view_name  "Schematic_representation"
#@ #set edifout_merge_libraries  "false"
#@ #set edifout_multidimension_arrays  "false"
#@ #set edifout_name_oscs_different_from_ports  "false"
#@ #set edifout_name_rippers_same_as_wires  "false"
#@ #set edifout_netlist_only   "false"
#@ #set edifout_no_array   "false"
#@ #set edifout_numerical_array_members   "false"
#@ #set edifout_pin_direction_in_value   ""
#@ #set edifout_pin_direction_inout_value   ""
#@ #set edifout_pin_direction_out_value   ""
#@ #set edifout_pin_direction_property_name   ""
#@ #set edifout_pin_name_property_name   ""
#@ #set edifout_portinstance_disabled_property_name    ""
#@ #set edifout_portinstance_disabled_property_value    ""
#@ #set edifout_portinstance_property_name    ""
#@ #set edifout_power_and_ground_representation   "cell"
#@ #set edifout_power_name    "logic_1"
#@ #set edifout_power_net_name   ""
#@ #set edifout_power_net_property_name   ""
#@ #set edifout_power_net_property_value   ""
#@ #set edifout_power_pin_name    "logic_1_pin"
#@ #set edifout_power_port_name    "VDD"
#@ #set edifout_skip_port_implementations   "false"
#@ #set edifout_target_system   ""
#@ #set edifout_top_level_symbol   "true"
#@ #set edifout_translate_origin   ""
#@ #set edifout_unused_property_value   ""
#@ #set edifout_write_attributes   "false"
#@ #set edifout_write_constraints   "false"
#@ #set edifout_write_properties_list   {}
#@ #set read_name_mapping_nowarn_libraries   {}
#@ #set write_name_mapping_nowarn_libraries    {}
#@ 
#@ #
#@ #       Hdl and Vhdlio Variable Groups:
#@ #
#@ #       These variables are for controlling hdl reading, writing,
#@ #       and optimizing.
#@ #
#@ set hdlin_enable_upf_compatible_naming	"FALSE"
#@ set hdlin_auto_save_templates		"FALSE"
#@ set hdlin_generate_naming_style   	"%s_%d"
#@ set hdlin_enable_relative_placement     "rb"
#@ set hdlin_mux_rp_limit                  "128x4"
#@ set hdlin_generate_separator_style	"_"
#@ set hdlin_ignore_textio_constructs      "TRUE"
#@ set hdlin_infer_function_local_latches	"FALSE"
#@ set hdlin_keep_signal_name		"all_driving"
#@ set hdlin_module_arch_name_splitting	"FALSE"
#@ set hdlin_preserve_sequential           "none"
#@ set hdlin_presto_net_name_prefix	"N"
#@ set hdlin_presto_cell_name_prefix	"C"
#@ set hdlin_strict_verilog_reader		"FALSE"
#@ set hdlin_prohibit_nontri_multiple_drivers  "TRUE"
#@ if { $synopsys_program_name == "de_shell" } { 
#@   set hdlin_elab_errors_deep		"TRUE"
#@ } else {
#@   set hdlin_elab_errors_deep		"FALSE"
#@ }
#@ set hdlin_mux_size_min			2
#@ set hdlin_subprogram_default_values	"FALSE"
#@ set hdlin_field_naming_style		"" 
#@ set hdlin_upcase_names            	"FALSE"
#@ set hdlin_sv_union_member_naming        "FALSE"
#@ set hdlin_sv_interface_only_modules     ""
#@ set hdlin_sv_enable_rtl_attributes      "FALSE"
#@ set hdlin_vhdl_std		        2008
#@ set hdlin_vhdl93_concat				"TRUE"
#@ set hdlin_vhdl_syntax_extensions	"FALSE"
#@ set hdlin_analyze_verbose_mode		0
#@ set hdlin_report_sequential_pruning	"FALSE"
#@ set hdlin_vrlg_std                	2005
#@ set hdlin_sverilog_std                	2012
#@ set hdlin_while_loop_iterations   	4096	
#@ set hdlin_reporting_level        	"basic"
#@ set hdlin_autoread_verilog_extensions ".v"
#@ set hdlin_autoread_sverilog_extensions ".sv .sverilog"
#@ set hdlin_autoread_vhdl_extensions ".vhd .vhdl"
#@ set hdlin_autoread_exclude_extensions ""
#@ 
#@ set bus_minus_style   "-%d"
#@ set hdlin_latch_always_async_set_reset   FALSE
#@ set hdlin_ff_always_sync_set_reset   FALSE
#@ set hdlin_ff_always_async_set_reset   TRUE
#@ set hdlin_check_input_netlist   FALSE
#@ set hdlin_check_no_latch   FALSE
#@ set hdlin_mux_for_array_read_sparseness_limit 90
#@ set hdlin_infer_mux   "default"
#@ set hdlin_mux_oversize_ratio   100
#@ set hdlin_mux_size_limit   32
#@ set hdlin_mux_size_only    1
#@ set hdlin_infer_multibit   "default_none"
#@ set hdlin_enable_rtldrc_info "false"
#@ set hdlin_interface_port_ABI 3
#@ set hdlin_shorten_long_module_name "false"
#@ set hdlin_module_name_limit 256
#@ set hdlin_enable_assertions "FALSE"
#@ set hdlin_enable_configurations "FALSE"
#@ set hdlin_sv_blackbox_modules ""
#@ set hdlin_sv_tokens "FALSE"
#@ set hdlin_sv_packages "enable"
#@ set hdlin_verification_priority "FALSE"
#@ set hdlin_enable_elaborate_ref_linking "FALSE"
#@ set hdlin_enable_hier_naming "FALSE"
#@ set hdlin_enable_elaborate_update "true"
#@ set hdlin_vhdl_mixed_language_instantiation "FALSE"
#@ set hdl_preferred_license   ""
#@ set hdl_keep_licenses   "true"
#@ set hlo_resource_allocation   "constraint_driven"
#@ set sdfout_top_instance_name   ""
#@ set sdfout_time_scale   1.0
#@ set sdfout_min_rise_net_delay   0.
#@ set sdfout_min_fall_net_delay   0.
#@ set sdfout_min_rise_cell_delay   0.
#@ set sdfout_min_fall_cell_delay   0.
#@ set sdfout_write_to_output   "false"
#@ set sdfout_allow_non_positive_constraints   "false"
#@ set sdfin_top_instance_name   ""
#@ set sdfin_min_rise_net_delay   0.
#@ set sdfin_min_fall_net_delay   0. 
#@ set sdfin_min_rise_cell_delay   0.
#@ set sdfin_min_fall_cell_delay   0.
#@ set sdfin_rise_net_delay_type   "maximum"
#@ set sdfin_fall_net_delay_type   "maximum"
#@ set sdfin_rise_cell_delay_type   "maximum"
#@ set sdfin_fall_cell_delay_type   "maximum"
#@ set site_info_file ${synopsys_root}/admin/license/site_info
#@ if { [string compare $dc_shell_mode "tcl"] == 0 } {
#@   alias site_info sh cat $site_info_file
#@ } else {
#@   alias site_info "sh cat site_info_file"
#@ }
#@ set template_naming_style   "%s_%p"
#@ set template_parameter_style   "%s%d"
#@ set template_separator_style   "_"
#@ set verilogout_equation "false" 
#@ set verilogout_ignore_case   "false"
#@ set verilogout_no_tri   "false"
#@ set verilogout_inout_is_in   "false"
#@ set verilogout_single_bit   "false"
#@ set verilogout_higher_designs_first   "FALSE"
#@ # set verilogout_levelize   "FALSE"
#@ set verilogout_include_files   {}
#@ set verilogout_unconnected_prefix   "SYNOPSYS_UNCONNECTED_"
#@ set verilogout_show_unconnected_pins   "FALSE"
#@ set verilogout_no_negative_index   "FALSE"
#@ #set enable_2003.03_verilog_reader TRUE 
#@ # to have a net instead of 1'b0 and 1'b1 in inouts:
#@ set verilogout_indirect_inout_connection "FALSE"
#@ 
#@ # set vhdlout_architecture_name   "SYN_%a_%u"
#@ set vhdlout_bit_type   "std_logic"
#@ # set vhdlout_bit_type_resolved   "TRUE"
#@ set vhdlout_bit_vector_type   "std_logic_vector"
#@ # set vhdlout_conversion_functions   {}
#@ # set vhdlout_dont_write_types   "FALSE"
#@ set vhdlout_equations   "FALSE"
#@ set vhdlout_one_name   "'1'"
#@ set vhdlout_package_naming_style   "CONV_PACK_%d"
#@ set vhdlout_preserve_hierarchical_types   "VECTOR"
#@ set vhdlout_separate_scan_in   "FALSE"
#@ set vhdlout_single_bit   "USER"
#@ set vhdlout_target_simulator   ""
#@ set vhdlout_three_state_name   "'Z'"
#@ set vhdlout_three_state_res_func   ""
#@ # set vhdlout_time_scale   1.0
#@ set vhdlout_top_configuration_arch_name   "A"
#@ set vhdlout_top_configuration_entity_name   "E"
#@ set vhdlout_top_configuration_name  "CFG_TB_E"
#@ set vhdlout_unknown_name   "'X'"
#@ set vhdlout_upcase   "FALSE"
#@ set vhdlout_use_packages   {IEEE.std_logic_1164}
#@ set vhdlout_wired_and_res_func   ""
#@ set vhdlout_wired_or_res_func   ""
#@ set vhdlout_write_architecture   "TRUE"
#@ set vhdlout_write_components   "TRUE"
#@ set vhdlout_write_entity   "TRUE"
#@ set vhdlout_write_top_configuration   "FALSE"
#@ # set vhdlout_synthesis_off   "TRUE"
#@ set vhdlout_zero_name   "'0'"
#@ #set vhdlout_levelize   "FALSE"
#@ set vhdlout_dont_create_dummy_nets   "FALSE"
#@ set vhdlout_follow_vector_direction   "TRUE"
#@ 
#@ 
#@ # vhdl netlist reader variables 
#@ set enable_vhdl_netlist_reader "FALSE"
#@ 
#@ # variables pertaining to VHDL library generation 
#@ set vhdllib_timing_mesg   "true"
#@ set vhdllib_timing_xgen   "false"
#@ set vhdllib_timing_checks   "true"
#@ set vhdllib_negative_constraint   "false"
#@ set vhdllib_glitch_handle   "true"
#@ set vhdllib_pulse_handle   "use_vhdllib_glitch_handle"
#@ # /*vhdllib_architecture = {FTBM, UDSM, FTSM, FTGS, VITAL}; */
#@ set vhdllib_architecture   {VITAL}
#@ set vhdllib_tb_compare   0
#@ set vhdllib_tb_x_eq_dontcare   FALSE
#@ set vhdllib_logic_system   "ieee-1164"
#@ set vhdllib_logical_name   ""
#@ 
#@ # variables pertaining to technology library processing 
#@ set read_db_lib_warnings   FALSE
#@ set read_translate_msff    TRUE
#@ set libgen_max_differences   -1
#@ 
#@ #
#@ # Gui Variable Group
#@ #  used for design_vision and psyn_gui
#@ #
#@ set gui_auto_start 0
#@ set gui_start_option_no_windows 0
#@ group_variable  gui_variables  "gui_auto_start" 
#@ group_variable  gui_variables  "gui_start_option_no_windows"
#@ 
#@ #
#@ # If you like emacs, uncomment the next line 
#@ # set text_editor_command  "emacs -fn 8x13 %s &" ; 
#@ 
#@ # You can delete pairs from this list, but you can't add new ones
#@ # unless you also update the UIL files.  So, customers can not add
#@ # dialogs to this list, only Synopsys can do that.
#@ #
#@ set view_independent_dialogs   { "test_report"    " Test Reports "                              "report_print"   " Report "                              "report_options" " Report Options "                              "report_win"     " Report Output "                              "manual_page"    " Manual Page " } 
#@ 
#@ # if color Silicon Graphics workstation 
#@ if { [info exists x11_vendor_string] && [info exists x11_is_color]} {
#@   if {  $x11_vendor_string == "Silicon" && $x11_is_color == "true" } {
#@     set x11_set_cursor_foreground "magenta" 
#@     set view_use_small_cursor "true"
#@     set view_set_selecting_color "white"
#@   } 
#@ } 
#@ 
#@ # if running on an Apollo machine 
#@ set found_x11_vendor_string_apollo 0
#@ set found_arch_apollo 0
#@ if { [info exists x11_vendor_string]} {
#@   if { $x11_vendor_string == "Apollo "} {
#@     set found_x11_vendor_string_apollo 1
#@   }
#@ }
#@ if { [info exists arch]} {
#@   if { $arch == "apollo"} {
#@     set found_arch_apollo 1
#@   }
#@ }
#@ if { $found_x11_vendor_string_apollo == 1 || $found_arch_apollo == 1} {
#@   set enable_page_mode  "false"
#@ } else {
#@   set enable_page_mode  "true"
#@ }
#@ 
#@ # don't work around this bug on the Apollo 
#@ if { $found_x11_vendor_string_apollo == 1} {
#@   set view_extend_thick_lines "false"
#@ } else {
#@   set view_extend_thick_lines "true" 
#@ }
#@ 
#@ #
#@ #        Suffix Variable Group:
#@ #
#@ #        Suffixes recognized by the Design Analyzer menu in file choices
#@ #
#@ if { $synopsys_program_name == "design_vision" || $synopsys_program_name == "psyn_gui" } { 
#@   # For star 93040 do NOT include NET in list, 108991 : pdb suffix added
#@   set view_read_file_suffix    {db gdb sdb pdb edif eqn fnc lsi mif pla st tdl v vhd vhdl xnf}
#@ } else {
#@   set view_read_file_suffix    {db gdb sdb edif eqn fnc lsi mif NET pla st tdl v vhd vhdl xnf} 
#@ }
#@ 
#@ set view_analyze_file_suffix    {v vhd vhdl} 
#@ set view_write_file_suffix   {gdb db sdb do edif eqn fnc lsi NET neted pla st tdl v vhd vhdl xnf} 
#@ set view_execute_script_suffix   {.script .scr .dcs .dcv .dc .con} 
#@ set view_arch_types   {sparcOS5 hpux10 rs6000 sgimips} 
#@ 
#@ #
#@ #        links_to_layout Variable Group:
#@ #
#@ #        These variables affect the read_timing, write_timing
#@ #        set_annotated_delay, compile, create_wire_load and reoptimize_design
#@ #        commands.
#@ #
#@ if {$synopsys_program_name != "dc_sms_shell"} {
#@   set auto_wire_load_selection   "true" 
#@   set compile_create_wire_load_table   "false" 
#@ }
#@ set rtl_load_resistance_factor 0.0
#@ 
#@ #      power Variable Group:
#@ #
#@ #      These variables affect the behavior of power optimization and analysis.
#@ #
#@ 
#@ set power_keep_license_after_power_commands   "false"
#@ set power_rtl_saif_file                       "power_rtl.saif"
#@ set power_sdpd_saif_file                      "power_sdpd.saif"
#@ set power_preserve_rtl_hier_names             "false"
#@ set power_do_not_size_icg_cells               "true"
#@ set power_hdlc_do_not_split_cg_cells          "false"
#@ set power_cg_flatten                          "false"
#@ set power_opto_extra_high_dynamic_power_effort "false"
#@ set power_default_static_probability          0.5
#@ set power_default_toggle_rate                 0.1
#@ set power_default_toggle_rate_type            "fastest_clock"
#@ set power_model_preference                    "nlpm"
#@ set power_sa_propagation_effort               "low"
#@ set power_sa_propagation_verbose              "false"
#@ set power_fix_sdpd_annotation                 "true"
#@ set power_fix_sdpd_annotation_verbose         "false"
#@ set power_sdpd_message_tolerance              0.00001
#@ set do_operand_isolation                      "false"
#@ set power_cg_module_naming_style              ""
#@ set power_cg_cell_naming_style                ""
#@ set power_cg_gated_clock_net_naming_style     ""
#@ set power_rclock_use_asynch_inputs            "false"
#@ set power_rclock_inputs_use_clocks_fanout     "true"
#@ set power_rclock_unrelated_use_fastest        "true"
#@ set power_lib2saif_rise_fall_pd               "false"
#@ set power_min_internal_power_threshold        ""
#@ 
#@ 
#@ # SystemC related variables
#@ set systemcout_levelize "true"
#@ set systemcout_debug_mode "false"
#@ 
#@ # ACS Variables
#@ if { [info exists acs_work_dir] } {
#@   set acs_area_report_suffix                  "area"
#@   set acs_autopart_max_area                   "0.0"
#@   set acs_autopart_max_percent                "0.0"
#@   set acs_budgeted_cstr_suffix                "con"
#@   set acs_compile_script_suffix               "autoscr"
#@   set acs_constraint_file_suffix              "con"
#@   set acs_cstr_report_suffix                  "cstr"
#@   set acs_db_suffix                           "db"
#@   set acs_dc_exec                             ""
#@   set acs_default_pass_name                   "pass"
#@   set acs_exclude_extensions                  {}
#@   set acs_exclude_list                        [list $synopsys_root]
#@   set acs_global_user_compile_strategy_script "default"
#@   set acs_hdl_verilog_define_list             {}
#@   set acs_hdl_source                          {}
#@   set acs_lic_wait                              0
#@   set acs_log_file_suffix                     "log"
#@   set acs_make_args                           "set acs_make_args" 
#@   set acs_make_exec                           "gmake"
#@   set acs_makefile_name                       "Makefile"
#@   set acs_num_parallel_jobs                     1
#@   set acs_override_report_suffix              "report"
#@   set acs_override_script_suffix              "scr"
#@   set acs_qor_report_suffix                   "qor"
#@   set acs_timing_report_suffix                "tim"
#@   set acs_use_autopartition                   "false"
#@   set acs_use_default_delays                  "false"
#@   set acs_user_budgeting_script               "budget.scr"
#@   set acs_user_compile_strategy_script_suffix "compile"
#@   set acs_verilog_extensions                  {.v}
#@   set acs_vhdl_extensions                     {.vhd}
#@   set acs_work_dir                            [pwd]
#@   set check_error_list [list         CMD-004 CMD-006 CMD-007 CMD-008 CMD-009 CMD-010 CMD-011 CMD-012         CMD-014 CMD-015 CMD-016 CMD-019 CMD-026 CMD-031 CMD-037         DB-1         DCSH-11         DES-001 	ACS-193         FILE-1 FILE-2 FILE-3 FILE-4         LINK-7 LINT-7 LINT-20 LNK-023         OPT-100 OPT-101 OPT-102 OPT-114 OPT-124 OPT-127 OPT-128 OPT-155 	OPT-157 OPT-181 OPT-462         UI-11 UI-14 UI-15 UI-16 UI-17 UI-19 UI-20 UI-21 UI-22 UI-23 UI-40         UI-41          UID-4 UID-6 UID-7 UID-8 UID-9 UID-13 UID-14 UID-15 UID-19 UID-20         UID-25 UID-27 UID-28 UID-29 UID-30 UID-32 UID-58 UID-87 UID-103         UID-109 UID-270  UID-272 UID-403 UID-440 UID-444          UIO-2 UIO-3 UIO-4 UIO-25 UIO-65 UIO-66 UIO-75 UIO-94 UIO-95         EQN-6 EQN-11 EQN-15 EQN-16 EQN-18 EQN-20       ]
#@   set ilm_preserve_core_constraints                       "false"
#@ }
#@ 
#@ #
#@ #
#@ #        DesignTime Variable Group
#@ #
#@ #        The variables which affect the DesignTime timing engine
#@ #
#@ 
#@ set case_analysis_log_file ""
#@ set case_analysis_sequential_propagate "false"
#@ set create_clock_no_input_delay "false"
#@ set disable_auto_time_borrow "false"
#@ set disable_case_analysis "false"
#@ set disable_conditional_mode_analysis "false"
#@ set disable_library_transition_degradation "false"
#@ set dont_bind_unused_pins_to_logic_constant "false"
#@ set enable_slew_degradation "true"
#@ set high_fanout_net_pin_capacitance 1.000000
#@ set high_fanout_net_threshold 1000
#@ set lib_thresholds_per_lib "true"
#@ set rc_adjust_rd_when_less_than_rnet "true"
#@ set rc_ceff_delay_min_diff_ps 0.250000
#@ set rc_degrade_min_slew_when_rd_less_than_rnet "false"
#@ set rc_driver_model_max_error_pct 0.160000
#@ set rc_filter_rd_less_than_rnet "true"
#@ set rc_input_threshold_pct_fall 50.000000
#@ set rc_input_threshold_pct_rise 50.000000
#@ set rc_output_threshold_pct_fall 50.000000
#@ set rc_output_threshold_pct_rise 50.000000
#@ set rc_rd_less_than_rnet_threshold 0.450000
#@ set rc_slew_derate_from_library 1.000000
#@ set rc_slew_lower_threshold_pct_fall 20.000000
#@ set rc_slew_lower_threshold_pct_rise 20.000000
#@ set rc_slew_upper_threshold_pct_fall 80.000000
#@ set rc_slew_upper_threshold_pct_rise 80.000000
#@ set timing_disable_cond_default_arcs "false"
#@ #timing_enable_multiple_clocks_per_reg is on by default
#@ #set timing_enable_multiple_clocks_per_reg "false"
#@ set timing_report_attributes {dont_touch dont_use map_only size_only ideal_net infeasible_paths}
#@ set timing_self_loops_no_skew "false"
#@ set when_analysis_permitted "true"
#@ set when_analysis_without_case_analysis "false"
#@ 
#@ 
#@ #
#@ #        Variable Group Definitions:
#@ #
#@ #        The group_variable() command groups variables for display
#@ #        in the "File/Defaults" dialog and defines groups of variables
#@ #        for the list() command.
#@ #
#@ 
#@ set enable_instances_in_report_net   "true"
#@ # Set report options env variables
#@ set view_report_interactive     "true"
#@ set view_report_output2file     "false"
#@ set view_report_append          "true"
#@ 
#@ if { $synopsys_program_name != "ptxr" } {
#@ 
#@   group_variable  report_variables  "enable_instances_in_report_net" 
#@   group_variable  report_variables  "view_report_interactive"
#@   group_variable  report_variables  "view_report_output2file"
#@   group_variable  report_variables  "view_report_append"
#@ 
#@   # "links_to_layout" variables are used by multiple commands 
#@   # auto_wire_load_selection is also in the "compile" variable group. 
#@   group_variable  links_to_layout  "auto_wire_load_selection" 
#@ 
#@   # variables starting with "compile" are also in the compile variable group 
#@   group_variable  links_to_layout  "compile_dont_touch_annotated_cell_during_inplace_opt" 
#@ 
#@   group_variable  links_to_layout  "compile_update_annotated_delays_during_inplace_opt" 
#@   group_variable  links_to_layout  "compile_create_wire_load_table" 
#@ 
#@   group_variable  links_to_layout  "reoptimize_design_changed_list_file_name" 
#@   group_variable  links_to_layout  "sdfout_allow_non_positive_constraints" 
#@ 
#@ }	;# $synopsys_program_name != "ptxr"
#@ 
#@ #
#@ # to find the XErrorDB and XKeySymDB for X11 file 
#@ set motif_files ${synopsys_root}/admin/setup
#@ # set filename for logging input file 
#@ set filename_log_file   "filenames.log"  
#@ # whether to delete the filename log after the normal exits 
#@ set exit_delete_filename_log_file   "true"
#@ 
#@ # executable to fire off RTLA/BCV 
#@ set xterm_executable   "xterm"
#@ 
#@ if { $synopsys_program_name != "ptxr" } {
#@ 
#@   # "system" variables are used by multiple commands 
#@   group_variable  system  auto_link_disable 
#@   group_variable  system  auto_link_options 
#@   group_variable  system  command_log_file 
#@   group_variable  system  company  
#@   group_variable  system  compatibility_version 
#@ 
#@   if { [string compare $dc_shell_mode "default"] == 0 } {
#@     group_variable  system  "current_design"  
#@     group_variable  system  "current_instance" 
#@     group_variable  system  "dc_shell_status"  
#@   } else {
#@     set current_design   ""
#@     set current_instance ""
#@     group_variable  system  "current_design"  
#@     group_variable  system  "current_instance" 
#@   }
#@ 
#@   group_variable  system  "designer"  
#@   group_variable  system  "echo_include_commands"  
#@   group_variable  system  "enable_page_mode"  
#@   group_variable  system  "change_names_update_inst_tree"  
#@   group_variable  system  "change_names_dont_change_bus_members"  
#@   group_variable  system  "default_name_rules"  
#@   group_variable  system  "verbose_messages" 
#@   group_variable  system  "link_library"  
#@   group_variable  system  "link_force_case"  
#@   group_variable  system  "search_path"  
#@   group_variable  system  "synthetic_library"  
#@   group_variable  system  "target_library"  
#@   group_variable  system  "uniquify_naming_style"  
#@   group_variable  system  "suppress_errors"  
#@   group_variable  system  "find_converts_name_lists" 
#@   group_variable  system  "filename_log_file" 
#@   group_variable  system  "exit_delete_filename_log_file" 
#@   group_variable  system  "syntax_check_status" 
#@   group_variable  system  "context_check_status" 
#@ 
#@   #/* "compile" variables are used by the compile command */
#@   group_variable  compile  "compile_assume_fully_decoded_three_state_busses"  
#@   group_variable  compile  "compile_no_new_cells_at_top_level"  
#@   group_variable  compile  "compile_dont_touch_annotated_cell_during_inplace_opt"
#@   group_variable  compile  "reoptimize_design_changed_list_file_name" 
#@   group_variable  compile  "compile_create_wire_load_table" 
#@   group_variable  compile  "compile_update_annotated_delays_during_inplace_opt"
#@   group_variable  compile  "compile_instance_name_prefix"  
#@   group_variable  compile  "compile_instance_name_suffix"  
#@   group_variable  compile  "compile_negative_logic_methodology"  
#@   group_variable  compile  "compile_disable_hierarchical_inverter_opt" 
#@ 
#@   group_variable  compile  "port_complement_naming_style"  
#@   group_variable  compile  "auto_wire_load_selection"  
#@   group_variable  compile  "rtl_load_resistance_factor"
#@   group_variable  compile  "compile_implementation_selection"  
#@   group_variable  compile  "compile_use_low_timing_effort"  
#@   group_variable  compile  "compile_fix_cell_degradation"  
#@   group_variable  compile  "compile_preserve_subdesign_interfaces" 
#@   group_variable  compile  "compile_enable_constant_propagation_with_no_boundary_opt"
#@   group_variable  compile  "compile_delete_unloaded_sequential_cells" 
#@   group_variable  compile  "enable_recovery_removal_arcs" 
#@   group_variable  compile  "compile_checkpoint_phases"
#@   group_variable  compile  "compile_cpu_limit"
#@   group_variable  compile  "compile_top_all_paths"  
#@   group_variable  compile  "compile_top_all_paths"
#@   group_variable  compile  "compile_top_acs_partition"
#@   group_variable  compile  "default_port_connection_class"
#@   group_variable  compile  "compile_retime_license_behavior"
#@   group_variable  compile  "dont_touch_nets_with_size_only_cells"
#@   group_variable  compile  "compile_seqmap_no_scan_cell"
#@ 
#@   if { $synopsys_program_name == "dc_shell" && [shell_is_in_topographical_mode] } {
#@     group_variable  compile  "dct_prioritize_area_correlation"
#@     group_variable  compile  "compile_error_on_missing_physical_cells"
#@   }
#@ 
#@   # "multibit" variables are used by the the multibit mapping functionality 
#@ 
#@   group_variable  multibit  "bus_multiple_separator_style" 
#@ 
#@   # "ilm" variables are used by Interface Logic Model functionality 
#@ 
#@   group_variable  ilm  "ilm_ignore_percentage" 
#@ 
#@   # "estimate" variables are used by the estimate command 
#@   # The estimate command also recognizes the "compile" variables. 
#@   group_variable  estimate  "estimate_resource_preference"  
#@ 
#@   # "synthetic_library" variables 
#@   group_variable  synlib  "cache_dir_chmod_octal"  
#@   group_variable  synlib  "cache_file_chmod_octal"  
#@   group_variable  synlib  "cache_read"  
#@   group_variable  synlib  "cache_read_info"  
#@   group_variable  synlib  "cache_write"  
#@   group_variable  synlib  "cache_write_info"  
#@   group_variable  synlib  "synlib_dont_get_license"  
#@   group_variable  synlib  "synlib_wait_for_design_license"
#@   group_variable  synlib  "synthetic_library"
#@ 
#@   # "insert_dft" variables are used by the insert_dft and preview_dft commands
#@   #group_variable insert_dft   "test_default_client_order"
#@   group_variable  insert_dft   "insert_dft_clean_up"
#@   group_variable  insert_dft  "insert_test_design_naming_style"  
#@   group_variable  insert_dft  "test_clock_port_naming_style"  
#@   group_variable  insert_dft  "test_default_min_fault_coverage" 
#@   group_variable  insert_dft  "test_scan_clock_a_port_naming_style"  
#@   group_variable  insert_dft  "test_scan_clock_b_port_naming_style"  
#@   group_variable  insert_dft  "test_scan_clock_port_naming_style"  
#@   group_variable  insert_dft  "test_scan_enable_inverted_port_naming_style"  
#@   group_variable  insert_dft  "test_scan_enable_port_naming_style"  
#@   group_variable  insert_dft  "test_scan_in_port_naming_style"  
#@   group_variable  insert_dft  "test_scan_out_port_naming_style"  
#@   group_variable  insert_dft  "test_non_scan_clock_port_naming_style" 
#@   group_variable  insert_dft  "test_dedicated_subdesign_scan_outs" 
#@   group_variable  insert_dft  "test_disable_find_best_scan_out" 
#@   group_variable  insert_dft  "test_dont_fix_constraint_violations" 
#@   group_variable  insert_dft  "test_isolate_hier_scan_out" 
#@   group_variable  insert_dft  "test_mode_port_naming_style" 
#@   group_variable  insert_dft  "test_mode_port_inverted_naming_style" 
#@   group_variable  insert_dft  "compile_dont_use_dedicated_scanout" 
#@   group_variable  insert_dft  "test_mux_constant_si" 
#@ 
#@   # "preview_scan" variables are used by the preview_scan command 
#@   group_variable preview_scan "test_preview_scan_shows_cell_types" 
#@   group_variable  preview_scan  "test_scan_link_so_lockup_key" 
#@   group_variable  preview_scan  "test_scan_link_wire_key" 
#@   group_variable  preview_scan  "test_scan_segment_key" 
#@   group_variable  preview_scan  "test_scan_true_key" 
#@ 
#@   # "bsd" variables are used by the check_bsd and write_bsdl commands 
#@   group_variable  bsd  "test_user_test_data_register_naming_style" 
#@   group_variable  bsd  "test_user_defined_instruction_naming_style" 
#@   group_variable  bsd  "test_bsdl_default_suffix_name" 
#@   group_variable  bsd  "test_bsdl_max_line_length" 
#@   group_variable  bsd  "test_cc_ir_masked_bits" 
#@   group_variable  bsd  "test_cc_ir_value_of_masked_bits" 
#@ 
#@   group_variable  bsd  "test_bsd_allow_tolerable_violations" 
#@   group_variable  bsd  "test_bsd_optimize_control_cell" 
#@   group_variable  bsd  "test_bsd_control_cell_drive_limit" 
#@   group_variable  bsd  "test_bsd_manufacturer_id" 
#@   group_variable  bsd  "test_bsd_part_number" 
#@   group_variable  bsd  "test_bsd_version_number" 
#@   group_variable  bsd  "bsd_max_in_switching_limit" 
#@   group_variable  bsd  "bsd_max_out_switching_limit" 
#@ 
#@   # testmanager variables 
#@   group_variable  testmanager  "multi_pass_test_generation"  
#@ 
#@   # "testsim" variables 
#@   # group_variable  testsim  "testsim_print_stats_file"  
#@ 
#@   # "test" variables 
#@   group_variable  test  "test_default_bidir_delay" 
#@   group_variable  test  "test_default_delay" 
#@   group_variable  test  "test_default_period" 
#@   group_variable  test  "test_default_strobe" 
#@   group_variable  test  "test_default_strobe_width" 
#@   group_variable  test  "test_capture_clock_skew" 
#@   group_variable  test  "test_allow_clock_reconvergence" 
#@   group_variable  test  "test_check_port_changes_in_capture" 
#@   group_variable  test  "test_stil_max_line_length"
#@   group_variable  test  "test_infer_slave_clock_pulse_after_capture"
#@   group_variable  test  "test_rtldrc_latch_check_style"
#@   group_variable  test  "test_enable_capture_checks"
#@ 
#@   # "write_test" variables are used by the write_test command 
#@   group_variable  write_test  "write_test_formats" 
#@   group_variable  write_test  "write_test_include_scan_cell_info" 
#@   group_variable  write_test  "write_test_input_dont_care_value" 
#@   group_variable  write_test  "write_test_max_cycles" 
#@   group_variable  write_test  "write_test_max_scan_patterns" 
#@   group_variable  write_test  "write_test_pattern_set_naming_style" 
#@   group_variable  write_test  "write_test_scan_check_file_naming_style" 
#@   group_variable  write_test  "write_test_vector_file_naming_style" 
#@   group_variable  write_test  "write_test_round_timing_values" 
#@ 
#@   group_variable  view  "test_design_analyzer_uses_insert_scan"
#@ 
#@   # "io" variables are used by the read, read_lib, db2sge and write commands 
#@   group_variable  io  "bus_inference_descending_sort"
#@   group_variable  io  "bus_inference_style"
#@   #group_variable  io  "db2sge_output_directory"
#@   #group_variable  io  "db2sge_scale"
#@   #group_variable  io  "db2sge_overwrite"
#@   #group_variable  io  "db2sge_display_symbol_names"
#@   #group_variable  io  "db2sge_display_pin_names"
#@   #group_variable  io  "db2sge_display_instance_names"
#@   #group_variable  io  "db2sge_use_bustaps"
#@   #group_variable  io  "db2sge_use_compound_names"
#@   #group_variable  io  "db2sge_bit_type"
#@   #group_variable  io  "db2sge_bit_vector_type"
#@   #group_variable  io  "db2sge_one_name"
#@   #group_variable  io  "db2sge_zero_name"
#@   #group_variable  io  "db2sge_unknown_name"
#@   #group_variable  io  "db2sge_target_xp"
#@   #group_variable  io  "db2sge_tcf_package_file"
#@   #group_variable  io  "db2sge_use_lib_section"
#@   #group_variable  io  "db2sge_script"
#@   #group_variable  io  "db2sge_command" 
#@ 
#@ #  group_variable  io  "equationout_and_sign"
#@ #  group_variable  io  "equationout_or_sign"
#@ #  group_variable  io  "equationout_postfix_negation"
#@ 
#@   #  group_variable  io  "lsiin_net_name_prefix"
#@   #  group_variable  io  "lsiout_inverter_cell"
#@   #  group_variable  io  "lsiout_upcase"
#@ 
#@   #group_variable  io  "mentor_bidirect_value"
#@   #group_variable  io  "mentor_do_path"
#@   #group_variable  io  "mentor_input_output_property_name"
#@   #group_variable  io  "mentor_input_value"
#@   #group_variable  io  "mentor_logic_one_value"
#@   #group_variable  io  "mentor_logic_zero_one_property_name"
#@   #group_variable  io  "mentor_logic_zero_value"
#@   #group_variable  io  "mentor_output_value"
#@   #group_variable  io  "mentor_primitive_property_name"
#@   #group_variable  io  "mentor_primitive_property_value"
#@   #group_variable  io  "mentor_reference_property_name"
#@   #group_variable  io  "mentor_search_path"
#@   #group_variable  io  "mentor_write_symbols"
#@ #  group_variable  io  "pla_read_create_flip_flop"
#@ #  group_variable  io  "tdlout_upcase"
#@   group_variable  io  "write_name_nets_same_as_ports"
#@  
#@  # # [wjchen] 2006/08/14: The following 4 variables are obsoleted for DC simpilification.
#@  
#@  # group_variable  io  "xnfout_constraints_per_endpoint"
#@  # group_variable  io  "xnfout_default_time_constraints"
#@  # group_variable  io  "xnfout_clock_attribute_style"
#@  # group_variable  io  "xnfout_library_version"
#@ 
#@  # # [wjchen] 2006/08/11: The following 8 variables are obsoleted for DC simpilification.
#@  # group_variable  io  "xnfin_family"
#@  # group_variable  io  "xnfin_ignore_pins"
#@  # group_variable  io  "xnfin_dff_reset_pin_name"
#@  # group_variable  io  "xnfin_dff_set_pin_name"
#@  # group_variable  io  "xnfin_dff_clock_enable_pin_name"
#@  # group_variable  io  "xnfin_dff_data_pin_name"
#@  # group_variable  io  "xnfin_dff_clock_pin_name"  ;
#@  # group_variable  io  "xnfin_dff_q_pin_name";
#@  
#@   group_variable  io  "sdfin_min_rise_net_delay" ;
#@   group_variable  io  "sdfin_min_fall_net_delay" ;
#@   group_variable  io  "sdfin_min_rise_cell_delay" ;
#@   group_variable  io  "sdfin_min_fall_cell_delay" ;
#@   group_variable  io  "sdfin_rise_net_delay_type" ;
#@   group_variable  io  "sdfin_fall_net_delay_type" ;
#@   group_variable  io  "sdfin_rise_cell_delay_type" ;
#@   group_variable  io  "sdfin_fall_cell_delay_type" ;
#@   group_variable  io  "sdfin_top_instance_name" ;
#@   group_variable  io  "sdfout_time_scale" ;
#@   group_variable  io  "sdfout_write_to_output" ;
#@   group_variable  io  "sdfout_top_instance_name" ;
#@   group_variable  io  "sdfout_min_rise_net_delay" ;
#@   group_variable  io  "sdfout_min_fall_net_delay" ;
#@   group_variable  io  "sdfout_min_rise_cell_delay" ;
#@   group_variable  io  "sdfout_min_fall_cell_delay" ;
#@   group_variable  io  "read_db_lib_warnings" ;
#@   group_variable  io  "read_translate_msff" ;
#@   group_variable  io  "libgen_max_differences" ;
#@ 
#@ # #[wjchen] 2006/08/22: The following variables are hidden for XG mode for DC simpilification. 
#@   # group_variable  io "read_name_mapping_nowarn_libraries"  ;
#@   # group_variable  io "write_name_mapping_nowarn_libraries"  ;
#@ 
#@ 
#@   # "edif" variables are used by the EDIF format read, read_lib, write,
#@   #        and write_lib commands 
#@   # group_variable  edif  "bus_dimension_separator_style"  ;
#@   # group_variable  edif  "bus_extraction_style"  ;
#@   group_variable  edif  "bus_inference_descending_sort"  ;
#@   group_variable  edif  "bus_inference_style"  ;
#@   group_variable  edif  "bus_naming_style"  ;
#@   group_variable  edif  "bus_range_separator_style"  ;
#@   # group_variable  edif  "edifin_autoconnect_offpageconnectors"  ;
#@   # group_variable  edif  "edifin_autoconnect_ports"  ;
#@   # group_variable  edif  "edifin_delete_empty_cells"  ;
#@   # group_variable  edif  "edifin_delete_ripper_cells"  ;
#@   # group_variable  edif  "edifin_ground_net_name"  ;
#@   # group_variable  edif  "edifin_ground_net_property_name"  ;
#@   # group_variable  edif  "edifin_ground_net_property_value"  ;
#@   # group_variable  edif  "edifin_ground_port_name"  ;
#@   # group_variable  edif  "edifin_instance_property_name"  ;
#@   # group_variable  edif  "edifin_portinstance_disabled_property_name"  ;
#@   # group_variable  edif  "edifin_portinstance_disabled_property_value"  ;
#@   # group_variable  edif  "edifin_portinstance_property_name"  ;
#@   # group_variable  edif  "edifin_power_net_name"  ;
#@   # group_variable  edif  "edifin_power_net_property_name"  ;
#@   # group_variable  edif  "edifin_power_net_property_value"  ;
#@   # group_variable  edif  "edifin_power_port_name"  ;
#@   # group_variable  edif  "edifin_use_identifier_in_rename"  ;
#@   # group_variable  edif  "edifin_view_identifier_property_name"  ;
#@   # group_variable  edif  "edifin_dc_script_flag"  ;
#@   # group_variable  edif  "edifin_lib_logic_1_symbol"  ;
#@   # group_variable  edif  "edifin_lib_logic_0_symbol"  ;
#@   # group_variable  edif  "edifin_lib_in_port_symbol"  ;
#@   # group_variable  edif  "edifin_lib_out_port_symbol"  ;
#@   # group_variable  edif  "edifin_lib_inout_port_symbol"  ;
#@   # group_variable  edif  "edifin_lib_in_osc_symbol"  ;
#@   # group_variable  edif  "edifin_lib_out_osc_symbol"  ;
#@   # group_variable  edif  "edifin_lib_inout_osc_symbol"  ;
#@   # group_variable  edif  "edifin_lib_mentor_netcon_symbol"  ;
#@   # group_variable  edif  "edifin_lib_ripper_bits_property"  ;
#@   # group_variable  edif  "edifin_lib_ripper_bus_end"  ;
#@   # group_variable  edif  "edifin_lib_ripper_cell_name"  ;
#@   # group_variable  edif  "edifin_lib_ripper_view_name"  ;
#@   # group_variable  edif  "edifin_lib_route_grid"  ;
#@   # group_variable  edif  "edifin_lib_templates"  ;
#@   # group_variable  edif  "edifout_dc_script_flag"  ;
#@   # group_variable  edif  "edifout_design_name"  ;
#@   # group_variable  edif  "edifout_designs_library_name"  ;
#@   # group_variable  edif  "edifout_display_instance_names"  ;
#@   # group_variable  edif  "edifout_display_net_names"  ;
#@   # group_variable  edif  "edifout_external"  ;
#@   # group_variable  edif  "edifout_external_graphic_view_name" ;
#@   # group_variable  edif  "edifout_external_netlist_view_name" ;
#@   # group_variable  edif "edifout_external_schematic_view_name" ;
#@   # group_variable  edif  "edifout_ground_name" ;
#@   # group_variable  edif  "edifout_ground_net_name" ;
#@   # group_variable  edif  "edifout_ground_net_property_name" ;
#@   # group_variable  edif  "edifout_ground_net_property_value" ;
#@   # group_variable  edif  "edifout_ground_pin_name" ;
#@   # group_variable  edif  "edifout_ground_port_name" ;
#@   # group_variable  edif  "edifout_instance_property_name" ;
#@   # group_variable  edif  "edifout_instantiate_ports" ;
#@   # group_variable  edif  "edifout_library_graphic_view_name" ;
#@   # group_variable  edif  "edifout_library_netlist_view_name" ;
#@   # group_variable  edif  "edifout_library_schematic_view_name" ;
#@   # group_variable  edif  "edifout_merge_libraries" ;
#@   # group_variable  edif  "edifout_multidimension_arrays" ;
#@   # group_variable  edif  "edifout_name_oscs_different_from_ports" ;
#@   # group_variable  edif  "edifout_name_rippers_same_as_wires" ;
#@   # group_variable  edif  "edifout_netlist_only" ;
#@   # group_variable  edif  "edifout_no_array" ;
#@   # group_variable  edif  "edifout_numerical_array_members" ;
#@   # group_variable  edif  "edifout_pin_direction_property_name" ;
#@   # group_variable  edif  "edifout_pin_direction_in_value" ;
#@   # group_variable  edif  "edifout_pin_direction_inout_value" ;
#@   # group_variable  edif  "edifout_pin_direction_out_value" ;
#@   # group_variable  edif  "edifout_pin_name_property_name" ;
#@   # group_variable  edif  "edifout_portinstance_disabled_property_name" ;
#@   # group_variable  edif  "edifout_portinstance_disabled_property_value" ;
#@   # group_variable  edif  "edifout_portinstance_property_name"
#@   # group_variable  edif  "edifout_power_and_ground_representation"
#@   # group_variable  edif  "edifout_power_name"
#@   # group_variable  edif  "edifout_power_net_name"
#@   # group_variable  edif  "edifout_power_net_property_name"
#@   # group_variable  edif  "edifout_power_net_property_value"
#@   # group_variable  edif  "edifout_power_pin_name"
#@   # group_variable  edif  "edifout_power_port_name"
#@   # group_variable  edif  "edifout_skip_port_implementations"
#@   # group_variable  edif  "edifout_target_system"
#@   # group_variable  edif  "edifout_top_level_symbol"
#@   # group_variable  edif  "edifout_translate_origin"
#@   # group_variable  edif  "edifout_unused_property_value"
#@   # group_variable  edif  "edifout_write_attributes"
#@   # group_variable  edif  "edifout_write_constraints"
#@   # group_variable  edif  "edifout_write_properties_list"
#@   # group_variable  edif  "write_name_nets_same_as_ports"
#@ 
#@   # "hdl" variables are variables pertaining to hdl reading and optimizing 
#@   group_variable hdl "bus_dimension_separator_style"
#@   group_variable hdl "bus_minus_style"
#@   group_variable hdl "bus_naming_style"
#@   group_variable hdl "hdlin_ignore_textio_constructs"
#@   group_variable hdl "hdlin_latch_always_async_set_reset"
#@   group_variable hdl "hdlin_ff_always_sync_set_reset"
#@   group_variable hdl "hdlin_ff_always_async_set_reset"
#@   group_variable hdl "hdlin_check_input_netlist"
#@   group_variable hdl "hdlin_check_no_latch"
#@   group_variable hdl "hdlin_reporting_level"
#@   group_variable hdl "hdlin_infer_mux"
#@   group_variable hdl "hdlin_mux_oversize_ratio"
#@   group_variable hdl "hdlin_mux_size_limit"
#@   group_variable hdl "hdlin_infer_multibit"
#@   group_variable hdl "hdl_preferred_license"
#@   group_variable hdl "hdl_keep_licenses"
#@   group_variable hdl "hlo_resource_allocation"
#@   group_variable hdl "template_naming_style"
#@   group_variable hdl "template_parameter_style"
#@   group_variable hdl "template_separator_style"
#@   group_variable hdl "verilogout_equation"
#@   group_variable hdl "verilogout_ignore_case"
#@   group_variable hdl "verilogout_no_tri"
#@   group_variable hdl "verilogout_inout_is_in"
#@   group_variable hdl "verilogout_single_bit"
#@   group_variable hdl "verilogout_higher_designs_first"
#@ #  group_variable hdl "verilogout_levelize"
#@   group_variable hdl "verilogout_include_files"
#@   group_variable hdl "verilogout_unconnected_prefix"
#@   group_variable hdl "verilogout_show_unconnected_pins"
#@   group_variable hdl "verilogout_no_negative_index"
#@   group_variable hdl "hdlin_enable_rtldrc_info"
#@   group_variable hdl "hdlin_sv_blackbox_modules"
#@   group_variable hdl "hdlin_sv_enable_rtl_attributes"
#@   group_variable hdl "hdlin_sv_interface_only_modules"
#@   group_variable hdl "hdlin_infer_function_local_latches"
#@   group_variable hdl "hdlin_module_arch_name_splitting"
#@   group_variable hdl "hdlin_mux_size_min"
#@   group_variable hdl "hdlin_prohibit_nontri_multiple_drivers"
#@   group_variable hdl "hdlin_subprogram_default_values"
#@   group_variable hdl "hdlin_upcase_names"
#@   group_variable hdl "hdlin_vhdl_std"
#@   group_variable hdl "hdlin_vhdl93_concat"
#@   group_variable hdl "hdlin_vhdl_syntax_extensions"
#@   group_variable hdl "hdlin_vrlg_std"
#@   group_variable hdl "hdlin_while_loop_iterations"
#@   group_variable hdl "hdlin_auto_save_templates"
#@   group_variable hdl "hdlin_elab_errors_deep"
#@   group_variable hdl "hdlin_enable_assertions"
#@   group_variable hdl "hdlin_enable_configurations"
#@   group_variable hdl "hdlin_field_naming_style"
#@   group_variable hdl "hdlin_generate_naming_style"
#@   group_variable hdl "hdlin_generate_separator_style"
#@   group_variable hdl "hdlin_enable_relative_placement"
#@   group_variable hdl "hdlin_mux_rp_limit"
#@   group_variable hdl "hdlin_keep_signal_name"
#@   group_variable hdl "hdlin_module_name_limit"
#@   group_variable hdl "hdlin_mux_size_only"
#@   group_variable hdl "hdlin_preserve_sequential"
#@   group_variable hdl "hdlin_presto_cell_name_prefix"
#@   group_variable hdl "hdlin_presto_net_name_prefix"
#@   group_variable hdl "hdlin_strict_verilog_reader"
#@   group_variable hdl "hdlin_shorten_long_module_name"
#@   group_variable hdl "hdlin_sv_packages"
#@   group_variable hdl "hdlin_sv_tokens"
#@   group_variable hdl "hdlin_enable_elaborate_ref_linking"
#@   group_variable hdl "hdlin_enable_hier_naming"
#@   group_variable hdl "hdlin_enable_elaborate_update"
#@   group_variable hdl "hdlin_autoread_verilog_extensions"
#@   group_variable hdl "hdlin_autoread_sverilog_extensions"
#@   group_variable hdl "hdlin_autoread_vhdl_extensions"
#@   group_variable hdl "hdlin_autoread_exclude_extensions"
#@   group_variable hdl "hdlin_enable_upf_compatible_naming"
#@   group_variable hdl "hdlin_report_sequential_pruning"
#@   group_variable hdl "hdlin_analyze_verbose_mode"
#@ 
#@   # "vhdlio" variables are variables pertaining to VHDL generation 
#@   group_variable vhdlio "vhdllib_timing_mesg"
#@   group_variable vhdlio "vhdllib_timing_xgen"
#@   group_variable vhdlio "vhdllib_timing_checks"
#@   group_variable vhdlio "vhdllib_negative_constraint"
#@   group_variable vhdlio "vhdllib_pulse_handle"
#@   group_variable vhdlio "vhdllib_glitch_handle"
#@   group_variable vhdlio "vhdllib_architecture"
#@   group_variable vhdlio "vhdllib_tb_compare"
#@   group_variable vhdlio "vhdllib_tb_x_eq_dontcare"
#@   group_variable vhdlio "vhdllib_logic_system"
#@   group_variable vhdlio "vhdllib_logical_name"
#@ 
#@ #  group_variable vhdlio "vhdlout_architecture_name"
#@   group_variable vhdlio "vhdlout_bit_type"
#@ #  group_variable vhdlio "vhdlout_bit_type_resolved"
#@   group_variable vhdlio "vhdlout_bit_vector_type"
#@ #  group_variable vhdlio "vhdlout_conversion_functions"
#@ #  group_variable vhdlio "vhdlout_dont_write_types"
#@   group_variable vhdlio "vhdlout_equations"
#@   group_variable vhdlio "vhdlout_one_name"
#@   group_variable vhdlio "vhdlout_package_naming_style"
#@   group_variable vhdlio "vhdlout_preserve_hierarchical_types"
#@   group_variable vhdlio "vhdlout_separate_scan_in"
#@   group_variable vhdlio "vhdlout_single_bit"
#@   group_variable vhdlio "vhdlout_target_simulator"
#@   group_variable vhdlio "vhdlout_top_configuration_arch_name"
#@   group_variable vhdlio "vhdlout_top_configuration_entity_name"
#@   group_variable vhdlio "vhdlout_top_configuration_name"
#@   group_variable vhdlio "vhdlout_three_state_name"
#@   group_variable vhdlio "vhdlout_three_state_res_func"
#@ #  group_variable vhdlio "vhdlout_time_scale"
#@   group_variable vhdlio "vhdlout_unknown_name"
#@   group_variable vhdlio "vhdlout_use_packages"
#@   group_variable vhdlio "vhdlout_wired_and_res_func"
#@   group_variable vhdlio "vhdlout_wired_or_res_func"
#@   group_variable vhdlio "vhdlout_write_architecture"
#@   group_variable vhdlio "vhdlout_write_entity"
#@   group_variable vhdlio "vhdlout_write_top_configuration"
#@ #  group_variable vhdlio "vhdlout_synthesis_off"
#@   group_variable vhdlio "vhdlout_write_components"
#@   group_variable vhdlio "vhdlout_zero_name"
#@ #  group_variable vhdlio "vhdlout_levelize"
#@   group_variable vhdlio "vhdlout_dont_create_dummy_nets"
#@   group_variable vhdlio "vhdlout_follow_vector_direction"
#@  
#@   # "suffix" variables are used to find the suffixes of different file types 
#@   group_variable suffix "view_execute_script_suffix"
#@   group_variable suffix "view_read_file_suffix"
#@   group_variable suffix "view_analyze_file_suffix"
#@   group_variable suffix "view_write_file_suffix"
#@ 
#@   # Meenakshi: Added new group scc (for SystemC compiler)
#@   group_variable scc {systemcout_levelize}
#@   group_variable scc {systemcout_debug_mode}
#@ 
#@   # "power" variables are for power-analysis. 
#@   group_variable power {power_keep_license_after_power_commands}
#@   group_variable power {power_preserve_rtl_hier_names}
#@   group_variable power {power_do_not_size_icg_cells}
#@   group_variable power {power_hdlc_do_not_split_cg_cells}
#@   group_variable power {power_rtl_saif_file}
#@   group_variable power {power_sdpd_saif_file}
#@   group_variable power {power_cg_flatten}
#@   group_variable power {power_opto_extra_high_dynamic_power_effort}
#@   group_variable power {power_default_static_probability}
#@   group_variable power {power_default_toggle_rate}
#@   group_variable power {power_default_toggle_rate_type}
#@   group_variable power {power_model_preference}
#@   group_variable power {power_sa_propagation_effort}
#@   group_variable power {power_sa_propagation_verbose}
#@   group_variable power {power_fix_sdpd_annotation}
#@   group_variable power {power_fix_sdpd_annotation_verbose}
#@   group_variable power {power_sdpd_message_tolerance}
#@   group_variable power {power_rclock_use_asynch_inputs}
#@   group_variable power {power_rclock_inputs_use_clocks_fanout}
#@   group_variable power {power_rclock_unrelated_use_fastest}
#@   group_variable power {power_lib2saif_rise_fall_pd}
#@   group_variable power {power_min_internal_power_threshold}
#@   group_variable power {power_cg_module_naming_style}
#@   group_variable power {power_cg_cell_naming_style}
#@   group_variable power {power_cg_gated_clock_net_naming_style}
#@   group_variable power {do_operand_isolation}
#@ 
#@   # dpcm variables are used by DPCM lib and controllong DC when using DPCM
#@ 
#@   if { [info exists dpcm_debuglevel] } {
#@     group_variable dpcm "dpcm_debuglevel"
#@     group_variable dpcm "dpcm_rulespath"
#@     group_variable dpcm "dpcm_rulepath"
#@     group_variable dpcm "dpcm_tablepath"
#@     group_variable dpcm "dpcm_libraries"
#@     group_variable dpcm "dpcm_version"
#@     group_variable dpcm "dpcm_level"
#@     group_variable dpcm "dpcm_temperaturescope"
#@     group_variable dpcm "dpcm_voltagescope"
#@     group_variable dpcm "dpcm_functionscope"
#@     group_variable dpcm "dpcm_wireloadscope"
#@     group_variable dpcm "dpcm_slewlimit"
#@     group_variable dpcm "dpcm_arc_sense_mapping"
#@ 
#@   }
#@ 
#@   set dpcm_slewlimit "TRUE"
#@ 
#@   # executable to fire off RTLA/BCV 
#@   group_variable hdl {xterm_executable}
#@ 
#@   # Variable group for Chip Compiler
#@   if {[info exists acs_work_dir]} {
#@     group_variable acs acs_area_report_suffix 
#@     group_variable acs acs_autopart_max_area
#@     group_variable acs acs_autopart_max_percent
#@     group_variable acs acs_budgeted_cstr_suffix
#@     group_variable acs acs_compile_script_suffix
#@     group_variable acs acs_constraint_file_suffix  
#@     group_variable acs acs_cstr_report_suffix 
#@     group_variable acs acs_db_suffix
#@     group_variable acs acs_dc_exec
#@     group_variable acs acs_default_pass_name
#@     group_variable acs acs_exclude_extensions
#@     group_variable acs acs_exclude_list
#@     group_variable acs acs_global_user_compile_strategy_script
#@     group_variable acs acs_hdl_verilog_define_list
#@     group_variable acs acs_hdl_source
#@     group_variable acs acs_lic_wait
#@     group_variable acs acs_log_file_suffix
#@     group_variable acs acs_make_args
#@     group_variable acs acs_make_exec
#@     group_variable acs acs_makefile_name 
#@     group_variable acs acs_num_parallel_jobs
#@     group_variable acs acs_override_report_suffix
#@     group_variable acs acs_override_script_suffix
#@     group_variable acs acs_qor_report_suffix
#@     group_variable acs acs_timing_report_suffix
#@     group_variable acs acs_use_autopartition
#@     group_variable acs acs_use_default_delays
#@     group_variable acs acs_user_budgeting_script
#@     group_variable acs acs_user_compile_strategy_script_suffix
#@     group_variable acs acs_verilog_extensions 
#@     group_variable acs acs_vhdl_extensions 
#@     group_variable acs acs_work_dir
#@     group_variable acs check_error_list
#@     group_variable acs ilm_preserve_core_constraints
#@ 
#@   }
#@ 
#@   #
#@   # DesignTime Variable Group timing
#@   #
#@ 
#@   group_variable timing case_analysis_log_file
#@   group_variable timing case_analysis_sequential_propagate
#@   group_variable timing case_analysis_with_logic_constants
#@   group_variable timing create_clock_no_input_delay
#@   group_variable timing disable_auto_time_borrow
#@   group_variable timing disable_case_analysis
#@   group_variable timing disable_conditional_mode_analysis
#@   group_variable timing disable_library_transition_degradation
#@   group_variable timing dont_bind_unused_pins_to_logic_constant
#@   group_variable timing enable_slew_degradation
#@   group_variable timing high_fanout_net_pin_capacitance
#@   group_variable timing high_fanout_net_threshold
#@   group_variable timing lib_thresholds_per_lib
#@   group_variable timing rc_adjust_rd_when_less_than_rnet
#@   group_variable timing rc_ceff_delay_min_diff_ps
#@   group_variable timing rc_degrade_min_slew_when_rd_less_than_rnet
#@   group_variable timing rc_driver_model_max_error_pct
#@   group_variable timing rc_filter_rd_less_than_rnet
#@   group_variable timing rc_input_threshold_pct_fall
#@   group_variable timing rc_input_threshold_pct_rise
#@   group_variable timing rc_output_threshold_pct_fall
#@   group_variable timing rc_output_threshold_pct_rise
#@   group_variable timing rc_rd_less_than_rnet_threshold
#@   group_variable timing rc_slew_derate_from_library
#@   group_variable timing rc_slew_lower_threshold_pct_fall
#@   group_variable timing rc_slew_lower_threshold_pct_rise
#@   group_variable timing rc_slew_upper_threshold_pct_fall
#@   group_variable timing rc_slew_upper_threshold_pct_rise
#@   group_variable timing timing_disable_cond_default_arcs
#@ # group_variable timing timing_enable_multiple_clocks_per_reg
#@   group_variable timing timing_report_attributes
#@   group_variable timing timing_self_loops_no_skew
#@   group_variable timing when_analysis_permitted
#@   group_variable timing when_analysis_without_case_analysis
#@ 
#@ }	;# $synopsys_program_name != "ptxr"
#@ 
#@ if { $synopsys_program_name == "icc_shell"} {
#@ #
#@ #       IC Compile Variable Group:
#@ #
#@ #       These variables affect the designs created by the route_opt command.
#@ #
#@   group_variable routeopt routeopt_checkpoint
#@   group_variable routeopt routeopt_disable_cpulimit
#@ }
#@ 
#@ if { $synopsys_program_name == "icc_shell"} {
#@ #
#@ #       IC Compiler Variable Group: MCMM
#@ #
#@ #       These variables affect Multi-Corner/Multi-Mode. Currently, MCMM is 
#@ #       only supported in ICC--hence the "icc_shell" qualification, above
#@ #
#@   group_variable MCMM mcmm_enable_high_capacity_flow
#@ }
#@ 
#@ # Aliases for backwards compatibility or other reasons 
#@ group_variable compile  {compile_log_format}
#@ alias view_cursor_number x11_set_cursor_number
#@ alias set_internal_load set_load
#@ alias set_internal_arrival set_arrival
#@ alias set_connect_delay    "set_annotated_delay -net"
#@ alias create_test_vectors  create_test_patterns
#@ alias compile_test         insert_test
#@ alias check_clocks      check_timing
#@ alias lint              check_design
#@ # gen removed; alias gen               create_schematic
#@ alias free              remove_design
#@ alias group_bus         create_bus
#@ alias ungroup_bus       remove_bus
#@ alias groupvar          group_variable
#@ alias report_constraints report_constraint
#@ alias report_attributes report_attribute
#@ alias fsm_reduce        reduce_fsm
#@ alias fsm_minimize      minimize_fsm
#@ alias disable_timing    set_disable_timing
#@ alias dont_touch        set_dont_touch
#@ alias dont_touch_network set_dont_touch_network
#@ alias dont_use          set_dont_use
#@ alias fix_hold          set_fix_hold
#@ alias prefer            set_prefer
#@ alias remove_package "echo remove_package command is obsolete: packages are stored on disk not in-memory:"
#@ alias analyze_scan      preview_scan
#@ alias get_clock         get_clocks
#@ alias dc_shell_is_in_incr_mode	shell_is_in_xg_mode
#@ alias set_vh_module_options set_dps_module_options
#@ alias set_vh_physopt_options set_dps_options
#@ alias update_vh_design update_dps_design
#@ alias vh_start dps_start
#@ alias vh_end dps_end
#@ alias all_vh_modules all_dps_modules
#@ alias all_designs_of_vh all_designs_of_dps
#@ alias vh_use_auto_partitioning dps_auto_partitioning
#@ alias vh_write_changes dps_write_changes
#@ alias vh_read_changes dps_read_changes
#@ alias vh_write_module_clock dps_write_module_clock
#@ alias get_lib get_libs
#@ 
#@ # Enable unsupported psyn commands
#@ if { $synopsys_program_name == "psyn_shell" || $synopsys_program_name == "icc_shell"} {
#@   proc enable_unsupported_commands { { arg "default" } } {
#@     global cgpi_use_new_wire_factors
#@     global cgpi_use_relative_wire_factors
#@     global cgpi_use_new_path_factors
#@     global pwlm_use_new_wire_factors
#@     global pwlm_use_relative_wire_factors
#@     global pwlm_use_new_path_factors
#@     global psyn_unsupported_commands_dir
#@     global synopsys_root
#@     if {![info exists psyn_unsupported_commands_dir]} {
#@       set psyn_unsupported_commands_dir $synopsys_root/auxx/syn/psyn/unsupported_commands
#@     }
#@     set psyn_unsupported_commands_option1 $arg
#@     if {[file readable $psyn_unsupported_commands_dir/setup.tcl]} {
#@       source $psyn_unsupported_commands_dir/setup.tcl
#@     } else {
#@       source -encrypted $psyn_unsupported_commands_dir/setup.tcl.e
#@     }
#@   }
#@ }
#@ # For Intel
#@ if { $synopsys_program_name == "icc_shell"} {
#@       set psyn_unsupported_commands_dir $synopsys_root/auxx/syn/psyn/unsupported_commands
#@       source -encrypted $psyn_unsupported_commands_dir/max_dist.tcl.e
#@ }	
#@ 
#@ 
#@ if { $synopsys_program_name == "icc_shell"} {
#@   # to enable CLE readline-ish terminal by default for ICC
#@   set sh_enable_line_editing true
#@ 
#@   # Astro forms create an enormous number of new variables which are
#@   # very annoying for users to see, so the default of this variable
#@   # for ICC is false
#@   set sh_new_variable_message false
#@ }
#@ 
#@ if { $synopsys_program_name == "icc_shell" ||      (($synopsys_program_name == "dc_shell") && ([shell_is_in_topographical_mode])) } {
#@     source $synopsys_root/auxx/syn/psyn/verify_ilm.tcl
#@ }
#@ 
#@ # Enable vh psyn commands
#@ if { $synopsys_program_name == "psyn_shell" } {
#@   proc enable_vh_flow { } {
#@     global VH_SCRIPT_FILE
#@     global synopsys_root
#@     global suppress_errors
#@     set suppress_errors "$suppress_errors CMD-041 UID-95 SEL-003 SEL-005" 
#@     if {![info exists VH_SCRIPT_FILE]} {
#@       set VH_SCRIPT_FILE $synopsys_root/auxx/syn/psyn/vh_pc.tcl.e
#@     }
#@     if {[file readable $VH_SCRIPT_FILE]} {
#@       if {[string match *.tcl $VH_SCRIPT_FILE]} {
#@         source $VH_SCRIPT_FILE
#@       } else {
#@         source -encrypted $VH_SCRIPT_FILE
#@       }
#@     } else {
#@       puts "Error: VH script file $VH_SCRIPT_FILE not found."
#@     }
#@   }
#@ }
#@ 
#@ 
#@ #Turn on enable_netl_view to true by default.
#@ set enable_netl_view  "TRUE"
#@ 
#@ 
#@ #Turn on physopt_bypass_multiple_plib_check by default
#@ if { $synopsys_program_name == "psyn_shell" } {
#@  set physopt_bypass_multiple_plib_check  TRUE
#@ }
#@ 
#@ # The ls command is gone, now it is just an alias for dc_shell eqn mode
#@ 
#@ if { [string compare $dc_shell_mode "default"] == 0 } {
#@   if {  ( $sh_arch == {mips}) && ( ( $synopsys_program_name == {design_analyzer}) || ( $isatty == 0)) } {
#@     alias ls "sh ls -a "
#@   } else {
#@    if {  ( $sh_arch == {mips}) || ( $sh_arch == {necmips}) } {
#@       alias ls "sh ls -aC "
#@    } else {
#@       alias ls "sh ls -aC "
#@    }
#@   }
#@ }
#@ 
#@ # Aliases for RouteCompiler
#@ alias run_rodeo_router route66
#@ 
#@ # Removing route_global from the code. Earlier it was hidden. --Mukesh
#@ #proc route_global {} {
#@ #	global route_global_keep_tmp_data
#@ #	global rt66_dont_lock_dir
#@ #
#@ #	set rt66_dont_lock_dir TRUE
#@ #
#@ #	for { set i 0} {1==1} {incr i} {
#@ #		set wdir [file join [pwd] ".route_global.$i"]
#@ #		if {[file exist $wdir] == 0} {
#@ #			break;
#@ #		}
#@ #	}
#@ #		
#@ #	set_routing_options -cut_out_covered_port CORE_ONLY
#@ #	set_routing_options -internal_routing FALSE
#@ #	set_routing_options -stick_routing FALSE
#@ #
#@ #	###puts "wdir = $wdir"
#@ # 
#@ #	set success [route66 -global -dontstop -dir $wdir]
#@ #
#@ #	#clean tmp data if required:
#@ #	if { $success == 1 } {
#@ #		if [catch {string toupper $route_global_keep_tmp_data} result] {
#@ #			#variable is not defined
#@ #			###puts "result_1 =  $result => removing dir ..."
#@ #			catch { file delete -force $wdir }
#@ #		} else {
#@ #			#variable is set to FALSE
#@ #			if { [string compare $result "TRUE"] != 0} {
#@ #				###puts "result_2 =  $result => removing dir ..."
#@ #				catch { file delete -force $wdir }
#@ #			}
#@ #		}
#@ #	}
#@ #
#@ #	set rt66_dont_lock_dir FALSE
#@ #	return 1
#@ #}
#@ #define_proc_attributes route_global -hidden
#@ 
#@ #/* Aliases added for report command */
#@ alias report_clock_constraint   "report_timing -path end -to all_registers(-data_pins)"
#@ alias report_clock_fanout         "report_transitive_fanout -clock_tree"
#@ alias report_clocks             report_clock
#@ alias report_synthetic          report_cell
#@ 
#@ # Alias added for Ultra backward compatibility mode
#@ alias set_ultra_mode          set_ultra_optimization
#@ 
#@ # alias for write_sge and menu item in DA for db2sge 
#@ 
#@ #if { [string compare $dc_shell_mode "tcl"] == 0 } {
#@ #  set db2sge_script ${synopsys_root}/admin/setup/.dc_write_sge.tcl
#@ #} else {
#@ #  set db2sge_script ${synopsys_root}/admin/setup/.dc_write_sge
#@ #}
#@ 
#@ #set db2sge_command ${synopsys_root}/${sh_arch}/syn/bin/db2sge
#@ set view_script_submenu_items "\"DA to SGE Transfer\" write_sge"
#@ 
#@ 
#@ if { $synopsys_program_name != "lc_shell"} {
#@   # read schematic annotation setup file 
#@   #source ${synopsys_root}/admin/setup/.dc_annotate
#@ 
#@   # setup the default layer settings 
#@   #source ${synopsys_root}/admin/setup/.dc_layers
#@ 
#@   if {$synopsys_program_name != "dc_sms_shell"} {
#@     source ${synopsys_root}/admin/setup/.dc_name_rules
#@   }
#@ } else {
#@   #for read_lib -html	
#@   source ${synopsys_root}/auxx/syn/lc/read_lib_html_msg_list.tcl
#@ }
#@ # -- Starting source /tools/synopsys/cst/N-2017.09-SP2/admin/setup/.dc_name_rules

#@ #
#@ 
#@ #	.dc_name_rules Initialization file for
#@ 
#@ #	   Dc_Shell and Design_Analyzer
#@ 
#@ #	This files defines name rules for target systems. Change_names
#@ #	will use this rules to fix the object names.
#@ 
#@ #*/
#@ 
#@ 
#@ define_name_rules sverilog -type net -allow "a-z A-Z 0-9 _ " 					  -first_restrict "_ 0-9"		
#@ 
#@ define_name_rules sverilog -type port -allow "a-z A-Z 0-9 _ " 					  -first_restrict "_ 0-9"		
#@ 
#@ define_name_rules sverilog -type cell -allow "a-z A-Z 0-9 _ " 					  -first_restrict "_ 0-9"		
#@ define_name_rules sverilog -reserved { "always" "always_comb" "always_ff"	"always_latch" "and" "assert" "assert_strobe" "assign" "automatic"	"begin" "bit" "break" "buf" "bufif0" "bufif1" "byte" "case" "casex" "casez"	"cell" "changed" "char" "cmos" "config" "const" "continue" "deassign"	"default" "defparam" "design" "disable" "do" "edge" "else" "end"	"endcase" "endconfig" "endfunction" "endgenerate" "endinterface" "endmodule" "endprimitive"	"endspecify" "endtable" "endtask" "endtransition" "enum" "event" "export" "extern"	"for" "force" "forever" "fork" "forkjoin" "function" "generate" "genvar"	"highz0" "highz1" "if" "iff" "ifnone" "import" "incdir" "include" "initial"	"inout" "input" "instance" "int" "integer" "interface" "join" "large"	"liblist" "library" "localparam" "logic" "longint" "longreal" "macromodule" "medium"	"modport" "module" "nand" "negedge" "nmos" "nor" "noshowcancelled" "not" "notif0"	"notif1" "or" "output" "packed" "parameter" "pmos" "posedge"	"primitive" "process" "priority" "pull0" "pull1" "pullup"  "pulldown"	"pulsestyle_onevent" "pulsestyle_ondetect"	"rcmos" "real" "realtime" "reg" "release" "repeat" "return" "rnmos" "rpmos" "rtran"	"rtranif0" "rtranif1" "scalared" "shortint" "shortreal" "showcancelled"	"signed" "small" "specify" "specparam" "static"	"strong0" "strong1" "struct" "supply0" "supply1" "table" "task"	"time" "timeprecision" "timeunit" "tran" "tranif0" "tranif1" "transition" "tri" "tri0" "tri1"	"triand" "trior" "trireg" "type" "typedef" "union" "unique" "use" "unsigned" "vectored"	"void" "wait" "wand" "weak0" "weak1" "while" "wire" "wor" "xor" "xnor" }		-special verilog -target_bus_naming_style {%s[%d]}		-flatten_multi_dimension_busses          -check_internal_net_name 	-check_bus_indexing 
#@ 
#@ define_name_rules verilog -type net -allow "a-z A-Z 0-9 _ " 					  -first_restrict "_ 0-9"		
#@ 
#@ define_name_rules verilog -type port -allow "a-z A-Z 0-9 _ " 					  -first_restrict "_ 0-9"		
#@ 
#@ define_name_rules verilog -type cell -allow "a-z A-Z 0-9 _ " 					  -first_restrict "_ 0-9"		
#@ define_name_rules verilog -reserved { "always"	"and" "assign" "automatic"	"begin" "buf" "bufif0" "bufif1" "case" "casex" "casez"	"cell" "cmos" "config" "deassign"	"default" "defparam" "design" "disable" "edge" "else" "end"	"endcase" "endconfig" "endfunction" "endgenerate" "endmodule" "endprimitive"	"endspecify" "endtable" "endtask" "event" "for" "force" "forever" "fork" "function" "generate" "genvar"	"highz0" "highz1" "if" "ifnone" "incdir" "include" "initial"	"inout" "input" "instance" "integer" "join" "large"	"liblist" "library" "localparam" "macromodule" "medium"	"module" "nand" "negedge" "nmos" "nor" "noshowcancelled" "not" "notif0"	"notif1" "or" "output" "parameter" "pmos" "posedge"	"primitive" "pull0" "pull1" "pullup"  "pulldown"	"pulsestyle_onevent" "pulsestyle_ondetect"	"rcmos" "real" "realtime" "reg" "release" "repeat" "rnmos" "rpmos" "rtran"	"rtranif0" "rtranif1" "scalared" "showcancelled"	"signed" "small" "specify" "specparam"	"strong0" "strong1" "supply0" "supply1" "table" "task"	"time" "tran" "tranif0" "tranif1" "tri" "tri0" "tri1"	"triand" "trior" "trireg" "unsigned" "use" "vectored"	"wait" "wand" "weak0" "weak1" "while" "wire" "wor" "xor" "xnor" }		-special verilog -target_bus_naming_style {%s[%d]}		-flatten_multi_dimension_busses  	-check_internal_net_name         -check_bus_indexing
#@ 
#@ define_name_rules verilog_1995 -type net -allow "a-z A-Z 0-9 _ " 					  -first_restrict "_ 0-9"		
#@ 
#@ define_name_rules verilog_1995 -type port -allow "a-z A-Z 0-9 _ " 					  -first_restrict "_ 0-9"		
#@ 
#@ define_name_rules verilog_1995 -type cell -allow "a-z A-Z 0-9 _ " 					  -first_restrict "_ 0-9"		
#@ define_name_rules verilog_1995 -reserved { "always"	"and" "assign"	"begin" "buf" "bufif0" "bufif1" "case" "casex" "casez"	"cell" "cmos" "deassign"	"default" "defparam" "design" "disable" "edge" "else" "end"	"endcase" "endfunction" "endmodule" "endprimitive"	"endspecify" "endtable" "endtask" "event" "for" "force" "forever" "fork" "function"	"highz0" "highz1" "if" "ifnone" "initial"	"inout" "input" "integer" "join" "large"	"macromodule" "medium"	"module" "nand" "negedge" "nmos" "nor" "notif0"	"notif1" "or" "output" "parameter" "pmos" "posedge"	"primitive" "pull0" "pull1" "pullup"  "pulldown"	"rcmos" "real" "realtime" "reg" "release" "repeat" "rnmos" "rpmos" "rtran"	"rtranif0" "rtranif1" "scalared"	"small" "specify" "specparam"	"strong0" "strong1" "supply0" "supply1" "table" "task"	"time" "tran" "tranif0" "tranif1" "tri" "tri0" "tri1"	"triand" "trior" "trireg" "vectored"	"wait" "wand" "weak0" "weak1" "while" "wire" "wor" "xor" "xnor" }		-special verilog -target_bus_naming_style {%s[%d]}		-flatten_multi_dimension_busses  	-check_internal_net_name 	-check_bus_indexing
#@ 
#@ 
#@ ####/* Name rule for VHDL */
#@ 
#@ ####/* Name rule for VHDL */
#@ 
#@ ####/* Name rule for VHDL */
#@ 
#@ define_name_rules vhdl -reserved_words {                                        "abs"  "access"  "after" "alias"  "all"  "and"                          "architecture"  "array"  "assert" "attribute"                   \                  
#@         "begin"  "block"  "body"  "buffer"  "bus"                               "case" "component"  "configuration"  "constant"                         "disconnect" "downto"                                                   "else"  "elsif"  "end"  "entity"  "exit"                                "file" "for"  "function"                                                "generate"  "generic" "group" "guarded"                                 "if" "impure" "in" "inertial" "inout"  "is"                             "label"  "library"  "linkage" "literal" "loop"                          "map"  "mod"                                                            "nand"  "new"  "next"  "nor"  "not"  "null"                             "of"  "on"  "open"  "or"  "others"  "out"                               "package"  "port" "postponed" "procedure"  "process" "pure"             "range"  "record"  "register" "reject" "rem"                            "report"  "return"  "rol" "ror"                                         "select"  "severity"  "signal" "shared" "sla" "sll"                     "sra" "srl" "subtype"                                                   "then"  "to"  "transport"  "type"                                       "unaffected" "units"  "until"  "use"                                    "variable"                                                              "wait"  "when"  "while"  "with"                                         "xnor" "xor"}                                                   	-case_insensitive 							-target_bus_naming_style "%s(%d)"					-replacement_char "x"							-special vhdl
#@ define_name_rules vhdl -type net						-allowed "A-Z a-z _ 0-9 " 						-first_restricted "0-9 _"  						-last_restricted "_"
#@ define_name_rules vhdl -type port						-allowed "A-Z a-z _ 0-9 " 						-first_restricted "0-9 _"  						-last_restricted "_"
#@ define_name_rules vhdl -type cell						-allowed "A-Z a-z _ 0-9" 						-first_restricted "0-9 _"  						-last_restricted "_"						
#@ define_name_rules vhdl -map { {{"__","_"},{"_$",""}} }
#@ 
#@ ####/* Name rule for VHDL */
#@ # -- End source /tools/synopsys/cst/N-2017.09-SP2/admin/setup/.dc_name_rules

#@ 
#@ if { $synopsys_program_name == "psyn_gui"} {
#@     # read RouteCompiler GUI file for timing critical pathes.
#@     source ${synopsys_root}/auxx/syn/route_gui/write_route_timing_path.tcl
#@ }
#@ 
#@ # Set physopt_dw_opto to false
#@ if { [string match -nocase {*icc_shell*} $synopsys_program_name] } {
#@     set physopt_dw_opto FALSE
#@ }
#@ 
#@ #/* Read budgeting setup script  */
#@ 
#@ if { [string compare $dc_shell_mode "default"] == 0 } {
#@ 
#@ #  Need a encrypted file in Tcl format for budget.setup.et
#@   if { $sh_arch != "msvc50" && $sh_arch != "alpha_nt" } {
#@ #    source  -e synopsys_root + "/admin/setup/budget.setup.et"
#@   }
#@ }
#@ 
#@ if { $synopsys_program_name == "icc_shell"} {
#@   source $synopsys_root/auxx/syn/.icc_procs.tcl
#@   source -encrypted $synopsys_root/auxx/syn/cts/fast_atomic_cts.tcl.e
#@ }
#@ 
#@ if { $synopsys_program_name == "icc_shell"} {
#@   alias report_scenario report_scenarios
#@ }
#@ 
#@ # floorplanning preferences globals
#@ global fp_snap_type
#@ 
#@ set fp_snap_type(port) wiretrack
#@ set fp_snap_type(cell) litho
#@ set fp_snap_type(pin) wiretrack
#@ set fp_snap_type(movebound) litho
#@ set fp_snap_type(port_shape) wiretrack
#@ set fp_snap_type(wiring_keepout) wiretrack
#@ set fp_snap_type(placement_keepout) litho
#@ set fp_snap_type(net_shape) wiretrack
#@ set fp_snap_type(route_shape) wiretrack
#@ set fp_snap_type(none) litho
#@ 
#@ # STAR 9000615813.  PWR-18 is no longer internally suppressed.
#@ # Instead call tcl suppress_message so that it can be unsuppressed by users in
#@ # command line if needed
#@ suppress_message PWR-18
#@ 
#@ # alias for write_sge is always the last line of the setup file
#@ #if { [string compare $dc_shell_mode "tcl"] == 0 } {
#@ #   alias write_sge "source db2sge_script"
#@ #} else {
#@ #   alias write_sge "include db2sge_script"
#@ #}
#@ 
#@ if { $dc_shell_mode == "tcl" } {
#@         # Configure Execute script dialog to display .tcl files
#@ 	  set view_execute_script_suffix "$view_execute_script_suffix .tcl"
#@    }
#@ 
#@ #
#@ # Shirley Lu 5/15/2007
#@ #
#@ # Invoke NCX validation/correlation/fomatter from lc_shell:
#@ #
#@ # UNIX shell:
#@ # setenv SYNOPSYS_NCX_ROOT /mydisk/ncx_2007.06
#@ #
#@ 
#@ if {[info exists env(SYNOPSYS_NCX_ROOT)]} {
#@ 
#@   set ncx_path $env(SYNOPSYS_NCX_ROOT)/ncx/${sh_arch}/bin
#@ 
#@ #
#@ # check_ccs_lib
#@ # use libchecker under $ncx_path defined above
#@ # Disable this command since 2010.12-SP3 (should be done in 2010.12 release)
#@ #proc check_ccs_lib {args} {
#@ #    global ncx_path
#@ #    set cmdStr [linsert  $args 0 ${ncx_path}/libchecker -lc_shell]
#@ #    set cmd [open "| $cmdStr 2>@ stdout"]
#@ #    catch {
#@ #      while {[gets $cmd info] >= 0} {
#@ #        echo $info
#@ #      }
#@ #    }
#@ #    if {[catch {close $cmd} msg]} {
#@ #    }
#@ #}
#@ 
#@ #
#@ # format_lib
#@ # use ncx under $ncx_path defined above
#@ # Disable format_lib command in 2014.09 release -- xwwang, 7/25/2014
#@ #proc format_lib {args} {
#@ #    global ncx_path
#@ #    echo "Warning: format_lib command is scheduled to become obsolete in a future production release."
#@ #    set cmdStr [linsert  $args 0 ${ncx_path}/ncx -lc_shell]
#@ #    set cmd [open "| $cmdStr 2>@ stdout"]
#@ #    catch {
#@ #      while {[gets $cmd info] >= 0} {
#@ #        echo $info
#@ #      }
#@ #    }
#@ #    if {[catch {close $cmd} msg]} {
#@ #    }
#@ #}
#@ 
#@ }
#@ 
#@ proc valias {v_orig v_alias} {
#@    uplevel 1 "upvar 0 $v_orig $v_alias"
#@ }
#@ 
#@ set lc_run_from_legacy_library_compiler "true"
#@ 
#@ set lc_enable_legacy_library_compiler "false"
#@ 
#@ valias lc_enable_legacy_library_compiler lc_enable_common_shell_lc
#@ 
#@ if {[info exists ::env(SYNOPSYS_LC_ROOT)] && [file exists $::env(SYNOPSYS_LC_ROOT)/$::sh_arch/lc/bin/lc_shell_exec]} {
#@     # make lc man pages search path override the default man page search path
#@     set man_path [linsert $man_path 0 $::env(SYNOPSYS_LC_ROOT)/doc/lc/man]   
#@ } else {
#@     set lc_link "$::synopsys_root/$::sh_arch/syn/bin/lc_shell_exec"
#@     while { [file exists $lc_link] && [file type $lc_link] == "link"} {
#@         set lc_link  [file readlink $lc_link]
#@     }
#@     # resolve symbol-link to get $exec_path of lc_shell_exec
#@     if { [file exists $lc_link] } {
#@       set LC_ROOT [file dirname [file dirname [file dirname [file dirname $lc_link]]]]
#@       set man_path [linsert $man_path 0 $LC_ROOT/doc/lc/man]
#@     }
#@ } 
#@ 
#@ source ${synopsys_root}/auxx/syn/lc_commands.tbc
#@ # -- Starting source /tools/synopsys/cst/N-2017.09-SP2/auxx/syn/lc_commands.tbc

#@ ##############################################################################
#@ # Author : Liping Zhao
#@ # History: 2016/11/21 created
#@ # Description: This is the source tcl file of run_nglc.tbc.
#@ #              The procs are all for run library compiler under the hood.
#@ #              These procs are exracted from .synopsys_dc.setup
#@ ##############################################################################
#@ # TclPro::Compiler::Include
#@ 
#@ if {[catch {package require tbcload 1.6} err] == 1} {
#@     return -code error "[info script]: The TclPro ByteCode Loader is not available or does not support the correct version -- $err"
#@ }
#@ tbcload::bceval {
#@ TclPro ByteCode 2 0 1.7 8.5
#@ 34 0 340 47 0 0 268 0 4 34 34 -1 -1
#@ 340
#@ ReF<!(H&s!/HW<!(3E<!2`8s!W=wpv,l=6#/HW<!-Qr<!2`8s!YOZQ#.)tl#/HW<!/|/=!2`
#@ 8s!xa;3w0;UNw/HW<!1iA=!2`8s!|sqiw>vRK%/HW<!3uS=!2`8s!`9nf%DFNH&/HW<!62o=
#@ !2`8s!cTjc&JjJE'/HW<!9D5>!2`8s!fof`';I+'(/HW<!<VP>!2`8s!h,HB(TQ(w)/HW<!>
#@ bb>!2`8s!kGD?)@!^Z)/HW<!At(?!2`8s!mY%!*B3?<*/HW<!C+;?!2`8s!okxW*bP<9+/HW
#@ <!E7M?!2`8s!r1XT+G`qo+/HW<!HIh?!2`8s!tC96,l7ol,/HW<!JU%@!2`8s!v_53-ZbON-
#@ /HW<!Mg@@!2`8s!wqki-!tLK./HW<!OsR@!2`8s!'7hf.'CIH//HW<!R0n@!/E<!!
#@ 34
#@ @1IOwI1IOwI1IOwI1IOwI1IOwI1IOwI1IOwI1IOw5B!
#@ 34
#@ I%%n#I%%n#I%%n#I%%n#I%%n#I%%n#I%%n#I%%n#49!
#@ 47
#@ x
#@ 4
#@ ,CHr@
#@ x
#@ 23
#@ lj|Z?!aiaEw>m#H8&Z)F5mNaEt-E-
#@ x
#@ 1
#@ A!
#@ p
#@ 5 0 29 3 0 0 20 0 9 5 5 -1 -1
#@ 29
#@ w0E<!w0E<!w0E<!w0E<!6P1qv3&5pv-E<!!z
#@ 5
#@ )|y9v%!
#@ 5
#@ 'wwi%*!
#@ 3
#@ x
#@ 4
#@ m'cSA
#@ x
#@ 7
#@ %H9KDUvg+
#@ x
#@ 18
#@ kaT5BnEi'Fh!cr@eRo;@Syw
#@ 0
#@ 0
#@ 0 0
#@ x
#@ 22
#@ epCkBo0m*EpvnX?3DccE,&MEFO(%
#@ x
#@ 7
#@ /^,8AY@c,
#@ x
#@ 20
#@ lj|Z?qd,r@eLa:@iqEY?%xRQB
#@ p
#@ 25 0 353 16 2 0 140 1 6 25 37 -1 -1
#@ 353
#@ 32fv!8^w!!pa#!!%6E<!v:u@-B?W<!(3E<!8,|Tv5/T=!7)>pvQks<!PSa<!/`ncB:Xs#)v*
#@ <<!&<`W!7Ki<!;5>6#;>fv!E*<<!<^w!!8f!!!-/:3w4Ki<!?YUNw<G,>!8^w!!a9)!!&E&s
#@ !18:3w4Ki<!?YUNw3lSs!3Bv!!WX9,!k5s1!DZqo+I_w!!y(#!!&E&s!2f&s!:8B=!3iSs!.
#@ |o7-C^w!!+?!!!05c!,J^w!!4Z!!!&E&s!:8B=!<D,>!8^w!!KJv!!&E&s!1rA=!;Yq9-C^w
#@ !!+?!!!1;l!,A^w!!+?!!!fqlwv5v!!!D!!!!gF#!!&E&s!:8B=!4,tl#,eN48;I%!!'BW<!
#@ '69!s@;yH!GN2,!FUqw!#0E<!3AU3wk2_Q5l#3,!.oAv!,,:3wU2io+WyFq+8DPt!5v!!!-!
#@ !!!,?!!!z
#@ 25
#@ 6P17#)^Fo#QG5:vP4IOwLCdOwcpIOw7!
#@ 37
#@ &w*!!58qE'Rl3<!sG|''!w!!!it&S#px6L.`b47,c6v1%-!
#@ 16
#@ x
#@ 7
#@ &OQ<@xe|+
#@ x
#@ 5
#@ ijkIDBv
#@ x
#@ 16
#@ k%PJ:qw!d;oLIU?f:6)<
#@ x
#@ 4
#@ m'cSA
#@ x
#@ 6
#@ 1lo(F^(%
#@ x
#@ 1
#@ P!
#@ x
#@ 9
#@ q3HQBb!cr@4v
#@ x
#@ 21
#@ OfS405Kb50nEi'FrZ!iCnc%UA/v
#@ x
#@ 1
#@ R!
#@ i
#@ 0
#@ x
#@ 15
#@ -#l#H8&Z)F5mNaEt-E-
#@ x
#@ 22
#@ V:wLD5Q<JD*nmX?w:7hCu5(yG?Mw
#@ x
#@ 8
#@ %xRQB:p2TA
#@ x
#@ 8
#@ i%97A&jmMC
#@ x
#@ 8
#@ qLK;@0dhTA
#@ x
#@ 0
#@ 
#@ 2
#@ L 0 149 102 295 252 -1
#@ C 0 266 14 -1 -1 278
#@ 0
#@ 0 2
#@ 9
#@ rmBq@q,BCF4v
#@ 0 0 0
#@ 4
#@ %xRQB
#@ 1 0 0
#@ x
#@ 13
#@ #k|Z?qd,r@u,aaE?v
#@ p
#@ 37 0 381 20 0 0 148 0 3 37 37 -1 -1
#@ 381
#@ w0E<!KN2,!EOhw!#0E<!+BE<!41fg&5v!!!/!!!!w-<<!^Kn<v>Me`BJ>'0.#3WW!0#>6#3#
#@ Ts!TG;I/m&3,!/uJv!#0E<!Ga++'M`yTv8^w!!JGv!!*cvpv5JUNw'qrD!:1fg&5v!!!/!!!
#@ !/oJ=!fKn<v>Me`BLP|f.#3WW!0#>6#82Ts!TG;I/o,3,!1,|v!#0E<!CYCqvxKn<v>Me`BJ
#@ >'0.#3WW!0#>6#:8Ts!TG;I/m&3,!/uJv!#0E<!H=J*'M`yTv8^w!!JGv!!*cvpv:v3-&'qr
#@ D!:1fg&5v!!!/!!!!48#>!^Kn<v>Me`BJ>'0.#3WW!0#>6#<>Ts!TG;I/m&3,!/uJv!#0E<!
#@ J=J*'M`yTv8^w!!JGv!!*cvpv<4ic&'qrD!:1fg&5v!!!/!!!!6D5>!_Kn<v>Me`BJ>'0.#3
#@ WW!0#>6#>DTs!TG;I/m&3,!/uJv!#0E<!MCS*'M`yTvz
#@ 37
#@ 9egm#KeHK%KeHK%KeHK%?ur!!K;s!!K;s!!K;s!!K;s!!/!
#@ 37
#@ ^'nK%j@<L%j@<L%nRr-&`sMR#jsMR#jsMR#jsMR#ipMR#/!
#@ 20
#@ x
#@ 12
#@ kaT5B`qARA@/;EF
#@ x
#@ 4
#@ 8w`TA
#@ x
#@ 20
#@ lj|Z?qd,r@eLa:@iqEY?%xRQB
#@ x
#@ 7
#@ &OQ<@xe|+
#@ x
#@ 5
#@ s85)F1v
#@ x
#@ 0
#@ 
#@ x
#@ 4
#@ wm<eD
#@ x
#@ 3
#@ kL2-
#@ x
#@ 18
#@ kaT5Bm<NaE1fsiCqRo;@Syw
#@ i
#@ 0
#@ x
#@ 4
#@ MyB,E
#@ x
#@ 22
#@ kaT5Bm<NaEomK;@'(ur@g^CkBHSw
#@ x
#@ 22
#@ qd,r@l-?SAg%ap@vkT;@A*q=FFhw
#@ x
#@ 18
#@ kaT5BnEi'Fh!cr@eRo;@Syw
#@ x
#@ 20
#@ lj|Z?qd,r@eLa:@iqEY?%xRQB
#@ x
#@ 24
#@ kaT5Bd@YjB'p/fDsT/CFyqEY?m'cSA
#@ x
#@ 21
#@ kaT5Bd@YjB6>m#Hvd<iCgKxhC1v
#@ x
#@ 27
#@ kaT5BfR:LCfR9Z?qd,r@rfR.Dk^CkBf^;-
#@ x
#@ 28
#@ kaT5Bd@YjB1?0bEld1kBf=+Y?Xv|mA%0K(F
#@ x
#@ 15
#@ kaT5BgxUgCr6m*E_I-,
#@ 0
#@ 0
#@ 0 0
#@ x
#@ 15
#@ 3aMTAu'V5Bq`ewGh0<-
#@ p
#@ 36 0 297 15 0 0 144 0 3 36 36 -1 -1
#@ 297
#@ w0E<!-fSs!O,uc/ViA9v,|8X!M`yTv8^w!!B/v!!w-*!!*`vpv'qrD!-A77w.r=6#Omm<v>M
#@ e`BBKMT+#3WW!w0E<!3#Ts!O,uc/ViA9v2o8X!M`yTv8^w!!B/v!!w-*!!-&tl#'qrD!-A77
#@ w0/tl#Omm<v>Me`BBKMT+#3WW!w0E<!5)Ts!O,uc/ViA9v4u8X!M`yTv8^w!!B/v!!w-*!!/
#@ 8UNw'qrD!-A77w2AUNwOmm<v>Me`BBKMT+#3WW!w0E<!7/Ts!O,uc/ViA9v6&9X!M`yTv8^w
#@ !!B/v!!w-*!!1J60%'qrD!-A77w4S60%Omm<v>Me`BBKMT+#3WW!w0E<!95Ts!O,uc/ViA9v
#@ 8,9X!M`yTvz
#@ 36
#@ /JHK%CeHK%CeHK%CeHK%CeHK%CeHK%CeHK%CeHK%CeHK%
#@ 36
#@ QMbpvZMbpvZMbpvZMbpvZMbpvZMbpvZMbpvZMbpvYMbpv
#@ 15
#@ x
#@ 4
#@ wm<eD
#@ x
#@ 3
#@ kL2-
#@ x
#@ 12
#@ kaT5B`qARA@/;EF
#@ i
#@ 0
#@ x
#@ 5
#@ 3aMTA@v
#@ x
#@ 0
#@ 
#@ x
#@ 18
#@ kaT5Bm<NaE1fsiCqRo;@Syw
#@ x
#@ 16
#@ qd,r@!BK(F,+^Z?%xRQB
#@ x
#@ 22
#@ kaT5Bm<NaEomK;@'(ur@g^CkBHSw
#@ x
#@ 18
#@ kaT5BnEi'Fh!cr@eRo;@Syw
#@ x
#@ 24
#@ kaT5Bd@YjB'p/fDsT/CFyqEY?m'cSA
#@ x
#@ 21
#@ kaT5Bd@YjB6>m#Hvd<iCgKxhC1v
#@ x
#@ 27
#@ kaT5BfR:LCfR9Z?qd,r@rfR.Dk^CkBf^;-
#@ x
#@ 28
#@ kaT5Bd@YjB1?0bEld1kBf=+Y?Xv|mA%0K(F
#@ x
#@ 15
#@ kaT5BgxUgCr6m*E_I-,
#@ 0
#@ 0
#@ 0 0
#@ x
#@ 8
#@ k^YSAqP(yG
#@ x
#@ 1
#@ ?v
#@ p
#@ 2 0 26 4 0 0 8 0 5 2 2 -1 -1
#@ 26
#@ w0E<!.9`W!0&5Uv8^w!!-E!!!-iA=!z
#@ 2
#@ .H!
#@ 2
#@ :E!
#@ 4
#@ x
#@ 6
#@ gd|;@b:%
#@ x
#@ 4
#@ rwIID
#@ x
#@ 2
#@ >Kv
#@ x
#@ 3
#@ g'i-
#@ 0
#@ 0
#@ 1 2
#@ 1
#@ ?v
#@ 0 0 256
#@ 3
#@ g'i-
#@ 1 0 0
#@ x
#@ 13
#@ qd,r@dIa:@e-%lB.v
#@ x
#@ 6
#@ 'E%6B_-v
#@ p
#@ 1 0 7 1 0 0 4 0 2 1 1 -1 -1
#@ 7
#@ ,|&v!)'!!
#@ 1
#@ z
#@ 1
#@ '!
#@ 1
#@ x
#@ 21
#@ w3F/D'gi'FrZ!iCdIa:@e-%lB.v
#@ 0
#@ 0
#@ 1 1
#@ 4
#@ %N|(F
#@ 0 0 256
#@ x
#@ 21
#@ w3F/D'gi'FrZ!iCdIa:@e-%lB.v
#@ x
#@ 5
#@ %N|(FA!
#@ p
#@ 10 0 92 13 0 0 40 0 5 10 10 -1 -1
#@ 92
#@ )Nr<!8^w!!;o!!!w3E<!19N<!3|`W!7MkUv;u&s!5v!!!4!!!!2G^3w/)Ppv:&0s!5/|X!-B
#@ W<!?PC3w-`8s!75|X!-BW<!<&#pv2>UNw,?W<!49*!!
#@ 10
#@ Jwao#CV17#-0!
#@ 10
#@ |3yS#?Pt6#*-!
#@ 13
#@ x
#@ 14
#@ #k|Z?r0H8Aw9fwGJ%%
#@ x
#@ 18
#@ kaT5Bm<NaE1fsiCqRo;@Syw
#@ x
#@ 1
#@ P!
#@ x
#@ 15
#@ kaT5BgxUgCr6m*E_I-,
#@ x
#@ 22
#@ kaT5Bm<NaEomK;@'(ur@g^CkBHSw
#@ x
#@ 4
#@ *dmID
#@ x
#@ 1
#@ -v
#@ x
#@ 14
#@ 4rBfD1-0CFq&fwGJ%%
#@ x
#@ 27
#@ fF'Z?qd,r@dIa:@e-%lBpA>cEh7|7An1g+
#@ x
#@ 5
#@ )lP)F1v
#@ x
#@ 19
#@ ,v(Z?!aiaEmo3mBm+BRAyOl,
#@ x
#@ 21
#@ w3F/D'gi'FrZ!iCdIa:@VhrU@?v
#@ x
#@ 18
#@ #k|Z?(FuSAhaBq@c^CkBHSw
#@ 0
#@ 0
#@ 1 3
#@ 4
#@ %N|(F
#@ 0 0 256
#@ 8
#@ o4jY?m'cSA
#@ 1 0 0
#@ 4
#@ g3IID
#@ 2 0 0
#@ x
#@ 14
#@ #k|Z?r0H8Aw9fwGJ%%
#@ p
#@ 7 0 70 13 0 0 28 0 6 7 7 -1 -1
#@ 70
#@ )Nr<!I>e`B;a9?)v*<<!&<`W!*TA9v.lvpv3on9v?o=6#4;tl#9;T=!:Apiw3rn9v-W&=!Dv
#@ mjw/QE<!;#5pvw!!
#@ 7
#@ 3Y6OwDy##
#@ 7
#@ UN>N%Je|v
#@ 13
#@ x
#@ 3
#@ _e|+
#@ x
#@ 15
#@ kaT5BgxUgCr6m*E_I-,
#@ x
#@ 6
#@ sT2TAIPw
#@ x
#@ 8
#@ m'cSANjkSA
#@ x
#@ 1
#@ +v
#@ x
#@ 5
#@ n0Hr@7v
#@ x
#@ 12
#@ #graEv_Bq@,0B(F
#@ x
#@ 4
#@ m'cSA
#@ x
#@ 6
#@ gpbSAPSw
#@ x
#@ 6
#@ AP5cE?Sw
#@ x
#@ 18
#@ kaT5Bm<NaE1fsiCqRo;@Syw
#@ x
#@ 1
#@ P!
#@ x
#@ 5
#@ r!2kB>v
#@ 0
#@ 0
#@ 0 1
#@ 8
#@ m'cSANjkSA
#@ 0 0 0
#@ x
#@ 14
#@ 4rBfD1-0CFq&fwGJ%%
#@ x
#@ 10
#@ (KxhCN1-.DQ-v
#@ p
#@ 17 0 213 23 2 1 88 2 10 17 21 -1 -1
#@ 213
#@ w0E<!(H&s!*N&s!+Q&s!,T&s!CY,>!8^w!!2V'!!*i=6#4;tl#=MGY!g@#!!ee6(!H,FN-gE
#@ EfR8SUNw<P>:v8P60%.EW<!--<<!BJ:3w0T`<!Q.taBLP|f.v*<<!f!!!!6^w!!/K!!!12>:
#@ vI,s<!Hv(g7.CI.!4qVH&7P60%DPe`Bbl^l5#3WW!@A#>!T,PU,=;'v!Bb>:vJjJE'5v!!!-
#@ !!!!@=N-&?@e`'4oSs!eFNH&>thc&FO+'(2iSs!G;O8sBA6-&z
#@ 17
#@ C^No#L2#Y!_cpw)>2|X!7!
#@ 21
#@ Pf3<!:'Le#-kv:wIT%m5`NOkw/!
#@ 23
#@ x
#@ 4
#@ q#TCF
#@ x
#@ 6
#@ hIa:@PSw
#@ x
#@ 11
#@ m9.bEi`JT8eIl,
#@ x
#@ 1
#@ R!
#@ x
#@ 22
#@ q3HQBl#sJD8o(`FnlrJDu_PcEX%%
#@ x
#@ 21
#@ q3HQBkoW/DmgY8AnT_5BgKxhC1v
#@ x
#@ 18
#@ hgtdD!CIIDkcreDb^CkBHSw
#@ x
#@ 4
#@ wm<eD
#@ x
#@ 4
#@ 4|k)F
#@ x
#@ 3
#@ j#L%
#@ x
#@ 2
#@ FVw
#@ x
#@ 5
#@ sB-<@Ev
#@ x
#@ 6
#@ 1lo(F^(%
#@ x
#@ 21
#@ 6dV<+:mui@26nlBPPW(46dV<+A!
#@ x
#@ 6
#@ !xMTAFVw
#@ i
#@ 0
#@ x
#@ 0
#@ 
#@ x
#@ 4
#@ DP)*F
#@ x
#@ 12
#@ h-ur@E5>F+91VE+
#@ x
#@ 25
#@ ruwlB/wJ9>gd|;@>AufA'%U;@(y(S.A!
#@ x
#@ 8
#@ k^YSAqP(yG
#@ x
#@ 4
#@ wg;3I
#@ x
#@ 5
#@ P!i<+Iv
#@ 2
#@ L 0 60 144 210 50 -1
#@ C 1 105 20 -1 -1 123
#@ 1
#@ F
#@ 1 2 3
#@ 1
#@ 4
#@ 1 7
#@ 8
#@ m'cSANjkSA
#@ 0 0 256
#@ 12
#@ 'ZPDFd%+:@EAl)F
#@ 1 0 0
#@ 0
#@ 
#@ 2 0 512
#@ 0
#@ 
#@ 3 0 512
#@ 3
#@ kL2-
#@ 4 0 0
#@ 6
#@ 7,V`FW+%
#@ 5 0 0
#@ 4
#@ .0B,E
#@ 6 0 0
#@ x
#@ 21
#@ w3F/D'gi'FrZ!iCdIa:@VhrU@?v
#@ p
#@ 5 0 80 12 1 1 20 1 6 5 5 -1 -1
#@ 80
#@ 32fv!8^w!!y(#!!w3E<!(H&s!3)T=!9_Hjw1o=6#>J,>!g@#!!ee6(!G#+3-:|/=!?e64w1f
#@ As!3L2!!8^w!!/K!!!.8UNw>>##!
#@ 5
#@ RM+7,1!
#@ 5
#@ +T>5w/!
#@ 12
#@ x
#@ 0
#@ 
#@ x
#@ 4
#@ q'-W@
#@ x
#@ 11
#@ :6Hr@06FiCZLc,
#@ x
#@ 10
#@ 9&TbE#KffDb:%
#@ x
#@ 18
#@ kaT5Bm<NaE1fsiCqRo;@Syw
#@ x
#@ 1
#@ P!
#@ x
#@ 15
#@ kaT5BgxUgCr6m*E_I-,
#@ x
#@ 4
#@ @)qU@
#@ x
#@ 6
#@ sT2TAIPw
#@ x
#@ 7
#@ B9:8@g^;-
#@ x
#@ 1
#@ A!
#@ x
#@ 28
#@ kaT5Bd@YjB1?0bEld1kBf=+Y?Xv|mA%0K(F
#@ 1
#@ L 0 49 10 62 42 -1
#@ 1
#@ F
#@ 1 1 2
#@ 1
#@ 3
#@ 0 4
#@ 7
#@ B9:8@g^;-
#@ 0 0 0
#@ 0
#@ 
#@ 1 0 512
#@ 0
#@ 
#@ 2 0 512
#@ 3
#@ kL2-
#@ 3 0 0
#@ x
#@ 21
#@ w3F/D'gi'FrZ!iC`jbSAp#K^F<v
#@ p
#@ 3 0 36 10 0 0 12 0 6 3 3 -1 -1
#@ 36
#@ /rS=!6U(+((H&s!,`yTv5Qr<!<)Ks!Qsm<v.TW<!19*!!
#@ 3
#@ @nG#
#@ 3
#@ VoE!
#@ 10
#@ x
#@ 27
#@ kaT5BfR:LCfR9Z?qd,r@rfR.Dk^CkBf^;-
#@ x
#@ 5
#@ s85)F1v
#@ x
#@ 4
#@ m'cSA
#@ x
#@ 6
#@ gpbSAPSw
#@ x
#@ 6
#@ AP5cE?Sw
#@ x
#@ 18
#@ kaT5Bm<NaE1fsiCqRo;@Syw
#@ x
#@ 1
#@ P!
#@ x
#@ 15
#@ kaT5BgxUgCr6m*E_I-,
#@ x
#@ 0
#@ 
#@ x
#@ 15
#@ 3aMTAu'V5Bq`ewGh0<-
#@ 0
#@ 0
#@ 0 0
#@ x
#@ 27
#@ fF'Z?qd,r@dIa:@e-%lBpA>cEh7|7An1g+
#@ x
#@ 14
#@ (KxhCN1-.D%)^aEQ(%
#@ p
#@ 14 0 131 13 0 0 60 0 4 14 14 -1 -1
#@ 131
#@ ,|&v!,cSs!/)13w8;y`B64y`'#3WW!><u+!3oh)Bz1fSs!/)13w+l4pv(0*!!0KA9v.EW<!,
#@ H<<!2`8s!,|&v!1rSs!/)13w//Ypv(0*!!4oXQ#.EW<!,H<<!6`8s!,|&v!5)Ts!/)13w3G(
#@ qv(0*!!8>piw**!!
#@ 14
#@ 9yLm#Mngm#Engm#3<!
#@ 14
#@ f?J8#Engm#Engm#29!
#@ 13
#@ x
#@ 4
#@ DP)*F
#@ x
#@ 33
#@ =P6X5r*r<+fF'Z?w3F/D'gi'FrZ!iCdIa:@e-%lB.v
#@ x
#@ 5
#@ uKhgCA!
#@ x
#@ 7
#@ =P6X5R^`w
#@ x
#@ 31
#@ 91VE+ri+@G,XVTAp<HSAihrU@gKxhCnWg:@f4g+
#@ x
#@ 20
#@ 91VE+!aiaEvLQ3Bq9VgChIs#?
#@ x
#@ 51
#@ 4CDE+?NfCFP'bH0^YU^,ycU?+wDblB,7DoA;%#lB4RME+B`xQHw!saEQ0(d0:i,.
#@ x
#@ 38
#@ :tJTA6ovlBh|2jB'E(yGjf<iCulSCF3+uD+(XKV@K/qT,=;w
#@ x
#@ 38
#@ 9nATAqKDTAF.fK/6nCE+6NZ?E=Jd#Hg*;1C)+VE+(XKV@c,v
#@ x
#@ 40
#@ 9nATA,rP-E`:p!.).Kp-ZT<p>il+t+/=4=I<NQC+'OcC++xuC+
#@ x
#@ 56
#@ KW&dEn=+Y?w&|C+LReK/C?pBDbnmX?7,V`F'^m*E9H,502WIhCjcreDdRo;@QhNV,%*qU@
#@ x
#@ 1
#@ Iv
#@ x
#@ 4
#@ 2u5DF
#@ 0
#@ 0
#@ 2 2
#@ 8
#@ m'cSANjkSA
#@ 0 0 256
#@ 4
#@ %N|(F
#@ 1 0 256
#@ x
#@ 18
#@ #k|Z?(FuSAhaBq@c^CkBHSw
#@ p
#@ 8 0 116 12 0 0 36 0 6 8 8 -1 -1
#@ 116
#@ w0E<!1#T=!5S6jw0re9v;Yq9-#_w!!/K!!!)`vpv?ntt!5v!!!Q!!!!w-<<!1Gwjw*TA9v;,
#@ GUvn2_Q5m&3,!/uJv!#0E<!EOe*'R8:3w!N3,!/uJv!#0E<!Fg4+'8^w!!/K!!!,&tl#@_##
#@ !
#@ 8
#@ E'#i%b`oh%
#@ 8
#@ ;enF0^w'M%
#@ 12
#@ x
#@ 4
#@ m'cSA
#@ x
#@ 6
#@ 1lo(F^(%
#@ x
#@ 18
#@ kaT5Bm<NaE1fsiCqRo;@Syw
#@ x
#@ 1
#@ P!
#@ x
#@ 15
#@ kaT5BgxUgCr6m*E_I-,
#@ x
#@ 17
#@ 7pTZ?ve'Z?qUbOBgKxhC1v
#@ x
#@ 24
#@ kaT5Bd@YjB'p/fDsT/CFyqEY?m'cSA
#@ x
#@ 4
#@ 8w`TA
#@ x
#@ 15
#@ 7pTZ?3CpV@m@|mAytf+
#@ x
#@ 21
#@ kaT5Bd@YjB6>m#Hvd<iCgKxhC1v
#@ x
#@ 0
#@ 
#@ x
#@ 5
#@ s85)F1v
#@ 0
#@ 0
#@ 0 0
#@ x
#@ 19
#@ ,v(Z?!aiaEmo3mBm+BRAyOl,
#@ x
#@ 8
#@ o4jY?m'cSA
#@ p
#@ 27 0 366 30 2 0 132 1 8 27 31 -1 -1
#@ 366
#@ w0E<!1#T=!/r=pv2G^3w-u4Uv6/Ypv9u&s!5v!!!Q!!!!7kZjwgfvdB>'6<*v*<<!,#tl#9i
#@ A=!Ebpiw8S60%=MGY!VyQK%8^w!!.H!!!2ylf%LGe`B.A-0%v*<<!G1);v8^w!!2V'!!EL_w
#@ !+GPqB<jTZ)v*<<!!oxR5e:NH&<;YUvPpm<vGhe`B^HGT4v*<<!H^/*'L!f`'GR+'(>bq9-X
#@ ^w!!5|!!!;RFB(Gk#t!COAI&;N2,!+|&v!d&.36VyQK%8^w!!a7#!!/&#t!##heBOkYc/v*<
#@ <!@yq9-Q^w!!.H!!!<a'w)MJe`B+&13wv*<<!9l0=!G>GpvJSa<!MpB?)Hs|Z):blf%#BO8s
#@ 5cTK%8^w!!OVv!!hq?(!#0E<!N&#pvUyFq+P#wS7Jv!!!=>Ts!0f#8-gxpr+7>Gt!5v!!!:!
#@ !!!7kZjw=/C=!O,,pvJSa<!/!!
#@ 27
#@ =Xv+'`Q,N%Yp`1%PLdjwZsrL%Txmn#V4Uv
#@ 31
#@ 6@&a0l*sL%!w!!!@.Wp4WF.4wRxy4w#@;D)F;X!
#@ 30
#@ x
#@ 4
#@ *dmID
#@ x
#@ 1
#@ Hv
#@ x
#@ 18
#@ kaT5BnEi'Fh!cr@eRo;@Syw
#@ x
#@ 16
#@ JaGQB*kbD+))2dEV%BE+
#@ x
#@ 23
#@ lj|Z?!aiaEw>m#H8&Z)F5mNaEt-E-
#@ x
#@ 4
#@ J2*D+
#@ x
#@ 12
#@ vAE-0;oU6036viC
#@ x
#@ 1
#@ >v
#@ x
#@ 27
#@ kaT5BfR:LCfR9Z?qd,r@rfR.Dk^CkBf^;-
#@ x
#@ 18
#@ kaT5Bm<NaE1fsiCqRo;@Syw
#@ x
#@ 1
#@ P!
#@ x
#@ 15
#@ kaT5BgxUgCr6m*E_I-,
#@ x
#@ 10
#@ 3XKV@:.BbCMYw
#@ x
#@ 1
#@ Cv
#@ x
#@ 0
#@ 
#@ i
#@ 0
#@ x
#@ 4
#@ 8w`TA
#@ x
#@ 4
#@ DP)*F
#@ x
#@ 6
#@ :<ylBLYw
#@ x
#@ 5
#@ wRH<@8v
#@ x
#@ 7
#@ 9WmIDeI-,
#@ x
#@ 1
#@ X!
#@ x
#@ 7
#@ =P6X5R^`w
#@ x
#@ 1
#@ B!
#@ x
#@ 1
#@ A!
#@ x
#@ 5
#@ s85)F1v
#@ x
#@ 4
#@ +u(*F
#@ x
#@ 4
#@ u3uSA
#@ x
#@ 5
#@ )lP)F1v
#@ x
#@ 0
#@ 
#@ 2
#@ L 0 119 154 290 274 -1
#@ C 0 307 12 -1 -1 317
#@ 0
#@ 1 7
#@ 8
#@ o4jY?m'cSA
#@ 0 0 256
#@ 4
#@ g3IID
#@ 1 0 0
#@ 3
#@ d4w,
#@ 2 0 0
#@ 4
#@ lWNeD
#@ 3 0 0
#@ 9
#@ ,uk)Fdd;JD1v
#@ 4 0 0
#@ 4
#@ u3uSA
#@ 5 0 0
#@ 5
#@ bT/bE>v
#@ 6 0 0
#@ x
#@ 15
#@ qd,r@s&O+E,=^Z?YYK+
#@ p
#@ 9 0 78 12 0 0 36 0 5 9 9 -1 -1
#@ 78
#@ /rS=!1Gwjw'E&s!H=rH&*TA9v?Ae`B4v&*'v*<<!2uA=!1rSs!8BW<!:,,pv/#YQ#7c&v!.E
#@ W<!<,,pv15:3w4Z8X!6G(qvv!!
#@ 9
#@ AqCm#CV17#(!
#@ 9
#@ TFxS#?Pt6#%!
#@ 12
#@ x
#@ 18
#@ kaT5Bm<NaE1fsiCqRo;@Syw
#@ x
#@ 1
#@ P!
#@ x
#@ 15
#@ kaT5BgxUgCr6m*E_I-,
#@ x
#@ 22
#@ kaT5Bm<NaEomK;@'(ur@g^CkBHSw
#@ x
#@ 21
#@ w3F/D'gi'FrZ!iCdIa:@VhrU@?v
#@ x
#@ 4
#@ *dmID
#@ x
#@ 1
#@ -v
#@ x
#@ 14
#@ 4rBfD1-0CFq&fwGJ%%
#@ x
#@ 29
#@ fF'Z?qd,r@s&O+E,=^Z?c_dX?,CHr@v9siC1v
#@ x
#@ 5
#@ )lP)F1v
#@ x
#@ 19
#@ ,v(Z?!aiaEmo3mBm+BRAyOl,
#@ x
#@ 21
#@ w3F/D'gi'FrZ!iC`jbSAp#K^F<v
#@ 0
#@ 0
#@ 1 3
#@ 4
#@ %N|(F
#@ 0 0 256
#@ 8
#@ o4jY?m'cSA
#@ 1 0 0
#@ 4
#@ g3IID
#@ 2 0 0
#@ x
#@ 29
#@ fF'Z?qd,r@s&O+E,=^Z?c_dX?,CHr@v9siC1v
#@ x
#@ 13
#@ m'cSANjkSA'E%6B?v
#@ p
#@ 9 0 109 8 1 1 36 1 4 9 9 -1 -1
#@ 109
#@ ,|&v!,cSs!8^w!!MPv!!%<`W!C&0s!d!!!!eC#!!XJIL&,|&v!35>:v1fSs!4!MU!)0*!!1T
#@ yTv.EW<!?JJ`B64y`'#3WW!><u+!3oh)Bz.EW<!,H<<!3`8s!,|&v!2uSs!z
#@ 9
#@ W,Vf&F@`g%*!
#@ 9
#@ lB/n#b1Vm#)!
#@ 8
#@ x
#@ 4
#@ DP)*F
#@ x
#@ 30
#@ 91VE+yM*:@!^IIDX_!Y?o4jY?r^oRAuoggCOSw
#@ x
#@ 28
#@ kaT5Bd@YjB1?0bEld1kBf=+Y?Xv|mA%0K(F
#@ x
#@ 8
#@ i%97AgkyC+
#@ x
#@ 0
#@ 
#@ x
#@ 36
#@ =P6X5r*r<+fF'Z?qd,r@s&O+E,=^Z?c_dX?,CHr@pN_TA
#@ x
#@ 7
#@ =P6X5R^`w
#@ x
#@ 4
#@ 2u5DF
#@ 1
#@ L 0 36 12 51 29 -1
#@ 1
#@ F
#@ 1 2 3
#@ 1
#@ 4
#@ 2 5
#@ 8
#@ m'cSANjkSA
#@ 0 0 256
#@ 4
#@ %N|(F
#@ 1 0 256
#@ 0
#@ 
#@ 2 0 512
#@ 0
#@ 
#@ 3 0 512
#@ 2
#@ =Jw
#@ 4 0 0
#@ x
#@ 18
#@ qd,r@yR>SAfsUgCkg,<@b:%
#@ x
#@ 11
#@ 0Q%hCgKxhC,tEw
#@ p
#@ 10 0 95 14 0 0 40 0 5 10 10 -1 -1
#@ 95
#@ /rS=!1Gwjw'E&s!H=rH&9N2,!4>##!#0E<!1NE<!@4`H&-fvpv5|8X!6Sp3w25bpv/o=6#7)
#@ tl#2Q/X!.EW<!5TN<!7`8s!9;|X!-BW<!>&#pv4P60%(w!!
#@ 10
#@ GFIOwG17n#/6!
#@ 10
#@ Vv)7#Gh17#,-!
#@ 14
#@ x
#@ 18
#@ kaT5Bm<NaE1fsiCqRo;@Syw
#@ x
#@ 1
#@ P!
#@ x
#@ 15
#@ kaT5BgxUgCr6m*E_I-,
#@ x
#@ 22
#@ kaT5Bm<NaEomK;@'(ur@g^CkBHSw
#@ x
#@ 4
#@ *dmID
#@ x
#@ 1
#@ -v
#@ x
#@ 14
#@ 4rBfD1-0CFq&fwGJ%%
#@ x
#@ 4
#@ DP)*F
#@ x
#@ 36
#@ =P6X5r*r<+fF'Z?qd,r@yR>SAfsUgCg'm*E!YfRA(pDTA
#@ x
#@ 7
#@ A;lcE_iGw
#@ x
#@ 7
#@ =P6X5R^`w
#@ x
#@ 5
#@ )lP)F1v
#@ x
#@ 19
#@ ,v(Z?!aiaEmo3mBm+BRAyOl,
#@ x
#@ 21
#@ w3F/D'gi'FrZ!iC`jbSAp#K^F<v
#@ 0
#@ 0
#@ 1 3
#@ 9
#@ o4jY?m'cSAQ!
#@ 0 0 256
#@ 8
#@ o4jY?m'cSA
#@ 1 0 0
#@ 4
#@ g3IID
#@ 2 0 0
#@ x
#@ 15
#@ rpwhC;Z2b3<?<+EfqT+
#@ 0
#@ 0
#@ }
#@ # -- End source /tools/synopsys/cst/N-2017.09-SP2/auxx/syn/lc_commands.tbc

#@ # -- End source /tools/synopsys/cst/N-2017.09-SP2/admin/setup/.synopsys_dc.setup

source /home/sam28/.synopsys_dc.setup
#@ # -- Starting source /home/sam28/.synopsys_dc.setup

#@ set SNSP_LOG_DIR "synopsys_log"
#@ if { ! [file exists $SNSP_LOG_DIR] } { file mkdir $SNSP_LOG_DIR }
#@ 
#@ set dateString [clock format [clock seconds] -format "%m_%d_%H_%M"]
#@ # -- Starting source /tools/synopsys/cst/N-2017.09-SP2/auxx/tcllib/lib/tcl8.6/msgcat/msgcat.tcl

#@ # msgcat.tcl --
#@ #
#@ #	This file defines various procedures which implement a
#@ #	message catalog facility for Tcl programs.  It should be
#@ #	loaded with the command "package require msgcat".
#@ #
#@ # Copyright (c) 1998-2000 by Ajuba Solutions.
#@ # Copyright (c) 1998 by Mark Harrison.
#@ #
#@ # See the file "license.terms" for information on usage and redistribution
#@ # of this file, and for a DISCLAIMER OF ALL WARRANTIES.
#@ 
#@ package require Tcl 8.5
#@ # When the version number changes, be sure to update the pkgIndex.tcl file,
#@ # and the installation directory in the Makefiles.
#@ package provide msgcat 1.5.2
#@ 
#@ namespace eval msgcat {
#@     namespace export mc mcload mclocale mcmax mcmset mcpreferences mcset 	    mcunknown mcflset mcflmset
#@ 
#@     # Records the current locale as passed to mclocale
#@     variable Locale ""
#@ 
#@     # Records the list of locales to search
#@     variable Loclist {}
#@ 
#@     # Records the locale of the currently sourced message catalogue file
#@     variable FileLocale
#@ 
#@     # Records the mapping between source strings and translated strings.  The
#@     # dict key is of the form "<locale> <namespace> <src>", where locale and
#@     # namespace should be themselves dict values and the value is
#@     # the translated string.
#@     variable Msgs [dict create]
#@ 
#@     # Map of language codes used in Windows registry to those of ISO-639
#@     if {[info sharedlibextension] eq ".dll"} {
#@ 	variable WinRegToISO639 [dict create  {*}{
#@ 	    01 ar 0401 ar_SA 0801 ar_IQ 0c01 ar_EG 1001 ar_LY 1401 ar_DZ
#@ 		  1801 ar_MA 1c01 ar_TN 2001 ar_OM 2401 ar_YE 2801 ar_SY
#@ 		  2c01 ar_JO 3001 ar_LB 3401 ar_KW 3801 ar_AE 3c01 ar_BH
#@ 		  4001 ar_QA
#@ 	    02 bg 0402 bg_BG
#@ 	    03 ca 0403 ca_ES
#@ 	    04 zh 0404 zh_TW 0804 zh_CN 0c04 zh_HK 1004 zh_SG 1404 zh_MO
#@ 	    05 cs 0405 cs_CZ
#@ 	    06 da 0406 da_DK
#@ 	    07 de 0407 de_DE 0807 de_CH 0c07 de_AT 1007 de_LU 1407 de_LI
#@ 	    08 el 0408 el_GR
#@ 	    09 en 0409 en_US 0809 en_GB 0c09 en_AU 1009 en_CA 1409 en_NZ
#@ 		  1809 en_IE 1c09 en_ZA 2009 en_JM 2409 en_GD 2809 en_BZ
#@ 		  2c09 en_TT 3009 en_ZW 3409 en_PH
#@ 	    0a es 040a es_ES 080a es_MX 0c0a es_ES@modern 100a es_GT 140a es_CR
#@ 		  180a es_PA 1c0a es_DO 200a es_VE 240a es_CO 280a es_PE
#@ 		  2c0a es_AR 300a es_EC 340a es_CL 380a es_UY 3c0a es_PY
#@ 		  400a es_BO 440a es_SV 480a es_HN 4c0a es_NI 500a es_PR
#@ 	    0b fi 040b fi_FI
#@ 	    0c fr 040c fr_FR 080c fr_BE 0c0c fr_CA 100c fr_CH 140c fr_LU
#@ 		  180c fr_MC
#@ 	    0d he 040d he_IL
#@ 	    0e hu 040e hu_HU
#@ 	    0f is 040f is_IS
#@ 	    10 it 0410 it_IT 0810 it_CH
#@ 	    11 ja 0411 ja_JP
#@ 	    12 ko 0412 ko_KR
#@ 	    13 nl 0413 nl_NL 0813 nl_BE
#@ 	    14 no 0414 no_NO 0814 nn_NO
#@ 	    15 pl 0415 pl_PL
#@ 	    16 pt 0416 pt_BR 0816 pt_PT
#@ 	    17 rm 0417 rm_CH
#@ 	    18 ro 0418 ro_RO 0818 ro_MO
#@ 	    19 ru 0819 ru_MO
#@ 	    1a hr 041a hr_HR 081a sr_YU 0c1a sr_YU@cyrillic
#@ 	    1b sk 041b sk_SK
#@ 	    1c sq 041c sq_AL
#@ 	    1d sv 041d sv_SE 081d sv_FI
#@ 	    1e th 041e th_TH
#@ 	    1f tr 041f tr_TR
#@ 	    20 ur 0420 ur_PK 0820 ur_IN
#@ 	    21 id 0421 id_ID
#@ 	    22 uk 0422 uk_UA
#@ 	    23 be 0423 be_BY
#@ 	    24 sl 0424 sl_SI
#@ 	    25 et 0425 et_EE
#@ 	    26 lv 0426 lv_LV
#@ 	    27 lt 0427 lt_LT
#@ 	    28 tg 0428 tg_TJ
#@ 	    29 fa 0429 fa_IR
#@ 	    2a vi 042a vi_VN
#@ 	    2b hy 042b hy_AM
#@ 	    2c az 042c az_AZ@latin 082c az_AZ@cyrillic
#@ 	    2d eu
#@ 	    2e wen 042e wen_DE
#@ 	    2f mk 042f mk_MK
#@ 	    30 bnt 0430 bnt_TZ
#@ 	    31 ts 0431 ts_ZA
#@ 	    32 tn
#@ 	    33 ven 0433 ven_ZA
#@ 	    34 xh 0434 xh_ZA
#@ 	    35 zu 0435 zu_ZA
#@ 	    36 af 0436 af_ZA
#@ 	    37 ka 0437 ka_GE
#@ 	    38 fo 0438 fo_FO
#@ 	    39 hi 0439 hi_IN
#@ 	    3a mt 043a mt_MT
#@ 	    3b se 043b se_NO
#@ 	    043c gd_UK 083c ga_IE
#@ 	    3d yi 043d yi_IL
#@ 	    3e ms 043e ms_MY 083e ms_BN
#@ 	    3f kk 043f kk_KZ
#@ 	    40 ky 0440 ky_KG
#@ 	    41 sw 0441 sw_KE
#@ 	    42 tk 0442 tk_TM
#@ 	    43 uz 0443 uz_UZ@latin 0843 uz_UZ@cyrillic
#@ 	    44 tt 0444 tt_RU
#@ 	    45 bn 0445 bn_IN
#@ 	    46 pa 0446 pa_IN
#@ 	    47 gu 0447 gu_IN
#@ 	    48 or 0448 or_IN
#@ 	    49 ta
#@ 	    4a te 044a te_IN
#@ 	    4b kn 044b kn_IN
#@ 	    4c ml 044c ml_IN
#@ 	    4d as 044d as_IN
#@ 	    4e mr 044e mr_IN
#@ 	    4f sa 044f sa_IN
#@ 	    50 mn
#@ 	    51 bo 0451 bo_CN
#@ 	    52 cy 0452 cy_GB
#@ 	    53 km 0453 km_KH
#@ 	    54 lo 0454 lo_LA
#@ 	    55 my 0455 my_MM
#@ 	    56 gl 0456 gl_ES
#@ 	    57 kok 0457 kok_IN
#@ 	    58 mni 0458 mni_IN
#@ 	    59 sd
#@ 	    5a syr 045a syr_TR
#@ 	    5b si 045b si_LK
#@ 	    5c chr 045c chr_US
#@ 	    5d iu 045d iu_CA
#@ 	    5e am 045e am_ET
#@ 	    5f ber 045f ber_MA
#@ 	    60 ks 0460 ks_PK 0860 ks_IN
#@ 	    61 ne 0461 ne_NP 0861 ne_IN
#@ 	    62 fy 0462 fy_NL
#@ 	    63 ps
#@ 	    64 tl 0464 tl_PH
#@ 	    65 div 0465 div_MV
#@ 	    66 bin 0466 bin_NG
#@ 	    67 ful 0467 ful_NG
#@ 	    68 ha 0468 ha_NG
#@ 	    69 nic 0469 nic_NG
#@ 	    6a yo 046a yo_NG
#@ 	    70 ibo 0470 ibo_NG
#@ 	    71 kau 0471 kau_NG
#@ 	    72 om 0472 om_ET
#@ 	    73 ti 0473 ti_ET
#@ 	    74 gn 0474 gn_PY
#@ 	    75 cpe 0475 cpe_US
#@ 	    76 la 0476 la_VA
#@ 	    77 so 0477 so_SO
#@ 	    78 sit 0478 sit_CN
#@ 	    79 pap 0479 pap_AN
#@ 	}]
#@     }
#@ }
#@ 
#@ # msgcat::mc --
#@ #
#@ #	Find the translation for the given string based on the current
#@ #	locale setting. Check the local namespace first, then look in each
#@ #	parent namespace until the source is found.  If additional args are
#@ #	specified, use the format command to work them into the traslated
#@ #	string.
#@ #
#@ # Arguments:
#@ #	src	The string to translate.
#@ #	args	Args to pass to the format command
#@ #
#@ # Results:
#@ #	Returns the translated string.  Propagates errors thrown by the
#@ #	format command.
#@ 
#@ proc msgcat::mc {src args} {
#@     # Check for the src in each namespace starting from the local and
#@     # ending in the global.
#@ 
#@     variable Msgs
#@     variable Loclist
#@     variable Locale
#@ 
#@     set ns [uplevel 1 [list ::namespace current]]
#@ 
#@     while {$ns != ""} {
#@ 	foreach loc $Loclist {
#@ 	    if {[dict exists $Msgs $loc $ns $src]} {
#@ 		if {[llength $args] == 0} {
#@ 		    return [dict get $Msgs $loc $ns $src]
#@ 		} else {
#@ 		    return [format [dict get $Msgs $loc $ns $src] {*}$args]
#@ 		}
#@ 	    }
#@ 	}
#@ 	set ns [namespace parent $ns]
#@     }
#@     # we have not found the translation
#@     return [uplevel 1 [list [namespace origin mcunknown] 	    $Locale $src {*}$args]]
#@ }
#@ 
#@ # msgcat::mclocale --
#@ #
#@ #	Query or set the current locale.
#@ #
#@ # Arguments:
#@ #	newLocale	(Optional) The new locale string. Locale strings
#@ #			should be composed of one or more sublocale parts
#@ #			separated by underscores (e.g. en_US).
#@ #
#@ # Results:
#@ #	Returns the current locale.
#@ 
#@ proc msgcat::mclocale {args} {
#@     variable Loclist
#@     variable Locale
#@     set len [llength $args]
#@ 
#@     if {$len > 1} {
#@ 	return -code error "wrong # args: should be		\"[lindex [info level 0] 0] ?newLocale?\""
#@     }
#@ 
#@     if {$len == 1} {
#@ 	set newLocale [lindex $args 0]
#@ 	if {$newLocale ne [file tail $newLocale]} {
#@ 	    return -code error "invalid newLocale value \"$newLocale\":		    could be path to unsafe code."
#@ 	}
#@ 	set Locale [string tolower $newLocale]
#@ 	set Loclist {}
#@ 	set word ""
#@ 	foreach part [split $Locale _] {
#@ 	    set word [string trim "${word}_${part}" _]
#@ 	    if {$word ne [lindex $Loclist 0]} {
#@ 		set Loclist [linsert $Loclist 0 $word]
#@ 	    }
#@ 	}
#@ 	lappend Loclist {}
#@ 	set Locale [lindex $Loclist 0]
#@     }
#@     return $Locale
#@ }
#@ 
#@ # msgcat::mcpreferences --
#@ #
#@ #	Fetch the list of locales used to look up strings, ordered from
#@ #	most preferred to least preferred.
#@ #
#@ # Arguments:
#@ #	None.
#@ #
#@ # Results:
#@ #	Returns an ordered list of the locales preferred by the user.
#@ 
#@ proc msgcat::mcpreferences {} {
#@     variable Loclist
#@     return $Loclist
#@ }
#@ 
#@ # msgcat::mcload --
#@ #
#@ #	Attempt to load message catalogs for each locale in the
#@ #	preference list from the specified directory.
#@ #
#@ # Arguments:
#@ #	langdir		The directory to search.
#@ #
#@ # Results:
#@ #	Returns the number of message catalogs that were loaded.
#@ 
#@ proc msgcat::mcload {langdir} {
#@     variable FileLocale
#@     # Save the file locale if we are recursively called
#@     if {[info exists FileLocale]} {
#@ 	set nestedFileLocale $FileLocale
#@     }
#@     set x 0
#@     foreach p [mcpreferences] {
#@ 	if {$p eq {}} {
#@ 	    set p ROOT
#@ 	}
#@ 	set langfile [file join $langdir $p.msg]
#@ 	if {[file exists $langfile]} {
#@ 	    incr x
#@ 	    set FileLocale [string tolower [file tail [file rootname $langfile]]]
#@ 	    if {"root" eq $FileLocale} {
#@ 		set FileLocale ""
#@ 	    }
#@ 	    uplevel 1 [list ::source -encoding utf-8 $langfile]
#@ 	    unset FileLocale
#@ 	}
#@     }
#@     if {[info exists nestedFileLocale]} {
#@ 	set FileLocale $nestedFileLocale
#@     }
#@     return $x
#@ }
#@ 
#@ # msgcat::mcset --
#@ #
#@ #	Set the translation for a given string in a specified locale.
#@ #
#@ # Arguments:
#@ #	locale		The locale to use.
#@ #	src		The source string.
#@ #	dest		(Optional) The translated string.  If omitted,
#@ #			the source string is used.
#@ #
#@ # Results:
#@ #	Returns the new locale.
#@ 
#@ proc msgcat::mcset {locale src {dest ""}} {
#@     variable Msgs
#@     if {[llength [info level 0]] == 3} { ;# dest not specified
#@ 	set dest $src
#@     }
#@ 
#@     set ns [uplevel 1 [list ::namespace current]]
#@ 
#@     set locale [string tolower $locale]
#@ 
#@     dict set Msgs $locale $ns $src $dest
#@     return $dest
#@ }
#@ 
#@ # msgcat::mcflset --
#@ #
#@ #	Set the translation for a given string in the current file locale.
#@ #
#@ # Arguments:
#@ #	src		The source string.
#@ #	dest		(Optional) The translated string.  If omitted,
#@ #			the source string is used.
#@ #
#@ # Results:
#@ #	Returns the new locale.
#@ 
#@ proc msgcat::mcflset {src {dest ""}} {
#@     variable FileLocale
#@     variable Msgs
#@ 
#@     if {![info exists FileLocale]} {
#@ 	return -code error 	    "must only be used inside a message catalog loaded with ::msgcat::mcload"
#@     }
#@     if {[llength [info level 0]] == 2} { ;# dest not specified
#@ 	set dest $src
#@     }
#@ 
#@     set ns [uplevel 1 [list ::namespace current]]
#@     dict set Msgs $FileLocale $ns $src $dest
#@     return $dest
#@ }
#@ 
#@ # msgcat::mcmset --
#@ #
#@ #	Set the translation for multiple strings in a specified locale.
#@ #
#@ # Arguments:
#@ #	locale		The locale to use.
#@ #	pairs		One or more src/dest pairs (must be even length)
#@ #
#@ # Results:
#@ #	Returns the number of pairs processed
#@ 
#@ proc msgcat::mcmset {locale pairs} {
#@     variable Msgs
#@ 
#@     set length [llength $pairs]
#@     if {$length % 2} {
#@ 	return -code error "bad translation list:		 should be \"[lindex [info level 0] 0] locale {src dest ...}\""
#@     }
#@ 
#@     set locale [string tolower $locale]
#@     set ns [uplevel 1 [list ::namespace current]]
#@ 
#@     foreach {src dest} $pairs {
#@ 	dict set Msgs $locale $ns $src $dest
#@     }
#@ 
#@     return [expr {$length / 2}]
#@ }
#@ 
#@ # msgcat::mcflmset --
#@ #
#@ #	Set the translation for multiple strings in the mc file locale.
#@ #
#@ # Arguments:
#@ #	pairs		One or more src/dest pairs (must be even length)
#@ #
#@ # Results:
#@ #	Returns the number of pairs processed
#@ 
#@ proc msgcat::mcflmset {pairs} {
#@     variable FileLocale
#@     variable Msgs
#@ 
#@     if {![info exists FileLocale]} {
#@ 	return -code error 	    "must only be used inside a message catalog loaded with ::msgcat::mcload"
#@     }
#@     set length [llength $pairs]
#@     if {$length % 2} {
#@ 	return -code error "bad translation list:		should be \"[lindex [info level 0] 0] locale {src dest ...}\""
#@     }
#@ 
#@     set ns [uplevel 1 [list ::namespace current]]
#@     foreach {src dest} $pairs {
#@ 	dict set Msgs $FileLocale $ns $src $dest
#@     }
#@     return [expr {$length / 2}]
#@ }
#@ 
#@ # msgcat::mcunknown --
#@ #
#@ #	This routine is called by msgcat::mc if a translation cannot
#@ #	be found for a string.  This routine is intended to be replaced
#@ #	by an application specific routine for error reporting
#@ #	purposes.  The default behavior is to return the source string.
#@ #	If additional args are specified, the format command will be used
#@ #	to work them into the traslated string.
#@ #
#@ # Arguments:
#@ #	locale		The current locale.
#@ #	src		The string to be translated.
#@ #	args		Args to pass to the format command
#@ #
#@ # Results:
#@ #	Returns the translated value.
#@ 
#@ proc msgcat::mcunknown {locale src args} {
#@     if {[llength $args]} {
#@ 	return [format $src {*}$args]
#@     } else {
#@ 	return $src
#@     }
#@ }
#@ 
#@ # msgcat::mcmax --
#@ #
#@ #	Calculates the maximum length of the translated strings of the given
#@ #	list.
#@ #
#@ # Arguments:
#@ #	args	strings to translate.
#@ #
#@ # Results:
#@ #	Returns the length of the longest translated string.
#@ 
#@ proc msgcat::mcmax {args} {
#@     set max 0
#@     foreach string $args {
#@ 	set translated [uplevel 1 [list [namespace origin mc] $string]]
#@ 	set len [string length $translated]
#@ 	if {$len>$max} {
#@ 	    set max $len
#@ 	}
#@     }
#@     return $max
#@ }
#@ 
#@ # Convert the locale values stored in environment variables to a form
#@ # suitable for passing to [mclocale]
#@ proc msgcat::ConvertLocale {value} {
#@     # Assume $value is of form: $language[_$territory][.$codeset][@modifier]
#@     # Convert to form: $language[_$territory][_$modifier]
#@     #
#@     # Comment out expanded RE version -- bugs alleged
#@     # regexp -expanded {
#@     #	^		# Match all the way to the beginning
#@     #	([^_.@]*)	# Match "lanugage"; ends with _, ., or @
#@     #	(_([^.@]*))?	# Match (optional) "territory"; starts with _
#@     #	([.]([^@]*))?	# Match (optional) "codeset"; starts with .
#@     #	(@(.*))?	# Match (optional) "modifier"; starts with @
#@     #	$		# Match all the way to the end
#@     # } $value -> language _ territory _ codeset _ modifier
#@     if {![regexp {^([^_.@]+)(_([^.@]*))?([.]([^@]*))?(@(.*))?$} $value 	    -> language _ territory _ codeset _ modifier]} {
#@ 	return -code error "invalid locale '$value': empty language part"
#@     }
#@     set ret $language
#@     if {[string length $territory]} {
#@ 	append ret _$territory
#@     }
#@     if {[string length $modifier]} {
#@ 	append ret _$modifier
#@     }
#@     return $ret
#@ }
#@ 
#@ # Initialize the default locale
#@ proc msgcat::Init {} {
#@     global env
#@ 
#@     #
#@     # set default locale, try to get from environment
#@     #
#@     foreach varName {LC_ALL LC_MESSAGES LANG} {
#@ 	if {[info exists env($varName)] && ("" ne $env($varName))} {
#@ 	    if {![catch {
#@ 		mclocale [ConvertLocale $env($varName)]
#@ 	    }]} {
#@ 		return
#@ 	    }
#@ 	}
#@     }
#@     #
#@     # On Darwin, fallback to current CFLocale identifier if available.
#@     #
#@     if {[info exists ::tcl::mac::locale] && $::tcl::mac::locale ne ""} {
#@ 	if {![catch {
#@ 	    mclocale [ConvertLocale $::tcl::mac::locale]
#@ 	}]} {
#@ 	    return
#@ 	}
#@     }
#@     #
#@     # The rest of this routine is special processing for Windows or
#@     # Cygwin. All other platforms, get out now.
#@     #
#@     if {([info sharedlibextension] ne ".dll")
#@ 	    || [catch {package require registry}]} {
#@ 	mclocale C
#@ 	return
#@     }
#@     #
#@     # On Windows or Cygwin, try to set locale depending on registry
#@     # settings, or fall back on locale of "C".
#@     #
#@ 
#@     # On Vista and later:
#@     # HCU/Control Panel/Desktop : PreferredUILanguages is for language packs,
#@     # HCU/Control Pannel/International : localName is the default locale.
#@     #
#@     # They contain the local string as RFC5646, composed of:
#@     # [a-z]{2,3} : language
#@     # -[a-z]{4}  : script (optional, translated by table Latn->latin)
#@     # -[a-z]{2}|[0-9]{3} : territory (optional, numerical region codes not used)
#@     # (-.*)* : variant, extension, private use (optional, not used)
#@     # Those are translated to local strings.
#@     # Examples: de-CH -> de_ch, sr-Latn-CS -> sr_cs@latin, es-419 -> es
#@     #
#@     foreach key {{HKEY_CURRENT_USER\Control Panel\Desktop} {HKEY_CURRENT_USER\Control Panel\International}}	    value {PreferredUILanguages localeName} {
#@ 	if {![catch {registry get $key $value} localeName]
#@ 		&& [regexp {^([a-z]{2,3})(?:-([a-z]{4}))?(?:-([a-z]{2}))?(?:-.+)?$}		    [string tolower $localeName] match locale script territory]} {
#@ 	    if {"" ne $territory} {
#@ 		append locale _ $territory
#@ 	    }
#@ 	    set modifierDict [dict create latn latin cyrl cyrillic]
#@ 	    if {[dict exists $modifierDict $script]} {
#@ 		append locale @ [dict get $modifierDict $script]
#@ 	    }
#@ 	    if {![catch {mclocale [ConvertLocale $locale]}]} {
#@ 		return
#@ 	    }
#@ 	}
#@     }
#@ 
#@     # then check value locale which contains a numerical language ID
#@     if {[catch {
#@ 	set locale [registry get $key "locale"]
#@     }]} {
#@ 	mclocale C
#@ 	return
#@     }
#@     #
#@     # Keep trying to match against smaller and smaller suffixes
#@     # of the registry value, since the latter hexadigits appear
#@     # to determine general language and earlier hexadigits determine
#@     # more precise information, such as territory.  For example,
#@     #     0409 - English - United States
#@     #     0809 - English - United Kingdom
#@     # Add more translations to the WinRegToISO639 array above.
#@     #
#@     variable WinRegToISO639
#@     set locale [string tolower $locale]
#@     while {[string length $locale]} {
#@ 	if {![catch {
#@ 	    mclocale [ConvertLocale [dict get $WinRegToISO639 $locale]]
#@ 	}]} {
#@ 	    return
#@ 	}
#@ 	set locale [string range $locale 1 end]
#@     }
#@     #
#@     # No translation known.  Fall back on "C" locale
#@     #
#@     mclocale C
#@ }
#@ msgcat::Init
#@ # -- End source /tools/synopsys/cst/N-2017.09-SP2/auxx/tcllib/lib/tcl8.6/msgcat/msgcat.tcl

#@ if {$synopsys_program_name == "icc_shell"}  {
#@ 	set sh_command_log_file "./${SNSP_LOG_DIR}/icc_shell.$dateString.cmd"
#@ 	set sh_output_log_file "./${SNSP_LOG_DIR}/icc_shell.$dateString.log"
#@ } elseif {$synopsys_program_name == "dc_shell"}  {
#@ 	set sh_command_log_file "./${SNSP_LOG_DIR}/dc_shell.$dateString.cmd"
#@ 	set sh_output_log_file "./${SNSP_LOG_DIR}/dc_shell.$dateString.log"
#@ } else {
#@ 	set sh_command_log_file "./${SNSP_LOG_DIR}/synopsys_shell.$dateString.cmd"
#@ 	set sh_output_log_file "./${SNSP_LOG_DIR}/synopsys_shell.$dateString.log"
#@ }
#@ # -- End source /home/sam28/.synopsys_dc.setup

read_verilog ../xge_mac/results/xge_mac.mapped.v
report_net
exit

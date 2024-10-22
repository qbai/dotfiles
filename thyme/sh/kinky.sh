#!/bin/bash
# #!/usr/bin/env bash

set -e				# exit if error
#set +e     		# continue if error
set -u				# exit if undefined var
#set -n				# check syntax but not running

#set -x 			# print debug
#set -o xtrace 		#print debuf
#set -var			# print param

DOTFILES_ROOT="https://github.com/qbai/dotfiles/thyme/sh/kinky.sh"


usage() {
    cat 1>&2 <<EOF
kinky 1.0.0 (408ed84 2017-02-11)
The installer for kinky

USAGE:
    kinky [FLAGS] [OPTIONS]

FLAGS:
    -v, --verbose           Enable verbose output
    -y                      Disable confirmation prompt.
        --no-modify-path    Don't configure the PATH environment variable
    -h, --help              Prints help information
    -V, --version           Prints version information

OPTIONS:
        --default-host <default-host>              Choose a default host triple
        --default-toolchain <default-toolchain>    Choose a default toolchain to install
        --default-toolchain none                   Do not install any toolchains
EOF
}

err() {
    echo "$1" >&2
    exit 1
}

need_cmd() {
    if ! check_cmd "$1"
    then err "need '$1' (command not found)"
    fi
}

check_cmd() {
    command -v "$1" > /dev/null 2>&1
    return $?
}

# This wraps curl or wget. Try curl first, if not installed,
# use wget instead.
downloader() {
    if check_cmd curl
    then _dld=curl
    elif check_cmd wget
    then _dld=wget
    else _dld='curl or wget' # to be used in error message of need_cmd
    fi

    if [ "$1" = --check ]
    then need_cmd "$_dld"
    elif [ "$_dld" = curl ]
    then curl -sSfL "$1" -o "$2"
    elif [ "$_dld" = wget ]
    then wget "$1" -O "$2"
    else err "Unknown downloader"   # should not reach here
    fi
}


show_file() {
	cat file.txt | (while read line;do echo $line;done)
}


main() {

	# handle params
	for arg in "$@"; do
        case "$arg" in
            -h|--help)
                usage
                exit 0
                ;;
            -y)
                show_file
                ;;
            -d)
            	downloader
            	;;	
            *)
                ;;
        esac
    done


    
}

main "$@" || exit 1

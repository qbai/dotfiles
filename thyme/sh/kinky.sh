#!/bin/bash
# #!/usr/bin/env bash

set -Eeuo pipefail

#set -e				# exit if error
#set +e     			# continue if error
#set -u				# exit if undefined var
#set -n				# check syntax but not running

[[ "${TRACE:-0}" = 1 ]] && set -o xtrace
#: ${TRACE:=0}
#[[ "$(TRACE)" = 1 ]] && set -o xtrace

# Script trace mode
#if [[ -z ${MY_VAR+x} ]]; then
#if [ "${DEBUG_MODE}" == "true" ]; then
#    #set -x 			# print debug
#fi
#[ "${TRACE}" == 0 ] && {
#	echo "hello"
#	echo "world"
#}

#if [ $UID -gt 199 ] && [ “id -gn” = “id -un” ]; then


#set -var			# print param
#set -o pipefail		# exit if left part of pipe failed(not rightmost)

#set -E                         #trig ERR trap for child shell
#trap 'echo "An error occurred."' ERR



DOT_FILES="https://github.com/qbai/dotfiles.git"

usage() {
    cat 1>&2 <<EOF
kinky 1.0.0 (2024-11-04)
The installer for kinky

USAGE:
    kinky [FLAGS] [OPTIONS]

FLAGS:
    -r --remote             remotely install the dev environment
    -b --backup             backup the whole system
    -m --restore            restore and migrate the whole system into the new machine
    -t, --test              Prints test function

OPTIONS:
       
EOF
}

err() {
    echo "$1" >&2
    exit 1
}

install_cmd() {
	# or /etc/os-release
	if grep -qi "debian" /etc/issue; then
	    sudo apt-get -y install "$1"
	elif grep -qi "ubuntu" /etc/issue; then
	    :
	elif grep -qi "arch" /etc/issue; then
	    sudo pacman -Sy --noconfirm --needed "$1"
	elif grep -qi "centos" /etc/issue; then
	    :
	elif grep -qi "red hat" /etc/issue || grep -qi "redhat" /etc/issue; then
	    :
	else
	    echo "Unknown Linux distribution"
	fi
}

need_cmd() {
    check_cmd "$1" || install_cmd "$1"
    [ $? != 0 ] && err "need '$1' (command not found)"
}

check_cmd() {
    command -v "$1" > /dev/null 2>&1
    return $?
}


need_ok() {
    if [ $? != 0 ]; then err "$1"; fi
}

# Run a command that should never fail. If the command fails execution
# will immediately terminate with an error showing the failing
# command.
ensure() {
    "$@"
    need_ok "command failed: $*"
}

# This wraps curl or wget. Try curl first, if not installed,
# use wget instead.
downloader() {
    if check_cmd wget
    then _dld=wget
    elif check_cmd curl
    then _dld=curl
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
	cat "$1" | (while read line;do echo $line;done)
}

# block comment	
: '
delete_remote() {
	rm -rf .spacemacs.d scripts .config/micro .imwheelrc .gitconfig .gdbinit .Xmodmap .zprofile .xinitrc .inputrc .bash_profile .bashrc .zshrc .spacemacs.d.org .imwheelrc.org .gitconfig.org .gdbinit.org .Xmodmap.org .zprofile.org .xinitrc.org .inputrc.org .bash_profile.org .bashrc.org .zshrc.org dotfiles/ .emacs.d/ .emacs.d.org/
}
'

link_this() {
	
	[ -f "./$1" ] && [ ! -L "./$1" ] && mv ./"$1" ./"$1".org 
	[ -f "./$1" ] && rm -rf ./$1
	ln -s $(pwd)/dotfiles/"$2" $(pwd)/"$1"
}

install_remote() {
	downloader --check
	#ensure downloader "$DOT_FILES" "/tmp/kinky.sh"
	need_cmd git
	need_cmd zsh
	need_cmd emacs
	need_cmd micro

	cd ~
	[ -d "./dotfiles.org" ] && rm -rf ./dotfiles.org
	[ -d "./dotfiles" ] && mv ./dotfiles ./dotfiles.org 		
	git clone "$DOT_FILES" 

	link_this .bashrc zsh/.bashrc.linux
	link_this .bash_profile zsh/.bash_profile
	link_this .inputrc zsh/.inputrc
	link_this .xinitrc zsh/.xinitrc
	link_this .zprofile zsh/.zprofile
	link_this .Xmodmap Xresources/.Xmodmap
	link_this .gdbinit gdb/.gdbinit
	link_this .gitconfig git/.gitconfig
	link_this .imwheelrc mouse/.imwheelrc

	[ ! -d "./.config" ] && mkdir -p ./.config
	[ -d "./.config/micro" ] && [ ! -L "./.config/micro" ] && mv ./.config/micro ./.config/micro.org
	[ -d "./.config/micro" ] && rm -rf ./.config/micro
	ln -s $(pwd)/dotfiles/micro ./.config/micro

	[ -d "./scripts" ] && [ ! -L "./scripts" ] && mv ./scripts ./scripts.org
	[ -d "./scripts" ] && rm -rf ./scripts	

	ln -s $(pwd)/dotfiles/polybar/scripts $(pwd)/scripts

	[ -d "./.spacemacs.d" ] && [ ! -L "./.spacemacs.d" ] && mv ./.spacemacs.d ./.spacemacs.d.org
	[ -d "./.spacemacs.d" ] && rm -rf ./.spacemacs.d
	ln -s $(pwd)/dotfiles/spacemacs $(pwd)/.spacemacs.d

	[ -d "./.emacs.d.org" ] && rm -rf ./.emacs.d.org
	[ -d "./.emacs.d" ] && mv ./.emacs.d ./.emacs.d.org
	mkdir ./.emacs.d; git clone https://github.com/syl20bnr/spacemacs.git ./.emacs.d

	[[ -z "${ZSH_VERSION:-""}" ]] || chsh -s $(which zsh)	
	[ -d "./.oh-my-zsh.org" ] && rm -rf ./.oh-my-zsh.org
	[ -d "./.oh-my-zsh" ] && mv ./.oh-my-zsh ./.oh-my-zsh.org
	sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
	# sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	# wget -qO- "https://github.com/qbai/dotfiles/blob/master/thyme/sh/kinky.sh" | bash -s -- arg1 arg2
	link_this .zshrc zsh/.zshrc.linux
	
# :<<!
# ...
# !
}

backup_system() {
	:
}

restore_system() {
	:
}

main() {

    # handle params
    for arg in "$@"; do
        case "$arg" in
            -h|--help)
                usage
                exit 0
                ;;
            -r)
                install_remote
                ;;
            -b)
            	backup_system
            	;;
            -m)
            	restore_system
            	;;
            -t)
            	show_file $2
            	;;
            *)
                ;;
        esac
    done
    
}

main "$@" || exit 1

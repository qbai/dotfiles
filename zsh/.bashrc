export PS1="[\u@\h \w]\$ "

#PS1='\[\033[1;31;40m\]\u@\h:\w\$ '
#PS1='[\[\e[32;40m\]\u@\h \w \t]$ '
#export PS1="[\e[32;1m\u@\h \W]\\$"
#PS1="[\e[32;1m\u@\h \W]\\$"
#export CLICOLOR=1
#export LSCOLORS=gxfxcxdxbxegedabagacad
export TERM=xterm-256color

#alias l='ls -l'
#alias la='ls -l -a'
#alias lt='ls -l -t -r -a -h'
#alias ldir='ls -dltrh */'
#alias lt='ls -l -t -r -a -h'
#alias ldir='ls -dltrh */'
#alias l='ls -ltrahF'
alias l='ls -ltrah'
alias le='exa -bghHliSa -s modified'
alias lsd='lsd -l --header -a'
#alias lf="ls -lF"

#alias c='clear'
alias s='source ~/.zshrc'
alias h='history'

#alias bat='sudo bat'
#alias m='less'
#alias b='sudo bat'
alias moar='moar -style monokai -wrap'
#alias m='moar'
alias m='bat -p'
#alias n='sudo nano -m -$'
alias n='micro -statusline=false --wordwrap=true'

#alias grep='grep -i -E --color=always -n --exclude-dir={.bzr,CVS,.git,.hg,.svn}'
#alias mdless='pandoc -s -f markdown -t man \!* | groff -T utf8 -man | less'
alias k='kill -9'
#alias k='kill -TERM'
#alias tea='2 >&1 |tee -a'
#alias tenull='& > /dev/null |tee -a'
umask 022
#alias chus='chmod u+s'
#alias chux='chmod u+x'
#alias chall='chmod -R 777'

#alias pg="pmset -g"
#alias rf='sudo rm -rf'
alias cp='cp -r'
#alias pgr='ps -ef|grep -v grep|grep --color=always'

alias p='ps -ef|grep -v grep|grep'
# show all threads
alias pt='ps -Lf'
alias pt2='print_all_thr(){ps mp "$1" -o THREAD,tid};print_all_thr'
#show all child process
alias pp='pgrep -P'
alias pp2='ps --ppid'
# show all user process
#alias pp3="ps -ef | awk '$8 !~ /^\[.*\]$/'"
alias ptree='pstree -p|grep'

#alias tail='tail -f'
alias t='tail -n 200'

# CPU top 10 process in linux
alias pg10="ps auxw|head -1;ps auxw|sort -rn -k3|head -10"

# Top 10 consumed memory linux
alias pm10="ps auxw|head -1;ps auxw|sort -rn -k4|head -10"

#alias mem="free -h"
alias lsmem="free -h && echo '' && lsmem && echo '' && sudo dmidecode --type memory | grep -A 19 'Memory Device'"
#alias memp='mep(){grep Pss /proc/"$1"/smaps| awk "{total+=$2}; END {print total}"};mep'

#alias ng="sudo netstat -antp|grep 'listen'"
#alias ng="sudo netstat -antp|grep 'listen'|paste -d \" \" - <(sudo netstat -antp|grep 'listen'|awk '{print $7}'|cut -d'/' -f1|xargs -I {} ps --no-headers -p {} -o cmd)"
#alias ngk="netstat -an|grep $1|awk '{print $2}'|sudo xargs kill -9"
#alias lg="lsof -i|grep"
#alias lgd='lsof +D'


#alias e='emacs -nw'
alias emacs='emacs -nw'
alias edn="emacs --daemon"
alias edk="emacsclient -e '(kill-emacs)'"
alias edr="emacsclient -e '(kill-emacs)' && emacs --daemon"
alias e='emacsclient -t'

#alias soo="sudo !!"
#alias cline="find . -name '*.c' | xargs wc -l | awk '{a+=$1}END{print a}'"
#alias cline2="find . -name '*.c'|xargs wc -l|awk '{a+=$1}END{print a}'"

#alias ff="find . -iname"
#alias fff='ag_fzf_file(){ag -z -a -i "$1" |fzf > /tmp/fzf.log};ag_fzf_file'
#alias fff2='ag_fzf_file(){ag -z -a -i -C2 "$1" |fzf > /tmp/fzf.log};ag_fzf_file'
#alias fffw='ag_fzf_file(){ag -z -a -i -w "$1" |fzf > /tmp/fzf.log};ag_fzf_file'

#alias fng="find . -name '*'|xargs grep"
#alias ff2='find_in_file(){find . -iname "$1"|xargs grep -i -n -E --color=always --exclude-dir={.bzr,CVS,.git,.hg,.svn} "$2"};find_in_file'

#alias kora="ps -ef|grep ora_|awk '{print $2}'|xargs kill -9"

alias fdisk="sudo fdisk -l"
#alias dl="df -lha"
alias dff='df -lhTa'
alias duu="sudo du -sh"
#alias dum="du -ah --max-depth=1"
alias dul='sudo du -ah --max-depth=1 |sort -rn'

alias gcg="gtags --gtagslabel ctags"
alias txstart="tmux attach || tmux_init"
alias wh="which"
alias watch='watch -n 2 -d'

alias xzz='xz -z -v --threads=0 -9 -e'
alias ptar='pv_tar(){pv "$1"|tar -zxf -};pv_tar'

alias pstree='pstree -apnuh'

# add rsync command
#rsync -avzr --progress --delete cyc@10.207.140.18:/home/cyc/cyc_core ./cyc_core
#rsync -avzr --progress cyc@10.207.140.18:/home/cyc/cyc_core ./cyc_core

alias curl='curl -O'

#cl() { cd "$@" && pwd ; ls -ltrahF; }
#cl() { cd "$@" && ls -l -t -r -a -h -F; }
#alias ..="cl .."

#alias llock="light-locker --lock-on-suspend&"
#alias vncone="vncserver -alwaysshared :1 -geometry 1440×900"

tmux_init()
{
    tmux new-session -s "qbai" -d -n "qbai"    # open new session
   #  tmux new-window -n "qbai"          # open new window
   # tmux split-window -h                # slit window vertical
  #  tmux split-window -v "top"          # split window horizonal
    tmux -2 attach-session -d           # tmux -2 using 256color
}

# decide if any tmux already was opened
#   if which tmux 2>&1 >/dev/null; then
#    test -z "$TMUX" && (tmux attach || tmux_init)
#   fi


#export LESSOPEN="| /usr/bin/src-hilite-lesspipe.sh %s"
export LESS='-i -M -R -j20 -J'
#linenum and no wrap -i -M -N -R -S +F
#linenum with wrap -i -M -N -R -+S +F
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;38;2;187;194;207;48;2;56;122;167m'
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline


# privoxy at home
alias spr="/usr/local/sbin/privoxy --no-daemon /usr/local/etc/privoxy/config &"
alias npr="netstat -an|grep 8118"
alias ppr="ps -ef|grep privoxy"

if [ -x /usr/bin/dircolors ]; then
    #alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'
    #alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
    alias tree='tree -C'

    # disable green background for o+w dir
    dircolors -p > ~/.dircolors
    eval "$(dircolors ~/.dircolors)"
    LS_COLORS+=':ow=01;35'
fi


###################### trash ######################

if [ ! -d "~/.trash" ]; then
    mkdir -p ~/.trash
fi

alias r='trash'
#alias rl='trashlist'
#alias ur='undelfile'
alias ctra='cleartrash'


# Replace rm with mv, and move files into .trash folder
trash()
{
    mv $@  ~/.trash/
}
# Show all trashlist files
trashlist()
{
    echo -e "Garbage Lists in ~/.trash/ "
    echo -e "----Usage------"
    echo -e " Use 'cleartrash' to clear all garbages in ~/.trash!!"
    echo -e "Use 'ur' to mv the file in garbages to current dir!!"
    ls -al  ~/.trash
}
# Move back all files in trashlist
undelfile()
{
    mv -i ~/.trash/$@ ./
}
# Clear all trash files
cleartrash()
{
    echo -ne "Clear all garbages in ~/.trash, Sure?[y/n]"
    read confirm
    if [ $confirm == 'y' -o $confirm == 'Y' ] ;then
        /bin/rm -rf ~/.trash/*
        /bin/rm -rf ~/.trash/.* 2>/dev/null
    fi
}

###################### trash ######################
#export EDITOR='sudo less -i -M -R -j20 -J' # for ranger preview
#export EDITOR='sudo nano -m -$'
#export VISUAL='sudo nano -m -$'
export EDITOR='sudo micro'
export VISUAL='sudo micro'

# if VISUAL does not work, uninstall or rename vi then link nano as vi 

export GTAGSLABEL=pygments

export PATH=$PATH:.:/bin:/usr/sbin:~/.cargo/bin:~/.local/bin:~/.venv/bin
#export LD_LIBRARY_PATH=/Users/qbai/Project/opensource/db-6.1.19/opt/bdb/lib:$LD_LIBRARY_PATH


## xmodmap -pke  => print current keymapping table
# exchange tilde and grave for my filco keyboard
#xmodmap -e "keycode 49 = asciitilde grave"

############# git #######################
# git config --global icdiff.options '--highlight --line-numbers'
#alias gdd='git icdiff | less -i -M -R -j20 -J'
#alias gshow='git showtool'
#alias gcmm='git commit -m'
#alias gde='git difftool --tool=ediffclient --no-prompt'
#alias gde='git difftool --tool=ediff --diff-filter=M --no-promt'
#alias gme='git mergetool --tool=ediffclient --no-prompt'


alias gall='gall_push(){git commit -a -m "$1" && git push};gall_push'
alias gcommit='gcommit_push(){git commit -m "$1" && git push};gcommit_push'
alias greset='greset_last(){git reset --mixed HEAD~1 && git push -f};greset_last' #roll back last commit


#alias gst2='git status -uno'
#alias greset='git reset --mixed origin/master' #roll back but has changes
# 'git reset --hard HEAD^'          roll back locally one time
# 'git reset --hard origin/master'  roll back as remote status
#########################################

############## performance #############
alias p_ios='iostat -xdm'
#alias p_ios='iostat -xdm 1'
alias p_pio='pidstat -d 1'
alias p_cpu='mpstat -P ALL 3'
alias p_vm='vmstat 3'
alias p_cs='pidstat -w 2'
#alias p_cs='pidstat -wt 2'
########################################
#alias klog="ls -1tr c4_safe_ktrace.log.*.gz|awk '{print $9}'|xargs zcat|less -i -M -R -j20"
################### tricky_command  ################
#alias f_g_s="find . -name rule.mk -exec grep 'Wall' {} \; -exec sed -i 's/-Wall //g' {} \;"
#alias f_g_s_2="find . -name rule.mk|xargs grep 'TI_CXXFLAGS='|grep -v 'Wall'|awk -F ':' '{print $1}'|xargs sed -i 's/Werror/Werror -Wall/g'"
#alias f_g_s_3='find . -type f|xargs file|grep "ELf"|cut -d":" -f1|xargs nm -A -D -a -l -C|grep "platformInit"'
#alias f_g_s_4='find . -type f|xargs file|grep "ELf"|cut -d":" -f1|xargs objdump -x|grep "platformInit"'
#									    readelf -ahW
 
#  pstree -p  		search parent process
#  kill -TERM [ppid]	kill parent process and all child processes   or
#alias k_a_p="ps -ef|grep 'build'|awk -F ' ' '{print $2}'|xargs sudo kill -9 {}"

# quick delete large directory
# mkdir -p /tmp/unity
# rsync --delete-before -a -H -v --progress --stats /tmp/unity/ /c4_working/unity.test/
# quick delete large file
# touch /tmp/test
# rsync --delete-before -d --progress --stats /tmp/test /root/data
# rsync -a --delete-before --progress --stats /tmp/test /root/data
####################################################

# config thefuck
#eval $(thefuck --alias)


edf() {
	if [ "X${2}" = "X" ]; then
		echo "USAGE: ediff <FILE 1> <FILE 2>"
	else
		# The --eval flag takes lisp code and evaluates it with EMACS
		#emacs -nw --eval "(ediff-files \"$1\" \"$2\")"
		emacsclient -t --eval "(ediff-files \"$1\" \"$2\")"		
	fi
}

alias gdb='gdb -q --silent --tui --args'
alias cgdb='cgdb --silent'
gdb2() { emacsclient -t --eval "(gdb \"gdb -i=mi -q --args $*\")";}

## herbstluftwm
alias herb-config="bat -p ~/dotfiles/herbstluftwm/autostart"
alias herb-keys="herbstclient list_keybinds"
alias hc="herbstclient"

######################### new append at tail ################################
#alias os="lsb_release -a"

# if emacs was installed
#if [ -x "$(command -v emacs)" ]; then
#        emacs --daemon >/dev/null 2>&1
#fi

#alias croc_s="croc --yes send --code 'hello'" # use (croc --yes hello) to recieve
#alias croc_r="croc --yes hello"

#alias rg='rg -i -e'
alias rg='rg_with_colors(){rg -i -e "$1" --color always -C 2};rg_with_colors'
alias screenoff='sudo xset dpms force off'
alias cat_xsel='cat_all_sel(){cat "$1" | xsel --clipboard};cat_all_sel'

pc4() {
      proxychains4 "$@"
}

alias procs='procs --sortd cpu -W 1 --thread'
alias dmesg='sudo dmesg --color=always'
alias bbcp='bbcp -s 12 -w 64M -P 2'
#export PAGER='moar'

s2c() {scp "$@" ${SSH_CLIENT%% *}:~/; }
c2s() {scp ${SSH_CLIENT%% *}:"$@" .; }


alias tarthis='( ( D=`builtin pwd`; F=$(date +$HOME/`sed "s,[/ ],#,g" <<< ${D/${HOME}/}`#-%F.tgz); tar --ignore-failed-read --transform "s, ^${D%/*},`date +${D%/*}.%F`,S" -czPf "$F" "$D" &>/dev/null ) & )'

alias r_install='wget -qO- https://raw.githubusercontent.com/qbai/dotfiles/master/thyme/sh/kinky.sh | bash -s -- -r'

# support mouse wheel
alias journalctl='SYSTEMD_LESS=FRSMK journalctl'


########### oh-my-linux ######################
#if grep -Ei "Arch Linux" /etc/issue > /dev/null || grep -Ei "Arch Linux" /etc/*-release > /dev/null; then
if { [[ -f /etc/issue ]] && grep -Ei "Arch Linux" /etc/issue > /dev/null; } || \
   { [[ -f /etc/os-release ]] && grep -Ei "Arch Linux" /etc/os-release > /dev/null; }; then
	alias reboot='sudo systemctl reboot'
	alias poweroff='sudo systemctl poweroff'
	alias suspend='sudo systemctl suspend'
	alias hibernate='sudo systemctl hibernate'

	alias packey='sudo pacman -Sy archlinux-keyring --noconfirm'
	alias pacin='sudo pacman -Sy --noconfirm --needed'
	alias pacre='sudo pacman -Rs --noconfirm'
	alias pacupg='sudo pacman -Syu --noconfirm'
	alias pacclean='yes|sudo pacman -Scc'
	# paccache -rk1 or paccache -r
	alias pacqo='sudo pacman -Qo'			#one file belongs to which package
	alias pacsi='sudo pacman -Si'			# show remote or local package info
	alias pacfl='sudo pacman -Fl'			# show package file list
	#alias pacf='sudo pacman -F'			  show file in which pkg remotely
	alias pacqu='sudo pacman -Qu'			# show all pkg needed to be upgrade


	# alias aremove2='sudo pacman -Rdd --noconfirm'
	# pacman -Qs    query installed package
	# pacman -Qu    query available upgrade package' 

	alias yayin='yay -S --noconfirm --needed'
	alias yayre='yay -R --noconfirm'
	alias yayupg='yay -Sua'
	alias yayqo='yay -Qo'
	alias yaysi='yay -Si'
	alias yayfl='yay -Fl'
	alias yayqu='yay -Qu'

	archin() {
		pkg="$1"
		
		if pacman -Si "$pkg" &>/dev/null; then
		    sudo pacman -Sy --noconfirm --needed "$pkg"
		    return $?
		fi
		
		if yay -Si "$pkg" &>/dev/null; then
		    yay -S --noconfirm --needed "$pkg"
		    return $?
		else
		    echo "❌ not found  $pkg"
		    return 1
		fi
	}

	archre() {
		pkg="$1"
		
		if pacman -Si "$pkg" &>/dev/null; then
		    sudo pacman -Rs --noconfirm --needed "$pkg"
		    return $?
		fi
		
		if yay -Si "$pkg" &>/dev/null; then
		    yay -R --noconfirm "$pkg"
		    return $?
		else
		    echo "❌ not found  $pkg"
		    return 1
		fi
	}
	
	#alias grub-update='sudo grub-mkconfig -o /boot/grub/grub.cfg'

	# connect home's stereo manually
	#alias mystereo = "bluetoothctl connect 04\:FE\:A1\:C7\:3C\:67"

	#export http_proxy="http://127.0.0.1:8080"
	#export https_proxy=$http_proxy
	#export ftp_proxy=$http_proxy
	#export rsync_proxy=$http_proxy
	#export all_proxy="socks5://127.0.0.1:7591"
	#export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"

	#export {http, ftp, https, rsync}_proxy="http://127.0.0.1:8080"
	#export {HTTP, FTP, HTTPS, RSYNC}_PROXY=$http_proxy
	
	#export {http,ftp,https,rsync}{_proxy,_PROXY}="http://127.0.0.1:8080"

	# if imwheel was installed
	if [ -x "$(command -v imwheel)" ]; then
		imwheel >/dev/null 2>&1
	fi	
	
	# start up ss manually
	alias start-ss='sudo systemctl start shadowsocks-libev@jp.service'
	#alias start-ss='(ss-local -c /etc/shadowsocks/jp.json > /dev/null 2>&1)&'

	#alias start-wifi='sudo netctl start wlan0-NewLan'

	
	if [ "$(uname -n)" = "ultimate-lnx" ]; then # at home
	    :
	elif [ "$(uname -n)" = "ultimate-ws" ]; then # at work
	    :
	fi
fi

#if [ "$(uname -n)" = "ultimate-lnx" ]; then
#    :
#elif [ "$(uname -n)" = "ultimate-ws" ]; then
#    :
#else
#    :
#fi

if [ "$(uname -n)" = "ultimate" ]; then # macos
     :
fi



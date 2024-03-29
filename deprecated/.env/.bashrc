# for zsh , comment the below line ,but for other env, uncomment it
#export PS1="[\u@\h \w]\$ "

#PS1='\[\033[1;31;40m\]\u@\h:\w\$ '
#PS1='[\[\e[32;40m\]\u@\h \w \t]$ '
#export PS1="[\e[32;1m\u@\h \W]\\$"
#PS1="[\e[32;1m\u@\h \W]\\$"
#export CLICOLOR=1
#export LSCOLORS=gxfxcxdxbxegedabagacad



export TERM=xterm-256color

alias l='ls -l'
alias la='ls -l -a'
alias lt='ls -l -t'
alias lf="ls -l -F"
alias c='clear'

#alias s='source ~/.bashrc'
alias s='source ~/.zshrc'

alias h='history'
alias r='rm -rfi'
alias m='more'
alias k='kill -9'
alias t='top'
alias ht='htop'

umask 0077
alias chmods='chmod u+s'
alias chmodx='chmod u+x'

alias pg="pmset -g"
alias rf='rm -rf'
alias bi='brew install'
alias pgr='ps -ef|grep'
alias t='tail -f'
alias ep="emacs ~/.profile"
alias epp="emacs ~/.emacs.d/init.el"


# CPU占用最多的前10个进程 linux
alias pg10="ps auxw|head -1;ps auxw|sort -rn -k3|head -10"

# 内存消耗最多的前10个进程 linux
alias pm10="ps auxw|head -1;ps auxw|sort -rn -k4|head -10"


alias dfs="df -h -a"
alias duf="du -sh"


alias ng="netstat -an|grep"
#alias ngk="netstat -an|grep $1|awk '{print $2}'|sudo xargs kill -9"
alias lg="lsof -i|grep"

alias na="nano"

alias e='emacs -nw'
alias soo='sudo !!'
alias cline="find . -name '*.c' | xargs wc -l | awk '{a+=$1}END{print a}'"

alias fname="find . -name"
alias fng="find . -name '*'|xargs grep"

alias kora="ps -ef|grep ora_|awk '{print $2}'|xargs kill -9"

#alias dl="df -lh"
#alias ds="du -sh"
alias dam="du -ah --max-depth=1"
#alias da="df -a"

alias gcg="gtags --gtagslabel ctags"
alias txstart="tmux attach || tmux_init"
alias wh="which"

alias ai="sudo apt-get -y install"
alias le="less"

cl() { cd "$@" && pwd ; ls -alF; }
alias ..="cl .."

alias llock="light-locker --lock-on-suspend&"
alias vncone="vncserver -alwaysshared :1 -geometry 1440×900"


# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
#export PATH
#LD_LIBRARY_PATH="/home/baqiang/libevent-2.0.22-stable/bin/lib:${LD_LIBRARY_PATH}" export LD_LIBRARY_PATH


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




################################ Oracle  ####################################################

#export http_proxy=www-proxy.us.oracle.com:80
#MAVEN_HOME=/home/baqiang/apache-maven-3.2.5 export MAVEN_HOME

#export JAVA_HOME=/tools/jdk1.8.0_60
#export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar

#export PATH=/home/baqiang/.emacs.d/plugins/global-6.5/bin/bin:/scratch/baqiang/qbai/autoconf-2.68/bin:/scratch/baqiang/qbai/automake-1.9/bin/bin:/usr/sbin:${MAVEN_HOME}/bin:$JAVA_HOME/bin:/scratch/baqiang/app/bin:/usr/local/bin:.:${PATH}


#############oracle db config*********************
#export ORACLE_BASE=/scratch/baqiang/app
#export ORACLE_HOME=/scratch/baqiang/app/Oracle_Home
#export ORACLE_SID=opss
#export NLS_LANG=`$ORACLE_HOME/bin/nls_lang.sh`
#export PATH=$ORACLE_HOME/bin:$PATH
#export LISTENER=$ORACLE_HOME/bin/lsnrctl
#export TNS_ADMIN=$ORACLE_HOME/network/admin

################################# Oracle #####################################################



if [ -x /usr/bin/dircolors ]; then
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    alias tree='tree -C'
fi


###################### trash ######################

if [ ! -d "~/.trash" ]; then
    mkdir -p ~/.trash
fi

alias r='trash'
#alias rl='trashlist'
#alias ur='undelfile'
alias ctra='cleartrash'


#替换rm指令移动文件到~/.trash/中
trash()
{
    mv $@  ~/.trash/
}  
#显示回收站中垃圾清单
trashlist()
{
    echo -e "Garbage Lists in ~/.trash/ "
    echo -e "----Usage------"
    echo -e " Use 'cleartrash' to clear all garbages in ~/.trash!!"
    echo -e "Use 'ur' to mv the file in garbages to current dir!!"
    ls -al  ~/.trash
}  
#找回回收站相应文件
undelfile()
{
    mv -i ~/.trash/$@ ./
}  
#清空回收站
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


####### zsh #############
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s bz2='tar -xjvf'
alias -s zip='unzip'

alias -s txt='nano'
alias -s log='less'


# mac for autojump
#[[ -s $(brew --prefix)/etc/autojump.sh ]] && . $(brew --prefix)/etc/autojump.sh


# linux for autojump
#[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
####### zsh #############

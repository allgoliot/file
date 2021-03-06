# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
# export LS_OPTIONS='--color=auto'
# eval "`dircolors`"
# alias ls='ls $LS_OPTIONS'
# alias ll='ls $LS_OPTIONS -l'
# alias l='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'
 alias ins='apt-get install'
alias rmv='apt-get remove'
alias autormv='apt-get autoremove'
alias upd='apt-get update'
alias upg='apt-get upgrade'
alias updg=' upd && upg'
alias s_status='systemctl status'
alias s_start='systemctl start'
alias s_stop='systemctl stop'
alias s_restart='systemctl restart'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias dcstop='docker stop'
alias dcrm='docker rm'
alias dcpsa='docker ps -a'
alias dcnetwort='docker network inspect bridge'

# Aliases
alias df='df -h'
alias dsa='du -h -d1 | sort -r -k1 -n'
alias dsx='du -hsx'
alias ls='ls -FG'
alias ll='ls -h -l'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias cls='clear'
alias psg='ps -aux | grep'
alias nstl='netstat -na |grep LISTEN'
alias em='emacs'
#alias tmux='TERM=screen-256color tmux'
alias tmux="tmux -2 "
PS1='\[\e[1;31m\]\u@\[\e[1;36m\]\H:\[\e[1;32m\]\w\$\[\e[0m\] '

killgrep ()
{
      kill -9 `ps ax | grep $1 | grep -v grep | awk '{print $1}'`
}

EDITOR=vim; export EDITOR
CLICOLOR="YES";    export CLICOLOR
LSCOLORS="ExGxFxdxCxDxDxhbadExEx";    export LSCOLORS

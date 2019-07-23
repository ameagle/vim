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
#PS1='\[\e[1;31m\]\u@\[\e[1;36m\]\H:\[\e[1;32m\]\w\$\[\e[0m\]'
#PS1='\[\e[1;31m\]\u@\[\e[1;36m\]\H:\[\e[1;32m\]\w\$\[\e[0m\] \\w\$(__git_ps1 '(%s)') \$'
#export PS1="\\w\$(__git_ps1 '(%s)') \$ "
#PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\] \[\033[33;1m\]\w\[\033[m\] (\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)) "

#PS1="\[\e[1;31m\]\u@\[\e[1;36m\]\H:\[\e[1;32m\]\w\$\[\e[0m\](\$(git branch 2>/dev/null | grep '^*' | colrm 1 2))#"

#PS1='\[\033[0;32m\]\[\033[0m\033[0;32m\]\u\[\033[0;36m\]@\w\[\033[0;32m\][$(git branch 2>/dev/null | grep "^*" | colrm 1 2)\[\033[0;32m\]]\[\033[0m\033[0;32m\]\$\[\033[0m\033[0;32m\]\[\033[0m\] '

#PS1='\[\e[1;31m\]\u@\[\e[1;36m\]\H:\[\e[1;32m\]\w\$\[\e[0m\][$(git branch 2>/dev/null | grep "^*" | colrm 1 2)\[\033[0;32m\]]\[\033[0m\033[0;32m\]\$\[\033[0m\033[0;32m\]\[\033[0m\] '
PS1='\[\e[1;31m\]\u@\[\e[1;36m\]\H:\[\e[1;32m\]\w\$\[\e[0m\][$(git branch 2>/dev/null | grep "^*" | colrm 1 2)] '

killgrep ()
{
      kill -9 `ps ax | grep $1 | grep -v grep | awk '{print $1}'`
}

EDITOR=vim; export EDITOR
CLICOLOR="YES";    export CLICOLOR
LSCOLORS="ExGxFxdxCxDxDxhbadExEx";    export LSCOLORS

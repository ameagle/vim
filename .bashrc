# Aliases
alias df='df -h'
alias dsa='du -h -d1 | sort -r -k1 -n'
alias dsx='du -hsx'
alias ducks='du -cks * | sort -rn | head'
alias fmaxf='find . -type f -exec du -a {} + | sort -n -r | less'
alias ls='ls -FG'
alias ll='ls -h -l'
#alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias cls='clear'
alias psg='ps -aux | grep'
alias nstl='netstat -na |grep LISTEN'
alias em='emacs'
alias less='less -X'
#alias tmux='TERM=screen-256color tmux'
alias tmux="tmux -2 "
alias fs_cli='docker exec -it fs10-prod /bin/fs_cli'
alias dockfs='docker exec -it fs10-prod /bin/bash'

alias sudo-s='sudo HOME=/home/ameagle -s'
alias stelnet='openssl s_client -connect $1'

alias lsblkfs='lsblk --output NAME,FSTYPE,LABEL,UUID,MODE'
alias mysql='docker exec -it  mariadb mysql -uroot -p'
alias docklogger='docker exec -it logger /bin/bash'

PS1='\[\e[1;31m\]\u@\[\e[1;36m\]\H:\[\e[1;32m\]\w\[\e[0;33m\][$(git branch 2>/dev/null | grep "^*" | colrm 1 2)]\[\e[1;32m\]\$\[\e[0m\] '


killgrep ()
{
      kill -9 `ps ax | grep $1 | grep -v grep | awk '{print $1}'`
}

#[[ $PS1 && -f /usr/local/share/bash-completion/bash_completion.sh ]] && \
#        source /usr/local/share/bash-completion/bash_completion.sh

#if [ -f /usr/local/share/bash-completion/bash_completion.sh ]; then
#        source /usr/local/share/bash-completion/bash_completion.sh
#fi

#. ~/.docker-compose-completion.sh

PAGER='less -X'; export PAGER
export PATH=$PATH:/usr/local/bin
EDITOR=vim; export EDITOR
CLICOLOR="YES";    export CLICOLOR
LSCOLORS="ExGxFxdxCxDxDxhbadExEx";    export LSCOLORS

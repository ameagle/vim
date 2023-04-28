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
alias dockng='docker exec webserver nginx -s $1' #dockng reload
alias dockbash='f() { docker exec -it $1 /bin/bash; unset -f f; }; f' #dockbash fs10-prod
alias sudo-s='sudo HOME=/home/ameagle -s'
alias stelnet='openssl s_client -connect $1'

alias lsblkfs='lsblk --output NAME,FSTYPE,LABEL,UUID,MODE'
alias mysql='docker exec -it  mariadb mysql -uroot -p'
alias docklogger='docker exec -it logger /bin/bash'

alias mysql='docker exec -it  phonelab20_mariadb_1 mysql -uroot -p'
alias click='docker exec -it clickhouse-shard_1 clickhouse-client'
alias djangolog='docker logs -f mw-apistack-django_ameagle'

alias psql='docker exec -it mw-apistack-postgis_ameagle psql -U user -d moonwalker'
#\d+ table_name -- show create table
alias sourceclick='source /home/ameagle/python39/venv/bin/activate && cd /home/ameagle/Projects/clickhouse/'
alias taildjango='tail -f /data/storage/docker/docker_ameagle/logs/django/django-runserver.log'
alias tailcelery='tail -f /data/storage/docker/docker_ameagle/logs/django/celery.log'

alias cddjango='cd /data/storage/docker/docker_ameagle/'
alias dockdjango='docker exec -it mw-apistack-django-ameagle /bin/bash'

#analog logstat in linux
alias sockstat='lsof -Pi'

#journalctl -f
#https://ddanilov.me/how-to-configure-core-dump-in-docker-container
#core, mount /tmp 
#echo '/tmp/core.%e.%p.%s' | sudo tee /proc/sys/kernel/core_pattern

#alias dnfnpchk="dnf -y --nogpgcheck install sngrep"
alias dnfnpchk="dnf -y --nogpgcheck"


#tar -czvf vks3.tar.gz /data/storage/docker/vks3/ — pack
#tar -xzvf vks3.tar.gz -C /data/storage/docker/vks3_new/ — unpack



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

# include .bashrc if it exists
if [ -f $HOME/.proxy_export ]; then
	. $HOME/.proxy_export
fi


PAGER='less -X'; export PAGER
export PATH=$PATH:/usr/local/bin
EDITOR=vim; export EDITOR
CLICOLOR="YES";    export CLICOLOR
LSCOLORS="ExGxFxdxCxDxDxhbadExEx";    export LSCOLORS

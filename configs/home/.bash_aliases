# ~/.bash_aliases

# put this in .bashrc
# if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
# fi


# allow sudo with aliases
alias sudo='sudo '

# ssh
alias sshcube='ssh clayton@cube'

# protection:
alias rm='rm -I --preserve-root'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'


# random
alias syu='sudo pacman -Syu'
alias aptup='sudo apt-get update && sudo apt-get dist-upgrade'
alias fuck='sudo $(history -p !!)'

alias ls='ls -h --color --group-directories-first'
alias ll='ls -lAFh'
alias la='ll -A'

alias grep='grep --color=auto'

alias df='df -h'
alias du='du -ch'


# systemctl
alias sdisable=' sudo systemctl disable $@'
alias senable='sudo systemctl enable $@'
alias srestart='sudo systemctl restart $@'
alias sstart='sudo systemctl start $@'
alias sstatus='sudo systemctl status $@'


# network
alias pingg='ping -c 3 google.com'
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'

# change background
alias randbkgnd='feh --randomize --bg-scale ~/MEGA/Wallpapers/*'
alias setbkgnd='feh --bg-scale $@'

# kodi media controls
alias media-clean='sh ~/.kodi-scripts/cleanLib.sh'
alias media-update='sh ~/.kodi-scripts/updateLib.sh'
alias media-filebot='sh ~/.kodi-scripts/filebot.sh'

# screen capturing
alias screenshot='import -window root $@'
alias screenshot_window='import $@'



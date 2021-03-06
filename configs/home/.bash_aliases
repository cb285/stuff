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
alias pingg='ping -c 5 google.com'
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'

# change background
alias randbkgnd='feh --randomize --bg-scale ~/MEGA/Wallpapers/*'
alias setbkgnd='feh --bg-scale $@'

# kodi media controls
alias kodi-clean='sh ~/scripts/kodi/kodi_clean.sh'
alias kodi-update='sh ~/scripts/kodi/kodi_update.sh'
alias media-process='sh ~/scripts/media_process.sh'

# screen capturing
alias screenshot='import -window root $@'
alias screenshot_window='import $@'

# svn
alias svn_precommit="svn status | grep '^!' | sed 's/! *//' | xargs -d '\n' svn delete --force"

# search text files
alias grepr='grep -rnsI'

# svn
# checkout
svnco() { svn checkout svn+ssh://crbrutus@svn.ciholas.com/repos/$1 --depth immediates; }
# update immediates
alias svnupim='svn up --set-depth immediates'
# update infinity
alias svnupinf='svn up --set-depth infinity'
# repair renamed files
svn-repair() { mv -n -- "$2" "$1" && svn mv -- "$1" "$2"; }

# open a file
alias openf='xdg-open'

# timestamp
alias timestamp="ts '[%Y-%m-%d %H:%M:%S]'"

# new terminal in current directory
alias newterm="urxvt -cd "$(pwd)" &"

# remove files ending in ~
alias rmtempfilestest="find . -name "*~" -type f"
alias rmtempfiles="find . -name "*~" -type f -delete"

# change file extensions
rename-ext() { for file in *.${1}; do mv -- "${file}" "${file/%${1}/${2}}"; done }

# ctags
alias tagit="ctags -f ~/.emacs.d/TAGS -e -R"

# rake - use 8 threads
alias rakem="rake -m -j8"

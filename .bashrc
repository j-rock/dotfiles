
# Default bashrc stuff
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

xhost +local:root > /dev/null 2>&1

complete -cf sudo

shopt -s cdspell
shopt -s checkwinsize
shopt -s cmdhist
shopt -s dotglob
shopt -s expand_aliases
shopt -s extglob
shopt -s histappend
shopt -s hostcomplete
shopt -s nocaseglob

export HISTSIZE=10000
export HISTFILESIZE=${HISTSIZE}
export HISTCONTROL=ignoreboth

export PATH=$PATH:/opt/cabal/1.20/bin:/opt/ghc/7.8.4/bin/:~/.cabal/bin
export PS1='[\u@\h \W]\$\[\e[m\] '
export LS_COLORS="di=01;34:ln=01;95"

# Bash stuff
alias e='exit'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias la='ls -a'
alias ll='ls -l'
alias hgrep='history | grep'
alias vbs='vim ~/.bashrc && source ~/.bashrc'

# Ubuntu stuff
alias sai='sudo apt-get install'
alias sar='sudo apt-get autoremove'
alias reboot='sudo reboot'

# Programming stuff
alias clean='make clean'
alias grind='valgrind --leak-check=full'

alias cb='cabal'
alias cln='cb clean'
alias run='cb run'
alias inst='cb install'
alias bld='cb build'
alias repl='cb repl'

alias push='git push'
alias st='git status'

# Misc.
ex () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)  tar xjf $1     ;;
      *.tar.gz)   tar xzf $1     ;;
      *.bz2)      bunzip2 $1     ;;
      *.rar)      unrar x $1     ;;
      *.gz)       gunzip $1      ;;
      *.tar)      tar xf $1      ;;
      *.tbz2)     tar xjf $1     ;;
      *.tgz)      tar xzf $1     ;;
      *.zip)      unzip $1       ;;
      *.Z)        uncompress $1  ;;
      *.7z)       7z x $1        ;;
      *)          echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
      echo "'$1' is not a valid file"
  fi
}

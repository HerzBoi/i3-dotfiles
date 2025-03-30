#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Bind Ctrl + Left Arrow to backward-word
bind '"\e[1;5D": backward-word'

# Bind Ctrl + Right Arrow to forward-word
bind '"\e[1;5C": forward-word'


## custom

eval "$(starship init bash)"

# aliases

alias update='sudo pacman -Syu'
alias installpkg='sudo pacman -S'
alias batlvl='cat /sys/class/power_supply/BAT0/capacity'
alias ff='fastfetch'


. "$HOME/.cargo/env"

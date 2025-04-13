#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '


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
alias tock='./Documents/tock/target/release/tock'
alias files='ranger'

. "$HOME/.cargo/env"

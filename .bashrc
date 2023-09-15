#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

export PATH=$PATH:$HOME/dotfiles/bin

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias goto='cd $(find -type d | dmenu -i -l 20)'


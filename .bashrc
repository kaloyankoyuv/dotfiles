#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -la --color=auto'
alias grep='grep --color=auto'
alias goto='cd $(find -type d | fzf) && clear && ls'

PS1='[\u@\h \W]\$ '

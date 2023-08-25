#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -lAhFv --group-directories-first --color=auto'
alias grep='grep --color=auto'
alias goto='cd $(find -type d | fzf) && clear && ls'

PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"

# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias goto='cd $(find -type d | fzf)'
alias edit='find | fzf -m | xargs -ro emacsclient -nc'


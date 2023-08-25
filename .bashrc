#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -lAhFv --group-directories-first --color=auto'
alias grep='grep --color=auto'
alias go='cd $(find -type d | fzf)'

PS1='[\u@\h \W]\$ '

if [ -z "${TMUX}" ]; then
    tmux
fi

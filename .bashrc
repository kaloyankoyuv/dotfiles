#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR='emacsclient -nc'

alias ls='ls -lAhFv --group-directories-first --color=auto'
alias grep='grep --color=auto'
alias goto='cd $(find -type d | fzf) && clear && ls'
alias edit='find -type f | fzf -m | xargs -ro $EDITOR'

PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"
eval "$(zellij setup --generate-auto-start bash)"

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -lAhFv --group-directories-first --color=auto'
alias grep='grep --color=auto'
alias goto='cd $(find -type d | fzf)'
alias edit='find | fzf -m | xargs -ro emacsclient -nc'

PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"

if [ -z "${TMUX}" ]; then
    trap 'tmux kill-session' EXIT
    tmux
fi

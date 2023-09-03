#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

export COLORTERM='truecolor'

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias goto='cd $(find -type d | fzf)'
alias edit='find | fzf -m | xargs -ro emacsclient -nc'
alias mg='mg -n'

if [ -x "$(command -v tmux)" ] && [ -n "${DISPLAY}" ] && [ -z "${TMUX}" ] && [ -z "${INSIDE_EMACS}" ]; then
    exec tmux new-session -A -s ${USER} >/dev/null 2>&1
fi

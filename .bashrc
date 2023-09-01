#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export COLORTERM='truecolor'

alias ls='ls -lAhFv --group-directories-first --color=auto'
alias grep='grep --color=auto'
alias goto='cd $(find -type d | fzf)'
alias edit='find | fzf -m | xargs -ro emacsclient -nc'
alias mg='mg -n'

PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"

if [ -x "$(command -v tmux)" ] && [ -n "${DISPLAY}" ] && [ -z "${TMUX}" ] && [ -z "${INSIDE_EMACS}" ]; then
    exec tmux new-session -A -s ${USER} >/dev/null 2>&1
fi

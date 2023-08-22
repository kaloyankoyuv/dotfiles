#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -la --color=auto'
alias grep='grep --color=auto'

PS1='[\u@\h \W]\$ '

set -o vi

export COLORTERM='truecolor'
export EDITOR='vim'

edit() {
	$EDITOR $(find "$@" -type f | fzf -m)
}
rgrep() {
	$EDITOR $(grep -ri "$@" | dmenu -l 16 | awk '{print $1}' | sed s/://g)
}
go() {
	cd $(find "$@" -type d | fzf) && clear && ls
}

alias g=go
alias e=edit
alias rg=rgrep

eval "$(starship init bash)"

if [ -x "$(command -v tmux)" ] && [ -n "${DISPLAY}" ] && [ -z "${TMUX}" ]; then
	exec tmux >/dev/null 2>&1
fi

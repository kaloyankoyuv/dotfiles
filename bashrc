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
	result="$(grep -rin "$@" | dmenu -l 16)"
	file="$(echo $result | awk -F ':' '{print $1}')"
	line="$(echo $result | awk -F ':' '{print $2}')"
	vim \+$line $file
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

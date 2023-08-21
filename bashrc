#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -la --color=auto'
alias grep='grep --color=auto'

PS1='[\u@\h \W]\$ '

export COLORTERM='truecolor'
export EDITOR='vim'

search() {
	links html.duckduckgo.com/html/?q="$(echo "$@" | sed s/' '/+/g)"
}
edit() {
	$EDITOR $(find "$@" -type f | fzf -m)
}
go() {
	cd $(find "$@" -type d | fzf) && clear && ls
}

alias g=go
alias e=edit
alias s=search

if [ -x "$(command -v tmux)" ] && [ -n "${DISPLAY}" ] && [ -z "${TMUX}" ]; then
	exec tmux >/dev/null 2>&1
fi

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -lAhFv --group-directories-first --color=auto'
alias grep='grep --color=auto'

PS1='[\u@\h \W]\$ '

export LESSHISTFILE='-'
export COLORTERM='truecolor'
export EDITOR='nvim'

edit() {
	$EDITOR $(find "$@" -type f | fzf -m)
}
rgrep() {
	result="$(grep -rin "$@" | fzf -m)"
	file="$(echo $result | awk -F ':' '{print $1}')"
	line="$(echo $result | awk -F ':' '{print $2}')"
	$EDITOR \+$line $file
}
go() {
	cd $(find "$@" -type d | fzf) && clear && ls
}

eval "$(starship init bash)"
eval "$(zellij setup --generate-auto-start bash)"

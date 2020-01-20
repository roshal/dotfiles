
source /usr/share/git/completion/git-prompt.sh

alias st='sublime_text'
alias l='ls -Al --color --group-directories-first'
alias ll='ls -AFil --color'
alias ls='ls -A --color'
alias his='history'
alias fr='rm -fr'
alias b='cd ..'
alias f='cd !!'
alias h='cd ~'
alias e='explorer .'
alias py='pytho'
alias c='cd /common'
alias g='g++ -std=c++14 -o common.exe main.cpp'

export PS1='\u@\h: \w$(__git_ps1) \\$ \[$(tput sgr0)\]'
export EDITOR='vim'

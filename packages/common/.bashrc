
# if not running interactively don not do anything
if [[ $- != *i* ]]
then return
fi

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#

TERM=terminator

source /usr/share/git/completion/git-prompt.sh

PS1='\e[40;90m\n\e[97m#\e[90m \e[92m\t\e[90m \e[94m\w\e[90m$(__git_ps1 " \e[97m%s\e[90m")\e[K\e[m\n'

alias l='LC_COLLATE=C ls -Ahl --group-directories-first'
alias z='grep --color'
alias z='grep -iz --color'

alias re='exec bash'
alias py='python'

alias grep='grep --color'
alias sysu='systemctl suspend'

alias g-f-f='cd /-/git.esphere.local/frontend/Fish'
alias g-f-l='cd /-/git.esphere.local/frontend/Leda'
alias g-c-l='cd /-/git.esphere.local.copy/frontend/Leda'

alias pacman='sudo pacman --color always'

# fix webstorm window draw
# https://wiki.archlinux.org/index.php/Java#Gray_window,_applications_not_resizing_with_WM,_menus_immediately_closing
export _JAVA_AWT_WM_NONREPARENTING=1

# enable mpeg-4
# https://wiki.archlinux.org/index.php/Hardware_video_acceleration#VA-API_drivers
VAAPI_MPEG4_ENABLED=true

# xkb not for sway
# export XKB_DEFAULT_LAYOUT=us,ru
# export XKB_DEFAULT_OPTIONS=grp:caps_toggle

# nvm
source /usr/share/nvm/init-nvm.sh

###-begin-nps-completions-###
#
# yargs command completion script
#
# Installation: node_modules/.bin/nps completion >> ~/.bashrc
#    or node_modules/.bin/nps completion >> ~/.bash_profile on OSX.
#
function _yargs_completions {
	local cur_word args type_list

	cur_word="${COMP_WORDS[COMP_CWORD]}"
	args=("${COMP_WORDS[@]}")

	# ask yargs to generate completions.
	type_list=$(node_modules/.bin/nps --get-yargs-completions "${args[@]}")

	COMPREPLY=( $(compgen -W "${type_list}" -- ${cur_word}) )

	# if no match was found, fall back to filename completion
	if [ ${#COMPREPLY[@]} -eq 0 ]; then
		COMPREPLY=( $(compgen -f -- "${cur_word}" ) )
	fi

	return 0
}
complete -F _yargs_completions nps
###-end-nps-completions-###

export LC_MESSAGES=ru_RU.UTF-8

# https://wiki.archlinux.org/index.php?oldid=584342#man
function man {
	LESS_TERMCAP_md=$'\e[92m' \
	LESS_TERMCAP_so=$'\e[7m' \
	LESS_TERMCAP_us=$'\e[94m' \
	LESS_TERMCAP_me=$'\e[0m' \
	LESS_TERMCAP_se=$'\e[0m' \
	LESS_TERMCAP_ue=$'\e[0m' \
	command man "$@"
}

amixer --quiet set Master 0db

export LS_COLORS='di=0;94:'

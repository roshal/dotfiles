
### environment

PS1='\e[40;90m\n\e[97m#\e[90m \e[92m\t\e[90m \e[94m\w\e[90m$(__git_ps1 " \e[97m%s\e[90m")\e[K\e[m\n'

TERM=terminator

### initiate

amixer --quiet set Master 0db

### sources

source /usr/share/git/completion/git-prompt.sh
source /usr/share/nvm/init-nvm.sh

# if [[ -r /usr/share/doc/mcfly/mcfly.bash ]]
# then
#   source /usr/share/doc/mcfly/mcfly.bash
# fi

### fixes

### fix webstorm window draw
# # https://github.com/swaywm/sway/wiki/Running-programs-natively-under-wayland#java-under-xwayland
# # https://wiki.archlinux.org/index.php/Java#Gray_window,_applications_not_resizing_with_WM,_menus_immediately_closing
export _JAVA_AWT_WM_NONREPARENTING=1
export AWT_TOOLKIT=MToolkit

### enable mpeg-4
# # https://wiki.archlinux.org/index.php/Hardware_video_acceleration#VA-API_drivers
VAAPI_MPEG4_ENABLED=true

### xkb not for sway
# export XKB_DEFAULT_LAYOUT=us,ru
# export XKB_DEFAULT_OPTIONS=grp:caps_toggle

# # https://wiki.archlinux.org/index.php/Wayland#Qt_5
# # https://wiki.qt.io/QtWayland#Run_Qt_applications_as_Wayland_clients
export QT_QPA_PLATFORM=wayland

# # https://github.com/swaywm/sway/wiki/Running-programs-natively-under-wayland#firefox
# # https://wiki.archlinux.org/index.php/Firefox#Wayland
export MOZ_ENABLE_WAYLAND=1

# # https://wiki.archlinux.org/index.php?oldid=584342#man
function man {
	LESS_TERMCAP_md=$'\e[92m' \
	LESS_TERMCAP_so=$'\e[7m' \
	LESS_TERMCAP_us=$'\e[94m' \
	LESS_TERMCAP_me=$'\e[0m' \
	LESS_TERMCAP_se=$'\e[0m' \
	LESS_TERMCAP_ue=$'\e[0m' \
	command man "${@}"
}

#

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

#

export LC_MESSAGES=ru_RU.UTF-8
export LS_COLORS='di=0;94:'

### history

PROMPT_COMMAND='true'

PROMPT_COMMAND="${PROMPT_COMMAND} && history -a"
PROMPT_COMMAND="${PROMPT_COMMAND} && history -c"
PROMPT_COMMAND="${PROMPT_COMMAND} && history -r"

export PROMPT_COMMAND

shopt -s histappend

# hstr configuration hstr -s

export HISTTIMEFORMAT='%y-%m-%d %T '

### get more colors
export HSTR_CONFIG=hicolor
### leading space hides commands from history
export HISTCONTROL=ignorespace
### increase history file size - default is 500
export HISTFILESIZE=65536
### increase history size - default is 500
export HISTSIZE=${HISTFILESIZE}
## bind hstr to ctrl-r - for vi mode check doc
bind '"\C-r": "\C-a hstr -- \C-j"'
# bind 'kill last command' to ctrl-x k
bind '"\C-xk": "\C-a hstr -k \C-j"'

# remote desktop protocol
export WLR_RDP_TLS_CERT_PATH=/-/remmina/tls.crt
export WLR_RDP_TLS_KEY_PATH=/-/remmina/tls.key
WLR_RDP_ADDRESS=0.0.0.0
WLR_BACKENDS=rdp

# # https://wiki.archlinux.org/index.php/Bash#Shell_exits_even_if_ignoreeof_set
export IGNOREEOF=100

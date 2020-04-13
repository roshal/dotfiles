
### sources

source /usr/share/git/completion/git-prompt.sh
source /usr/share/nvm/init-nvm.sh

# if [[ -r /usr/share/doc/mcfly/mcfly.bash ]]
# then
# 	source /usr/share/doc/mcfly/mcfly.bash
# fi

### environment

PS1='\e[40;90m\n\e[97m#\e[90m \e[92m\t\e[90m \e[94m$(pwd)\e[90m$(__git_ps1 " \e[97m%s\e[90m")\e[K\e[m\n'

# # https://wiki.archlinux.org/index.php/Environment_variables#Examples

export TERM=termite

# # https://wiki.archlinux.org/index.php/Nano#Replacing_vi_with_nano
export VISUAL=nano
export EDITOR=nano

### initiate

# amixer --quiet set Master 0db

### fixes

### fix webstorm window draw
# # https://github.com/swaywm/sway/wiki/Running-programs-natively-under-wayland#java-under-xwayland
# # https://wiki.archlinux.org/index.php/Java#Gray_window,_applications_not_resizing_with_WM,_menus_immediately_closing
export _JAVA_AWT_WM_NONREPARENTING=1
export AWT_TOOLKIT=MToolkit

### enable mpeg-4
# # https://wiki.archlinux.org/index.php/Hardware_video_acceleration#VA-API_drivers
export VAAPI_MPEG4_ENABLED=true

### xkb not for sway
# export XKB_DEFAULT_LAYOUT=us,ru
# export XKB_DEFAULT_OPTIONS=grp:caps_toggle

# # https://github.com/swaywm/sway/wiki#disabling-client-side-qt-decorations
# # https://wiki.archlinux.org/index.php/Wayland#Qt_5
# # https://wiki.qt.io/QtWayland#Run_Qt_applications_as_Wayland_clients
# # prevent xwayland fullscreen glitches but windows and notifications works bad
# export QT_QPA_PLATFORM=wayland

# # https://github.com/swaywm/sway/wiki/Running-programs-natively-under-wayland#gtk3
# # https://wiki.archlinux.org/index.php/Firefox#Wayland
export MOZ_ENABLE_WAYLAND=1

# # https://wiki.archlinux.org/index.php/Color_output_in_console#man
function man {
	LESS_TERMCAP_md=$'\e[92m' \
	LESS_TERMCAP_so=$'\e[7m' \
	LESS_TERMCAP_us=$'\e[94m' \
	LESS_TERMCAP_me=$'\e[0m' \
	LESS_TERMCAP_se=$'\e[0m' \
	LESS_TERMCAP_ue=$'\e[0m' \
	command man ${@}
}

### colors

export LS_COLORS='di=1;94:'

### history

# # hstr --show-configuration

shopt -s histappend

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

### remote desktop protocol

# WLR_BACKENDS=rdp
# WLR_RDP_ADDRESS=0.0.0.0

export WLR_RDP_TLS_CERT_PATH=/-/remmina/tls.crt
export WLR_RDP_TLS_KEY_PATH=/-/remmina/tls.key

# # https://wiki.archlinux.org/index.php/Bash#Shell_exits_even_if_ignoreeof_set
export IGNOREEOF=100

### pip

# function _pip_completion {
# 	COMPREPLY=( $( COMP_WORDS="${COMP_WORDS[*]}" COMP_CWORD=$COMP_CWORD PIP_AUTO_COMPLETE=1 $1 2>/dev/null ) )
# }

# complete -o default -F _pip_completion pip

# # https://wiki.archlinux.org/index.php/Color_output_in_console

### less

# # https://wiki.archlinux.org/index.php/Color_output_in_console#less

# export LESS=--RAW-CONTROL-CHARS

# begin blink
export LESS_TERMCAP_mb=$'\e[91m'
# begin bold
export LESS_TERMCAP_md=$'\e[92m'
# begin reverse video
export LESS_TERMCAP_so=$'\e[7m'
# begin underline
export LESS_TERMCAP_us=$'\e[94m'
# reset bold or blink
export LESS_TERMCAP_me=$'\e[0m'
# reset reverse video
export LESS_TERMCAP_se=$'\e[0m'
# reset underline
export LESS_TERMCAP_ue=$'\e[0m'

### colors

declare -A color_chars=(
	[333]=00
	[339]=04
	[369]=12
	[393]=02
	[396]=14
	[399]=06
	[555]=08
	[639]=13
	[693]=10
	[777]=07
	[933]=01
	[936]=09
	[939]=05
	[963]=11
	[993]=03
	[999]=15
)

declare -A color_codes=(
	[333]=30
	[339]=34
	[369]=94
	[393]=32
	[396]=96
	[399]=36
	[555]=90
	[639]=95
	[693]=92
	[777]=37
	[933]=31
	[936]=91
	[939]=35
	[963]=93
	[993]=33
	[999]=97
)

function fill () {
	if test ${#} = 0
	then tput sgr0
	elif test ${#} = 1
	then
		test "${1}" = line && tput el
		test "${1}" = zero && tput sgr0
	elif test ${#} = 2
	then local value=${color_codes[${2}]} && test -z "${value}" && return
		test "${1}" = back && echo -ne "\e[$((value+10))m"
		test "${1}" = fore && echo -ne "\e[$((value+00))m"
	elif test ${#} = 3 -a "${1}" = tput
	then local value=${color_chars[${3}]} && test -z "${value}" && return
		test "${2}" = back && tput setab $((10#$value))
		test "${2}" = fore && tput setaf $((10#$value))
	fi
}

### term

# test "${TERM}" = linux || return

echo -ne '\e]P0333333' # black
echo -ne '\e]P1ff3333' # darkred
echo -ne '\e]P233ff33' # darkgreen
echo -ne '\e]P3ffff33' # brown
echo -ne '\e]P43333ff' # darkblue
echo -ne '\e]P5ff33ff' # darkmagenta
echo -ne '\e]P633ffff' # darkcyan
echo -ne '\e]P7cccccc' # lightgrey
echo -ne '\e]P8666666' # darkgrey
echo -ne '\e]P9ff3399' # red
echo -ne '\e]PA99ff33' # green
echo -ne '\e]PBff9933' # yellow
echo -ne '\e]PC3399ff' # blue
echo -ne '\e]PD9933ff' # magenta
echo -ne '\e]PE33ff99' # cyan
echo -ne '\e]PFffffff' # white

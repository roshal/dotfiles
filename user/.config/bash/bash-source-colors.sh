
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

test "${TERM}" = linux || return

echo -ne '\e]P0000000' # black
echo -ne '\e]P1CC0000' # darkred
echo -ne '\e]P200CC00' # darkgreen
echo -ne '\e]P3CCCC00' # brown
echo -ne '\e]P40000CC' # darkblue
echo -ne '\e]P5CC00CC' # darkmagenta
echo -ne '\e]P600CCCC' # darkcyan
echo -ne '\e]P7999999' # lightgrey
echo -ne '\e]P8333333' # darkgrey
echo -ne '\e]P9CC0066' # red
echo -ne '\e]PA66CC00' # green
echo -ne '\e]PBCC6600' # yellow
echo -ne '\e]PC0066CC' # blue
echo -ne '\e]PD6600CC' # magenta
echo -ne '\e]PE00CC66' # cyan
echo -ne '\e]PFCCCCCC' # white

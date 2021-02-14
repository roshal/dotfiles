
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

### term

return

test "${TERM}" = linux || return

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

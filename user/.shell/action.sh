
source "${HOME}/.shell/actions.sh"
source "${HOME}/.shell/actions/audio.sh"

if false
then true

### audio

elif test "${1}" = 'audio--notify'
then __audio__notify

elif test "${1}" = 'audio--volume'
then __audio__get__volume > /-/mako/pulsemixer

elif test "${1}" = 'audio--source--decrease'
then __audio__source__decrease

elif test "${1}" = 'audio--source--increase'
then __audio__source__increase

elif test "${1}" = 'audio--source--mute'
then __audio__source__mute

elif test "${1}" = 'audio--source--play'
then __audio__source__play

elif test "${1}" = 'audio--source--reset'
then __audio__source__reset

elif test "${1}" = 'audio--source--toggle'
then __audio__source__toggle

elif test "${1}" = 'audio--volume--decrease'
then __audio__volume__decrease && __audio__notify

elif test "${1}" = 'audio--volume--increase'
then __audio__volume__increase && __audio__notify

elif test "${1}" = 'audio--volume--mute'
then __audio__volume__mute

elif test "${1}" = 'audio--volume--play'
then __audio__volume__play

elif test "${1}" = 'audio--volume--reset'
then __audio__volume__reset && __audio__notify

elif test "${1}" = 'audio--volume--toggle'
then __audio__volume__toggle

### grim

elif test "${1}" = 'grim--output-path'
then __grim__output_path

elif test "${1}" = 'grim--output--wl-copy'
then __grim__output | __wl_copy

### screen capture

elif test "${1}" = 'wf-recorder'
then __wf_recorder

### screen shotting

elif test "${1}" = 'slurp--grim--wl-copy'
then __slurp | __grim | __wl_copy

elif test "${1}" = 'slurp--grim-path'
then __slurp | __grim__path

elif test "${1}" = 'slurp--grim-tesseract'
then __slurp | __grim__tesseract

elif test "${1}" = 'slurp--notify'
then __slurp__print | __xargs__notify

### swaymsg

elif test "${1}" = 'swaymsg--keyboard-layout'
then __swaymsg__keyboard_layout

elif test "${1}" = 'swaymsg--node--grim--wl-copy'
then __swaymsg__tree__node | __grim | __wl_copy

elif test "${1}" = 'swaymsg--node--grim-path'
then __swaymsg__tree__node | __grim__path

elif test "${1}" = 'swaymsg--switch-output'
then __swaymsg__switch_output

### tray

elif test "${1}" = 'nm-applet--killall'
then __nm_applet__killall

elif test "${1}" = 'nm-applet--restart'
then __nm_applet__restart

fi

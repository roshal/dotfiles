
source "${HOME}/.shell/actions.sh"
source "${HOME}/.shell/actions/audio.sh"
source "${HOME}/.shell/actions/bluetooth.sh"

if false
then true

### audio

elif test "${1}" = 'audio--notify'
then __audio__notify

elif test "${1}" = 'audio--volume'
then __audio__get__volume > /-/mako/pulsemixer

### audio profile

elif test "${1}" = 'audio--profile--analog'
then __audio__profile__analog_duplex

elif test "${1}" = 'audio--profile--hdmi'
then __audio__profile__hdmi

### audio source

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

### audio volume

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

### bluetooth

elif test "${1}" = 'bluetooth--headset--connect'
then __bluetooth__headset__connect

elif test "${1}" = 'bluetooth--headset--disconnect'
then __bluetooth__headset__disconnect

elif test "${1}" = 'bluetooth--speaker--connect'
then __bluetooth__speaker__connect

elif test "${1}" = 'bluetooth--speaker--disconnect'
then __bluetooth__speaker__disconnect

elif test "${1}" = 'bluetooth--power--on'
then __bluetooth__power__on

elif test "${1}" = 'bluetooth--power--no'
then __bluetooth__power__no

### bluetooth headset

elif test "${1}" = 'bluetooth--profile--headset--disable'
then __bluetooth__profile__headset__disable

elif test "${1}" = 'bluetooth--profile--headset--headset'
then __bluetooth__profile__headset__headset

elif test "${1}" = 'bluetooth--profile--headset--speaker'
then __bluetooth__profile__headset__speaker

### bluetooth speaker

elif test "${1}" = 'bluetooth--profile--speaker--disable'
then __bluetooth__profile__speaker__disable

elif test "${1}" = 'bluetooth--profile--speaker--headset'
then __bluetooth__profile__speaker__headset

elif test "${1}" = 'bluetooth--profile--speaker--speaker'
then __bluetooth__profile__speaker__speaker

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

### sway

elif test "${1}" = 'sway--keyboard-layout'
then __sway__keyboard_layout

elif test "${1}" = 'sway--node--grim--wl-copy'
then __sway__tree__node | __grim | __wl_copy

elif test "${1}" = 'sway--node--grim-path'
then __sway__tree__node | __grim__path

elif test "${1}" = 'sway--output--apply'
then __sway__output__apply

elif test "${1}" = 'sway--output--focus'
then __sway__output__focus

elif test "${1}" = 'sway--output--switch'
then __sway__output__switch

### tray

elif test "${1}" = 'nm-applet--killall'
then __nm_applet__killall

elif test "${1}" = 'nm-applet--restart'
then __nm_applet__restart

fi


source "${HOME}/.shell/actions.sh"
source "${HOME}/.shell/actions/audio.sh"
source "${HOME}/.shell/actions/bluetooth.sh"

function call () {
	"action--${1}"
}

if false
then true

### audio

elif test "${1}" = 'audio--notify'
then call "${1}"

elif test "${1}" = 'audio--volume'
then call audio--get--volume > /-/mako/pulsemixer

### audio profile

elif test "${1}" = 'audio--profile--analog'
then call "${1}"

elif test "${1}" = 'audio--profile--hdmi'
then call "${1}"

### audio source

elif test "${1}" = 'audio--source--decrease'
then call "${1}"

elif test "${1}" = 'audio--source--increase'
then call "${1}"

elif test "${1}" = 'audio--source--mute'
then call "${1}"

elif test "${1}" = 'audio--source--play'
then call "${1}"

elif test "${1}" = 'audio--source--reset'
then call "${1}"

elif test "${1}" = 'audio--source--toggle'
then call "${1}"

### audio volume

elif test "${1}" = 'audio--volume--decrease'
then call "${1}" && call audio--notify

elif test "${1}" = 'audio--volume--increase'
then call "${1}" && call audio--notify

elif test "${1}" = 'audio--volume--mute'
then call "${1}"

elif test "${1}" = 'audio--volume--play'
then call "${1}"

elif test "${1}" = 'audio--volume--reset'
then call "${1}" && call audio--notify

elif test "${1}" = 'audio--volume--toggle'
then call "${1}"

### bluetooth

elif test "${1}" = 'bluetooth--headset--connect'
then call "${1}"

elif test "${1}" = 'bluetooth--headset--disconnect'
then call "${1}"

elif test "${1}" = 'bluetooth--speaker--connect'
then call "${1}"

elif test "${1}" = 'bluetooth--speaker--disconnect'
then call "${1}"

elif test "${1}" = 'bluetooth--power--on'
then call "${1}"

elif test "${1}" = 'bluetooth--power--no'
then call "${1}"

### bluetooth headset

elif test "${1}" = 'bluetooth--profile--headset--disable'
then call "${1}"

elif test "${1}" = 'bluetooth--profile--headset--headset'
then call "${1}"

elif test "${1}" = 'bluetooth--profile--headset--speaker'
then call "${1}"

### bluetooth speaker

elif test "${1}" = 'bluetooth--profile--speaker--disable'
then call "${1}"

elif test "${1}" = 'bluetooth--profile--speaker--headset'
then call "${1}"

elif test "${1}" = 'bluetooth--profile--speaker--speaker'
then call "${1}"

### grim

elif test "${1}" = 'grim--output-path'
then call "${1}"

elif test "${1}" = 'grim--output--wl-copy'
then call grim--output | call wl-copy

### screen capture

elif test "${1}" = 'wf-recorder'
then call "${1}"

### screen shotting

elif test "${1}" = 'slurp--grim--wl-copy'
then call slurp | call grim | call wl-copy

elif test "${1}" = 'slurp--grim-path'
then call slurp | call "${1}"

elif test "${1}" = 'slurp--grim-tesseract'
then call slurp | call "${1}"

elif test "${1}" = 'slurp--notify'
then call slurp--print | call xargs--notify

### sway

elif test "${1}" = 'sway--keyboard-layout'
then call "${1}"

elif test "${1}" = 'sway--node--grim--wl-copy'
then call sway--tree--node | call grim | call wl-copy

elif test "${1}" = 'sway--node--grim-path'
then call sway--tree--node | call grim--path

elif test "${1}" = 'sway--output--carry'
then call "${1}"

elif test "${1}" = 'sway--output--focus'
then call "${1}"

elif test "${1}" = 'sway--output--switch'
then call "${1}"

### tray

elif test "${1}" = 'nm-applet--killall'
then call "${1}"

elif test "${1}" = 'nm-applet--restart'
then call "${1}"

fi

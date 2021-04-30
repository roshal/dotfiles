
source "${HOME}/.shell/actions.sh"
source "${HOME}/.shell/actions/audio.sh"
source "${HOME}/.shell/actions/bluetooth.sh"

function __ () {
	'action--'"${1}"
}

### audio

test "${1}" = 'audio--notify' && __ "${@}"
test "${1}" = 'audio--volume' && __ audio--get--volume > /-/mako/pulsemixer

### audio profile

test "${1}" = 'audio--profile--analog' && __ "${@}"
test "${1}" = 'audio--profile--hdmi' && __ "${@}"

### audio source

test "${1}" = 'audio--source--decrease' && __ "${@}"
test "${1}" = 'audio--source--increase' && __ "${@}"
test "${1}" = 'audio--source--mute' && __ "${@}"
test "${1}" = 'audio--source--play' && __ "${@}"
test "${1}" = 'audio--source--reset' && __ "${@}"
test "${1}" = 'audio--source--toggle' && __ "${@}"

### audio volume

test "${1}" = 'audio--volume--decrease' && __ "${@}" && __ audio--notify
test "${1}" = 'audio--volume--increase' && __ "${@}" && __ audio--notify
test "${1}" = 'audio--volume--mute' && __ "${@}"
test "${1}" = 'audio--volume--play' && __ "${@}"
test "${1}" = 'audio--volume--reset' && __ "${@}" && __ audio--notify
test "${1}" = 'audio--volume--toggle' && __ "${@}"

### bluetooth

test "${1}" = 'bluetooth--headset--connect' && __ "${@}"
test "${1}" = 'bluetooth--headset--disconnect' && __ "${@}"
test "${1}" = 'bluetooth--speaker--connect' && __ "${@}"
test "${1}" = 'bluetooth--speaker--disconnect' && __ "${@}"
test "${1}" = 'bluetooth--power--on' && __ "${@}"
test "${1}" = 'bluetooth--power--no' && __ "${@}"

### bluetooth headset

test "${1}" = 'bluetooth--profile--headset--disable' && __ "${@}"
test "${1}" = 'bluetooth--profile--headset--headset' && __ "${@}"
test "${1}" = 'bluetooth--profile--headset--speaker' && __ "${@}"

### bluetooth speaker

test "${1}" = 'bluetooth--profile--speaker--disable' && __ "${@}"
test "${1}" = 'bluetooth--profile--speaker--headset' && __ "${@}"
test "${1}" = 'bluetooth--profile--speaker--speaker' && __ "${@}"

### grim

test "${1}" = 'grim--output-path' && __ "${@}"
test "${1}" = 'grim--output--wl-copy' && __ grim--output | __ wl-copy

### screen capture

test "${1}" = 'wf-recorder' && __ "${@}"

### screen shotting

test "${1}" = 'slurp--grim--wl-copy' && __ slurp | __ grim | __ wl-copy
test "${1}" = 'slurp--grim-path' && __ slurp | __ "${@}"
test "${1}" = 'slurp--grim-tesseract' && __ slurp | __ "${@}"
test "${1}" = 'slurp--notify' && __ slurp--print | __ xargs--notify

### sway

test "${1}" = 'sway--keyboard-layout' && __ "${@}"
test "${1}" = 'sway--node--grim--wl-copy' && __ sway--tree--node | __ grim | __ wl-copy
test "${1}" = 'sway--node--grim-path' && __ sway--tree--node | __ grim--path
test "${1}" = 'sway--output--carry' && __ "${@}"
test "${1}" = 'sway--output--focus' && __ "${@}"
test "${1}" = 'sway--output--switch' && __ "${@}"

### tray

test "${1}" = 'nm-applet--killall' && __ "${@}"
test "${1}" = 'nm-applet--restart' && __ "${@}"

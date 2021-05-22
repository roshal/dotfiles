
source "${HOME}/.shell/actions.sh"
source "${HOME}/.shell/actions/audio.sh"
source "${HOME}/.shell/actions/bluetooth.sh"

ARGUMENTS=("${@}")

function is () {
	test -n "${STOP}" && exit || test "${1}" = "${ARGUMENTS[0]}" && STOP=TRUE
}

function ok () {
	"action--${1-${ARGUMENTS[0]}}"
}

### audio

is 'audio--notify' && ok
is 'audio--volume' && ok audio--get--volume > /-/mako/pulsemixer

### audio profile

is 'audio--profile--alsa--analog' && ok
is 'audio--profile--alsa--analog--duplex' && ok
is 'audio--profile--alsa--hdmi' && ok
is 'audio--profile--alsa--hdmi--duplex' && ok
is 'audio--profile--alsa--off' && ok
is 'audio--profile--bluetooth--headset--a2dp' && ok
is 'audio--profile--bluetooth--headset--headset' && ok
is 'audio--profile--bluetooth--headset--off' && ok
is 'audio--profile--bluetooth--speaker--a2dp' && ok
is 'audio--profile--bluetooth--speaker--headset' && ok
is 'audio--profile--bluetooth--speaker--off' && ok

### audio source

is 'audio--source--decrease' && ok
is 'audio--source--increase' && ok
is 'audio--source--mute' && ok
is 'audio--source--play' && ok
is 'audio--source--reset' && ok
is 'audio--source--toggle' && ok

### audio volume

is 'audio--volume--decrease' && ok && ok audio--notify
is 'audio--volume--increase' && ok && ok audio--notify
is 'audio--volume--mute' && ok
is 'audio--volume--play' && ok
is 'audio--volume--reset' && ok && ok audio--notify
is 'audio--volume--toggle' && ok

### bluetooth

is 'bluetooth--headset--connect' && ok
is 'bluetooth--headset--disconnect' && ok
is 'bluetooth--speaker--connect' && ok
is 'bluetooth--speaker--disconnect' && ok
is 'bluetooth--power--on' && ok
is 'bluetooth--power--no' && ok

### bluetooth headset

is 'bluetooth--profile--headset--disable' && ok
is 'bluetooth--profile--headset--headset' && ok
is 'bluetooth--profile--headset--speaker' && ok

### bluetooth speaker

is 'bluetooth--profile--speaker--disable' && ok
is 'bluetooth--profile--speaker--headset' && ok
is 'bluetooth--profile--speaker--speaker' && ok

### grim

is 'grim--output-path' && ok
is 'grim--output--wl-copy' && ok grim--output | ok wl-copy

### screen capture

is 'wf-recorder' && ok

### screen shotting

is 'slurp--grim--wl-copy' && ok slurp | ok grim | ok wl-copy
is 'slurp--grim-path' && ok slurp | ok
is 'slurp--grim-tesseract' && ok slurp | ok
is 'slurp--notify' && ok slurp--print | ok xargs--notify

### sway

is 'sway--keyboard-layout' && ok
is 'sway--node--grim--wl-copy' && ok sway--tree--node | ok grim | ok wl-copy
is 'sway--node--grim-path' && ok sway--tree--node | ok grim--path
is 'sway--output--carry' && ok
is 'sway--output--focus' && ok
is 'sway--output--switch' && ok

### tray

is 'nm-applet--killall' && ok
is 'nm-applet--restart' && ok

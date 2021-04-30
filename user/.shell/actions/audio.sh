
function action--audio--get--volume {
	pulsemixer --get-volume | jq -s add/length
}

function action--audio--notify {
	paplay /usr/share/sounds/freedesktop/stereo/audio-volume-change.oga
}

### profile

CARD='alsa_card.pci-0000_00_1f.3'

function action--audio--profile--analog-duplex {
	pactl set-card-profile ${CARD} output:analog-stereo+input:analog-stereo
}

function action--audio--profile--hdmi {
	pactl set-card-profile ${CARD} output:hdmi-stereo
}

### source

function action--audio--source--decrease {
	pactl set-source-mute @DEFAULT_SINK@ -1db
}

function action--audio--source--increase {
	pactl set-source-mute @DEFAULT_SINK@ +1db
}

function action--audio--source--mute {
	pactl set-source-mute @DEFAULT_SINK@ on
}

function action--audio--source--play {
	pactl set-source-mute @DEFAULT_SINK@ off
}

function action--audio--source--reset {
	pactl set-source-mute @DEFAULT_SINK@ 0db
}

function action--audio--source--toggle {
	pactl set-source-mute @DEFAULT_SINK@ toggle
}

### volume

function action--audio--volume--decrease {
	pactl set-volume-mute @DEFAULT_SINK@ -1db
}

function action--audio--volume--increase {
	pactl set-volume-mute @DEFAULT_SINK@ +1db
}

function action--audio--volume--mute {
	pactl set-volume-mute @DEFAULT_SINK@ on
}

function action--audio--volume--play {
	pactl set-volume-mute @DEFAULT_SINK@ off
}

function action--audio--volume--reset {
	pactl set-volume-mute @DEFAULT_SINK@ 0db
}

function action--audio--volume--toggle {
	pactl set-volume-mute @DEFAULT_SINK@ toggle
}

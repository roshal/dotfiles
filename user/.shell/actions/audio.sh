
function __audio__get__volume {
	pulsemixer --get-volume | jq -s add/length
}

function __audio__notify {
	paplay /usr/share/sounds/freedesktop/stereo/audio-volume-change.oga
}

### profile

CARD='alsa_card.pci-0000_00_1f.3'

function __audio__profile__analog_duplex {
	pactl set-card-profile ${CARD} output:analog-stereo+input:analog-stereo
}

function __audio__profile__hdmi {
	pactl set-card-profile ${CARD} output:hdmi-stereo
}

### source

function __audio__source__decrease {
	pactl set-source-mute @DEFAULT_SINK@ -1db
}

function __audio__source__increase {
	pactl set-source-mute @DEFAULT_SINK@ +1db
}

function __audio__source__mute {
	pactl set-source-mute @DEFAULT_SINK@ on
}

function __audio__source__play {
	pactl set-source-mute @DEFAULT_SINK@ off
}

function __audio__source__reset {
	pactl set-source-mute @DEFAULT_SINK@ 0db
}

function __audio__source__toggle {
	pactl set-source-mute @DEFAULT_SINK@ toggle
}

### volume

function __audio__volume__decrease {
	pactl set-volume-mute @DEFAULT_SINK@ -1db
}

function __audio__volume__increase {
	pactl set-volume-mute @DEFAULT_SINK@ +1db
}

function __audio__volume__mute {
	pactl set-volume-mute @DEFAULT_SINK@ on
}

function __audio__volume__play {
	pactl set-volume-mute @DEFAULT_SINK@ off
}

function __audio__volume__reset {
	pactl set-volume-mute @DEFAULT_SINK@ 0db
}

function __audio__volume__toggle {
	pactl set-volume-mute @DEFAULT_SINK@ toggle
}

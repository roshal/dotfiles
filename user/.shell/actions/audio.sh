
function action--audio--get--volume {
	pulsemixer --get-volume | jq -s add/length
}

function action--audio--notify {
	paplay /usr/share/sounds/freedesktop/stereo/audio-volume-change.oga
}

### profile

ALSA='alsa_card.pci-0000_00_1f.3'

BLUETOOTH__HEADSET='bluez_card.70_26_05_DD_FD_DD'
BLUETOOTH__SPEAKER='bluez_card.00_42_79_77_95_54'

function action--audio--profile--alsa--analog {
	pactl set-card-profile ${ALSA} output:analog-stereo
}

function action--audio--profile--alsa--analog--duplex {
	pactl set-card-profile ${ALSA} output:analog-stereo+input:analog-stereo
}

function action--audio--profile--alsa--hdmi {
	pactl set-card-profile ${ALSA} output:hdmi-stereo-extra2
}

function action--audio--profile--alsa--hdmi--duplex {
	pactl set-card-profile ${ALSA} output:hdmi-stereo-extra2+input:analog-stereo
}

function action--audio--profile--alsa--off {
	pactl set-card-profile ${ALSA} off
}

function action--audio--profile--bluetooth--headset--a2dp {
	pactl set-card-profile ${BLUETOOTH__HEADSET} a2dp_sink
}

function action--audio--profile--bluetooth--headset--headset {
	pactl set-card-profile ${BLUETOOTH__HEADSET} headset_head_unit
}

function action--audio--profile--bluetooth--headset--off {
	pactl set-card-profile ${BLUETOOTH__HEADSET} off
}

function action--audio--profile--bluetooth--speaker--a2dp {
	pactl set-card-profile ${BLUETOOTH__SPEAKER} a2dp_sink
}

function action--audio--profile--bluetooth--speaker--headset {
	pactl set-card-profile ${BLUETOOTH__SPEAKER} headset_head_unit
}

function action--audio--profile--bluetooth--speaker--off {
	pactl set-card-profile ${BLUETOOTH__SPEAKER} off
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

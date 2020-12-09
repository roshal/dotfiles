
function __audio__get__volume {
	pulsemixer --get-volume | jq -s add/length
}

function __audio__notify {
	paplay /usr/share/sounds/freedesktop/stereo/audio-volume-change.oga
}

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

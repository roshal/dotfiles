
function __path__grim {
	echo /-/grim/grim--$(date +%y-%m-%d--%H-%M-%S).png
}

function __swaymsg__keyboard_layout {
	swaymsg -t get_inputs | jq -r 'max_by(.xkb_active_layout_index).xkb_active_layout_name[0:2] | try ascii_upcase // "--"'
}

function __swaymsg__node {
	JQ='..'
	JQ+=' | .nodes? // empty'
	JQ+=' | .[]'
	JQ+=' | if .focused then . else .floating_nodes[]'
	JQ+=' | select(.focused) end'
	JQ+=' | .rect'
	JQ+=' | "\(.x),\(.y) \(.width)x\(.height)"'
	swaymsg -t get_tree | jq -r "${JQ}"
}

function __swaymsg__output_focused {
	swaymsg -t get_outputs | jq -r '.[] | select(.focused) | .name'
}

function __swaymsg__output_suspend {
	swaymsg -t get_outputs | jq -r '.[] | select(.focused != true) | .name'
}

function __swaymsg__switch_output {
	swaymsg -- output $(focused) disable , output $(suspend) enable
}

# actions

function __grim {
	grim -g - -t png -
}

function __grim__path {
	grim -g - -t png $(__path__grim)
}

function __grim__output {
	grim -o $(__swaymsg__output_focused) -t png -
}

function __grim__output__path {
	grim -o $(__swaymsg__output_focused) -t png $(__path__grim)
}

function __nm_applet__killall {
	killall --quiet nm-applet
}

function __nm_applet__restart {
	killall --quiet nm-applet ; nm-applet --indicator
}

function __slurp {
	slurp -b 00000000 -w 1
}

function __slurp__print {
	slurp -b 00000000 -w 1 -f "$(echo -e 'x %x\ny %y\nw %w\nh %h')"
}

function __wf_recorder {
	wf-recorder --muxer=v4l2 --codec=rawvideo --file=/dev/video0 --pixel-format yuv420p
}

function __wl_copy {
	wl-copy --type image/png
}

function __xargs__notify {
	xargs -0 notify-send
}

function call {
	if false
	then true
	elif test "${1}" == 'grim--output-path'
	then __grim__output__path
	elif test "${1}" == 'grim--output--wl-copy'
	then __grim__output | __wl_copy
	elif test "${1}" == 'nm-applet--killall'
	then __nm_applet__killall
	elif test "${1}" == 'nm-applet--restart'
	then __nm_applet__restart
	elif test "${1}" == 'slurp--grim--wl-copy'
	then __slurp | __grim | __wl_copy
	elif test "${1}" == 'slurp--grim-path'
	then __slurp | __grim__path
	elif test "${1}" == 'slurp--notify'
	then __slurp__print | __xargs__notify
	elif test "${1}" == 'swaymsg--keyboard-layout'
	then __swaymsg__keyboard_layout
	elif test "${1}" == 'swaymsg--node--grim--wl-copy'
	then __swaymsg__node | __grim | __wl_copy
	elif test "${1}" == 'swaymsg--node--grim-path'
	then __swaymsg__node | __grim__path
	elif test "${1}" == 'swaymsg--switch'
	then __swaymsg__switch_output
	elif test "${1}" == 'wf-recorder'
	then __wf_recorder
	fi
}

for VALUE in ${@}
do call ${VALUE}
done


function __path__grim {
	echo /-/grim/grim--$(date +%y-%m-%d--%H-%M-%S).png
}

function __swaymsg__inputs__keyboard_layout {
	JQ='max_by(.xkb_active_layout_index).xkb_active_layout_name[0:2]'
	JQ+=' | try ascii_upcase // "--"'
	swaymsg -t get_inputs | jq -r "${JQ}"
}

function __swaymsg__outputs__focused {
	JQ='.[] '
	JQ+=' | select(.focused)'
	JQ+=' | .name'
	swaymsg -t get_outputs | jq -r "${JQ}"
}

function __swaymsg__outputs__suspend {
	JQ='.[] '
	JQ+=' | select(.focused != true)'
	JQ+=' | .name'
	swaymsg -t get_outputs | jq -r "${JQ}"
}

### actions

function __grim {
	grim -g - -t png -
}

function __grim__path {
	grim -g - -t png $(__path__grim)
}

function __grim__output {
	grim -o $(__swaymsg__outputs__focused) -t png -
}

function __grim__output_path {
	grim -o $(__swaymsg__outputs__focused) -t png $(__path__grim)
}

function __nm_applet__killall {
	killall --quiet nm-applet
}

function __nm_applet__restart {
	__nm_applet__killall
	nm-applet --indicator
}

function __slurp {
	slurp -b 00000000 -w 1
}

function __slurp__print {
	slurp -b 00000000 -w 1 -f "$(echo -e 'x %x\ny %y\nw %w\nh %h')"
}

function __swaymsg__switch_output {
	FOCUSED=$(__swaymsg__outputs__focused)
	SUSPEND=$(__swaymsg__outputs__suspend)
	swaymsg -- output ${FOCUSED} disable , output ${SUSPEND} enable
}

function __swaymsg__tree__node {
	JQ='..'
	JQ+=' | .nodes? // empty'
	JQ+=' | .[]'
	JQ+=' | if .focused then . else .floating_nodes[]'
	JQ+=' | select(.focused) end'
	JQ+=' | .rect'
	JQ+=' | "\(.x),\(.y) \(.width)x\(.height)"'
	swaymsg -t get_tree | jq -r "${JQ}"
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

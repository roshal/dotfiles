
function action--datetime {
	date +%y-%m-%d--%H-%M-%S
}

function action--path--grim {
	echo "-/grim/grim--$(action--datetime).png"
}

function action--path--tesseract {
	echo /-/tesseract/destination.asc
}

function action--path--tesseract--grim {
	echo "/-/tesseract/grim/grim--$(action--datetime).png"
}

function action--sway--input--keyboard-layout {
	JQ='max_by(.xkb_active_layout_index).xkb_active_layout_name[0:2]'
	JQ+=' | try ascii_upcase // "--"'
	swaymsg -t get_inputs | jq -r "${JQ}"
}

function action--sway--output--focused {
	JQ='.[]'
	JQ+=' | select(.focused)'
	JQ+=' | .name'
	swaymsg -t get_outputs | jq -r "${JQ}"
}

function action--sway--output--suspend {
	JQ='.[]'
	JQ+=' | select(.focused != true)'
	JQ+=' | .name'
	swaymsg -t get_outputs | jq -r "${JQ}"
}

### actions

function action--grim {
	grim -g - -t png -
}

function action--grim--output {
	grim -o "$(action--sway--output--focused)" -t png -
}

function action--grim--output-path {
	grim -o "$(action--sway--output--focused)" -t png "$(action--path--grim)"
}

function action--grim--path {
	grim -g - -t png "$(action--path--grim)"
}

function action--grim--tesseract {
	DESTINATION="$(action--path--tesseract--grim)"
	grim -g - -t png "${DESTINATION}" && tesseract --dpi 2400 -l eng+rus --oem 1 "${DESTINATION}" -
}

function action--nm-applet--killall {
	killall --quiet nm-applet
}

function action--nm-applet--restart {
	action--nm-applet--killall
	nm-applet --indicator
}

function action--slurp {
	slurp -b 00000000 -w 1
}

function action--slurp--print {
	slurp -b 00000000 -w 1 -f "$(echo -e 'x %x\ny %y\nw %w\nh %h')"
}

function action--sway--output--carry {
	OUTPUT=$(action--sway--output--suspend)
	swaymsg -- move workspace to "${OUTPUT}"
}

function action--sway--output--focus {
	OUTPUT=$(action--sway--output--suspend)
	swaymsg -- focus output "${OUTPUT}"
}

function action--sway--output--switch {
	FOCUSED=$(action--sway--output--focused)
	SUSPEND=$(action--sway--output--suspend)
	swaymsg -- output "${FOCUSED}" toggle , output "${SUSPEND}" toggle
}

function action--sway--tree--node {
	JQ='..'
	JQ+=' | .nodes? // empty'
	JQ+=' | .[]'
	JQ+=' | if .focused then . else .floating_nodes[]'
	JQ+=' | select(.focused) end'
	JQ+=' | .rect'
	JQ+=' | "\(.x),\(.y) \(.width)x\(.height)"'
	swaymsg -t get_tree | jq -r "${JQ}"
}

function action--wf-recorder {
	wf-recorder --muxer=v4l2 --codec=rawvideo --file=/dev/video0 --pixel-format yuv420p
}

function action--wl-copy {
	wl-copy --type image/png
}

function action--xargs--notify {
	xargs -0 notify-send
}

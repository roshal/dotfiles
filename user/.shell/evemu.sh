
DEVICE=/dev/input/event18

function zero () {
	sudo evemu-event "${DEVICE}" --type EV_KEY --code "${1}" --value 0 --sync
}

function unit () {
	sudo evemu-event "${DEVICE}" --type EV_KEY --code "${1}" --value 1 --sync
}

function zero () {
	sudo evemu-event "${DEVICE}" --type EV_KEY --code "${1}" --value 0 --sync
}

function zerounit () {
	zero "${1}"
	unit "${1}"
}

function a {
	unit KEY_LEFTCTRL
	unit KEY_LEFTSHIFT

	zerounit KEY_TAB

	zero KEY_LEFTCTRL
	zero KEY_LEFTSHIFT
}

function z {
	unit KEY_LEFTCTRL

	zerounit KEY_TAB

	zero KEY_LEFTCTRL
}
